EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "as3360-vca"
Date "2022-01-26"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Released under CERN Open Hardware Licence Version 2 - Strongly Reciprocal"
Comment4 "Designed by: Rafael G. Martins"
$EndDescr
$Comp
L Audio:AS3360 U2
U 1 1 61F27E81
P 6200 2350
F 0 "U2" H 6200 2931 50  0000 C CNN
F 1 "AS3360" H 6200 2840 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6900 1650 50  0001 C CNN
F 3 "http://www.alfarzpp.lv/eng/sc/AS3360.pdf" H 6850 1700 50  0001 C CNN
	1    6200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2150 5750 2150
Wire Wire Line
	5750 2150 5750 1700
Wire Wire Line
	5750 1700 6650 1700
Wire Wire Line
	6650 1700 6650 2250
Wire Wire Line
	6650 2250 6600 2250
$Comp
L Device:C C1
U 1 1 61F2F12D
P 5750 2650
F 0 "C1" H 5636 2696 50  0000 R CNN
F 1 "4.7n" H 5636 2605 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5788 2500 50  0001 C CNN
F 3 "~" H 5750 2650 50  0001 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2500 5750 2450
Wire Wire Line
	5750 2450 5800 2450
$Comp
L power:GND #PWR0101
U 1 1 61F2F72D
P 5750 2850
F 0 "#PWR0101" H 5750 2600 50  0001 C CNN
F 1 "GND" H 5755 2677 50  0000 C CNN
F 2 "" H 5750 2850 50  0001 C CNN
F 3 "" H 5750 2850 50  0001 C CNN
	1    5750 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61F2F953
P 6300 2800
F 0 "#PWR0102" H 6300 2550 50  0001 C CNN
F 1 "GND" H 6305 2627 50  0000 C CNN
F 2 "" H 6300 2800 50  0001 C CNN
F 3 "" H 6300 2800 50  0001 C CNN
	1    6300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2750 6300 2800
Wire Wire Line
	5750 2850 5750 2800
$Comp
L power:+12V #PWR0103
U 1 1 61F30C08
P 6250 1950
F 0 "#PWR0103" H 6250 1800 50  0001 C CNN
F 1 "+12V" V 6265 2078 50  0000 L CNN
F 2 "" H 6250 1950 50  0001 C CNN
F 3 "" H 6250 1950 50  0001 C CNN
	1    6250 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 1950 6250 1950
$Comp
L power:-12V #PWR0104
U 1 1 61F316F2
P 6150 2800
F 0 "#PWR0104" H 6150 2900 50  0001 C CNN
F 1 "-12V" V 6165 2928 50  0000 L CNN
F 2 "" H 6150 2800 50  0001 C CNN
F 3 "" H 6150 2800 50  0001 C CNN
	1    6150 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 2800 6200 2800
Wire Wire Line
	6200 2800 6200 2750
Text GLabel 5750 2250 0    50   Input ~ 0
VC1
Text GLabel 5750 2350 0    50   Input ~ 0
II1
Wire Wire Line
	5750 2250 5800 2250
Wire Wire Line
	5750 2350 5800 2350
Text GLabel 6650 2450 2    50   Output ~ 0
IO1
Wire Wire Line
	6600 2450 6650 2450
Wire Wire Line
	5800 3700 5750 3700
Wire Wire Line
	5750 3700 5750 3250
Wire Wire Line
	5750 3250 6650 3250
Wire Wire Line
	6650 3250 6650 3800
Wire Wire Line
	6650 3800 6600 3800
$Comp
L power:GND #PWR0105
U 1 1 61F3A618
P 6300 4350
F 0 "#PWR0105" H 6300 4100 50  0001 C CNN
F 1 "GND" H 6305 4177 50  0000 C CNN
F 2 "" H 6300 4350 50  0001 C CNN
F 3 "" H 6300 4350 50  0001 C CNN
	1    6300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4300 6300 4350
$Comp
L power:+12V #PWR0106
U 1 1 61F3A620
P 6250 3500
F 0 "#PWR0106" H 6250 3350 50  0001 C CNN
F 1 "+12V" V 6265 3628 50  0000 L CNN
F 2 "" H 6250 3500 50  0001 C CNN
F 3 "" H 6250 3500 50  0001 C CNN
	1    6250 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 3500 6250 3500
$Comp
L power:-12V #PWR0107
U 1 1 61F3A627
P 6150 4350
F 0 "#PWR0107" H 6150 4450 50  0001 C CNN
F 1 "-12V" V 6165 4478 50  0000 L CNN
F 2 "" H 6150 4350 50  0001 C CNN
F 3 "" H 6150 4350 50  0001 C CNN
	1    6150 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 4350 6200 4350
Wire Wire Line
	6200 4350 6200 4300
Text GLabel 5750 3800 0    50   Input ~ 0
VC2
Text GLabel 5750 3900 0    50   Input ~ 0
II2
Wire Wire Line
	5750 3800 5800 3800
Wire Wire Line
	5750 3900 5800 3900
Text GLabel 6650 4000 2    50   Output ~ 0
IO2
Wire Wire Line
	6600 4000 6650 4000
$Comp
L Audio:AS3360 U2
U 2 1 61F3B5DA
P 6200 3900
F 0 "U2" H 6200 4481 50  0000 C CNN
F 1 "AS3360" H 6200 4390 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6900 3200 50  0001 C CNN
F 3 "http://www.alfarzpp.lv/eng/sc/AS3360.pdf" H 6850 3250 50  0001 C CNN
	2    6200 3900
	1    0    0    -1  
$EndComp
Text Notes 6700 4600 0    50   ~ 0
Core
Wire Notes Line
	6950 4650 6950 1600
Wire Notes Line
	6950 1600 5400 1600
Wire Notes Line
	5400 1600 5400 4650
Wire Notes Line
	5400 4650 6950 4650
$Comp
L power:GND #PWR0108
U 1 1 61F470E2
P 7450 2400
F 0 "#PWR0108" H 7450 2150 50  0001 C CNN
F 1 "GND" H 7455 2227 50  0000 C CNN
F 2 "" H 7450 2400 50  0001 C CNN
F 3 "" H 7450 2400 50  0001 C CNN
	1    7450 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 61F4B7A8
P 7450 2200
F 0 "R11" H 7381 2246 50  0000 R CNN
F 1 "47k" H 7381 2155 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7380 2200 50  0001 C CNN
F 3 "~" H 7450 2200 50  0001 C CNN
	1    7450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2200 7600 2200
Wire Wire Line
	7600 2200 7600 2450
Wire Wire Line
	8300 2450 8300 2100
Wire Wire Line
	8300 2100 8250 2100
$Comp
L Device:R R13
U 1 1 61F53FF3
P 8500 2100
F 0 "R13" V 8293 2100 50  0000 C CNN
F 1 "1k" V 8384 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 2100 50  0001 C CNN
F 3 "~" H 8500 2100 50  0001 C CNN
	1    8500 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 2100 8350 2100
Connection ~ 8300 2100
Wire Wire Line
	8650 2100 8700 2100
$Comp
L power:GND #PWR0109
U 1 1 61F5A06E
P 8650 2250
F 0 "#PWR0109" H 8650 2000 50  0001 C CNN
F 1 "GND" H 8655 2077 50  0000 C CNN
F 2 "" H 8650 2250 50  0001 C CNN
F 3 "" H 8650 2250 50  0001 C CNN
	1    8650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2250 8650 2200
Wire Wire Line
	8650 2200 8700 2200
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 61F5B985
P 8900 2100
F 0 "J6" H 8720 2033 50  0000 R CNN
F 1 "Thonkiconn SM" H 8720 2124 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 8900 2100 50  0001 C CNN
F 3 "~" H 8900 2100 50  0001 C CNN
	1    8900 2100
	-1   0    0    1   
$EndComp
NoConn ~ 8700 2000
$Comp
L power:GND #PWR0110
U 1 1 61F66B0C
P 7450 3900
F 0 "#PWR0110" H 7450 3650 50  0001 C CNN
F 1 "GND" H 7455 3727 50  0000 C CNN
F 2 "" H 7450 3900 50  0001 C CNN
F 3 "" H 7450 3900 50  0001 C CNN
	1    7450 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 61F66B12
P 7450 3700
F 0 "R12" H 7381 3746 50  0000 R CNN
F 1 "47k" H 7381 3655 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7380 3700 50  0001 C CNN
F 3 "~" H 7450 3700 50  0001 C CNN
	1    7450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3700 7600 3700
Wire Wire Line
	7600 3700 7600 3950
Wire Wire Line
	8300 3950 8300 3600
Wire Wire Line
	8300 3600 8250 3600
Text GLabel 7350 3500 0    50   Input ~ 0
IO2
$Comp
L Device:R R14
U 1 1 61F66B23
P 8500 3600
F 0 "R14" V 8293 3600 50  0000 C CNN
F 1 "1k" V 8384 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 3600 50  0001 C CNN
F 3 "~" H 8500 3600 50  0001 C CNN
	1    8500 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 3600 8350 3600
Connection ~ 8300 3600
Wire Wire Line
	8650 3600 8700 3600
$Comp
L power:GND #PWR0111
U 1 1 61F66B2C
P 8650 3750
F 0 "#PWR0111" H 8650 3500 50  0001 C CNN
F 1 "GND" H 8655 3577 50  0000 C CNN
F 2 "" H 8650 3750 50  0001 C CNN
F 3 "" H 8650 3750 50  0001 C CNN
	1    8650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3750 8650 3700
Wire Wire Line
	8650 3700 8700 3700
$Comp
L Connector:AudioJack2_SwitchT J7
U 1 1 61F66B34
P 8900 3600
F 0 "J7" H 8720 3533 50  0000 R CNN
F 1 "Thonkiconn SM" H 8720 3624 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 8900 3600 50  0001 C CNN
F 3 "~" H 8900 3600 50  0001 C CNN
	1    8900 3600
	-1   0    0    1   
$EndComp
NoConn ~ 8700 3500
$Comp
L Device:C C6
U 1 1 61F7C0C8
P 8150 5250
F 0 "C6" H 8035 5296 50  0000 R CNN
F 1 "100n" H 8035 5205 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8188 5100 50  0001 C CNN
F 3 "~" H 8150 5250 50  0001 C CNN
	1    8150 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 61F8016F
P 8150 5650
F 0 "C7" H 8035 5696 50  0000 R CNN
F 1 "100n" H 8035 5605 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8188 5500 50  0001 C CNN
F 3 "~" H 8150 5650 50  0001 C CNN
	1    8150 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 61F80CE0
P 7750 5500
F 0 "#PWR0112" H 7750 5250 50  0001 C CNN
F 1 "GND" H 7755 5327 50  0000 C CNN
F 2 "" H 7750 5500 50  0001 C CNN
F 3 "" H 7750 5500 50  0001 C CNN
	1    7750 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5450 8150 5400
Wire Wire Line
	8150 5500 8150 5450
Connection ~ 8150 5450
$Comp
L power:+12V #PWR0113
U 1 1 61F8829C
P 7800 5050
F 0 "#PWR0113" H 7800 4900 50  0001 C CNN
F 1 "+12V" V 7815 5178 50  0000 L CNN
F 2 "" H 7800 5050 50  0001 C CNN
F 3 "" H 7800 5050 50  0001 C CNN
	1    7800 5050
	0    -1   -1   0   
$EndComp
$Comp
L power:-12V #PWR0114
U 1 1 61F88F35
P 7800 5850
F 0 "#PWR0114" H 7800 5950 50  0001 C CNN
F 1 "-12V" V 7815 5978 50  0000 L CNN
F 2 "" H 7800 5850 50  0001 C CNN
F 3 "" H 7800 5850 50  0001 C CNN
	1    7800 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 5050 8150 5050
Wire Wire Line
	8850 5050 8850 5150
Wire Wire Line
	8150 5100 8150 5050
Wire Wire Line
	7800 5850 8150 5850
Wire Wire Line
	8850 5850 8850 5750
Wire Wire Line
	8150 5850 8150 5800
Text Notes 9400 4600 0    50   ~ 0
Outputs
Wire Notes Line
	9750 1600 7050 1600
$Comp
L power:GND #PWR0115
U 1 1 61FE40CA
P 2800 2650
F 0 "#PWR0115" H 2800 2400 50  0001 C CNN
F 1 "GND" H 2805 2477 50  0000 C CNN
F 2 "" H 2800 2650 50  0001 C CNN
F 3 "" H 2800 2650 50  0001 C CNN
	1    2800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2600 2800 2600
Wire Wire Line
	2800 2600 2800 2650
$Comp
L Device:R_POT RV1
U 1 1 61FE6562
P 3200 2500
F 0 "RV1" H 3130 2454 50  0000 R CNN
F 1 "50k" H 3130 2545 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical_CircularHoles" H 3200 2500 50  0001 C CNN
F 3 "~" H 3200 2500 50  0001 C CNN
	1    3200 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	3200 2300 3200 2350
$Comp
L power:GND #PWR0116
U 1 1 61FEA0D7
P 3200 2700
F 0 "#PWR0116" H 3200 2450 50  0001 C CNN
F 1 "GND" H 3205 2527 50  0000 C CNN
F 2 "" H 3200 2700 50  0001 C CNN
F 3 "" H 3200 2700 50  0001 C CNN
	1    3200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2700 3200 2650
Wire Wire Line
	3350 2500 3400 2500
Text Notes 4700 4600 0    50   ~ 0
Control Inputs
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J5
U 1 1 620676E6
P 6400 5350
F 0 "J5" H 6450 5867 50  0000 C CNN
F 1 "IDC Header 2x8" H 6450 5776 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 6400 5350 50  0001 C CNN
F 3 "~" H 6400 5350 50  0001 C CNN
	1    6400 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 6206C150
P 6450 5900
F 0 "#PWR0117" H 6450 5650 50  0001 C CNN
F 1 "GND" H 6455 5727 50  0000 C CNN
F 2 "" H 6450 5900 50  0001 C CNN
F 3 "" H 6450 5900 50  0001 C CNN
	1    6450 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5150 6150 5150
Wire Wire Line
	6150 5150 6150 5250
Wire Wire Line
	6150 5850 6450 5850
Wire Wire Line
	6450 5850 6450 5900
$Comp
L power:+12V #PWR0118
U 1 1 62070576
P 5800 5450
F 0 "#PWR0118" H 5800 5300 50  0001 C CNN
F 1 "+12V" V 5815 5578 50  0000 L CNN
F 2 "" H 5800 5450 50  0001 C CNN
F 3 "" H 5800 5450 50  0001 C CNN
	1    5800 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:-12V #PWR0119
U 1 1 62072389
P 5800 5050
F 0 "#PWR0119" H 5800 5150 50  0001 C CNN
F 1 "-12V" V 5815 5178 50  0000 L CNN
F 2 "" H 5800 5050 50  0001 C CNN
F 3 "" H 5800 5050 50  0001 C CNN
	1    5800 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 5850 6750 5850
Wire Wire Line
	6750 5850 6750 5350
Wire Wire Line
	6750 5150 6700 5150
Connection ~ 6450 5850
Wire Wire Line
	6700 5250 6750 5250
Connection ~ 6750 5250
Wire Wire Line
	6750 5250 6750 5150
Wire Wire Line
	6700 5350 6750 5350
Connection ~ 6750 5350
Wire Wire Line
	6750 5350 6750 5250
Wire Wire Line
	6200 5250 6150 5250
Connection ~ 6150 5250
Wire Wire Line
	6150 5250 6150 5350
Wire Wire Line
	6200 5350 6150 5350
Connection ~ 6150 5350
Wire Wire Line
	6150 5350 6150 5850
NoConn ~ 6200 5550
NoConn ~ 6200 5650
NoConn ~ 6200 5750
NoConn ~ 6700 5750
NoConn ~ 6700 5650
NoConn ~ 6700 5550
$Comp
L Device:CP C2
U 1 1 6209AE42
P 5850 5300
F 0 "C2" H 5732 5254 50  0000 R CNN
F 1 "10u" H 5732 5345 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5888 5150 50  0001 C CNN
F 3 "~" H 5850 5300 50  0001 C CNN
	1    5850 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 5050 6200 5050
Wire Wire Line
	5800 5450 5850 5450
Connection ~ 5850 5450
Wire Wire Line
	5850 5450 6200 5450
Wire Wire Line
	5850 5150 6150 5150
Connection ~ 6150 5150
$Comp
L Device:CP C3
U 1 1 620CCE62
P 6900 5200
F 0 "C3" H 6782 5154 50  0000 R CNN
F 1 "10u" H 6782 5245 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 6938 5050 50  0001 C CNN
F 3 "~" H 6900 5200 50  0001 C CNN
	1    6900 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 5350 6900 5350
$Comp
L power:-12V #PWR0120
U 1 1 620D1A4E
P 6950 5050
F 0 "#PWR0120" H 6950 5150 50  0001 C CNN
F 1 "-12V" V 6965 5178 50  0000 L CNN
F 2 "" H 6950 5050 50  0001 C CNN
F 3 "" H 6950 5050 50  0001 C CNN
	1    6950 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 5050 6900 5050
Connection ~ 6900 5050
Wire Wire Line
	6900 5050 6950 5050
$Comp
L power:+12V #PWR0121
U 1 1 620D675F
P 6800 5450
F 0 "#PWR0121" H 6800 5300 50  0001 C CNN
F 1 "+12V" V 6815 5578 50  0000 L CNN
F 2 "" H 6800 5450 50  0001 C CNN
F 3 "" H 6800 5450 50  0001 C CNN
	1    6800 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 5450 6800 5450
Text Notes 8150 6100 0    50   ~ 0
Eurorack PSU
Wire Wire Line
	7750 5500 7750 5450
Wire Wire Line
	7750 5450 8150 5450
$Comp
L Amplifier_Operational:TL074 U1
U 1 1 623AC48E
P 4050 2600
F 0 "U1" H 4050 2967 50  0000 C CNN
F 1 "TL074" H 4050 2876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4000 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4100 2800 50  0001 C CNN
	1    4050 2600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 4 1 623B86DF
P 7950 3600
F 0 "U1" H 7950 3967 50  0000 C CNN
F 1 "TL074" H 7950 3876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7900 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8000 3800 50  0001 C CNN
	4    7950 3600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 5 1 623BAD8A
P 8950 5450
F 0 "U1" H 8908 5496 50  0000 L CNN
F 1 "TL074" H 8908 5405 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8900 5550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9000 5650 50  0001 C CNN
	5    8950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2700 3700 2700
Wire Wire Line
	3700 2700 3700 2900
Wire Wire Line
	4400 2600 4350 2600
Wire Wire Line
	4600 2700 4600 2650
Wire Wire Line
	4600 1900 4600 1950
$Comp
L Device:R R7
U 1 1 6227331E
P 4600 2500
F 0 "R7" H 4530 2454 50  0000 R CNN
F 1 "10k" H 4530 2545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4530 2500 50  0001 C CNN
F 3 "~" H 4600 2500 50  0001 C CNN
	1    4600 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 6226C409
P 4600 2100
F 0 "R6" H 4530 2054 50  0000 R CNN
F 1 "51k" H 4530 2145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4530 2100 50  0001 C CNN
F 3 "~" H 4600 2100 50  0001 C CNN
	1    4600 2100
	-1   0    0    1   
$EndComp
Text GLabel 3350 5100 2    50   Output ~ 0
II1
Wire Notes Line
	1950 1600 5300 1600
Wire Notes Line
	5300 4650 1950 4650
Wire Notes Line
	9200 6150 9200 4750
Wire Notes Line
	5400 4750 5400 6150
Text GLabel 4950 5100 2    50   Output ~ 0
II2
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 62646F10
P 2750 5100
F 0 "J3" H 2570 5033 50  0000 R CNN
F 1 "Thonkiconn SM" H 2570 5124 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 2750 5100 50  0001 C CNN
F 3 "~" H 2750 5100 50  0001 C CNN
	1    2750 5100
	1    0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 6264A510
P 3150 5100
F 0 "R3" V 2943 5100 50  0000 C CNN
F 1 "47k" V 3034 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3080 5100 50  0001 C CNN
F 3 "~" H 3150 5100 50  0001 C CNN
	1    3150 5100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 626706DF
P 3000 5250
F 0 "#PWR0122" H 3000 5000 50  0001 C CNN
F 1 "GND" H 3005 5077 50  0000 C CNN
F 2 "" H 3000 5250 50  0001 C CNN
F 3 "" H 3000 5250 50  0001 C CNN
	1    3000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5200 3000 5200
Wire Wire Line
	3000 5200 3000 5250
Wire Wire Line
	2950 5100 3000 5100
Wire Wire Line
	3300 5100 3350 5100
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 6268CB84
P 4350 5100
F 0 "J4" H 4170 5033 50  0000 R CNN
F 1 "Thonkiconn SM" H 4170 5124 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 4350 5100 50  0001 C CNN
F 3 "~" H 4350 5100 50  0001 C CNN
	1    4350 5100
	1    0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 6268CB8A
P 4750 5100
F 0 "R10" V 4543 5100 50  0000 C CNN
F 1 "47k" V 4634 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4680 5100 50  0001 C CNN
F 3 "~" H 4750 5100 50  0001 C CNN
	1    4750 5100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 6268CB90
P 4600 5250
F 0 "#PWR0123" H 4600 5000 50  0001 C CNN
F 1 "GND" H 4605 5077 50  0000 C CNN
F 2 "" H 4600 5250 50  0001 C CNN
F 3 "" H 4600 5250 50  0001 C CNN
	1    4600 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5200 4600 5200
Wire Wire Line
	4600 5200 4600 5250
Wire Wire Line
	4550 5100 4600 5100
Wire Wire Line
	4900 5100 4950 5100
Text GLabel 4950 2300 2    50   Output ~ 0
VC1
Wire Notes Line
	1950 4750 5300 4750
Wire Notes Line
	5300 4750 5300 5550
Wire Notes Line
	5300 5550 1950 5550
Wire Notes Line
	1950 5550 1950 4750
Text Notes 4750 5500 0    50   ~ 0
Signal Inputs
Wire Notes Line
	7050 1600 7050 4650
Wire Notes Line
	7050 4650 9750 4650
Wire Notes Line
	9750 4650 9750 1600
Wire Notes Line
	5300 1600 5300 4650
Wire Notes Line
	1950 1600 1950 4650
Wire Wire Line
	3700 2500 3750 2500
$Comp
L Device:R R4
U 1 1 62002AAB
P 3550 2500
F 0 "R4" V 3343 2500 50  0000 C CNN
F 1 "100k" V 3434 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3480 2500 50  0001 C CNN
F 3 "~" H 3550 2500 50  0001 C CNN
	1    3550 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 622AE9E9
P 4600 2700
F 0 "#PWR0124" H 4600 2450 50  0001 C CNN
F 1 "GND" H 4605 2527 50  0000 C CNN
F 2 "" H 4600 2700 50  0001 C CNN
F 3 "" H 4600 2700 50  0001 C CNN
	1    4600 2700
	1    0    0    -1  
$EndComp
Connection ~ 4400 2600
Wire Wire Line
	4400 2900 4400 2600
Wire Wire Line
	3700 2900 4400 2900
Wire Wire Line
	4900 2350 4900 2300
Connection ~ 4900 2300
Wire Wire Line
	4900 2300 4950 2300
$Comp
L power:GND #PWR0125
U 1 1 6296F717
P 4900 2700
F 0 "#PWR0125" H 4900 2450 50  0001 C CNN
F 1 "GND" H 4905 2527 50  0000 C CNN
F 2 "" H 4900 2700 50  0001 C CNN
F 3 "" H 4900 2700 50  0001 C CNN
	1    4900 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2700 4900 2650
Wire Wire Line
	4600 2250 4600 2300
Wire Wire Line
	4600 2300 4900 2300
Connection ~ 4600 2300
Wire Wire Line
	4600 2300 4600 2350
$Comp
L Device:D_Zener D1
U 1 1 629B17CD
P 4900 2500
F 0 "D1" V 4854 2580 50  0000 L CNN
F 1 "2v7" V 4945 2580 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4900 2500 50  0001 C CNN
F 3 "~" H 4900 2500 50  0001 C CNN
	1    4900 2500
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 2 1 61EEADC5
P 7950 2100
F 0 "U1" H 7950 2467 50  0000 C CNN
F 1 "TL074" H 7950 2376 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7900 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8000 2300 50  0001 C CNN
	2    7950 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61F08E97
P 2800 2100
F 0 "R1" H 2730 2054 50  0000 R CNN
F 1 "10k" H 2730 2145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2730 2100 50  0001 C CNN
F 3 "~" H 2800 2100 50  0001 C CNN
	1    2800 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 2400 2800 2400
Wire Wire Line
	2800 2400 2800 2250
$Comp
L power:+12V #PWR0126
U 1 1 61F12977
P 2800 1900
F 0 "#PWR0126" H 2800 1750 50  0001 C CNN
F 1 "+12V" H 2815 2073 50  0000 C CNN
F 2 "" H 2800 1900 50  0001 C CNN
F 3 "" H 2800 1900 50  0001 C CNN
	1    2800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1950 2800 1900
Wire Wire Line
	4400 1900 4600 1900
Wire Wire Line
	4400 1900 4400 2600
Wire Wire Line
	2900 2500 2900 2300
Wire Wire Line
	2900 2300 3200 2300
Wire Wire Line
	2750 2500 2900 2500
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 61FE277E
P 2550 2500
F 0 "J1" H 2650 2100 50  0000 R CNN
F 1 "Thonkiconn SM" H 2650 2200 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 2550 2500 50  0001 C CNN
F 3 "~" H 2550 2500 50  0001 C CNN
	1    2550 2500
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 61F93D47
P 2800 4150
F 0 "#PWR0127" H 2800 3900 50  0001 C CNN
F 1 "GND" H 2805 3977 50  0000 C CNN
F 2 "" H 2800 4150 50  0001 C CNN
F 3 "" H 2800 4150 50  0001 C CNN
	1    2800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4100 2800 4100
Wire Wire Line
	2800 4100 2800 4150
$Comp
L Device:R_POT RV2
U 1 1 61F93D4F
P 3200 4000
F 0 "RV2" H 3130 3954 50  0000 R CNN
F 1 "50k" H 3130 4045 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical_CircularHoles" H 3200 4000 50  0001 C CNN
F 3 "~" H 3200 4000 50  0001 C CNN
	1    3200 4000
	1    0    0    1   
$EndComp
Wire Wire Line
	3200 3800 3200 3850
$Comp
L power:GND #PWR0128
U 1 1 61F93D56
P 3200 4200
F 0 "#PWR0128" H 3200 3950 50  0001 C CNN
F 1 "GND" H 3205 4027 50  0000 C CNN
F 2 "" H 3200 4200 50  0001 C CNN
F 3 "" H 3200 4200 50  0001 C CNN
	1    3200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4200 3200 4150
Wire Wire Line
	3350 4000 3400 4000
Wire Wire Line
	3750 4200 3700 4200
Wire Wire Line
	3700 4200 3700 4400
Wire Wire Line
	4400 4100 4350 4100
Wire Wire Line
	4600 4200 4600 4150
Wire Wire Line
	4600 3400 4600 3450
$Comp
L Device:R R9
U 1 1 61F93D69
P 4600 4000
F 0 "R9" H 4530 3954 50  0000 R CNN
F 1 "10k" H 4530 4045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4530 4000 50  0001 C CNN
F 3 "~" H 4600 4000 50  0001 C CNN
	1    4600 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 61F93D6F
P 4600 3600
F 0 "R8" H 4530 3554 50  0000 R CNN
F 1 "51k" H 4530 3645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4530 3600 50  0001 C CNN
F 3 "~" H 4600 3600 50  0001 C CNN
	1    4600 3600
	-1   0    0    1   
$EndComp
Text GLabel 4950 3800 2    50   Output ~ 0
VC2
Wire Wire Line
	3700 4000 3750 4000
$Comp
L Device:R R5
U 1 1 61F93D77
P 3550 4000
F 0 "R5" V 3343 4000 50  0000 C CNN
F 1 "100k" V 3434 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3480 4000 50  0001 C CNN
F 3 "~" H 3550 4000 50  0001 C CNN
	1    3550 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 61F93D7D
P 4600 4200
F 0 "#PWR0129" H 4600 3950 50  0001 C CNN
F 1 "GND" H 4605 4027 50  0000 C CNN
F 2 "" H 4600 4200 50  0001 C CNN
F 3 "" H 4600 4200 50  0001 C CNN
	1    4600 4200
	1    0    0    -1  
$EndComp
Connection ~ 4400 4100
Wire Wire Line
	4400 4400 4400 4100
Wire Wire Line
	3700 4400 4400 4400
Wire Wire Line
	4900 3850 4900 3800
Connection ~ 4900 3800
Wire Wire Line
	4900 3800 4950 3800
$Comp
L power:GND #PWR0130
U 1 1 61F93D89
P 4900 4200
F 0 "#PWR0130" H 4900 3950 50  0001 C CNN
F 1 "GND" H 4905 4027 50  0000 C CNN
F 2 "" H 4900 4200 50  0001 C CNN
F 3 "" H 4900 4200 50  0001 C CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4200 4900 4150
Wire Wire Line
	4600 3750 4600 3800
Wire Wire Line
	4600 3800 4900 3800
Connection ~ 4600 3800
Wire Wire Line
	4600 3800 4600 3850
$Comp
L Device:D_Zener D2
U 1 1 61F93D95
P 4900 4000
F 0 "D2" V 4854 4080 50  0000 L CNN
F 1 "2v7" V 4945 4080 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4900 4000 50  0001 C CNN
F 3 "~" H 4900 4000 50  0001 C CNN
	1    4900 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 61F93D9B
P 2800 3600
F 0 "R2" H 2730 3554 50  0000 R CNN
F 1 "10k" H 2730 3645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2730 3600 50  0001 C CNN
F 3 "~" H 2800 3600 50  0001 C CNN
	1    2800 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 3900 2800 3900
Wire Wire Line
	2800 3900 2800 3750
$Comp
L power:+12V #PWR0131
U 1 1 61F93DA3
P 2800 3400
F 0 "#PWR0131" H 2800 3250 50  0001 C CNN
F 1 "+12V" H 2815 3573 50  0000 C CNN
F 2 "" H 2800 3400 50  0001 C CNN
F 3 "" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3450 2800 3400
Wire Wire Line
	4400 3400 4600 3400
Wire Wire Line
	4400 3400 4400 4100
Wire Wire Line
	2900 4000 2900 3800
Wire Wire Line
	2900 3800 3200 3800
Wire Wire Line
	2750 4000 2900 4000
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 61F93DAF
P 2550 4000
F 0 "J2" H 2650 3600 50  0000 R CNN
F 1 "Thonkiconn SM" H 2650 3700 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 2550 4000 50  0001 C CNN
F 3 "~" H 2550 4000 50  0001 C CNN
	1    2550 4000
	1    0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 61FB8030
P 8600 5250
F 0 "C8" H 8485 5296 50  0000 R CNN
F 1 "100n" H 8485 5205 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8638 5100 50  0001 C CNN
F 3 "~" H 8600 5250 50  0001 C CNN
	1    8600 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 61FB8B34
P 8600 5650
F 0 "C9" H 8485 5696 50  0000 R CNN
F 1 "100n" H 8485 5605 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8638 5500 50  0001 C CNN
F 3 "~" H 8600 5650 50  0001 C CNN
	1    8600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5850 8600 5800
Wire Wire Line
	8600 5400 8600 5450
Wire Wire Line
	8600 5100 8600 5050
Wire Wire Line
	8150 5050 8600 5050
Connection ~ 8150 5050
Connection ~ 8600 5050
Wire Wire Line
	8600 5050 8850 5050
Wire Wire Line
	8150 5850 8600 5850
Connection ~ 8150 5850
Connection ~ 8600 5850
Wire Wire Line
	8600 5850 8850 5850
Wire Wire Line
	8150 5450 8600 5450
Connection ~ 8600 5450
Wire Wire Line
	8600 5450 8600 5500
Wire Notes Line
	5400 4750 9200 4750
Wire Notes Line
	5400 6150 9200 6150
$Comp
L Amplifier_Operational:TL074 U1
U 3 1 623B25FC
P 4050 4100
F 0 "U1" H 4050 4467 50  0000 C CNN
F 1 "TL074" H 4050 4376 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4000 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4100 4300 50  0001 C CNN
	3    4050 4100
	1    0    0    -1  
$EndComp
Text GLabel 7350 2000 0    50   Input ~ 0
IO1
Wire Wire Line
	7450 2050 7450 2000
Connection ~ 7450 2000
Wire Wire Line
	7450 2000 7650 2000
Wire Wire Line
	7450 2400 7450 2350
Wire Wire Line
	7600 2450 8300 2450
Wire Wire Line
	7350 2000 7450 2000
Wire Wire Line
	7350 3500 7450 3500
Wire Wire Line
	7450 3550 7450 3500
Connection ~ 7450 3500
Wire Wire Line
	7450 3500 7650 3500
Wire Wire Line
	7450 3900 7450 3850
Wire Wire Line
	7600 3950 8300 3950
$EndSCHEMATC