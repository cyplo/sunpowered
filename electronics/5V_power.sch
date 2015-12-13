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
L CONN_01X02 P4
U 1 1 55EBF475
P 1400 1200
F 0 "P4" H 1400 1350 50  0000 C CNN
F 1 "CONN_01X02" V 1500 1200 50  0000 C CNN
F 2 "" H 1400 1200 60  0000 C CNN
F 3 "" H 1400 1200 60  0000 C CNN
	1    1400 1200
	-1   0    0    1   
$EndComp
Text HLabel 1600 1150 1    60   Input ~ 0
RawPositive
Text HLabel 1600 1250 3    60   Input ~ 0
RawGround
$Comp
L LM2576T-5 U1
U 1 1 55EBF9BF
P 2900 1250
F 0 "U1" H 2500 1600 50  0000 L CNN
F 1 "LM2576T-5" H 2500 1500 50  0000 L CNN
F 2 "TO-220-5" H 3200 1000 50  0001 C CIN
F 3 "http://electropark.pl/attachment.php?id_attachment=170" H 2900 1250 50  0001 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
$Comp
L CP C8
U 1 1 55EBFB83
P 4750 1600
F 0 "C8" H 4775 1700 50  0000 L CNN
F 1 "4700u" H 4775 1500 50  0000 L CNN
F 2 "" H 4788 1450 30  0000 C CNN
F 3 "" H 4750 1600 60  0000 C CNN
	1    4750 1600
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D3
U 1 1 55EBFCEF
P 3850 1600
F 0 "D3" H 3850 1700 50  0000 C CNN
F 1 "1N5822" H 3850 1500 50  0000 C CNN
F 2 "" H 3850 1600 60  0000 C CNN
F 3 "http://www.mouser.com/ds/2/389/CD00001626-249576.pdf" H 3850 1600 60  0001 C CNN
	1    3850 1600
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 55EBFD54
P 4300 1350
F 0 "L1" V 4250 1350 50  0000 C CNN
F 1 "100uH" V 4400 1350 50  0000 C CNN
F 2 "" H 4300 1350 60  0000 C CNN
F 3 "" H 4300 1350 60  0000 C CNN
	1    4300 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 1150 2400 1150
Wire Wire Line
	1600 1250 1700 1250
Wire Wire Line
	1700 1250 1700 1850
Wire Wire Line
	2000 1650 2000 1850
Wire Wire Line
	2900 1850 2900 1550
Wire Wire Line
	2400 1850 2400 1350
Wire Wire Line
	1700 1850 5300 1850
Connection ~ 2400 1850
Connection ~ 2000 1850
Wire Wire Line
	4600 1350 5300 1350
Wire Wire Line
	4750 1150 4750 1450
Wire Wire Line
	4750 1150 3400 1150
Wire Wire Line
	3850 1850 3850 1750
Connection ~ 2900 1850
Connection ~ 3850 1850
Connection ~ 4750 1850
Wire Wire Line
	2000 1350 2000 1150
Connection ~ 2000 1150
Wire Wire Line
	4000 1350 3400 1350
Wire Wire Line
	3850 1450 3850 1350
Connection ~ 3850 1350
Wire Wire Line
	4750 1750 4750 1850
Connection ~ 4750 1350
$Comp
L PWR_FLAG #FLG013
U 1 1 55EC042D
P 2000 1150
F 0 "#FLG013" H 2000 1245 50  0001 C CNN
F 1 "PWR_FLAG" H 2000 1330 50  0001 C CNN
F 2 "" H 2000 1150 60  0000 C CNN
F 3 "" H 2000 1150 60  0000 C CNN
	1    2000 1150
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR014
U 1 1 55EC0609
P 5050 1850
F 0 "#PWR014" H 5050 1600 50  0001 C CNN
F 1 "GNDD" H 5050 1700 50  0000 C CNN
F 2 "" H 5050 1850 60  0000 C CNN
F 3 "" H 5050 1850 60  0000 C CNN
	1    5050 1850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 55EC08D2
P 5500 1550
F 0 "P5" H 5500 1700 50  0000 C CNN
F 1 "CONN_01X02" V 5600 1550 50  0000 C CNN
F 2 "" H 5500 1550 60  0000 C CNN
F 3 "" H 5500 1550 60  0000 C CNN
	1    5500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1350 5300 1500
Wire Wire Line
	5300 1850 5300 1600
Text HLabel 5300 1350 1    60   BiDi ~ 0
+5V
Text HLabel 5300 1850 3    60   BiDi ~ 0
GNDD
$Comp
L CP C7
U 1 1 55EC1B11
P 2000 1500
F 0 "C7" H 2025 1600 50  0000 L CNN
F 1 "100u" H 2025 1400 50  0000 L CNN
F 2 "" H 2038 1350 30  0000 C CNN
F 3 "" H 2000 1500 60  0000 C CNN
	1    2000 1500
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG015
U 1 1 566DC612
P 1700 1850
F 0 "#FLG015" H 1700 1945 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 2030 50  0001 C CNN
F 2 "" H 1700 1850 60  0000 C CNN
F 3 "" H 1700 1850 60  0000 C CNN
	1    1700 1850
	-1   0    0    1   
$EndComp
$EndSCHEMATC
