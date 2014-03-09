from measurement_config import voltages_plot_filepath
import pickle
import numpy
import pprint
import datetime 
import matplotlib as mpl
mpl.use('Agg')
import matplotlib.pyplot as plt
import functools
import math

def extract_date(sample):
	timestamp = sample['timestamp']
	date = datetime.datetime.fromtimestamp(timestamp)
	return date

def plot(subplot, data, dates, key):
	subplot.plot(dates, data, label=key)

def plot_samples(all_samples):

	dates = map(extract_date, all_samples)

	print "plotting ...",
	dpi=96

	fig = plt.figure(figsize=(1920/dpi, 1080/dpi), dpi=dpi)
	ax = fig.add_subplot(111)

	max_voltage = 0
	min_voltage = 128

	for key in all_samples[-1].keys():
		if not "current" in key and ("voltage" in key or "vcc" in key):
			data = map(lambda sample: sample[key], all_samples)

			local_min_voltage = min(data)		
			min_voltage = min(min_voltage, local_min_voltage)

			local_max_voltage = max(data)		
			max_voltage = max(max_voltage, local_max_voltage)

			plot(ax, data, dates, key)

	max_voltage = math.ceil(max_voltage)
	min_voltage = math.floor(min_voltage)

	plt.ylim(min_voltage-0.5, max_voltage+0.5)

	start, end = ax.get_ylim()
	plt.yticks(numpy.arange(start, end, 0.5))
	plt.grid()
	plt.legend(loc='center left', bbox_to_anchor=(1, 0.7), fancybox=True)
	plt.savefig(voltages_plot_filepath(), bbox_inches='tight')

	print "done."

