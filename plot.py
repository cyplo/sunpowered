import pickle
import pprint
import datetime 
import matplotlib as mpl
mpl.use('Agg')
import matplotlib.pyplot as plt
import functools

filepath = "/home/measurements/samples" 

def extract_date(sample):
	timestamp = sample['timestamp']
	date = datetime.datetime.fromtimestamp(timestamp)
	return date

def plot(key, dates, all_samples):
	data = map(lambda sample: sample[key], all_samples)
	plt.plot(dates, data, label=key)

all_samples = []
samples_count = 0 

while samples_count <= 0:
	try:
		all_samples = pickle.load( open( filepath, "rb" ) )
	except(IOError, EOFError, ValueError):
		print "error reading, will retry..."
		pass
	samples_count = len(all_samples)

print str(samples_count)+" samples read"		

print "extracting data..."
dates = map(extract_date, all_samples)

print "plotting ..."
dpi=96
plt.figure(figsize=(1780/dpi, 768/dpi), dpi=dpi)

for key in all_samples[-1].keys():
	if "voltage" in key or "vcc" in key:
		plot(key, dates, all_samples)

plt.legend(loc='center left', bbox_to_anchor=(1, 0.8), fancybox=True)

plt.savefig("voltages.png", bbox_inches='tight')
print "done."

