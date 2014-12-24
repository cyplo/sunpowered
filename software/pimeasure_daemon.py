#!/usr/bin/python
import os
import daemon
import logging
import SimpleHTTPServer
import SocketServer
import threading
import resource
import signal
import sys
import time

from BaseHTTPServer import BaseHTTPRequestHandler, HTTPServer
from measurement_config import voltages_plot_filepath, samples_filepath, measurement_directory
from plot import plot_samples
from sampler import Sampler
from timekeeper import TimeKeeper

samples_per_minute = 6
sample_interval = 60 / samples_per_minute

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


time_keeper = TimeKeeper() 
sampler = Sampler(time_keeper)

def signal_handler(signal, frame):
    print('You pressed Ctrl+C!')

    sampler.save(True)
    plot(time_keeper, sampler)
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)
serve_plots(time_keeper, sampler)
main_loop(time_keeper, sampler)

