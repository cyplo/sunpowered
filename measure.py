from adc_pi import *
import time

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
	measurements['regulated_12V_rail_voltage'] = raw_values[5]
	measurements['regulated_5V__rail_voltage'] = raw_values[6]
	measurements['current_sensor_voltage_raw'] = raw_values[7] 
	measurements['current_sensor_voltage_offset'] = measurements['current_sensor_vcc'] / 2
	measurements['current_sensor_voltage'] = measurements['current_sensor_voltage_raw'] - measurements['current_sensor_voltage_offset']
	measurements['load_current']    = measurements['current_sensor_voltage'] / 0.185
 	measurements['load_power_usage'] = measurements['load_voltage'] * measurements['load_current']
	measurements['timestamp'] = time.time()
	return measurements

