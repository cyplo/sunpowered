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

def plot(subplot, data, dates):
	subplot.plot(dates, data, label=key)

all_samples = []
samples_count = 0 

while samples_count <= 0:
	try:
		all_samples = pickle.load( open( filepath(), "rb" ) )
	except(IOError, EOFError, ValueError):
		print "error reading, will retry..."
		pass
	samples_count = len(all_samples)

print str(samples_count)+" samples read"		

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

		plot(ax, data, dates)

plt.ylim(min_voltage-0.5, max_voltage+0.5)

print "max voltage: " + str(max_voltage)
print "min voltage: " + str(min_voltage)

start, end = ax.get_ylim()
plt.yticks(numpy.arange(start, end, 0.5))
plt.grid()
plt.legend(loc='center left', bbox_to_anchor=(1, 0.7), fancybox=True)
plt.savefig("voltages.png", bbox_inches='tight')

print "done."

