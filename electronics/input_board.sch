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
Sheet 3 3
Title "Sunpowered Input Board"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ZENER D3
U 1 1 55E0D9D5
P 5750 1750
F 0 "D3" V 5750 1850 50  0000 C CNN
F 1 "22V" V 5650 1850 50  0000 C CNN
F 2 "Diodes_SMD:Diode-SMB_Standard" H 5750 1750 60  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/c2d23b0bf5a10da03f2379b0c2e473b6/1SMB5913BT3-D.PDF" H 5750 1750 60  0001 C CNN
	1    5750 1750
	0    1    1    0   
$EndComp
$Comp
L FUSE F1
U 1 1 55E0D9DC
P 3150 1300
F 0 "F1" H 3250 1350 50  0000 C CNN
F 1 "8A" H 3050 1250 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_universal_Type-III" H 3150 1300 60  0001 C CNN
F 3 "" H 3150 1300 60  0000 C CNN
	1    3150 1300
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 55E0D9E3
P 5350 2050
F 0 "C3" H 5400 2150 50  0000 L CNN
F 1 "100n" H 5400 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5388 1900 30  0001 C CNN
F 3 "" H 5350 2050 60  0000 C CNN
	1    5350 2050
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 55E0D9EA
P 5750 2400
F 0 "R2" H 5850 2200 50  0000 C CNN
F 1 "1k" V 5757 2401 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5680 2400 30  0001 C CNN
F 3 "" H 5750 2400 30  0000 C CNN
	1    5750 2400
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 55E0D9F1
P 6100 2450
F 0 "C4" H 6150 2550 50  0000 L CNN
F 1 "47n" H 6150 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6138 2300 30  0001 C CNN
F 3 "" H 6100 2450 60  0000 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 55E0DA0D
P 9050 2250
F 0 "R3" H 9150 2150 50  0000 C CNN
F 1 "10k" V 9057 2251 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8980 2250 30  0001 C CNN
F 3 "" H 9050 2250 30  0000 C CNN
	1    9050 2250
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 55E0DA14
P 9300 1900
F 0 "R4" V 9200 1900 50  0000 C CNN
F 1 "1k" V 9307 1901 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9230 1900 30  0001 C CNN
F 3 "" H 9300 1900 30  0000 C CNN
	1    9300 1900
	0    1    1    0   
$EndComp
Text Notes 5700 800  0    60   ~ 0
Overvoltage detection
Text Notes 3300 800  0    60   ~ 0
Input measurements
Text Notes 8850 1500 0    39   ~ 0
Power on soft switch
$Comp
L CONN_01X02 P1
U 1 1 55E0DA62
P 10300 1350
F 0 "P1" H 10300 1500 50  0000 C CNN
F 1 "CONN_01X02" V 10400 1350 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_WAGO-236_2Stift_RM5mm_2pol" H 10300 1350 60  0001 C CNN
F 3 "" H 10300 1350 60  0000 C CNN
	1    10300 1350
	1    0    0    -1  
$EndComp
Connection ~ 5750 1300
Connection ~ 5750 2650
Connection ~ 6100 2650
Wire Wire Line
	5350 2650 5350 2200
Connection ~ 5350 2650
Wire Wire Line
	5350 1300 5350 1900
Connection ~ 5350 1300
Wire Wire Line
	9800 1650 10100 1650
Wire Wire Line
	3400 1300 4850 1300
Wire Wire Line
	1550 1300 2900 1300
Wire Wire Line
	3800 1050 3800 1300
Connection ~ 3800 1300
Wire Wire Line
	5750 1300 5750 1550
Wire Wire Line
	5750 1950 5750 2250
Connection ~ 5750 2100
Connection ~ 9050 2650
Connection ~ 9050 1900
Wire Wire Line
	3550 1050 3800 1050
Connection ~ 6100 2100
Wire Wire Line
	9800 1650 9800 1700
Wire Wire Line
	9800 2650 9800 2100
Wire Wire Line
	5150 1300 10100 1300
Wire Wire Line
	3400 2350 3400 2650
Wire Wire Line
	3400 2350 3000 2350
Wire Wire Line
	10100 1650 10100 1400
Wire Wire Line
	9450 1900 9500 1900
Wire Wire Line
	9050 1900 9050 2100
Wire Wire Line
	9050 2650 9050 2400
Wire Wire Line
	6100 2650 6100 2600
Wire Wire Line
	5750 2650 5750 2550
$Comp
L D_Schottky D2
U 1 1 55EBE3EF
P 5000 1300
F 0 "D2" H 5000 1400 50  0000 C CNN
F 1 "12A" H 5000 1200 50  0000 C CNN
F 2 "Diodes_SMD:D-Pak_TO252AA" H 5000 1300 60  0001 C CNN
F 3 "http://www.vishay.com/docs/89094/v12p12.pdf" H 5000 1300 60  0001 C CNN
	1    5000 1300
	-1   0    0    1   
$EndComp
$Comp
L C C6
U 1 1 55EBF3A1
P 9500 2250
F 0 "C6" H 9550 2350 50  0000 L CNN
F 1 "10u" H 9550 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9538 2100 30  0001 C CNN
F 3 "" H 9500 2250 60  0000 C CNN
	1    9500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2650 9500 2400
Connection ~ 9500 2650
Wire Wire Line
	9500 1900 9500 2100
Connection ~ 9500 1900
Text HLabel 10050 1300 1    60   Output ~ 0
RawPositive
Text HLabel 10100 1650 2    60   Output ~ 0
RawGround
Wire Wire Line
	5650 2100 6300 2100
$Comp
L Q_NMOS_GDS Q4
U 1 1 566D3057
P 9700 1900
F 0 "Q4" H 10000 1950 50  0000 R CNN
F 1 "IRLZ44N" H 9750 2050 50  0000 R CNN
F 2 "" H 9900 2000 29  0000 C CNN
F 3 "" H 9700 1900 60  0000 C CNN
F 4 "High power MOSFET" V 9950 1600 39  0000 C CNN "Note"
	1    9700 1900
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q1
U 1 1 566D3139
P 6500 1700
F 0 "Q1" H 6400 1550 50  0000 R CNN
F 1 "IRLZ44N" H 6400 1650 50  0000 R CNN
F 2 "" H 6700 1800 29  0000 C CNN
F 3 "" H 6500 1700 60  0000 C CNN
	1    6500 1700
	1    0    0    1   
$EndComp
$Comp
L Q_PMOS_GDS Q2
U 1 1 566D3686
P 6500 2100
F 0 "Q2" H 6400 2250 50  0000 R CNN
F 1 "IRF9Z34" H 6400 2150 50  0000 R CNN
F 2 "" H 6700 2200 29  0000 C CNN
F 3 "" H 6500 2100 60  0000 C CNN
	1    6500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1700 6100 2300
Wire Wire Line
	6100 1700 6300 1700
Wire Wire Line
	6600 1300 6600 1500
Wire Wire Line
	6600 2650 6600 2300
Connection ~ 6600 2650
Connection ~ 6600 1900
Text Notes 6200 1400 2    39   ~ 0
Inverter\n
Wire Notes Line
	4800 700  4800 3300
Connection ~ 6600 1300
Text Label 6850 1900 0    39   ~ 0
VoltageOK
Wire Notes Line
	6000 1450 6750 1450
Wire Notes Line
	6750 1450 6750 2750
Wire Notes Line
	6750 2750 6000 2750
Wire Notes Line
	6000 2750 6000 1450
Wire Notes Line
	10000 1550 8850 1550
Wire Notes Line
	8850 1550 8850 2950
Wire Notes Line
	8850 2950 10050 2950
Wire Notes Line
	10050 2950 10050 1550
Wire Notes Line
	10050 1550 9950 1550
Text Notes 6750 2200 1    39   ~ 0
Low power MOSFETs
Wire Wire Line
	6600 1900 7200 1900
Wire Wire Line
	5650 2100 5650 2950
Wire Wire Line
	5650 2950 7450 2950
Text Label 6800 2950 0    39   ~ 0
Overvoltage
Wire Wire Line
	4300 2650 9800 2650
Wire Wire Line
	8650 1900 9150 1900
Text Label 8850 1900 0    39   ~ 0
VoltageOK
Text Label 6800 2650 0    39   ~ 0
InputGround
Text Notes 8000 800  0    60   ~ 0
Overvoltage protection
$Comp
L Q_NMOS_GDS Q3
U 1 1 566D8926
P 8150 1900
F 0 "Q3" H 8450 1950 50  0000 R CNN
F 1 "IRLZ44N" H 8200 2050 50  0000 R CNN
F 2 "" H 8350 2000 29  0000 C CNN
F 3 "" H 8150 1900 60  0000 C CNN
F 4 "High power MOSFET" V 8400 1600 39  0000 C CNN "Note"
	1    8150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1300 8250 1700
Wire Wire Line
	8250 2100 8250 2650
Connection ~ 8250 2650
Connection ~ 8250 1300
Wire Wire Line
	8650 1550 8650 1900
Wire Wire Line
	7200 1550 8650 1550
Text Label 7150 1300 0    39   ~ 0
InputPower
Wire Wire Line
	7450 1900 7950 1900
Text Label 7700 1900 0    39   ~ 0
Overvoltage
Wire Wire Line
	7200 1900 7200 1550
Wire Wire Line
	7450 2950 7450 1900
Wire Notes Line
	7650 1700 8500 1700
Wire Notes Line
	7750 2750 8500 2750
Wire Notes Line
	8500 2750 8500 1700
Wire Notes Line
	7550 700  7550 3300
Wire Notes Line
	7650 1700 7650 2750
Wire Notes Line
	7650 2750 7800 2750
$Comp
L C C5
U 1 1 566D95D7
P 7900 2250
F 0 "C5" H 7950 2350 50  0000 L CNN
F 1 "47n" H 7950 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7938 2100 30  0001 C CNN
F 3 "" H 7900 2250 60  0000 C CNN
	1    7900 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2400 7900 2650
Connection ~ 7900 2650
Wire Wire Line
	7900 2100 7900 1900
Connection ~ 7900 1900
Text Notes 7650 1650 0    39   ~ 0
Crowbar
Text HLabel 4400 1950 0    39   Output ~ 0
PanelCurrentSenseHigh
Text HLabel 3000 2350 0    39   Output ~ 0
PanelVoltageSense-
Text HLabel 3550 1050 0    39   Output ~ 0
PanelVoltageSense+
Text HLabel 1650 2650 0    39   Input ~ 0
PowerIn-
Text HLabel 1550 1300 0    39   Input ~ 0
PowerIn+
$Comp
L R R1
U 1 1 56756EEE
P 4150 2650
F 0 "R1" V 4230 2650 50  0000 C CNN
F 1 "0.01, 1W" V 4150 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4080 2650 30  0000 C CNN
F 3 "" H 4150 2650 30  0000 C CNN
	1    4150 2650
	0    1    1    0   
$EndComp
Text HLabel 3900 2050 0    39   Output ~ 0
PanelCurrentSenseLow
Wire Wire Line
	4400 1950 4400 2650
Connection ~ 4400 2650
Wire Wire Line
	3900 2650 3900 2050
Connection ~ 3900 2650
Wire Wire Line
	1650 2650 4000 2650
Connection ~ 3400 2650
$EndSCHEMATC
