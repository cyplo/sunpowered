## python scripts

     ~# aptitude install python-smbus python-pip python-dev libpng-dev                              
                                                                                                                                  
     ~# pip install --upgrade jinja2 mpld3 pyowm psutil influxdb

     ~# cat /etc/modules 
     bcm2708-rng
     ipv6
     i2c-bcm2708 
     i2c-dev

     ~# python make_measurement.py

the above
* gathers data from sensors connected through adcPi and open weather portal
* sends the data sample to an influxdb instance

##TODO:
* add freakin tests
