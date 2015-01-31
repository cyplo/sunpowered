from measure import measure
import time
import pprint
import json

measurements = measure()
measurements_json = json.dumps(measurements)
pp = pprint.PrettyPrinter(indent=4)
pp.pprint(measurements_json)

