EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Eurorack prototype 12HP with power"
Date "2022-01-23"
Rev "2.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Released under CERN Open Hardware Licence Version 2 - Strongly Reciprocal"
Comment4 "Designed by: Rafael G. Martins"
$EndDescr
$Comp
L Connector:TestPoint TP1
U 1 1 61DA2DAE
P 6950 3350
F 0 "TP1" V 6904 3538 50  0000 L CNN
F 1 "+5v" V 6995 3538 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 7150 3350 50  0001 C CNN
F 3 "~" H 7150 3350 50  0001 C CNN
	1    6950 3350
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 61DA4189
P 5100 3800
F 0 "J1" H 5150 4317 50  0000 C CNN
F 1 "IDC Header 2x8" H 5150 4226 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 5100 3800 50  0001 C CNN
F 3 "~" H 5100 3800 50  0001 C CNN
	1    5100 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61DA50FE
P 5150 4400
F 0 "#PWR0101" H 5150 4150 50  0001 C CNN
F 1 "GND" H 5155 4227 50  0000 C CNN
F 2 "" H 5150 4400 50  0001 C CNN
F 3 "" H 5150 4400 50  0001 C CNN
	1    5150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3600 4900 3600
Wire Wire Line
	4900 3700 4850 3700
Connection ~ 4850 3700
Wire Wire Line
	4850 3700 4850 3600
Wire Wire Line
	4900 3800 4850 3800
Connection ~ 4850 3800
Wire Wire Line
	4850 3800 4850 3700
Wire Wire Line
	5450 3600 5400 3600
Wire Wire Line
	5400 3700 5450 3700
Connection ~ 5450 3700
Wire Wire Line
	5450 3700 5450 3600
Wire Wire Line
	5400 3800 5450 3800
Connection ~ 5450 3800
Wire Wire Line
	5450 3800 5450 3700
Wire Wire Line
	5450 4350 5450 3800
Wire Wire Line
	4850 4350 5150 4350
Wire Wire Line
	5150 4400 5150 4350
Connection ~ 5150 4350
Wire Wire Line
	5150 4350 5450 4350
$Comp
L power:-12V #PWR0102
U 1 1 61DA739B
P 4800 3500
F 0 "#PWR0102" H 4800 3600 50  0001 C CNN
F 1 "-12V" V 4815 3628 50  0000 L CNN
F 2 "" H 4800 3500 50  0001 C CNN
F 3 "" H 4800 3500 50  0001 C CNN
	1    4800 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:-12V #PWR0103
U 1 1 61DA819E
P 5550 3500
F 0 "#PWR0103" H 5550 3600 50  0001 C CNN
F 1 "-12V" V 5565 3628 50  0000 L CNN
F 2 "" H 5550 3500 50  0001 C CNN
F 3 "" H 5550 3500 50  0001 C CNN
	1    5550 3500
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 61DA878A
P 4700 3900
F 0 "#PWR0104" H 4700 3750 50  0001 C CNN
F 1 "+12V" V 4715 4028 50  0000 L CNN
F 2 "" H 4700 3900 50  0001 C CNN
F 3 "" H 4700 3900 50  0001 C CNN
	1    4700 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0105
U 1 1 61DA8ECF
P 5500 3900
F 0 "#PWR0105" H 5500 3750 50  0001 C CNN
F 1 "+12V" V 5515 4028 50  0000 L CNN
F 2 "" H 5500 3900 50  0001 C CNN
F 3 "" H 5500 3900 50  0001 C CNN
	1    5500 3900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 61DA97ED
P 4700 4000
F 0 "#PWR0106" H 4700 3850 50  0001 C CNN
F 1 "+5V" V 4715 4128 50  0000 L CNN
F 2 "" H 4700 4000 50  0001 C CNN
F 3 "" H 4700 4000 50  0001 C CNN
	1    4700 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 61DAA0DF
P 5500 4000
F 0 "#PWR0107" H 5500 3850 50  0001 C CNN
F 1 "+5V" V 5515 4128 50  0000 L CNN
F 2 "" H 5500 4000 50  0001 C CNN
F 3 "" H 5500 4000 50  0001 C CNN
	1    5500 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3500 4900 3500
Wire Wire Line
	4850 4350 4850 3800
Wire Wire Line
	5400 4000 5500 4000
Wire Wire Line
	5400 3900 5500 3900
Wire Wire Line
	5400 3500 5500 3500
NoConn ~ 4900 4100
NoConn ~ 4900 4200
NoConn ~ 5400 4200
NoConn ~ 5400 4100
Wire Wire Line
	4700 3900 4800 3900
Wire Wire Line
	4700 4000 4750 4000
$Comp
L Device:CP C1
U 1 1 61DAE8CF
P 4200 4300
F 0 "C1" H 4318 4346 50  0000 L CNN
F 1 "CP" H 4318 4255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4238 4150 50  0001 C CNN
F 3 "~" H 4200 4300 50  0001 C CNN
	1    4200 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 61DAF3C3
P 4600 4300
F 0 "C2" H 4718 4346 50  0000 L CNN
F 1 "CP" H 4718 4255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4638 4150 50  0001 C CNN
F 3 "~" H 4600 4300 50  0001 C CNN
	1    4600 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61DB270F
P 4200 4500
F 0 "#PWR0108" H 4200 4250 50  0001 C CNN
F 1 "GND" H 4205 4327 50  0000 C CNN
F 2 "" H 4200 4500 50  0001 C CNN
F 3 "" H 4200 4500 50  0001 C CNN
	1    4200 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 61DB2A6B
P 4600 4500
F 0 "#PWR0109" H 4600 4250 50  0001 C CNN
F 1 "GND" H 4605 4327 50  0000 C CNN
F 2 "" H 4600 4500 50  0001 C CNN
F 3 "" H 4600 4500 50  0001 C CNN
	1    4600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4150 4600 4100
Wire Wire Line
	4600 4100 4800 4100
Wire Wire Line
	4800 4100 4800 3900
Connection ~ 4800 3900
Wire Wire Line
	4800 3900 4900 3900
Wire Wire Line
	4200 4150 4200 4050
Wire Wire Line
	4200 4050 4750 4050
Wire Wire Line
	4750 4050 4750 4000
Connection ~ 4750 4000
Wire Wire Line
	4750 4000 4900 4000
$Comp
L Device:CP C3
U 1 1 61DB4F08
P 5950 3800
F 0 "C3" H 5832 3754 50  0000 R CNN
F 1 "CP" H 5832 3845 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5988 3650 50  0001 C CNN
F 3 "~" H 5950 3800 50  0001 C CNN
	1    5950 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 3500 5500 3600
Wire Wire Line
	5500 3600 5950 3600
Wire Wire Line
	5950 3650 5950 3600
Wire Wire Line
	5500 3500 5550 3500
Connection ~ 5500 3500
$Comp
L power:GND #PWR0110
U 1 1 61DB93FF
P 5950 4000
F 0 "#PWR0110" H 5950 3750 50  0001 C CNN
F 1 "GND" H 5955 3827 50  0000 C CNN
F 2 "" H 5950 4000 50  0001 C CNN
F 3 "" H 5950 4000 50  0001 C CNN
	1    5950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4000 5950 3950
Wire Wire Line
	4600 4500 4600 4450
Wire Wire Line
	4200 4500 4200 4450
Text Notes 5650 4750 0    50   ~ 0
Eurorack PSU
Wire Notes Line
	6250 4800 6250 3200
Wire Notes Line
	6250 3200 4000 3200
Wire Notes Line
	4000 3200 4000 4800
Wire Notes Line
	4000 4800 6250 4800
$Comp
L Connector:TestPoint TP2
U 1 1 61DC170D
P 6950 3600
F 0 "TP2" V 6904 3788 50  0000 L CNN
F 1 "+12v" V 6995 3788 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 7150 3600 50  0001 C CNN
F 3 "~" H 7150 3600 50  0001 C CNN
	1    6950 3600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 61DC1A98
P 6950 3850
F 0 "TP3" V 6904 4038 50  0000 L CNN
F 1 "GND" V 6995 4038 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 7150 3850 50  0001 C CNN
F 3 "~" H 7150 3850 50  0001 C CNN
	1    6950 3850
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 61DC1E89
P 6950 4100
F 0 "TP4" V 6904 4288 50  0000 L CNN
F 1 "-12v" V 6995 4288 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 7150 4100 50  0001 C CNN
F 3 "~" H 7150 4100 50  0001 C CNN
	1    6950 4100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 61DC30DC
P 6900 3350
F 0 "#PWR0111" H 6900 3200 50  0001 C CNN
F 1 "+5V" V 6915 3478 50  0000 L CNN
F 2 "" H 6900 3350 50  0001 C CNN
F 3 "" H 6900 3350 50  0001 C CNN
	1    6900 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0112
U 1 1 61DC3863
P 6900 3600
F 0 "#PWR0112" H 6900 3450 50  0001 C CNN
F 1 "+12V" V 6915 3728 50  0000 L CNN
F 2 "" H 6900 3600 50  0001 C CNN
F 3 "" H 6900 3600 50  0001 C CNN
	1    6900 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 61DC3D22
P 6500 3800
F 0 "#PWR0113" H 6500 3550 50  0001 C CNN
F 1 "GND" H 6505 3627 50  0000 C CNN
F 2 "" H 6500 3800 50  0001 C CNN
F 3 "" H 6500 3800 50  0001 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0114
U 1 1 61DC45D7
P 6900 4100
F 0 "#PWR0114" H 6900 4200 50  0001 C CNN
F 1 "-12V" V 6915 4228 50  0000 L CNN
F 2 "" H 6900 4100 50  0001 C CNN
F 3 "" H 6900 4100 50  0001 C CNN
	1    6900 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 3800 6500 3750
Wire Wire Line
	6500 3750 6850 3750
Wire Wire Line
	6850 3750 6850 3850
Wire Wire Line
	6850 3850 6950 3850
Wire Wire Line
	6900 4100 6950 4100
Wire Wire Line
	6900 3600 6950 3600
Wire Wire Line
	6900 3350 6950 3350
Text Notes 6900 4350 0    50   ~ 0
Power Points
Wire Notes Line
	6350 3200 6350 4400
Wire Notes Line
	6350 4400 7450 4400
Wire Notes Line
	7450 4400 7450 3200
Wire Notes Line
	7450 3200 6350 3200
$EndSCHEMATC
