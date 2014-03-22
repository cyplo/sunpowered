from measurement_config import  samples_filepath, measurement_directory
from measure import measure
from plot import plot_samples

import os
import time
import daemon
import pickle
import logging
import SimpleHTTPServer
import SocketServer
import threading
import resource
import datetime

days_to_keep = 5
samples_per_minute = 30

sample_interval = 60 / samples_per_minute
save_interval = 60 * 15
plot_interval = 60

def should_remove_oldest(all_samples):
	timestamp = all_samples[0]['timestamp']
	date = datetime.datetime.fromtimestamp(timestamp)
	return (datetime.datetime.today() - date).days > days_to_keep 

def main_loop():
    all_samples = load_samples()

    last_saved = time.time()
    last_plotted = time.time()
    
    while True:
	all_samples.append( measure() )

	while(should_remove_oldest(all_samples)):
		all_samples.pop(0)
	
	if((time.time() - last_saved) > save_interval):
		print "saving samples..."
		pickle.dump( all_samples, open( samples_filepath(), "wb" ) )
		last_saved = time.time()
		print str(len(all_samples)) + " samples saved"	

	if((time.time() - last_plotted) > plot_interval):
		plot_samples(all_samples)
		last_plotted = time.time()

	last_time = time.time()
	wait_time = 0
	while wait_time < sample_interval:
		time.sleep(1)
		wait_time = time.time() - last_time

def serve_plots():
	PORT = 8000
	Handler = SimpleHTTPServer.SimpleHTTPRequestHandler
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

serve_plots()
main_loop()

