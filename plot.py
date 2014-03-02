import pickle
import pprint
import datetime 
import matplotlib as mpl
mpl.use('Agg')
import matplotlib.pyplot as plt

filepath = "/home/measurements/samples" 

def extract_panel_voltage(sample):
	return sample['panel_voltage']

def extract_date(sample):
	timestamp = sample['timestamp']
	date = datetime.datetime.fromtimestamp(timestamp)
	return date

all_samples = []
samples_count = 0 

while samples_count <= 0:
	try:
		all_samples = pickle.load( open( filepath, "rb" ) )
	except(IOError, ValueError):
		print "error reading, will retry..."
		pass
	samples_count = len(all_samples)

print str(samples_count)+" samples read"		

voltages = map(extract_panel_voltage, all_samples)
dates = map(extract_date, all_samples)
print "plotting ..."
plt.plot(dates, voltages)
plt.savefig("plot.png")
print "done."

