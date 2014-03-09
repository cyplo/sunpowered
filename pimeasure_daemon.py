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

days_to_keep = 3
samples_per_minute = 1
minutes_per_day = 24 * 60
samples_to_keep = minutes_per_day * samples_per_minute * days_to_keep
sample_interval = 60 / samples_per_minute

def main_loop():
    while True:
	all_samples = []
	print "loading samples..."
	try:
   		all_samples = pickle.load( open( samples_filepath(), "rb" ) )
	except(IOError, EOFError, ValueError):
		pass
	samples_count = len(all_samples)
	print str(samples_count) + " loaded"
	if(samples_count >= samples_to_keep):
		all_samples.pop(0)
	all_samples.append( measure() )
	print "saving samples..."
	pickle.dump( all_samples, open( samples_filepath(), "wb" ) )
	print "plotting saved..."
	plot_samples(all_samples)
	last_time = time.time()
        while (time.time() - last_time) < sample_interval:
		time.sleep(8)

def serve_plots():
	PORT = 8000
	Handler = SimpleHTTPServer.SimpleHTTPRequestHandler
	httpd = SocketServer.TCPServer(("", PORT), Handler)
	print "serving at port", PORT
	os.chdir(measurement_directory())
	httpd_thread = threading.Thread(target=httpd.serve_forever)
	httpd_thread.setDaemon(True)
	httpd_thread.start()

serve_plots()
main_loop()

