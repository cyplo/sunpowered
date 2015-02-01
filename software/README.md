## python scripts

     ~# aptitude install python-smbus python-daemon python-zdaemon python-pip python-dev libpng-dev                              
                                                                                                                                  
     ~# pip install --upgrade jinja2 mpld3 pyowm matplotlib psutil

     ~# cat /etc/modules 
     bcm2708-rng
     ipv6
     i2c-bcm2708 
     i2c-dev

     ~# zdaemon -p 'python /mnt/sunpowered/pimeasure_daemon.py' -d -s /var/run/pimeasure start

these
* gather data from sensors connected through adcPi
* are able to plot this data afterwards and serve in simple http server

##TODO:
* make acquisition interval much longer, however detect potentially interesting events and then temporarily increase resolution
* add freakin tests 
* make data acquisition done on separate thread, should help with small dents in the graph

sample output:
temperature data: {'temp_max': 0.65, 'temp_kf': None, 'temp': 0.65, 'temp_min': 0.65}
storing ambient temperature: 0.65
{   '5V_rail_voltage': 5.0778945519762955,
    'ambient_temperature': 0.65,
    'battery_voltage': 11.31350285285735,
    'core_temp': 29.324,
    'current_sensor_vcc': 5.0572940454,
    'current_sensor_voltage': 0.17417646809999976,
    'current_sensor_voltage_offset': 2.5286470227,
    'current_sensor_voltage_raw': 2.7028234907999997,
    'load_current': 0.9414944221621608,
    'load_power_usage': 10.66066680758602,
    'load_voltage': 11.323133262015068,
    'panel_voltage': 1.0100209037217178,
    'timestamp': 1420318533.348292
}
