## python scripts

     ~# aptitude install python-smbus python-matplotlib python-daemon python-zdaemon

     ~# cat /etc/modules 
     bcm2708-rng
     ipv6
     i2c-bcm2708 
     i2c-dev

     ~# zdaemon -p 'python /mnt/sunpowered/pimeasure_daemon.py' -d -s /var/run/pimeasure start

these
* gather data from sensors connected through adcPi
* are able to plot this data afterwards and serve in simple http server

## bill of materials:
* 3x 500mmx500mm 5mm plexi sheet
* general mounting screw: M3 x12mm
* 

##TODO:
* make acquisition interval much longer, however detect potentially interesting events and then temporarily increase resolution
* add freakin tests 
* make data acquisition done on separate thread, should help with small dents in the graph
