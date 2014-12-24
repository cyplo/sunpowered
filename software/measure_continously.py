from measure import measure
import time
import pprint

while True:
	measurements = measure()
	pp = pprint.PrettyPrinter(indent=4)
	pp.pprint(measurements)
	time.sleep(15)

