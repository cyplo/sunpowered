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
L ZENER D?
U 1 1 55E0D9D5
P 5750 1750
F 0 "D?" V 5750 1850 50  0000 C CNN
F 1 "24V" V 5650 1850 50  0000 C CNN
F 2 "Diodes_SMD:Diode-SMC_Handsoldering" H 5750 1750 60  0001 C CNN
F 3 "http://www.comchiptech.com/cms/UserFiles/ACZRC5333B-G%20Thru.%20ACZRC5388B-G%20RevA.pdf" H 5750 1750 60  0001 C CNN
F 4 "~" V 5850 1400 39  0000 C CNN "Note"
	1    5750 1750
	0    -1   -1   0   
$EndComp
$Comp
L FUSE F?
U 1 1 55E0D9DC
P 3150 1300
F 0 "F?" H 3250 1350 50  0000 C CNN
F 1 "8A" H 3050 1250 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_universal_Type-III" H 3150 1300 60  0001 C CNN
F 3 "" H 3150 1300 60  0000 C CNN
	1    3150 1300
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55E0D9E3
P 5350 2050
F 0 "C?" H 5400 2150 50  0000 L CNN
F 1 "100n" H 5400 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5388 1900 30  0001 C CNN
F 3 "" H 5350 2050 60  0000 C CNN
	1    5350 2050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55E0D9EA
P 5750 2400
F 0 "R?" H 5850 2200 50  0000 C CNN
F 1 "1k" V 5757 2401 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5680 2400 30  0001 C CNN
F 3 "" H 5750 2400 30  0000 C CNN
	1    5750 2400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55E0D9F1
P 6100 2450
F 0 "C?" H 6150 2550 50  0000 L CNN
F 1 "47n" H 6150 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6138 2300 30  0001 C CNN
F 3 "" H 6100 2450 60  0000 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
$Comp
L THYRISTOR T?
U 1 1 55E0D9F8
P 6500 2000
F 0 "T?" V 6500 2100 50  0000 C CNN
F 1 "12A" V 6500 1850 50  0000 C CNN
F 2 "cyplo's:sot428" H 6500 2000 60  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/BT151S_SER_L_R.pdf" H 6500 2000 60  0001 C CNN
	1    6500 2000
	0    -1   1    0   
$EndComp
$Comp
L DIODESCH D?
U 1 1 55E0D9FF
P 7050 1300
F 0 "D?" H 7050 1400 50  0000 C CNN
F 1 "12A" H 7050 1200 50  0000 C CNN
F 2 "cyplo's:TO277A" H 7050 1300 60  0001 C CNN
F 3 "http://www.vishay.com/docs/89094/v12p12.pdf" H 7050 1300 60  0001 C CNN
	1    7050 1300
	1    0    0    -1  
$EndComp
$Comp
L MOS_N Q?
U 1 1 55E0DA06
P 8150 2150
F 0 "Q?" H 8100 2000 50  0000 R CNN
F 1 "PSMN0R9-30YLD" V 8350 2400 50  0000 R CNN
F 2 "cyplo's:LFPAK56" H 8150 2150 60  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PSMN0R9-30YLD.pdf" H 8150 2150 60  0001 C CNN
	1    8150 2150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55E0DA0D
P 7450 2400
F 0 "R?" H 7550 2300 50  0000 C CNN
F 1 "10k" V 7457 2401 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7380 2400 30  0001 C CNN
F 3 "" H 7450 2400 30  0000 C CNN
	1    7450 2400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55E0DA14
P 7700 2150
F 0 "R?" V 7600 2150 50  0000 C CNN
F 1 "1k" V 7707 2151 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7630 2150 30  0001 C CNN
F 3 "" H 7700 2150 30  0000 C CNN
	1    7700 2150
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 55E0DA1B
P 3450 2000
F 0 "C?" H 3300 1900 50  0000 L CNN
F 1 "100n" H 3250 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3488 1850 30  0001 C CNN
F 3 "" H 3450 2000 60  0000 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55E0DA22
P 4300 2150
F 0 "C?" V 4350 2200 50  0000 L CNN
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
L R R?
U 1 1 55E0DA2C
P 3100 1700
F 0 "R?" V 3180 1700 50  0000 C CNN
F 1 "330" V 3107 1701 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3030 1700 30  0001 C CNN
F 3 "" H 3100 1700 30  0000 C CNN
	1    3100 1700
	0    1    1    0   
$EndComp
$Comp
L ACS713ELCTR-30A-T IC?
U 1 1 55E0DA34
P 4000 1700
F 0 "IC?" V 4250 1250 50  0000 L CNN
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
L CONN_01X02 P?
U 1 1 55E0DA3E
P 1450 2150
F 0 "P?" H 1450 2300 50  0000 C CNN
F 1 "CONN_01X02" V 1550 2150 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_WAGO-236_2Stift_RM5mm_2pol" H 1450 2150 60  0001 C CNN
F 3 "" H 1450 2150 60  0000 C CNN
	1    1450 2150
	-1   0    0    1   
$EndComp
$Comp
L JUMPER3 JP?
U 1 1 55E0DA45
P 7250 2150
F 0 "JP?" H 7300 2050 50  0000 L CNN
F 1 "JUMPER3" H 7250 2250 50  0001 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7250 2150 60  0001 C CNN
F 3 "" H 7250 2150 60  0000 C CNN
	1    7250 2150
	0    -1   -1   0   
$EndComp
$Comp
L GNDD #PWR?
U 1 1 55E0DA4C
P 3450 2300
F 0 "#PWR?" H 3450 2050 60  0001 C CNN
F 1 "GNDD" H 3450 2150 60  0000 C CNN
F 2 "" H 3450 2300 60  0000 C CNN
F 3 "" H 3450 2300 60  0000 C CNN
	1    3450 2300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55E0DA52
P 7250 1550
F 0 "R?" H 7350 1550 50  0000 C CNN
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
L GNDD #PWR?
U 1 1 55E0DA5C
P 4600 2350
F 0 "#PWR?" H 4600 2100 60  0001 C CNN
F 1 "GNDD" H 4600 2200 60  0000 C CNN
F 2 "" H 4600 2350 60  0000 C CNN
F 3 "" H 4600 2350 60  0000 C CNN
	1    4600 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 55E0DA62
P 8700 1350
F 0 "P?" H 8700 1500 50  0000 C CNN
F 1 "CONN_01X02" V 8800 1350 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_WAGO-236_2Stift_RM5mm_2pol" H 8700 1350 60  0001 C CNN
F 3 "" H 8700 1350 60  0000 C CNN
	1    8700 1350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 55E0DA69
P 4200 1300
F 0 "#FLG?" H 4200 1395 30  0001 C CNN
F 1 "PWR_FLAG" H 4200 1480 30  0001 C CNN
F 2 "" H 4200 1300 60  0000 C CNN
F 3 "" H 4200 1300 60  0000 C CNN
	1    4200 1300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 55E0DA6F
P 2850 1600
F 0 "#PWR?" H 2850 1450 60  0001 C CNN
F 1 "+5V" H 2850 1740 60  0000 C CNN
F 2 "" H 2850 1600 60  0000 C CNN
F 3 "" H 2850 1600 60  0000 C CNN
	1    2850 1600
	1    0    0    -1  
$EndComp
Connection ~ 5750 1300
Connection ~ 5750 2650
Connection ~ 6100 2650
Wire Wire Line
	6500 1300 6500 1800
Connection ~ 6500 1300
Wire Wire Line
	6500 2650 6500 2200
Connection ~ 6500 2650
Wire Wire Line
	5350 2650 5350 2250
Connection ~ 5350 2650
Wire Wire Line
	5350 1300 5350 1850
Connection ~ 5350 1300
Wire Wire Line
	2650 1300 2650 1950
Wire Wire Line
	8250 1650 8500 1650
Connection ~ 4200 1300
Wire Wire Line
	3800 2100 3800 3000
Wire Wire Line
	7450 2150 7350 2150
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
	5750 1950 5750 2150
Connection ~ 5750 2100
Connection ~ 7450 2650
Connection ~ 7450 2150
Wire Wire Line
	3800 3000 3000 3000
Wire Wire Line
	3550 1050 3800 1050
Wire Wire Line
	5750 2100 6350 2100
Wire Wire Line
	6100 2250 6100 2100
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
	7250 1300 8500 1300
Connection ~ 7250 1300
Wire Wire Line
	7250 2400 7250 3000
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
	7250 1800 7250 1900
Wire Wire Line
	4100 2100 4100 2150
Wire Wire Line
	4600 1700 4600 2350
Wire Wire Line
	4600 2150 4500 2150
Connection ~ 4600 2150
Wire Wire Line
	8500 1650 8500 1400
Wire Wire Line
	4600 1700 4400 1700
Wire Wire Line
	4100 1300 6850 1300
Wire Wire Line
	3350 1700 3600 1700
Wire Wire Line
	3450 2300 3450 2200
Wire Wire Line
	3450 1800 3450 1700
Connection ~ 3450 1700
Wire Wire Line
	2850 1600 2850 1700
$Comp
L PWR_FLAG #FLG?
U 1 1 55E0DAAC
P 2650 1300
F 0 "#FLG?" H 2650 1395 30  0001 C CNN
F 1 "PWR_FLAG" H 2650 1480 30  0001 C CNN
F 2 "" H 2650 1300 60  0000 C CNN
F 3 "" H 2650 1300 60  0000 C CNN
	1    2650 1300
	1    0    0    -1  
$EndComp
Text Notes 2900 1600 0    39   ~ 0
15mA
$Comp
L PWR_FLAG #FLG?
U 1 1 55E0DAB3
P 3450 1700
F 0 "#FLG?" H 3450 1795 30  0001 C CNN
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
Text GLabel 1150 3900 2    60   Output ~ 0
PowerOn
Text GLabel 2300 4650 3    60   Input ~ 0
PanelVoltageSense-
Text GLabel 2850 4650 3    60   Input ~ 0
PanelVoltageSense+
$Comp
L CP2 C?
U 1 1 55E0DF59
P 3050 4100
F 0 "C?" H 2850 4100 50  0000 L CNN
F 1 "4700u" H 3150 4100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:Capacitor5x11RM2.5" H 3088 3950 30  0001 C CNN
F 3 "" H 3050 4100 60  0000 C CNN
	1    3050 4100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 55E0DF60
P 3350 3900
F 0 "#PWR?" H 3350 3750 60  0001 C CNN
F 1 "+5V" H 3350 4040 60  0000 C CNN
F 2 "" H 3350 3900 60  0000 C CNN
F 3 "" H 3350 3900 60  0000 C CNN
	1    3350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3900 3350 3900
$Comp
L PWR_FLAG #FLG?
U 1 1 55E0DF67
P 3050 3900
F 0 "#FLG?" H 3050 3995 30  0001 C CNN
F 1 "PWR_FLAG" H 3050 4080 30  0001 C CNN
F 2 "" H 3050 3900 60  0000 C CNN
F 3 "" H 3050 3900 60  0000 C CNN
	1    3050 3900
	1    0    0    -1  
$EndComp
Connection ~ 3050 3900
$Comp
L GNDD #PWR?
U 1 1 55E0DF6E
P 3050 4300
F 0 "#PWR?" H 3050 4050 60  0001 C CNN
F 1 "GNDD" H 3050 4150 60  0000 C CNN
F 2 "" H 3050 4300 60  0000 C CNN
F 3 "" H 3050 4300 60  0000 C CNN
	1    3050 4300
	1    0    0    -1  
$EndComp
Text GLabel 2650 4650 3    60   Input ~ 0
CurrentSensorVoltageSense
$Comp
L CONN_02X05 P?
U 1 1 55E0DF75
P 1950 4100
F 0 "P?" H 1950 4400 50  0000 C CNN
F 1 "CONN_02X05" H 1950 4500 50  0000 C CNN
F 2 "" H 1950 2900 60  0000 C CNN
F 3 "" H 1950 2900 60  0000 C CNN
	1    1950 4100
	1    0    0    -1  
$EndComp
Connection ~ 1700 4300
Connection ~ 1700 4200
Connection ~ 1700 4100
Connection ~ 1700 4000
$Comp
L GNDD #PWR?
U 1 1 55E0DF80
P 1700 4450
F 0 "#PWR?" H 1700 4200 60  0001 C CNN
F 1 "GNDD" H 1700 4300 60  0000 C CNN
F 2 "" H 1700 4450 60  0000 C CNN
F 3 "" H 1700 4450 60  0000 C CNN
	1    1700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4000 2850 4650
Wire Wire Line
	2200 4000 2850 4000
Wire Wire Line
	1700 4000 1700 4450
Wire Wire Line
	1600 3900 1700 3900
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
$EndSCHEMATC
