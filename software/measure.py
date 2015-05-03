from adc_pi import *
from owm_config import owm_api_key
import sys
import urllib2
import time
import json
import pyowm
import pprint
import traceback
import psutil

#weather api has dos protection, call at most every this number of minutes
weather_call_interval = 15 * 60

last_weather_call = 0
ambient_temperature = 0.0
f = 0
try:
    f = open("/tmp/sunpowered_weather","r+")
    last_weather_call = float(f.readline())
    ambient_temperature = float(f.readline())
except IOError:
    last_weather_call = time.time()-weather_call_interval 
    pass
if (f!=0):
    f.close() 


def measure_raw():
    multiplier = 11 # from voltage divider
    values = []
    changechannel(adc_address1, 0x90)
    values.append( getadcreading(adc_address1,0x90) )
    
    changechannel(adc_address1, 0xB0)
    values.append( getadcreading(adc_address1,0xB0) )

    changechannel(adc_address1, 0xD0) 
    values.append( (getadcreading(adc_address1,0xD0) * multiplier * 1.12622036) )

    changechannel(adc_address1, 0xF0)
    values.append( (getadcreading(adc_address1,0xF0) * multiplier * 1.12817813) )

    changechannel(adc_address2, 0x90)
    values.append( (getadcreading(adc_address2,0x90) * multiplier * 1.15097264) )

    changechannel(adc_address2, 0xB0)
    values.append( (getadcreading(adc_address2,0xB0) * multiplier * 1.11219605) )

    changechannel(adc_address2, 0xD0)
    values.append( (getadcreading(adc_address2,0xD0) * multiplier * 1.12812801) )

    changechannel(adc_address2, 0xF0)
    values.append( (getadcreading(adc_address2,0xF0)) )
    
    return values

def measure_ambient_temperature(measurements):
	
    global ambient_temperature
    global last_weather_call
    if time.time() - last_weather_call >  weather_call_interval:
        try:
            owm = pyowm.OWM(owm_api_key())
            observation = owm.weather_at_place('Wroclaw, pl')
            weather = observation.get_weather()
            temperature_data = weather.get_temperature('celsius')
            ambient_temperature = float(temperature_data['temp'])
        except: 
            e = sys.exc_info()[0]
            pp = pprint.PrettyPrinter(indent=4)
            pp.pprint(e)
            print traceback.format_exc()
            pass
        
        last_weather_call = time.time() 
        f = open("/tmp/sunpowered_weather","w+")
        f.write(str(last_weather_call)+"\n")
        f.write(str(ambient_temperature)+"\n")
        f.close() 

    measurements['ambient_temperature'] = ambient_temperature

def measure_io(measurements):
    disk_name='md0'
    io_bytes_read_start=psutil.disk_io_counters(True)[disk_name].read_bytes
    io_bytes_write_start=psutil.disk_io_counters(True)[disk_name].write_bytes
    sent_start=psutil.net_io_counters().bytes_sent;
    received_start=psutil.net_io_counters().bytes_recv;
    time.sleep(1);
    io_bytes_read_end=psutil.disk_io_counters(True)[disk_name].read_bytes
    io_bytes_write_end=psutil.disk_io_counters(True)[disk_name].write_bytes
    sent_end=psutil.net_io_counters().bytes_sent
    received_end=psutil.net_io_counters().bytes_recv
    measurements['network_in_bytes_1s']=received_end-received_start
    measurements['network_out_bytes_1s']=sent_end-sent_start
    measurements['disk_read_bytes_1s']=io_bytes_read_end-io_bytes_read_start
    measurements['disk_write_bytes_1s']=io_bytes_write_end-io_bytes_write_start

def measure_electric_values(measurements):
    raw_values = measure_raw()

    measurements['current_sensor_vcc'] = raw_values[1] 
    measurements['panel_voltage']      = raw_values[2]
    measurements['battery_voltage']    = raw_values[3]
    measurements['load_voltage']       = raw_values[4] 
    measurements['5V_rail_voltage'] = raw_values[5]
    measurements['current_sensor_voltage_raw'] = raw_values[7] 
    measurements['current_sensor_voltage_offset'] = measurements['current_sensor_vcc'] / 2
    measurements['current_sensor_voltage'] = measurements['current_sensor_voltage_raw'] - measurements['current_sensor_voltage_offset']
    measurements['load_current']    = measurements['current_sensor_voltage'] / 0.185
    measurements['load_power_usage'] = measurements['load_voltage'] * measurements['load_current']
    measurements['timestamp'] = time.time()

def measure_core_temperature(measurements):
    thermometer = open('/sys/class/thermal/thermal_zone0/temp', 'r')
    tempText = thermometer.read() 
    thermometer.close()
    temp = float(tempText) / 1000
    measurements['core_temp'] = temp

def measure():
    measurements = {}
    measure_electric_values(measurements)
    measurements['cpu_percent']=psutil.cpu_percent(interval=1)
    measurements['memory_percent']=psutil.virtual_memory().percent
    measure_io(measurements)
    measure_ambient_temperature(measurements) 
    measure_core_temperature(measurements)
    return measurements

