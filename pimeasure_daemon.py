from measure import measure
import time
import daemon
import pickle

days_to_keep = 3
samples_per_minute = 3
minutes_per_day = 24 * 60
samples_to_keep = minutes_per_day * samples_per_minute * days_to_keep
sample_interval = 60 / samples_per_minute

filepath = "/home/measurements/samples" 

def main_loop():
    while True:
	all_samples = []
	try:
   		all_samples = pickle.load( open( filepath, "rb" ) )
	except(IOError):
		pass
	samples_count = len(all_samples)
	if(samples_count >= samples_to_keep):
		all_samples.pop(0)
	all_samples.append( measure() )
	pickle.dump( all_samples, open( filepath, "wb" ) )
        time.sleep(sample_interval)

def run():
#	with daemon.DaemonContext():
		main_loop()

if __name__ == "__main__":
	run()
