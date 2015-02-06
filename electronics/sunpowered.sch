EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:relays
LIBS:sunpowered-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR?
U 1 1 54D4FE11
P 900 3950
F 0 "#PWR?" H 900 3700 60  0001 C CNN
F 1 "GND" H 900 3800 60  0000 C CNN
F 2 "" H 900 3950 60  0000 C CNN
F 3 "" H 900 3950 60  0000 C CNN
	1    900  3950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 54D4FF40
P 1350 1500
F 0 "#PWR?" H 1350 1350 60  0001 C CNN
F 1 "VCC" H 1350 1650 60  0000 C CNN
F 2 "" H 1350 1500 60  0000 C CNN
F 3 "" H 1350 1500 60  0000 C CNN
	1    1350 1500
	1    0    0    -1  
$EndComp
$Comp
L FUSE F?
U 1 1 54D4FF79
P 2250 1750
F 0 "F?" H 2350 1800 50  0000 C CNN
F 1 "FUSE" H 2150 1700 50  0000 C CNN
F 2 "" H 2250 1750 60  0000 C CNN
F 3 "" H 2250 1750 60  0000 C CNN
	1    2250 1750
	1    0    0    -1  
$EndComp
$Comp
L DIODE D?
U 1 1 54D500EA
P 1550 1750
F 0 "D?" H 1550 1850 50  0000 C CNN
F 1 "DIODE" H 1550 1650 50  0000 C CNN
F 2 "" H 1550 1750 60  0000 C CNN
F 3 "" H 1550 1750 60  0000 C CNN
	1    1550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1500 1350 1750
Wire Wire Line
	1750 1750 2000 1750
Wire Wire Line
	2500 1750 3050 1750
$Comp
L FINDER-36.11-4301 RL?
U 1 1 54D5046E
P 3350 1550
F 0 "RL?" V 3800 1550 50  0000 L CNN
F 1 "FINDER-36.11-4301" V 3900 1200 50  0000 L CNN
F 2 "" H 3350 1550 60  0000 C CNN
F 3 "" H 3350 1550 60  0000 C CNN
	1    3350 1550
	0    1    1    0   
$EndComp
$Comp
L +BATT #PWR?
U 1 1 54D50A58
P 4650 800
F 0 "#PWR?" H 4650 650 60  0001 C CNN
F 1 "+BATT" H 4650 940 60  0000 C CNN
F 2 "" H 4650 800 60  0000 C CNN
F 3 "" H 4650 800 60  0000 C CNN
	1    4650 800 
	1    0    0    -1  
$EndComp
$EndSCHEMATC
