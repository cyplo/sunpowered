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
LIBS:dc-dc
LIBS:sunpowered-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Sunpowered Pi"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1050 1000 2050 1650
U 55E0BF75
F0 "Input Measurement And Protection" 61
F1 "input_board.sch" 61
F2 "RawPositive" O R 3100 1200 60 
F3 "RawGround" O R 3100 1400 60 
F4 "+5V" B L 1050 1700 60 
F5 "GNDD" B L 1050 2150 60 
F6 "PanelCurrentSense" O R 3100 2550 39 
F7 "PanelVoltageSense-" O R 3100 2450 39 
F8 "PanelVoltageSense+" O R 3100 2350 39 
F9 "CurrentVoltageSense" O R 3100 2250 39 
F10 "PowerIn+" I L 1050 1200 60 
F11 "PowerIn-" I L 1050 1400 60 
$EndSheet
$Sheet
S 4650 1000 1800 1650
U 55EBECF9
F0 "5V 3A Power Supply" 60
F1 "5V_power.sch" 60
F2 "RawPositive" I L 4650 1200 60 
F3 "RawGround" I L 4650 1400 60 
F4 "+5V" B R 6450 1200 60 
F5 "GNDD" B R 6450 1400 60 
$EndSheet
Wire Wire Line
	3100 1200 4650 1200
Wire Wire Line
	3100 1400 4650 1400
$Comp
L GNDD #PWR01
U 1 1 55EC07A8
P 6900 1450
F 0 "#PWR01" H 6900 1200 50  0001 C CNN
F 1 "GNDD" H 6900 1300 50  0000 C CNN
F 2 "" H 6900 1450 60  0000 C CNN
F 3 "" H 6900 1450 60  0000 C CNN
	1    6900 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2150 750  2150
Wire Wire Line
	750  2150 750  2850
$Comp
L GNDD #PWR02
U 1 1 55EC086D
P 750 2850
F 0 "#PWR02" H 750 2600 50  0001 C CNN
F 1 "GNDD" H 750 2700 50  0000 C CNN
F 2 "" H 750 2850 60  0000 C CNN
F 3 "" H 750 2850 60  0000 C CNN
	1    750  2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1700 750  1700
Wire Wire Line
	750  1700 750  1500
$Comp
L +5V #PWR03
U 1 1 55EC0A95
P 750 1550
F 0 "#PWR03" H 750 1400 50  0001 C CNN
F 1 "+5V" H 750 1690 50  0000 C CNN
F 2 "" H 750 1550 60  0000 C CNN
F 3 "" H 750 1550 60  0000 C CNN
	1    750  1550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 55EC0AFD
P 6900 1100
F 0 "#PWR04" H 6900 950 50  0001 C CNN
F 1 "+5V" H 6900 1240 50  0000 C CNN
F 2 "" H 6900 1100 60  0000 C CNN
F 3 "" H 6900 1100 60  0000 C CNN
	1    6900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1200 6900 1200
Wire Wire Line
	6900 1200 6900 1100
Wire Wire Line
	6450 1400 6900 1400
Wire Wire Line
	6900 1400 6900 1450
$Comp
L PWR_FLAG #FLG05
U 1 1 566DC0A4
P 6600 1200
F 0 "#FLG05" H 6600 1295 50  0001 C CNN
F 1 "PWR_FLAG" H 6600 1380 50  0000 C CNN
F 2 "" H 6600 1200 60  0000 C CNN
F 3 "" H 6600 1200 60  0000 C CNN
	1    6600 1200
	1    0    0    -1  
$EndComp
Connection ~ 6600 1200
$EndSCHEMATC
