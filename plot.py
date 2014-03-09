from measurement_config import filepath
import pickle
import numpy
import pprint
import datetime 
import matplotlib as mpl
mpl.use('Agg')
import matplotlib.pyplot as plt
import functools


def extract_date(sample):
	timestamp = sample['timestamp']
	date = datetime.datetime.fromtimestamp(timestamp)
	return date

def plot(subplot, data, dates, key):
	subplot.plot(dates, data, label=key)

def plot_samples(all_samples):

	print "extracting data..."
	dates = map(extract_date, all_samples)

	print "plotting ..."
	dpi=96

	fig = plt.figure(figsize=(1920/dpi, 1080/dpi), dpi=dpi)
	ax = fig.add_subplot(111)

	max_voltage = 0
	min_voltage = 0

	for key in all_samples[-1].keys():
		if "voltage" in key or "vcc" in key:
			data = map(lambda sample: sample[key], all_samples)

			local_min_voltage = min(data)		
			min_voltage = min(min_voltage, local_min_voltage)

			local_max_voltage = max(data)		
			max_voltage = max(max_voltage, local_max_voltage)

			plot(ax, data, dates, key)

	plt.ylim(min_voltage-0.5, max_voltage+0.5)

	print "max voltage: " + str(max_voltage)
	print "min voltage: " + str(min_voltage)

	start, end = ax.get_ylim()
	plt.yticks(numpy.arange(start, end, 0.5))
	plt.grid()
	plt.legend(loc='center left', bbox_to_anchor=(1, 0.7), fancybox=True)
	plt.savefig("/mnt/measurements/voltages.png", bbox_inches='tight')

	print "done."

