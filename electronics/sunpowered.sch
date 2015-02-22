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
LIBS:nxp_armmcu
LIBS:dc-dc
LIBS:sunpowered-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Solar Panel Input Board"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ZENER D1
U 1 1 54D52D0F
P 6900 2000
F 0 "D1" V 6900 2100 50  0000 C CNN
F 1 "24V" V 6800 2100 50  0000 C CNN
F 2 "Diodes_SMD:Diode-SMC_Handsoldering" H 6900 2000 60  0001 C CNN
F 3 "http://www.comchiptech.com/cms/UserFiles/ACZRC5333B-G%20Thru.%20ACZRC5388B-G%20RevA.pdf" H 6900 2000 60  0001 C CNN
F 4 "~" V 7000 1650 39  0000 C CNN "Note"
	1    6900 2000
	0    -1   -1   0   
$EndComp
$Comp
L FUSE F1
U 1 1 54D5362E
P 4300 1550
F 0 "F1" H 4400 1600 50  0000 C CNN
F 1 "8A" H 4200 1500 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_universal_Type-III" H 4300 1550 60  0001 C CNN
F 3 "" H 4300 1550 60  0000 C CNN
	1    4300 1550
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 54D539D0
P 6500 2300
F 0 "C4" H 6550 2400 50  0000 L CNN
F 1 "100n" H 6550 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6538 2150 30  0001 C CNN
F 3 "" H 6500 2300 60  0000 C CNN
	1    6500 2300
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 54D53A8D
P 6900 2650
F 0 "R2" H 7000 2450 50  0000 C CNN
F 1 "1k" V 6907 2651 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6830 2650 30  0001 C CNN
F 3 "" H 6900 2650 30  0000 C CNN
	1    6900 2650
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 54D53D1F
P 7250 2700
F 0 "C5" H 7300 2800 50  0000 L CNN
F 1 "47n" H 7300 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7288 2550 30  0001 C CNN
F 3 "" H 7250 2700 60  0000 C CNN
	1    7250 2700
	1    0    0    -1  
$EndComp
$Comp
L THYRISTOR T1
U 1 1 54D53E05
P 7650 2250
F 0 "T1" V 7650 2350 50  0000 C CNN
F 1 "12A" V 7650 2100 50  0000 C CNN
F 2 "Transistors_SMD:sot428" H 7650 2250 60  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/BT151S_SER_L_R.pdf" H 7650 2250 60  0001 C CNN
	1    7650 2250
	0    -1   1    0   
$EndComp
$Comp
L DIODESCH D2
U 1 1 54D53FCE
P 8200 1550
F 0 "D2" H 8200 1650 50  0000 C CNN
F 1 "12A" H 8200 1450 50  0000 C CNN
F 2 "Diodes_SMD:Diode-SMC_Handsoldering" H 8200 1550 60  0001 C CNN
F 3 "http://www.vishay.com/docs/89094/v12p12.pdf" H 8200 1550 60  0001 C CNN
	1    8200 1550
	1    0    0    -1  
$EndComp
$Comp
L MOS_N Q1
U 1 1 54D70F3D
P 9300 2400
F 0 "Q1" H 9250 2250 50  0000 R CNN
F 1 "PSMN0R9-30YLD" V 9500 2650 50  0000 R CNN
F 2 "cyplo's:TO277A" H 9300 2400 60  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PSMN0R9-30YLD.pdf" H 9300 2400 60  0001 C CNN
	1    9300 2400
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 54D70FF3
P 8600 2650
F 0 "R4" H 8700 2550 50  0000 C CNN
F 1 "10k" V 8607 2651 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8530 2650 30  0001 C CNN
F 3 "" H 8600 2650 30  0000 C CNN
	1    8600 2650
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 54D7146D
P 8850 2400
F 0 "R5" V 8750 2400 50  0000 C CNN
F 1 "1k" V 8857 2401 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8780 2400 30  0001 C CNN
F 3 "" H 8850 2400 30  0000 C CNN
	1    8850 2400
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 54D74223
P 4600 2250
F 0 "C2" H 4700 2250 50  0000 L CNN
F 1 "100n" H 4300 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4638 2100 30  0001 C CNN
F 3 "" H 4600 2250 60  0000 C CNN
	1    4600 2250
	1    0    0    -1  
$EndComp
$Comp
L DPST SW1
U 1 1 54D5CEC6
P 3300 2400
F 0 "SW1" H 3600 2450 50  0000 C CNN
F 1 "DPST" H 3600 2350 50  0001 C CNN
F 2 "" H 3300 2400 60  0001 C CNN
F 3 "" H 3300 2400 60  0000 C CNN
	1    3300 2400
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 54D76924
P 5450 2400
F 0 "C3" V 5500 2450 50  0000 L CNN
F 1 "47n" V 5500 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5488 2250 30  0001 C CNN
F 3 "" H 5450 2400 60  0000 C CNN
	1    5450 2400
	0    1    1    0   
$EndComp
Text GLabel 4150 3250 0    60   Output ~ 0
PanelCurrentSense
Text GLabel 4700 1300 0    60   Output ~ 0
PanelVoltageSense+
Text GLabel 4150 3050 0    60   Output ~ 0
PanelVoltageSense-
$Comp
L R R1
U 1 1 54D78812
P 4250 1950
F 0 "R1" V 4330 1950 50  0000 C CNN
F 1 "330" V 4257 1951 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 1950 30  0001 C CNN
F 3 "" H 4250 1950 30  0000 C CNN
	1    4250 1950
	0    1    1    0   
$EndComp
$Comp
L ACS713ELCTR-30A-T IC1
U 1 1 54D71B52
P 5150 1950
F 0 "IC1" V 5400 1500 50  0000 L CNN
F 1 "ACS713" V 5000 1300 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5150 1950 50  0001 C CIN
F 3 "http://www.allegromicro.com/en/Products/Part_Numbers/0713/0713.pdf" H 5250 2400 60  0001 C CNN
F 4 "Current sensor" V 4900 1400 39  0000 C CNN "Note"
	1    5150 1950
	0    -1   1    0   
$EndComp
Text Notes 6450 1400 0    60   ~ 0
Overvoltage protection
Text Notes 4750 1100 0    60   ~ 0
Input measurements
Text Notes 8450 3100 0    60   ~ 0
Power on soft switch
$Comp
L CONN_01X02 P1
U 1 1 54E865F8
P 2600 2400
F 0 "P1" H 2600 2550 50  0000 C CNN
F 1 "CONN_01X02" V 2700 2400 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_WAGO-236_2Stift_RM5mm_2pol" H 2600 2400 60  0001 C CNN
F 3 "" H 2600 2400 60  0000 C CNN
	1    2600 2400
	-1   0    0    1   
$EndComp
Text GLabel 3050 4300 0    60   Input ~ 0
PanelCurrentSense
Text GLabel 3050 4100 0    60   Output ~ 0
PowerOn
Text GLabel 3750 3650 2    60   Input ~ 0
PanelVoltageSense-
Text GLabel 3050 3900 0    60   Input ~ 0
PanelVoltageSense+
$Comp
L JUMPER3 JP1
U 1 1 54E8B95C
P 8400 2400
F 0 "JP1" H 8450 2300 50  0000 L CNN
F 1 "JUMPER3" H 8400 2500 50  0001 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 8400 2400 60  0001 C CNN
F 3 "" H 8400 2400 60  0000 C CNN
	1    8400 2400
	0    -1   -1   0   
$EndComp
$Comp
L GNDD #PWR01
U 1 1 54E8C51D
P 4600 2550
F 0 "#PWR01" H 4600 2300 60  0001 C CNN
F 1 "GNDD" H 4600 2400 60  0001 C CNN
F 2 "" H 4600 2550 60  0000 C CNN
F 3 "" H 4600 2550 60  0000 C CNN
	1    4600 2550
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 54E8C723
P 8400 1800
F 0 "R3" H 8500 1800 50  0000 C CNN
F 1 "5k" V 8407 1801 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 1800 30  0001 C CNN
F 3 "" H 8400 1800 30  0000 C CNN
	1    8400 1800
	1    0    0    -1  
$EndComp
Text Notes 8300 2250 1    60   ~ 0
Always On
Text Notes 8300 2800 1    60   ~ 0
External
Text GLabel 8350 3250 0    60   Input ~ 0
PowerOn
$Comp
L GNDD #PWR02
U 1 1 54E8DA9A
P 5750 2600
F 0 "#PWR02" H 5750 2350 60  0001 C CNN
F 1 "GNDD" H 5750 2450 60  0001 C CNN
F 2 "" H 5750 2600 60  0000 C CNN
F 3 "" H 5750 2600 60  0000 C CNN
	1    5750 2600
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 P2
U 1 1 54E8EADE
P 3500 4050
F 0 "P2" H 3500 4300 50  0000 C CNN
F 1 "CONN_02X04" H 3500 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04" H 3500 2850 60  0001 C CNN
F 3 "" H 3500 2850 60  0000 C CNN
	1    3500 4050
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR03
U 1 1 54E8F601
P 3950 4350
F 0 "#PWR03" H 3950 4100 60  0001 C CNN
F 1 "GNDD" H 3950 4200 60  0001 C CNN
F 2 "" H 3950 4350 60  0000 C CNN
F 3 "" H 3950 4350 60  0000 C CNN
	1    3950 4350
	1    0    0    -1  
$EndComp
$Comp
L CP2 C1
U 1 1 54E900DF
P 4350 4300
F 0 "C1" H 4150 4300 50  0000 L CNN
F 1 "4700u" H 4450 4300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:Capacitor5x11RM2.5" H 4388 4150 30  0001 C CNN
F 3 "" H 4350 4300 60  0000 C CNN
	1    4350 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 54E90EDF
P 9850 1600
F 0 "P3" H 9850 1750 50  0000 C CNN
F 1 "CONN_01X02" V 9950 1600 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_WAGO-236_2Stift_RM5mm_2pol" H 9850 1600 60  0001 C CNN
F 3 "" H 9850 1600 60  0000 C CNN
	1    9850 1600
	1    0    0    -1  
$EndComp
NoConn ~ 3750 4000
NoConn ~ 3250 4000
$Comp
L PWR_FLAG #FLG04
U 1 1 54E921B9
P 3950 4350
F 0 "#FLG04" H 3950 4445 30  0001 C CNN
F 1 "PWR_FLAG" H 3950 4530 30  0001 C CNN
F 2 "" H 3950 4350 60  0000 C CNN
F 3 "" H 3950 4350 60  0000 C CNN
	1    3950 4350
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 54E928ED
P 5350 1550
F 0 "#FLG05" H 5350 1645 30  0001 C CNN
F 1 "PWR_FLAG" H 5350 1730 30  0001 C CNN
F 2 "" H 5350 1550 60  0000 C CNN
F 3 "" H 5350 1550 60  0000 C CNN
	1    5350 1550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 54E956DF
P 4700 4100
F 0 "#PWR06" H 4700 3950 60  0001 C CNN
F 1 "+5V" H 4700 4240 60  0000 C CNN
F 2 "" H 4700 4100 60  0000 C CNN
F 3 "" H 4700 4100 60  0000 C CNN
	1    4700 4100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 54E9585A
P 4000 1850
F 0 "#PWR07" H 4000 1700 60  0001 C CNN
F 1 "+5V" H 4000 1990 60  0001 C CNN
F 2 "" H 4000 1850 60  0000 C CNN
F 3 "" H 4000 1850 60  0000 C CNN
	1    4000 1850
	1    0    0    -1  
$EndComp
Connection ~ 6900 1550
Connection ~ 6900 2900
Connection ~ 7250 2900
Wire Wire Line
	7650 1550 7650 2050
Connection ~ 7650 1550
Wire Wire Line
	7650 2900 7650 2450
Connection ~ 7650 2900
Wire Wire Line
	6500 2900 6500 2500
Connection ~ 6500 2900
Wire Wire Line
	6500 1550 6500 2100
Connection ~ 6500 1550
Wire Wire Line
	3800 1550 3800 2200
Wire Wire Line
	9400 1900 9650 1900
Connection ~ 5350 1550
Wire Wire Line
	4950 2350 4950 3250
Wire Wire Line
	8600 2400 8500 2400
Wire Wire Line
	4550 1550 5050 1550
Wire Wire Line
	3800 1550 4050 1550
Wire Wire Line
	3800 2600 3800 2900
Wire Wire Line
	4950 1300 4950 1550
Connection ~ 4950 1550
Wire Wire Line
	6900 1550 6900 1800
Wire Wire Line
	6900 2200 6900 2400
Connection ~ 6900 2350
Connection ~ 8600 2900
Connection ~ 8600 2400
Wire Wire Line
	4950 3250 4150 3250
Wire Wire Line
	4700 1300 4950 1300
Wire Wire Line
	6900 2350 7500 2350
Wire Wire Line
	7250 2500 7250 2350
Connection ~ 7250 2350
Wire Wire Line
	9400 1900 9400 2200
Wire Wire Line
	9400 2900 9400 2600
Wire Wire Line
	2800 2200 2800 2350
Wire Wire Line
	2800 2450 2800 2600
Wire Wire Line
	8400 1550 9650 1550
Connection ~ 8400 1550
Wire Wire Line
	8400 2650 8400 3250
Wire Wire Line
	8400 3250 8350 3250
Wire Wire Line
	4550 3050 4550 2900
Connection ~ 4550 2900
Wire Wire Line
	4550 3050 4150 3050
Wire Wire Line
	3800 2900 9400 2900
Wire Wire Line
	8400 2050 8400 2150
Wire Wire Line
	5250 2350 5250 2400
Wire Wire Line
	5750 1950 5750 2600
Wire Wire Line
	5750 2400 5650 2400
Connection ~ 5750 2400
Wire Wire Line
	3250 3900 3050 3900
Wire Wire Line
	3750 3650 3750 3900
Wire Wire Line
	3050 4100 3250 4100
Wire Wire Line
	3750 4100 4700 4100
Wire Wire Line
	3050 4300 3150 4300
Wire Wire Line
	3150 4300 3150 4200
Wire Wire Line
	3150 4200 3250 4200
Wire Wire Line
	3950 4350 3950 4200
Wire Wire Line
	3950 4200 3750 4200
Wire Wire Line
	9650 1900 9650 1650
Wire Wire Line
	5750 1950 5550 1950
Wire Wire Line
	5250 1550 8000 1550
Wire Wire Line
	4500 1950 4750 1950
Wire Wire Line
	4600 2550 4600 2450
Wire Wire Line
	4600 2050 4600 1950
Connection ~ 4600 1950
Wire Wire Line
	4000 1850 4000 1950
$Comp
L PWR_FLAG #FLG08
U 1 1 54E96C83
P 4350 4100
F 0 "#FLG08" H 4350 4195 30  0001 C CNN
F 1 "PWR_FLAG" H 4350 4280 30  0001 C CNN
F 2 "" H 4350 4100 60  0000 C CNN
F 3 "" H 4350 4100 60  0000 C CNN
	1    4350 4100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG09
U 1 1 54E92590
P 3800 1550
F 0 "#FLG09" H 3800 1645 30  0001 C CNN
F 1 "PWR_FLAG" H 3800 1730 30  0001 C CNN
F 2 "" H 3800 1550 60  0000 C CNN
F 3 "" H 3800 1550 60  0000 C CNN
	1    3800 1550
	1    0    0    -1  
$EndComp
Text Notes 4050 1850 0    39   ~ 0
15mA
Connection ~ 4350 4100
$Comp
L GNDD #PWR010
U 1 1 54E9AC18
P 4350 4500
F 0 "#PWR010" H 4350 4250 60  0001 C CNN
F 1 "GNDD" H 4350 4350 60  0000 C CNN
F 2 "" H 4350 4500 60  0000 C CNN
F 3 "" H 4350 4500 60  0000 C CNN
	1    4350 4500
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG011
U 1 1 54E96236
P 4600 1950
F 0 "#FLG011" H 4600 2045 30  0001 C CNN
F 1 "PWR_FLAG" H 4600 2130 30  0001 C CNN
F 2 "" H 4600 1950 60  0000 C CNN
F 3 "" H 4600 1950 60  0000 C CNN
	1    4600 1950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
