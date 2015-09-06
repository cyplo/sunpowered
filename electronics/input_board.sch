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
LIBS:powerint
LIBS:Power_Management
LIBS:ab2_connectivity
LIBS:ab2_idc
LIBS:ab2_terminal_block
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
L ZENER D1
U 1 1 55E0D9D5
P 5750 1750
F 0 "D1" V 5750 1850 50  0000 C CNN
F 1 "24V" V 5650 1850 50  0000 C CNN
F 2 "Diodes_SMD:Diode-SMC_Handsoldering" H 5750 1750 60  0001 C CNN
F 3 "http://www.comchiptech.com/cms/UserFiles/ACZRC5333B-G%20Thru.%20ACZRC5388B-G%20RevA.pdf" H 5750 1750 60  0001 C CNN
F 4 "~" V 5850 1400 39  0000 C CNN "Note"
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
L C C4
U 1 1 55E0D9E3
P 5350 2050
F 0 "C4" H 5400 2150 50  0000 L CNN
F 1 "100n" H 5400 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5388 1900 30  0001 C CNN
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
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5680 2400 30  0001 C CNN
F 3 "" H 5750 2400 30  0000 C CNN
	1    5750 2400
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 55E0D9F1
P 6100 2450
F 0 "C5" H 6150 2550 50  0000 L CNN
F 1 "47n" H 6150 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6138 2300 30  0001 C CNN
F 3 "" H 6100 2450 60  0000 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
$Comp
L THYRISTOR T1
U 1 1 55E0D9F8
P 6500 2000
F 0 "T1" V 6500 2100 50  0000 C CNN
F 1 "12A" V 6500 1850 50  0000 C CNN
F 2 "cyplo's:sot428" H 6500 2000 60  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/BT151S_SER_L_R.pdf" H 6500 2000 60  0001 C CNN
	1    6500 2000
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 55E0DA0D
P 7450 2400
F 0 "R4" H 7550 2300 50  0000 C CNN
F 1 "10k" V 7457 2401 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7380 2400 30  0001 C CNN
F 3 "" H 7450 2400 30  0000 C CNN
	1    7450 2400
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 55E0DA14
P 7700 2150
F 0 "R5" V 7600 2150 50  0000 C CNN
F 1 "1k" V 7707 2151 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7630 2150 30  0001 C CNN
F 3 "" H 7700 2150 30  0000 C CNN
	1    7700 2150
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 55E0DA1B
P 3450 2000
F 0 "C2" H 3300 1900 50  0000 L CNN
F 1 "100n" H 3250 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3488 1850 30  0001 C CNN
F 3 "" H 3450 2000 60  0000 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 55E0DA22
P 4300 2150
F 0 "C3" V 4350 2200 50  0000 L CNN
F 1 "47n" V 4350 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4338 2000 30  0001 C CNN
F 3 "" H 4300 2150 60  0000 C CNN
	1    4300 2150
	0    1    1    0   
$EndComp
Text GLabel 3000 3000 0    60   Output ~ 0
PanelCurrentSense
Text GLabel 3550 1050 0    60   Output ~ 0
PanelVoltageSense+
Text GLabel 3000 2800 0    60   Output ~ 0
PanelVoltageSense-
$Comp
L R R1
U 1 1 55E0DA2C
P 3100 1700
F 0 "R1" V 3180 1700 50  0000 C CNN
F 1 "330" V 3107 1701 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3030 1700 30  0001 C CNN
F 3 "" H 3100 1700 30  0000 C CNN
	1    3100 1700
	0    1    1    0   
$EndComp
$Comp
L ACS713ELCTR-30A-T IC1
U 1 1 55E0DA34
P 4000 1700
F 0 "IC1" V 4250 1250 50  0000 L CNN
F 1 "ACS713" V 3850 1050 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4000 1700 50  0001 C CIN
F 3 "http://www.allegromicro.com/en/Products/Part_Numbers/0713/0713.pdf" H 4100 2150 60  0001 C CNN
F 4 "Current sensor" V 3750 1150 39  0000 C CNN "Note"
	1    4000 1700
	0    -1   1    0   
$EndComp
Text Notes 5300 1150 0    60   ~ 0
Overvoltage protection
Text Notes 3600 850  0    60   ~ 0
Input measurements
Text Notes 7300 2850 0    60   ~ 0
Power on soft switch
$Comp
L CONN_01X02 P1
U 1 1 55E0DA3E
P 1450 2150
F 0 "P1" H 1450 2300 50  0000 C CNN
F 1 "CONN_01X02" V 1550 2150 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_WAGO-236_2Stift_RM5mm_2pol" H 1450 2150 60  0001 C CNN
F 3 "" H 1450 2150 60  0000 C CNN
	1    1450 2150
	-1   0    0    1   
$EndComp
$Comp
L JUMPER3 JP1
U 1 1 55E0DA45
P 7250 2150
F 0 "JP1" H 7300 2050 50  0000 L CNN
F 1 "JUMPER3" H 7250 2250 50  0001 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7250 2150 60  0001 C CNN
F 3 "" H 7250 2150 60  0000 C CNN
	1    7250 2150
	0    -1   -1   0   
$EndComp
$Comp
L GNDD #PWR01
U 1 1 55E0DA4C
P 3450 2300
F 0 "#PWR01" H 3450 2050 60  0001 C CNN
F 1 "GNDD" H 3450 2150 60  0000 C CNN
F 2 "" H 3450 2300 60  0000 C CNN
F 3 "" H 3450 2300 60  0000 C CNN
	1    3450 2300
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 55E0DA52
P 7250 1550
F 0 "R3" H 7350 1550 50  0000 C CNN
F 1 "5k" V 7257 1551 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7180 1550 30  0001 C CNN
F 3 "" H 7250 1550 30  0000 C CNN
	1    7250 1550
	1    0    0    -1  
$EndComp
Text Notes 7150 2000 1    60   ~ 0
Always On
Text Notes 7150 2550 1    60   ~ 0
External
Text GLabel 7200 3000 0    60   Input ~ 0
PowerOn
$Comp
L GNDD #PWR02
U 1 1 55E0DA5C
P 4600 2350
F 0 "#PWR02" H 4600 2100 60  0001 C CNN
F 1 "GNDD" H 4600 2200 60  0000 C CNN
F 2 "" H 4600 2350 60  0000 C CNN
F 3 "" H 4600 2350 60  0000 C CNN
	1    4600 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 55E0DA62
P 8700 1350
F 0 "P3" H 8700 1500 50  0000 C CNN
F 1 "CONN_01X02" V 8800 1350 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_WAGO-236_2Stift_RM5mm_2pol" H 8700 1350 60  0001 C CNN
F 3 "" H 8700 1350 60  0000 C CNN
	1    8700 1350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 55E0DA69
P 4200 1300
F 0 "#FLG03" H 4200 1395 30  0001 C CNN
F 1 "PWR_FLAG" H 4200 1480 30  0001 C CNN
F 2 "" H 4200 1300 60  0000 C CNN
F 3 "" H 4200 1300 60  0000 C CNN
	1    4200 1300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 55E0DA6F
P 2850 1600
F 0 "#PWR04" H 2850 1450 60  0001 C CNN
F 1 "+5V" H 2850 1740 60  0000 C CNN
F 2 "" H 2850 1600 60  0000 C CNN
F 3 "" H 2850 1600 60  0000 C CNN
	1    2850 1600
	1    0    0    -1  
$EndComp
Connection ~ 5750 1300
Connection ~ 5750 2650
Connection ~ 6100 2650
Connection ~ 6500 1300
Connection ~ 6500 2650
Wire Wire Line
	5350 2200 5350 2650
Connection ~ 5350 2650
Wire Wire Line
	5350 1300 5350 1900
Connection ~ 5350 1300
Wire Wire Line
	2650 1300 2650 1950
Wire Wire Line
	8250 1650 8500 1650
Connection ~ 4200 1300
Wire Wire Line
	3800 2100 3800 3000
Wire Wire Line
	7350 2150 7550 2150
Wire Wire Line
	3400 1300 3900 1300
Wire Wire Line
	2650 1300 2900 1300
Wire Wire Line
	3800 1050 3800 1300
Connection ~ 3800 1300
Wire Wire Line
	5750 1300 5750 1550
Wire Wire Line
	5750 1950 5750 2250
Connection ~ 5750 2100
Connection ~ 7450 2650
Connection ~ 7450 2150
Wire Wire Line
	3800 3000 3000 3000
Wire Wire Line
	3550 1050 3800 1050
Wire Wire Line
	6100 2100 6100 2300
Connection ~ 6100 2100
Wire Wire Line
	8250 1650 8250 1950
Wire Wire Line
	8250 2650 8250 2350
Wire Wire Line
	1650 1950 1650 2100
Wire Wire Line
	1650 2200 1650 2650
Wire Wire Line
	7200 1300 8500 1300
Connection ~ 7250 1300
Wire Wire Line
	7250 3000 7200 3000
Wire Wire Line
	3400 2800 3400 2650
Connection ~ 3400 2650
Wire Wire Line
	3400 2800 3000 2800
Wire Wire Line
	1650 2650 8250 2650
Wire Wire Line
	7250 1700 7250 1900
Wire Wire Line
	4100 2100 4100 2150
Wire Wire Line
	4600 1700 4600 2350
Wire Wire Line
	4450 2150 4600 2150
Connection ~ 4600 2150
Wire Wire Line
	8500 1650 8500 1400
Wire Wire Line
	4600 1700 4400 1700
Wire Wire Line
	4100 1300 6900 1300
Wire Wire Line
	3250 1700 3600 1700
Wire Wire Line
	3450 2300 3450 2200
Wire Wire Line
	3450 1700 3450 1850
Connection ~ 3450 1700
Wire Wire Line
	2850 1600 2850 1700
$Comp
L PWR_FLAG #FLG05
U 1 1 55E0DAAC
P 2650 1300
F 0 "#FLG05" H 2650 1395 30  0001 C CNN
F 1 "PWR_FLAG" H 2650 1480 30  0001 C CNN
F 2 "" H 2650 1300 60  0000 C CNN
F 3 "" H 2650 1300 60  0000 C CNN
	1    2650 1300
	1    0    0    -1  
$EndComp
Text Notes 2900 1600 0    39   ~ 0
15mA
$Comp
L PWR_FLAG #FLG06
U 1 1 55E0DAB3
P 3450 1700
F 0 "#FLG06" H 3450 1795 30  0001 C CNN
F 1 "PWR_FLAG" H 3450 1880 30  0001 C CNN
F 2 "" H 3450 1700 60  0000 C CNN
F 3 "" H 3450 1700 60  0000 C CNN
	1    3450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1950 1650 1950
Wire Wire Line
	3600 1700 3600 2500
Wire Wire Line
	3600 2500 3300 2500
Text GLabel 3300 2500 0    60   Output ~ 0
CurrentSensorVoltageSense
Connection ~ 3600 1700
Text GLabel 2500 4650 3    60   Input ~ 0
PanelCurrentSense
Text GLabel 1550 3900 0    60   Output ~ 0
PowerOn
Text GLabel 2300 4650 3    60   Input ~ 0
PanelVoltageSense-
Text GLabel 2850 4650 3    60   Input ~ 0
PanelVoltageSense+
$Comp
L +5V #PWR07
U 1 1 55E0DF60
P 3350 3900
F 0 "#PWR07" H 3350 3750 60  0001 C CNN
F 1 "+5V" H 3350 4040 60  0000 C CNN
F 2 "" H 3350 3900 60  0000 C CNN
F 3 "" H 3350 3900 60  0000 C CNN
	1    3350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3900 3350 3900
$Comp
L PWR_FLAG #FLG08
U 1 1 55E0DF67
P 3050 3900
F 0 "#FLG08" H 3050 3995 30  0001 C CNN
F 1 "PWR_FLAG" H 3050 4080 30  0001 C CNN
F 2 "" H 3050 3900 60  0000 C CNN
F 3 "" H 3050 3900 60  0000 C CNN
	1    3050 3900
	1    0    0    -1  
$EndComp
Connection ~ 3050 3900
Text GLabel 2650 4650 3    60   Input ~ 0
CurrentSensorVoltageSense
$Comp
L CONN_02X05 P2
U 1 1 55E0DF75
P 1950 4100
F 0 "P2" H 1950 4400 50  0000 C CNN
F 1 "CONN_02X05" H 1800 4500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 1950 2900 60  0001 C CNN
F 3 "" H 1950 2900 60  0000 C CNN
	1    1950 4100
	1    0    0    -1  
$EndComp
Connection ~ 1700 4300
Connection ~ 1700 4200
Connection ~ 1700 4100
Connection ~ 1700 4000
$Comp
L GNDD #PWR09
U 1 1 55E0DF80
P 1700 4550
F 0 "#PWR09" H 1700 4300 60  0001 C CNN
F 1 "GNDD" H 1700 4400 60  0000 C CNN
F 2 "" H 1700 4550 60  0000 C CNN
F 3 "" H 1700 4550 60  0000 C CNN
	1    1700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4000 2850 4650
Wire Wire Line
	2200 4000 2850 4000
Wire Wire Line
	2650 4100 2650 4650
Wire Wire Line
	2200 4100 2650 4100
Wire Wire Line
	2300 4650 2300 4300
Wire Wire Line
	2300 4300 2200 4300
Wire Wire Line
	2200 4200 2500 4200
Wire Wire Line
	2500 4200 2500 4650
Text GLabel 1350 4300 0    60   BiDi ~ 0
DigitalGround
Wire Wire Line
	1350 4300 1700 4300
Wire Wire Line
	7950 2150 7850 2150
Wire Wire Line
	7450 2150 7450 2250
Wire Wire Line
	7450 2550 7450 2650
Wire Wire Line
	7250 1400 7250 1300
Wire Wire Line
	6100 2600 6100 2650
Wire Wire Line
	5750 2550 5750 2650
Wire Wire Line
	4100 2150 4150 2150
Wire Wire Line
	2850 1700 2950 1700
Wire Wire Line
	6500 2650 6500 2200
Wire Wire Line
	5750 2100 6400 2100
Wire Wire Line
	6500 1800 6500 1300
Text GLabel 2200 3850 1    60   BiDi ~ 0
+5V
Wire Wire Line
	2200 3850 2200 3900
Connection ~ 2200 3900
$Comp
L D_Schottky D2
U 1 1 55EBE3EF
P 7050 1300
F 0 "D2" H 7050 1400 50  0000 C CNN
F 1 "12A" H 7050 1200 50  0000 C CNN
F 2 "cyplo's:TO277A" H 7050 1300 60  0001 C CNN
F 3 "http://www.vishay.com/docs/89094/v12p12.pdf" H 7050 1300 60  0001 C CNN
	1    7050 1300
	-1   0    0    1   
$EndComp
$Comp
L Q_NMOS_SGD Q1
U 1 1 55EBE70C
P 8150 2150
F 0 "Q1" H 8450 2200 50  0000 R CNN
F 1 "Q_NMOS_SGD" H 8800 2100 50  0000 R CNN
F 2 "cyplo's:LFPAK56" H 8350 2250 29  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PSMN0R9-30YLD.pdf" H 8150 2150 60  0001 C CNN
	1    8150 2150
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 55EBF3A1
P 7900 2400
F 0 "C1" H 7950 2500 50  0000 L CNN
F 1 "10u" H 7950 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7938 2250 30  0001 C CNN
F 3 "" H 7900 2400 60  0000 C CNN
	1    7900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2550 7900 2650
Connection ~ 7900 2650
Wire Wire Line
	7900 2250 7900 2150
Connection ~ 7900 2150
Wire Wire Line
	7250 3000 7250 2400
Wire Wire Line
	1700 3900 1550 3900
Wire Wire Line
	1700 4000 1700 4550
$EndSCHEMATC
