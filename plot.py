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
import gc

def extract_date(sample):
	timestamp = sample['timestamp']
	date = datetime.datetime.fromtimestamp(timestamp)
	return date

def plot(subplot, data, dates, key):
	subplot.plot(dates, data, label=key)

def subplot_power(fig, dates, all_samples):
	power_subplot = fig.add_subplot(212)
	data = map(lambda sample: sample['load_power_usage'], all_samples)
	plot(power_subplot, data, dates, 'load power usage')
	plt.grid()
	plt.legend(loc='center left', bbox_to_anchor=(1, 0.7), fancybox=True)

def subplot_voltages(fig, dates, all_samples):
	voltages_subplot = fig.add_subplot(211)

	max_voltage = 0
	min_voltage = 128

	for key in all_samples[-1].keys():
		if not "current" in key and ("voltage" in key or "vcc" in key):
			data = map(lambda sample: sample[key], all_samples)

			local_min_voltage = min(data)		
			min_voltage = min(min_voltage, local_min_voltage)

			local_max_voltage = max(data)		
			max_voltage = max(max_voltage, local_max_voltage)

			plot(voltages_subplot, data, dates, key.replace('_',' '))

	max_voltage = math.ceil(max_voltage)
	min_voltage = math.floor(min_voltage)

	#plt.ylim(min_voltage-0.5, max_voltage+0.5)

	#start, end = voltages_subplot.get_ylim()
	#plt.yticks(numpy.arange(start, end, 0.5))
	plt.grid()
	plt.legend(loc='center left', bbox_to_anchor=(1, 0.7), fancybox=True)


def plot_samples(all_samples):

	dates = map(extract_date, all_samples)

	print "plotting ...",
	dpi=96

	fig = plt.figure(figsize=(1920/dpi, 1080/dpi), dpi=dpi)

	subplot_voltages(fig, dates, all_samples)
	subplot_power(fig, dates, all_samples)
	
	plt.savefig(voltages_plot_filepath(), bbox_inches='tight')
	print "done."
	print "cleaning up..."
	fig.clf()
	plt.close()
	del fig
	gc.collect()
