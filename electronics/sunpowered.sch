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
Sheet 1 2
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
S 1850 1000 2050 1650
U 55E0BF75
F0 "Input Measurement And Protection" 61
F1 "input_board.sch" 61
F2 "RawPositive" O R 3900 1400 60 
F3 "RawGround" O R 3900 1200 60 
F4 "PanelCurrentSenseHigh" O R 3900 2050 39 
F5 "PanelVoltageSense-" O R 3900 2450 39 
F6 "PanelVoltageSense+" O R 3900 2200 39 
F7 "PowerIn+" I L 1850 1200 60 
F8 "PowerIn-" I L 1850 1400 60 
F9 "PanelCurrentSenseLow" O R 3900 2350 39 
$EndSheet
$Comp
L PWR_FLAG #FLG1
U 1 1 56759F7C
P 1650 1200
F 0 "#FLG1" H 1650 1295 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 1380 50  0000 C CNN
F 2 "" H 1650 1200 60  0000 C CNN
F 3 "" H 1650 1200 60  0000 C CNN
	1    1650 1200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 56759FDA
P 1650 1400
F 0 "#FLG2" H 1650 1495 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 1580 50  0000 C CNN
F 2 "" H 1650 1400 60  0000 C CNN
F 3 "" H 1650 1400 60  0000 C CNN
	1    1650 1400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04 P1
U 1 1 567D65AA
P 1050 1300
F 0 "P1" H 1050 1550 50  0000 C CNN
F 1 "CONN_01X04" V 1150 1300 50  0000 C CNN
F 2 "ab2_terminal_block:AB2_TB_04_RA_5MM_L-GRN" H 1050 1300 50  0001 C CNN
F 3 "" H 1050 1300 50  0000 C CNN
	1    1050 1300
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04 P3
U 1 1 567D6C88
P 4650 1300
F 0 "P3" H 4650 1550 50  0000 C CNN
F 1 "CONN_01X04" V 4750 1300 50  0000 C CNN
F 2 "ab2_terminal_block:AB2_TB_04_RA_5MM_R-GRN" H 4650 1300 50  0001 C CNN
F 3 "" H 4650 1300 50  0000 C CNN
	1    4650 1300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P2
U 1 1 567D7139
P 4625 2225
F 0 "P2" H 4625 2475 50  0000 C CNN
F 1 "CONN_01X04" V 4725 2225 50  0000 C CNN
F 2 "Pin Headers:Pin_Header_Straight_1x04" H 4625 2225 50  0001 C CNN
F 3 "" H 4625 2225 50  0000 C CNN
	1    4625 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1400 1850 1400
Connection ~ 1650 1400
Connection ~ 1650 1200
Wire Wire Line
	3900 1200 4450 1200
Wire Wire Line
	3900 1400 4450 1400
Wire Wire Line
	1250 1150 1250 1250
Wire Wire Line
	1250 1200 1850 1200
Connection ~ 1250 1200
Wire Wire Line
	1250 1350 1250 1450
Connection ~ 1250 1400
Wire Wire Line
	4450 1150 4450 1250
Wire Wire Line
	4450 1350 4450 1450
Connection ~ 4450 1400
Connection ~ 4450 1200
Wire Wire Line
	3900 2050 4425 2050
Wire Wire Line
	4425 2050 4425 2075
Wire Wire Line
	3900 2200 4425 2200
Wire Wire Line
	4425 2200 4425 2175
Wire Wire Line
	3900 2350 4300 2350
Wire Wire Line
	4300 2350 4300 2275
Wire Wire Line
	4300 2275 4425 2275
Wire Wire Line
	3900 2450 4425 2450
Wire Wire Line
	4425 2450 4425 2375
$EndSCHEMATC
