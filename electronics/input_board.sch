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
LIBS:ab2_terminal_block
LIBS:sunpowered-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L ZENER D2
U 1 1 55E0D9D5
P 4900 1750
F 0 "D2" V 4900 1850 50  0000 C CNN
F 1 "22V" V 4800 1850 50  0000 C CNN
F 2 "Diodes SMD:SMB_Standard" H 4900 1750 60  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/c2d23b0bf5a10da03f2379b0c2e473b6/1SMB5913BT3-D.PDF" H 4900 1750 60  0001 C CNN
	1    4900 1750
	0    1    1    0   
$EndComp
$Comp
L FUSE F1
U 1 1 55E0D9DC
P 2300 1300
F 0 "F1" H 2400 1350 50  0000 C CNN
F 1 "8A" H 2200 1250 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_universal_Type-III" H 2300 1300 60  0001 C CNN
F 3 "" H 2300 1300 60  0000 C CNN
	1    2300 1300
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 55E0D9E3
P 4500 2050
F 0 "C1" H 4550 2150 50  0000 L CNN
F 1 "100n" H 4550 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4538 1900 30  0001 C CNN
F 3 "" H 4500 2050 60  0000 C CNN
	1    4500 2050
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 55E0D9EA
P 4900 2400
F 0 "R2" H 5000 2200 50  0000 C CNN
F 1 "1k" V 4907 2401 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4830 2400 30  0001 C CNN
F 3 "" H 4900 2400 30  0000 C CNN
	1    4900 2400
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55E0D9F1
P 5250 2450
F 0 "C2" H 5300 2550 50  0000 L CNN
F 1 "47n" H 5300 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5288 2300 30  0001 C CNN
F 3 "" H 5250 2450 60  0000 C CNN
	1    5250 2450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 55E0DA0D
P 8775 2250
F 0 "R3" H 8875 2150 50  0000 C CNN
F 1 "10k" V 8782 2251 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8705 2250 30  0001 C CNN
F 3 "" H 8775 2250 30  0000 C CNN
	1    8775 2250
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 55E0DA14
P 9025 1900
F 0 "R4" V 8925 1900 50  0000 C CNN
F 1 "1k" V 9032 1901 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8955 1900 30  0001 C CNN
F 3 "" H 9025 1900 30  0000 C CNN
	1    9025 1900
	0    1    1    0   
$EndComp
Text Notes 4850 800  0    60   ~ 0
Overvoltage detection
Text Notes 2450 800  0    60   ~ 0
Input measurements
Text Notes 8575 1500 0    39   ~ 0
Power on soft switch
$Comp
L D_Schottky D1
U 1 1 55EBE3EF
P 4150 1300
F 0 "D1" H 4150 1400 50  0000 C CNN
F 1 "12A" H 4150 1200 50  0000 C CNN
F 2 "Diodes SMD:D-Pak_TO252AA" H 4150 1300 60  0001 C CNN
F 3 "http://www.vishay.com/docs/89094/v12p12.pdf" H 4150 1300 60  0001 C CNN
	1    4150 1300
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 55EBF3A1
P 9225 2250
F 0 "C4" H 9275 2350 50  0000 L CNN
F 1 "10u" H 9275 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9263 2100 30  0001 C CNN
F 3 "" H 9225 2250 60  0000 C CNN
	1    9225 2250
	1    0    0    -1  
$EndComp
Text HLabel 9925 1300 2    60   Output ~ 0
RawPositive
Text HLabel 9825 1650 2    60   Output ~ 0
RawGround
$Comp
L Q_NMOS_GDS Q2
U 1 1 566D3057
P 9425 1900
F 0 "Q2" H 9725 1950 50  0000 R CNN
F 1 "IRFR13N20D" H 9500 2100 50  0000 R CNN
F 2 "TO SOT SMD:TO-252-2Lead" H 9625 2000 29  0000 C CNN
F 3 "" H 9425 1900 60  0000 C CNN
F 4 "High power MOSFET" V 9675 1600 39  0000 C CNN "Note"
	1    9425 1900
	1    0    0    -1  
$EndComp
Text Notes 5350 1400 2    39   ~ 0
Inverter\n
Text Label 7150 1600 0    39   ~ 0
VoltageOK
Text Label 6300 1500 0    39   ~ 0
Overvoltage
Text Label 8575 1900 0    39   ~ 0
VoltageOK
Text Label 5950 2650 0    39   ~ 0
InputGround
Text Notes 7725 800  0    60   ~ 0
Overvoltage protection
$Comp
L Q_NMOS_GDS Q1
U 1 1 566D8926
P 7875 1900
F 0 "Q1" H 8175 1950 50  0000 R CNN
F 1 "IRFR13N20D" H 7925 2050 50  0000 R CNN
F 2 "TO SOT SMD:TO-252-2Lead" H 8075 2000 29  0000 C CNN
F 3 "" H 7875 1900 60  0000 C CNN
F 4 "High power MOSFET" V 8125 1600 39  0000 C CNN "Note"
	1    7875 1900
	1    0    0    -1  
$EndComp
Text Label 6300 1300 0    39   ~ 0
InputPower
Text Label 7000 1900 0    39   ~ 0
Overvoltage
$Comp
L C C3
U 1 1 566D95D7
P 7625 2250
F 0 "C3" H 7675 2350 50  0000 L CNN
F 1 "47n" H 7675 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7663 2100 30  0001 C CNN
F 3 "" H 7625 2250 60  0000 C CNN
	1    7625 2250
	1    0    0    -1  
$EndComp
Text Notes 7375 1675 0    39   ~ 0
Crowbar
Text HLabel 3550 1950 0    39   Output ~ 0
PanelCurrentSenseHigh
Text HLabel 2150 2350 0    39   Output ~ 0
PanelVoltageSense-
Text HLabel 2700 1050 0    39   Output ~ 0
PanelVoltageSense+
Text HLabel 1650 2650 0    39   Input ~ 0
PowerIn-
Text HLabel 1550 1300 0    39   Input ~ 0
PowerIn+
$Comp
L R R1
U 1 1 56756EEE
P 3300 2650
F 0 "R1" V 3380 2650 50  0000 C CNN
F 1 "0.01, 1W" V 3300 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3230 2650 30  0000 C CNN
F 3 "" H 3300 2650 30  0000 C CNN
	1    3300 2650
	0    1    1    0   
$EndComp
Text HLabel 3050 2050 0    39   Output ~ 0
PanelCurrentSenseLow
$Comp
L BSL316C U1
U 1 1 567D6BFF
P 6075 2000
F 0 "U1" V 5725 2250 50  0000 L CNN
F 1 "BSL316C" V 6425 1925 50  0000 L CNN
F 2 "TO SOT SMD:TSOT-6-MK06A_Handsoldering" V 6400 2375 50  0001 L CIN
F 3 "" H 5875 2175 50  0000 L CNN
	1    6075 2000
	0    1    1    0   
$EndComp
Text Label 5050 2000 0    39   ~ 0
Overvoltage
Connection ~ 4900 1300
Connection ~ 4900 2650
Connection ~ 5250 2650
Wire Wire Line
	4500 2650 4500 2200
Connection ~ 4500 2650
Wire Wire Line
	4500 1300 4500 1900
Connection ~ 4500 1300
Wire Wire Line
	9525 1650 9825 1650
Wire Wire Line
	2550 1300 4000 1300
Wire Wire Line
	2950 1050 2950 1300
Connection ~ 2950 1300
Wire Wire Line
	4900 1300 4900 1550
Wire Wire Line
	4900 1950 4900 2250
Connection ~ 8775 2650
Connection ~ 8775 1900
Wire Wire Line
	2700 1050 2950 1050
Wire Wire Line
	9525 1650 9525 1700
Wire Wire Line
	9525 2650 9525 2100
Wire Wire Line
	2550 2350 2550 2650
Wire Wire Line
	2550 2350 2150 2350
Wire Wire Line
	9175 1900 9225 1900
Wire Wire Line
	8775 1900 8775 2100
Wire Wire Line
	8775 2650 8775 2400
Wire Wire Line
	5250 2650 5250 2600
Wire Wire Line
	4900 2650 4900 2550
Wire Wire Line
	9225 2650 9225 2400
Connection ~ 9225 2650
Wire Wire Line
	9225 1900 9225 2100
Connection ~ 9225 1900
Wire Notes Line
	3950 700  3950 3300
Wire Notes Line
	9725 1550 8575 1550
Wire Notes Line
	8575 1550 8575 2950
Wire Notes Line
	8575 2950 9775 2950
Wire Notes Line
	9775 2950 9775 1550
Wire Notes Line
	9775 1550 9675 1550
Wire Wire Line
	3450 2650 9525 2650
Wire Wire Line
	8375 1900 8875 1900
Wire Wire Line
	7975 1300 7975 1700
Wire Wire Line
	7975 2100 7975 2650
Connection ~ 7975 2650
Connection ~ 7975 1300
Wire Wire Line
	8375 1600 8375 1900
Wire Wire Line
	6700 1900 7675 1900
Wire Notes Line
	7375 1700 8225 1700
Wire Notes Line
	7475 2750 8225 2750
Wire Notes Line
	8225 2750 8225 1700
Wire Notes Line
	6975 700  6975 3300
Wire Notes Line
	7375 1700 7375 2750
Wire Notes Line
	7375 2750 7525 2750
Wire Wire Line
	7625 2400 7625 2650
Connection ~ 7625 2650
Wire Wire Line
	7625 2100 7625 1900
Connection ~ 7625 1900
Wire Wire Line
	3550 1950 3550 2650
Connection ~ 3550 2650
Wire Wire Line
	3050 2650 3050 2050
Connection ~ 3050 2650
Connection ~ 2550 2650
Wire Wire Line
	5250 2000 5250 2300
Wire Wire Line
	4900 2000 5650 2000
Connection ~ 4900 2000
Connection ~ 5250 2000
Wire Wire Line
	1650 2650 3150 2650
Wire Wire Line
	2050 1300 1550 1300
Wire Wire Line
	6525 1900 6525 2200
Wire Wire Line
	5850 1900 5850 1300
Connection ~ 5850 1300
Wire Wire Line
	5850 2200 5850 2650
Connection ~ 5850 2650
Wire Wire Line
	5650 1500 6700 1500
Wire Wire Line
	5650 2000 5650 1500
Wire Wire Line
	4300 1300 9925 1300
Wire Wire Line
	8375 1600 6850 1600
Wire Wire Line
	6850 1600 6850 2025
Wire Wire Line
	6850 2025 6525 2025
Connection ~ 6525 2025
Wire Wire Line
	6700 1500 6700 1900
Connection ~ 6200 1500
Connection ~ 6050 1500
Wire Notes Line
	6700 1400 5700 1400
Wire Notes Line
	5700 1400 5700 2475
Wire Notes Line
	5700 2475 6775 2475
Wire Notes Line
	6775 2475 6775 1400
Wire Notes Line
	6775 1400 6675 1400
Text Notes 6550 2550 0    39   ~ 0
Inverter
$EndSCHEMATC
