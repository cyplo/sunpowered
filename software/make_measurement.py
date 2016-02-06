from measure import measure
from influx_config import influx_username, influx_password
from subprocess import call
import influxdb
import time
import pprint
import json
import httplib, urllib
import sys

pp = pprint.PrettyPrinter(indent=4)
measurements = measure()

# decide if we're running low on power
# TODO: extract the below
battery_voltage=float(measurements['battery_voltage'])
if battery_voltage < 11.0:
    print "going down ...."
    call('poweroff')    

series_data = []
for key, value in measurements.iteritems():
	inner_object={}
	inner_object['fields']={'value': value}
	inner_object['measurement']=key
	inner_object['timestamp']=measurements['timestamp']
	series_data.append(inner_object)

username=influx_username()
password=influx_password()
client = influxdb.InfluxDBClient('data.cyplo.net','8086', username, password, 'sunpowered')
client.write_points(series_data)

