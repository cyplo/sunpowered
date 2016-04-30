EESchema Schematic File Version 2
LIBS:sunpowered-rescue
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
F 1 "10k" V 4907 2401 50  0000 C CNN
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
F 1 "100n" H 5300 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5288 2300 30  0001 C CNN
F 3 "" H 5250 2450 60  0000 C CNN
	1    5250 2450
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 55E0DA0D
P 6925 2125
F 0 "R4" H 7025 2025 50  0000 C CNN
F 1 "1M" V 6932 2126 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6855 2125 30  0001 C CNN
F 3 "" H 6925 2125 30  0000 C CNN
	1    6925 2125
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 55E0DA14
P 7175 1775
F 0 "R5" V 7075 1775 50  0000 C CNN
F 1 "1k" V 7182 1776 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7105 1775 30  0001 C CNN
F 3 "" H 7175 1775 30  0000 C CNN
	1    7175 1775
	0    1    1    0   
$EndComp
Text Notes 2450 800  0    60   ~ 0
Input measurements
Text Notes 6725 1375 0    39   ~ 0
Power on soft switch
$Comp
L C C3
U 1 1 55EBF3A1
P 7375 2125
F 0 "C3" H 7425 2225 50  0000 L CNN
F 1 "100n" H 7425 2025 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7413 1975 30  0001 C CNN
F 3 "" H 7375 2125 60  0000 C CNN
	1    7375 2125
	1    0    0    -1  
$EndComp
Text HLabel 8125 1975 2    60   Output ~ 0
RawPositive
Text Label 6725 1775 0    39   ~ 0
VoltageOK
Text Label 5950 2650 0    39   ~ 0
InputGround
Text Label 6300 1300 0    39   ~ 0
InputPower
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
	2550 1300 4100 1300
Wire Wire Line
	2950 1050 2950 1300
Connection ~ 2950 1300
Wire Wire Line
	4900 1300 4900 1550
Wire Wire Line
	4900 1950 4900 2250
Connection ~ 6925 1775
Wire Wire Line
	2700 1050 2950 1050
Wire Wire Line
	2550 2350 2550 2650
Wire Wire Line
	2550 2350 2150 2350
Wire Wire Line
	7325 1775 7375 1775
Wire Wire Line
	6925 1775 6925 1975
Wire Wire Line
	6925 2650 6925 2275
Wire Wire Line
	5250 2650 5250 2600
Wire Wire Line
	4900 2650 4900 2550
Wire Wire Line
	7375 2650 7375 2275
Wire Wire Line
	7375 1775 7375 1975
Connection ~ 7375 1775
Wire Notes Line
	3950 700  3950 3300
Wire Notes Line
	7875 1425 6725 1425
Wire Notes Line
	6725 1425 6725 2825
Wire Notes Line
	6725 2825 7925 2825
Wire Notes Line
	7925 2825 7925 1425
Wire Notes Line
	7925 1425 7825 1425
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
	4900 2000 5925 2000
Connection ~ 4900 2000
Connection ~ 5250 2000
Wire Wire Line
	1650 2650 3150 2650
Wire Wire Line
	2050 1300 1550 1300
$Comp
L SCHDPAK D1
U 1 1 567D7FA2
P 4300 1300
F 0 "D1" H 4300 1400 50  0000 C CNN
F 1 "12A" H 4300 1200 50  0000 C CNN
F 2 "TO SOT SMD:TO-252-2Lead" H 4300 1300 50  0001 C CNN
F 3 "http://www.vishay.com/docs/89094/v12p12.pdf" H 4300 1300 50  0001 C CNN
	1    4300 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 1250 4100 1350
Connection ~ 4100 1300
Text Label 3525 1300 0    39   ~ 0
PowerIn+
Text Label 4500 1300 0    39   ~ 0
InputPower
Text Label 3650 2650 0    39   ~ 0
InputGround
Text Label 2600 1300 0    39   ~ 0
PowerIn+
$Comp
L R R3
U 1 1 57133762
P 6225 1550
F 0 "R3" V 6305 1550 50  0000 C CNN
F 1 "10k" V 6225 1550 50  0000 C CNN
F 2 "" V 6155 1550 50  0000 C CNN
F 3 "" H 6225 1550 50  0000 C CNN
	1    6225 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 1300 6225 1400
Connection ~ 6225 1300
Wire Wire Line
	6225 2650 6225 2200
Connection ~ 6225 2650
Connection ~ 6925 2650
Connection ~ 7375 2650
Text HLabel 8125 2650 2    60   Output ~ 0
RawGround
$Comp
L Q_PMOS_GDS Q1
U 1 1 57135C98
P 6125 2000
F 0 "Q1" H 6425 2050 50  0000 R CNN
F 1 "Q_PMOS_GDS" H 6775 1950 50  0000 R CNN
F 2 "cyplo's:D2PAK" H 6325 2100 50  0001 C CNN
F 3 "" H 6125 2000 50  0000 C CNN
	1    6125 2000
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GDS Q2
U 1 1 57135CD7
P 7575 1775
F 0 "Q2" H 7875 1825 50  0000 R CNN
F 1 "Q_PMOS_GDS" H 8225 1725 50  0000 R CNN
F 2 "cyplo's:D2PAK" H 7775 1875 50  0001 C CNN
F 3 "" H 7575 1775 50  0000 C CNN
	1    7575 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 1700 6225 1800
Wire Wire Line
	6225 1775 7025 1775
Connection ~ 6225 1775
Wire Wire Line
	3450 2650 8125 2650
Text Notes 5650 800  0    60   ~ 0
Overvoltage protection
Wire Wire Line
	7675 1300 7675 1575
Wire Wire Line
	4500 1300 7675 1300
Wire Wire Line
	7675 1975 8125 1975
$EndSCHEMATC
