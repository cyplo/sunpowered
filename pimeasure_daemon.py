from BaseHTTPServer import BaseHTTPRequestHandler, HTTPServer
from measurement_config import voltages_plot_filepath, samples_filepath, measurement_directory
from measure import measure
from plot import plot_samples

import os
import time
import daemon
import logging
import SimpleHTTPServer
import SocketServer
import threading
import resource
import datetime
import signal
import sys

try:
   import cPickle as pickle
except:
   print "warning: using standard pickle instead of cPickle"
   import pickle

days_to_keep = 999
samples_per_minute = 6

sample_interval = 60 / samples_per_minute
save_interval = 60 * 15
min_plot_interval = 60

def should_remove_oldest(all_samples):
	timestamp = all_samples[0]['timestamp']
	date = datetime.datetime.fromtimestamp(timestamp)
	return (datetime.datetime.today() - date).days > days_to_keep 

def prepare():
    all_samples = load_samples()

    print "preparations done"
    return all_samples

class Sampler:
	def __init__(self, time_keeper):
		self.samples = prepare()
		self.time_keeper = time_keeper

	def sample(self):
		if(self.time_keeper.can_sample()):
			print "sampling.."
			self.samples.append( measure() )
			while(should_remove_oldest(self.samples)):
				self.samples.pop(0)

	def save(self, force = False):
		if( self.time_keeper.can_save() or force):
			print "saving samples..."
			pickle.dump( self.samples, open( samples_filepath(), "wb" ) )
			time_keeper.saved()
			print str(len(self.samples)) + " samples saved"	
		

class TimeKeeper:
    def __init__(self):
	self.plotted()
	self.saved()

    def plotted(self):
	print "plotted"
	self.last_plotted = time.time()
	self.plotting = False

    def saved(self):
	self.last_saved = time.time()

    def can_sample(self):
	return not self.plotting

    def can_plot(self):
	result = ((time.time() - self.last_plotted) > min_plot_interval)
	print "can plot? " + str(result)
	return result

    def can_save(self):
	((time.time() - self.last_saved) > save_interval)
	
	
def main_loop(time_keeper, sampler):
    while True:
	sampler.sample()

	sampler.save()

	last_time = time.time()
	wait_time = 0
	while wait_time < sample_interval:
		time.sleep(1)
		wait_time = time.time() - last_time


def plot(time_keeper, sampler):
	if( time_keeper.can_plot() ):
		time_keeper.plotting = True
		print "plotting.."
		plot_samples(sampler.samples)
		time_keeper.plotted()

		
 
class GraphServer(BaseHTTPRequestHandler):
    
    def do_GET(self):
	print "starting to serve..."
	self.send_response(200)
	self.send_header('content-type', 'image/png')
	self.end_headers()
	plot(self.time_keeper, self.sampler)
	f = open(voltages_plot_filepath())
	self.wfile.write(f.read())
	f.close()
	

def serve_plots(time_keeper, sampler):
	PORT = 8000
	#Handler = SimpleHTTPServer.SimpleHTTPRequestHandler
	Handler = GraphServer
	Handler.time_keeper = time_keeper
	Handler.sampler = sampler
	httpd = SocketServer.TCPServer(("", PORT), Handler)
	print "serving at port", PORT
	os.chdir(measurement_directory())
	httpd_thread = threading.Thread(target=httpd.serve_forever)
	httpd_thread.setDaemon(True)
	httpd_thread.start()

def load_samples():
	all_samples = []
	print "loading samples..."
	try:
   		all_samples = pickle.load( open( samples_filepath(), "rb" ) )
	except(IOError, EOFError, ValueError):
		pass
    	print "now " + str(len(all_samples)) + " samples"
	return all_samples

time_keeper = TimeKeeper() 
sampler = Sampler(time_keeper)

def signal_handler(signal, frame):
        print('You pressed Ctrl+C!')
	print "time_keeper" + str(time_keeper)
	print "sampler" + str(sampler)

	sampler.save(True)
	plot(time_keeper, sampler)
        sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)
serve_plots(time_keeper, sampler)
main_loop(time_keeper, sampler)

