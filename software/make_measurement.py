from measure import measure
from influx_config import influx_username, influx_password
from subprocess import call
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
points = []
points.append([])
columns = []
inner_object={}
for key, value in measurements.iteritems():
    points[0].append(value)
    columns.append(key)
inner_object['points']=points
inner_object['columns']=columns
inner_object['name']='balcony'
series_data.append(inner_object)
body = json.dumps(series_data)

conn = httplib.HTTPConnection("data.cyplo.net", 8086)
username=influx_username()
password=influx_password()

conn.request("POST", "/db/sunpowered/series?u="+username+"&p="+password, body)
response = conn.getresponse()
success = (response.status == 200)
if not success:
    sys.exit(-1)

