from adc_pi import *
from owm_config import owm_api_key
import sys
import urllib2
import time
import json
import pyowm

#weather api has dos protection, call at most every this number of minutes
weather_call_interval = 15 * 60
last_weather_call = 0

ambient_temperature = 0.0

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

def measure():
    raw_values = measure_raw()

    measurements = {}

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
    thermometer = open('/sys/class/thermal/thermal_zone0/temp', 'r')
    tempText = thermometer.read() 
    thermometer.close()
    temp = float(tempText) / 1000
    measurements['core_temp'] = temp
    global ambient_temperature
    global last_weather_call
    if time.time() - last_weather_call >  weather_call_interval:
        last_weather_call = time.time() 
        print "fetching weather data..."
        try:
            owm = pyowm.OWM(owm_api_key())
            observation = owm.weather_at('Wroclaw, pl')
            weather = observation.get_weather()
            temperature_data = weather.get_temperature('celsius')
            print "temperature data: " + str(temperature_data)
            ambient_temperature = float(temperature_data['temp'])
            print "storing ambient temperature: " + str(ambient_temperature)
        except: 
            print "error fetching weather data"
            pass

    measurements['ambient_temperature'] = ambient_temperature
    return measurements

