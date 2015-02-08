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
LIBS:sensors
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
L ZENER D?
U 1 1 54D52D0F
P 5150 1750
F 0 "D?" V 5150 1850 50  0000 C CNN
F 1 "24V" V 5050 1850 50  0000 C CNN
F 2 "" H 5150 1750 60  0000 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MMSZ5221-MMSZ5259%28SOD123%29.pdf" H 5150 1750 60  0001 C CNN
F 4 "OV protection" V 5250 1400 39  0000 C CNN "Note"
	1    5150 1750
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 54D531B0
P 850 1950
F 0 "P?" H 850 2050 50  0000 C CNN
F 1 "CONN_01X01" V 950 1950 50  0001 C CNN
F 2 "" H 850 1950 60  0000 C CNN
F 3 "" H 850 1950 60  0000 C CNN
	1    850  1950
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 54D531ED
P 850 2350
F 0 "P?" H 850 2450 50  0000 C CNN
F 1 "CONN_01X01" V 950 2350 50  0001 C CNN
F 2 "" H 850 2350 60  0000 C CNN
F 3 "" H 850 2350 60  0000 C CNN
	1    850  2350
	-1   0    0    1   
$EndComp
$Comp
L FUSE F?
U 1 1 54D5362E
P 2550 1300
F 0 "F?" H 2650 1350 50  0000 C CNN
F 1 "8A" H 2450 1250 50  0000 C CNN
F 2 "" H 2550 1300 60  0000 C CNN
F 3 "" H 2550 1300 60  0000 C CNN
	1    2550 1300
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 54D539D0
P 4750 2050
F 0 "C?" H 4800 2150 50  0000 L CNN
F 1 "100n" H 4800 1950 50  0000 L CNN
F 2 "" H 4788 1900 30  0000 C CNN
F 3 "" H 4750 2050 60  0000 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54D53A8D
P 5150 2400
F 0 "R?" H 5250 2200 50  0000 C CNN
F 1 "1k" V 5157 2401 50  0000 C CNN
F 2 "" V 5080 2400 30  0000 C CNN
F 3 "" H 5150 2400 30  0000 C CNN
	1    5150 2400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 54D53D1F
P 5500 2450
F 0 "C?" H 5550 2550 50  0000 L CNN
F 1 "47n" H 5550 2350 50  0000 L CNN
F 2 "" H 5538 2300 30  0000 C CNN
F 3 "" H 5500 2450 60  0000 C CNN
	1    5500 2450
	1    0    0    -1  
$EndComp
$Comp
L THYRISTOR T?
U 1 1 54D53E05
P 5900 2000
F 0 "T?" V 5900 2100 50  0000 C CNN
F 1 "12A" V 5900 1850 50  0000 C CNN
F 2 "" H 5900 2000 60  0000 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/BT151S_SER_L_R.pdf" H 5900 2000 60  0001 C CNN
	1    5900 2000
	0    -1   1    0   
$EndComp
$Comp
L DIODESCH D?
U 1 1 54D53FCE
P 6500 1300
F 0 "D?" H 6500 1400 50  0000 C CNN
F 1 "12A" H 6500 1200 50  0000 C CNN
F 2 "" H 6500 1300 60  0000 C CNN
F 3 "http://www.vishay.com/docs/89094/v12p12.pdf" H 6500 1300 60  0001 C CNN
	1    6500 1300
	1    0    0    -1  
$EndComp
$Comp
L ZENER D?
U 1 1 54D5E43B
P 4500 1750
F 0 "D?" V 4500 1850 50  0000 C CNN
F 1 "23V" V 4400 1850 50  0000 C CNN
F 2 "" H 4500 1750 60  0000 C CNN
F 3 "" H 4500 1750 60  0000 C CNN
	1    4500 1750
	0    -1   -1   0   
$EndComp
$Comp
L MOS_N Q?
U 1 1 54D70F3D
P 7550 2150
F 0 "Q?" H 7560 2320 50  0000 R CNN
F 1 "MOS_N" H 7500 2000 50  0000 R CNN
F 2 "" H 7550 2150 60  0000 C CNN
F 3 "" H 7550 2150 60  0000 C CNN
	1    7550 2150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54D70FF3
P 6850 2400
F 0 "R?" V 6930 2400 50  0000 C CNN
F 1 "10k" V 6857 2401 50  0000 C CNN
F 2 "" V 6780 2400 30  0000 C CNN
F 3 "" H 6850 2400 30  0000 C CNN
	1    6850 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 54D712EB
P 7900 1950
F 0 "#PWR01" H 7900 1700 60  0001 C CNN
F 1 "GND" H 7900 1800 60  0000 C CNN
F 2 "" H 7900 1950 60  0000 C CNN
F 3 "" H 7900 1950 60  0000 C CNN
	1    7900 1950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 54D7132A
P 7900 1300
F 0 "#PWR02" H 7900 1150 60  0001 C CNN
F 1 "VCC" H 7900 1450 60  0000 C CNN
F 2 "" H 7900 1300 60  0000 C CNN
F 3 "" H 7900 1300 60  0000 C CNN
	1    7900 1300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54D7146D
P 7100 2150
F 0 "R?" V 7180 2150 50  0000 C CNN
F 1 "R" V 7107 2151 50  0000 C CNN
F 2 "" V 7030 2150 30  0000 C CNN
F 3 "" H 7100 2150 30  0000 C CNN
	1    7100 2150
	0    1    1    0   
$EndComp
$Comp
L +5P #PWR03
U 1 1 54D71F91
P 2550 1750
F 0 "#PWR03" H 2550 1600 60  0001 C CNN
F 1 "+5P" H 2550 1890 60  0000 C CNN
F 2 "" H 2550 1750 60  0000 C CNN
F 3 "" H 2550 1750 60  0000 C CNN
	1    2550 1750
	1    0    0    -1  
$EndComp
$Comp
L ACS713ELCTR-30A-T IC?
U 1 1 54D71B52
P 3450 1850
F 0 "IC?" V 3650 2200 50  0000 L CNN
F 1 "ACS713" V 3300 1200 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3450 1850 50  0001 C CIN
F 3 "http://www.allegromicro.com/en/Products/Part_Numbers/0713/0713.pdf" H 3550 2300 60  0001 C CNN
F 4 "Current sensor" V 3200 1300 39  0000 C CNN "Note"
	1    3450 1850
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 54D74223
P 2550 2300
F 0 "C?" H 2400 2400 50  0000 L CNN
F 1 "0.1u" H 2300 2150 50  0000 L CNN
F 2 "" H 2588 2150 30  0000 C CNN
F 3 "" H 2550 2300 60  0000 C CNN
	1    2550 2300
	1    0    0    -1  
$EndComp
$Comp
L DPST SW?
U 1 1 54D5CEC6
P 1550 2150
F 0 "SW?" H 1850 2200 50  0000 C CNN
F 1 "DPST" H 1850 2100 50  0001 C CNN
F 2 "" H 1550 2150 60  0000 C CNN
F 3 "" H 1550 2150 60  0000 C CNN
	1    1550 2150
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 54D76924
P 3550 2450
F 0 "C?" H 3600 2550 50  0000 L CNN
F 1 "47n" H 3600 2350 50  0000 L CNN
F 2 "" H 3588 2300 30  0000 C CNN
F 3 "" H 3550 2450 60  0000 C CNN
	1    3550 2450
	1    0    0    -1  
$EndComp
Text GLabel 2950 2950 0    60   Output ~ 0
PanelCurrentSense
Text GLabel 6400 2950 0    60   Input ~ 0
PowerOn
Connection ~ 5150 1300
Connection ~ 5150 2650
Wire Wire Line
	2050 2650 2550 2650
Wire Wire Line
	2550 2650 3150 2650
Wire Wire Line
	3150 2650 4000 2650
Wire Wire Line
	4000 2650 4500 2650
Wire Wire Line
	4500 2650 4750 2650
Wire Wire Line
	4750 2650 5150 2650
Wire Wire Line
	5150 2650 5500 2650
Wire Wire Line
	5500 2650 5900 2650
Wire Wire Line
	5900 2650 6850 2650
Wire Wire Line
	6850 2650 7650 2650
Wire Wire Line
	7650 2650 7900 2650
Connection ~ 5500 2650
Wire Wire Line
	5900 1300 5900 1800
Connection ~ 5900 1300
Wire Wire Line
	5900 2650 5900 2200
Connection ~ 5900 2650
Wire Wire Line
	4750 2650 4750 2250
Connection ~ 4750 2650
Wire Wire Line
	4750 1300 4750 1850
Connection ~ 4750 1300
Wire Wire Line
	4500 2650 4500 1950
Connection ~ 4500 2650
Wire Wire Line
	2050 1300 2050 1950
Wire Wire Line
	6700 1300 7900 1300
Wire Wire Line
	7650 2650 7650 2300
Connection ~ 4500 1300
Wire Wire Line
	7650 1950 7900 1950
Connection ~ 3650 1300
Wire Wire Line
	3250 2250 3250 2950
Wire Wire Line
	6850 2150 6500 2150
Wire Wire Line
	6500 2150 6500 2950
Wire Wire Line
	3550 1300 3650 1300
Wire Wire Line
	3650 1300 4500 1300
Wire Wire Line
	4500 1300 4750 1300
Wire Wire Line
	4750 1300 5150 1300
Wire Wire Line
	5150 1300 5900 1300
Wire Wire Line
	5900 1300 6550 1300
Wire Wire Line
	2800 1300 3250 1300
Wire Wire Line
	3250 1300 3350 1300
Wire Wire Line
	2050 1300 2300 1300
Wire Wire Line
	2050 2350 2050 2650
Wire Wire Line
	3250 1050 3250 1300
Wire Wire Line
	3250 1300 3250 1450
Connection ~ 3250 1300
Wire Wire Line
	3650 1300 3650 1300
Wire Wire Line
	4500 1300 4500 1550
Wire Wire Line
	5150 1300 5150 1550
Wire Wire Line
	5150 1950 5150 2100
Wire Wire Line
	5150 2100 5150 2150
Connection ~ 5150 2100
Connection ~ 7650 2650
Connection ~ 6850 2650
Connection ~ 6850 2150
Wire Wire Line
	2550 1750 2550 2100
Wire Wire Line
	2550 2500 2550 2650
Connection ~ 2550 2650
Wire Wire Line
	4000 2650 4000 1850
Wire Wire Line
	3550 2250 3550 2250
Wire Wire Line
	3250 2950 2950 2950
Wire Wire Line
	6500 2950 6400 2950
Text GLabel 2950 1050 0    60   Output ~ 0
PanelVoltageSense+
Wire Wire Line
	2950 1050 3250 1050
Text GLabel 2950 2800 0    60   Output ~ 0
PanelVoltageSense-
Wire Wire Line
	2950 2800 3150 2800
Wire Wire Line
	3150 2800 3150 2650
Connection ~ 3150 2650
Connection ~ 4000 2650
Wire Wire Line
	4000 1850 3850 1850
Wire Wire Line
	5150 2100 5500 2100
Wire Wire Line
	5500 2100 5750 2100
Wire Wire Line
	5500 2250 5500 2100
Connection ~ 5500 2100
$Comp
L R R?
U 1 1 54D78812
P 2800 1850
F 0 "R?" V 2880 1850 50  0000 C CNN
F 1 "220" V 2807 1851 50  0000 C CNN
F 2 "" V 2730 1850 30  0000 C CNN
F 3 "" H 2800 1850 30  0000 C CNN
	1    2800 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 1450 3650 1300
Wire Wire Line
	3550 1450 3550 1300
Wire Wire Line
	3350 1300 3350 1450
$EndSCHEMATC
