EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "as3340-vco back"
Date "2021-12-14"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Released under CERN Open Hardware Licence Version 2 - Strongly Reciprocal"
Comment4 "Designed by: Rafael G. Martins"
$EndDescr
$Comp
L Audio:AS3340 U1
U 1 1 611D320D
P 7300 4400
F 0 "U1" H 7300 5281 50  0000 C CNN
F 1 "AS3340" H 7300 5190 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 7800 4100 50  0001 C CNN
F 3 "http://www.alfarzpp.lv/eng/sc/AS3340.pdf" H 7900 3950 50  0001 C CNN
	1    7300 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 611D3ED1
P 3400 2600
F 0 "R1" V 3193 2600 50  0000 C CNN
F 1 "18k" V 3284 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3330 2600 50  0001 C CNN
F 3 "~" H 3400 2600 50  0001 C CNN
	1    3400 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 611D494D
P 2650 2600
F 0 "R2" V 2443 2600 50  0000 C CNN
F 1 "5k6" V 2534 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 2600 50  0001 C CNN
F 3 "~" H 2650 2600 50  0001 C CNN
	1    2650 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 611D5111
P 2650 2850
F 0 "R3" V 2765 2850 50  0000 C CNN
F 1 "5k6" V 2856 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 2850 50  0001 C CNN
F 3 "~" H 2650 2850 50  0001 C CNN
	1    2650 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT_TRIM RV2
U 1 1 611DB904
P 2600 3850
F 0 "RV2" H 2530 3804 50  0000 R CNN
F 1 "10k" H 2530 3895 50  0000 R CNN
F 2 "eurorack:Potentiometer_Vishay_M64Y_Horizontal" H 2600 3850 50  0001 C CNN
F 3 "~" H 2600 3850 50  0001 C CNN
	1    2600 3850
	1    0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 611DC213
P 2600 4200
F 0 "R4" H 2670 4246 50  0000 L CNN
F 1 "22k" H 2670 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2530 4200 50  0001 C CNN
F 3 "~" H 2600 4200 50  0001 C CNN
	1    2600 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 611F53DD
P 3050 4050
F 0 "R6" H 3120 4096 50  0000 L CNN
F 1 "1M" H 3120 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2980 4050 50  0001 C CNN
F 3 "~" H 3050 4050 50  0001 C CNN
	1    3050 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 611F7BBD
P 3050 4450
F 0 "R7" H 3120 4496 50  0000 L CNN
F 1 "470R" H 3120 4405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2980 4450 50  0001 C CNN
F 3 "~" H 3050 4450 50  0001 C CNN
	1    3050 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 611F95DC
P 3050 4800
F 0 "C2" H 3165 4846 50  0000 L CNN
F 1 "10n" H 3165 4755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3088 4650 50  0001 C CNN
F 3 "~" H 3050 4800 50  0001 C CNN
	1    3050 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61219EA2
P 5650 4650
F 0 "R10" H 5720 4696 50  0000 L CNN
F 1 "470R" H 5720 4605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 4650 50  0001 C CNN
F 3 "~" H 5650 4650 50  0001 C CNN
	1    5650 4650
	1    0    0    -1  
$EndComp
NoConn ~ 6800 4200
NoConn ~ 6800 4400
$Comp
L power:+12V #PWR0101
U 1 1 6180677E
P 7550 3650
F 0 "#PWR0101" H 7550 3500 50  0001 C CNN
F 1 "+12V" H 7565 3823 50  0000 C CNN
F 2 "" H 7550 3650 50  0001 C CNN
F 3 "" H 7550 3650 50  0001 C CNN
	1    7550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3700 7550 3700
Wire Wire Line
	7550 3700 7550 3650
$Comp
L power:GND #PWR0102
U 1 1 6181BD36
P 7400 5150
F 0 "#PWR0102" H 7400 4900 50  0001 C CNN
F 1 "GND" H 7405 4977 50  0000 C CNN
F 2 "" H 7400 5150 50  0001 C CNN
F 3 "" H 7400 5150 50  0001 C CNN
	1    7400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5150 7400 5100
Wire Wire Line
	7250 5150 7300 5150
Wire Wire Line
	7300 5150 7300 5100
$Comp
L power:-5V #PWR0103
U 1 1 6186018E
P 7250 5150
F 0 "#PWR0103" H 7250 5250 50  0001 C CNN
F 1 "-5V" V 7265 5278 50  0000 L CNN
F 2 "" H 7250 5150 50  0001 C CNN
F 3 "" H 7250 5150 50  0001 C CNN
	1    7250 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:-5V #PWR0104
U 1 1 618A5A6D
P 2450 2500
F 0 "#PWR0104" H 2450 2600 50  0001 C CNN
F 1 "-5V" H 2465 2673 50  0000 C CNN
F 2 "" H 2450 2500 50  0001 C CNN
F 3 "" H 2450 2500 50  0001 C CNN
	1    2450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2500 2450 2600
Wire Wire Line
	2450 2850 2500 2850
Wire Wire Line
	2450 2600 2500 2600
Connection ~ 2450 2600
Wire Wire Line
	2450 2600 2450 2850
Text GLabel 3600 2600 2    50   Output ~ 0
SCALE1
Wire Wire Line
	3550 2600 3600 2600
Text GLabel 6700 3900 0    50   Input ~ 0
SCALE1
Text GLabel 6700 4000 0    50   Input ~ 0
SCALE2
$Comp
L Device:R_POT_TRIM RV4
U 1 1 6120F33D
P 5650 3850
F 0 "RV4" H 5581 3896 50  0000 R CNN
F 1 "100k" H 5581 3805 50  0000 R CNN
F 2 "eurorack:Potentiometer_Vishay_M64Y_Horizontal" H 5650 3850 50  0001 C CNN
F 3 "~" H 5650 3850 50  0001 C CNN
	1    5650 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 61217E56
P 5650 4250
F 0 "R9" H 5720 4296 50  0000 L CNN
F 1 "220k" H 5720 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 4250 50  0001 C CNN
F 3 "~" H 5650 4250 50  0001 C CNN
	1    5650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3850 5850 3850
Wire Wire Line
	5850 3850 5850 4050
Wire Wire Line
	5850 4050 5650 4050
Wire Wire Line
	5650 4050 5650 4000
Wire Wire Line
	5650 4100 5650 4050
Connection ~ 5650 4050
$Comp
L power:+12V #PWR0105
U 1 1 619544EB
P 5650 3650
F 0 "#PWR0105" H 5650 3500 50  0001 C CNN
F 1 "+12V" H 5665 3823 50  0000 C CNN
F 2 "" H 5650 3650 50  0001 C CNN
F 3 "" H 5650 3650 50  0001 C CNN
	1    5650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3700 5650 3650
$Comp
L power:GND #PWR0106
U 1 1 61975D5C
P 5650 5200
F 0 "#PWR0106" H 5650 4950 50  0001 C CNN
F 1 "GND" H 5655 5027 50  0000 C CNN
F 2 "" H 5650 5200 50  0001 C CNN
F 3 "" H 5650 5200 50  0001 C CNN
	1    5650 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4850 5650 4800
Text GLabel 6700 4600 0    50   Input ~ 0
VFCI
$Comp
L power:GND #PWR0107
U 1 1 619E6F1A
P 6750 5350
F 0 "#PWR0107" H 6750 5100 50  0001 C CNN
F 1 "GND" H 6755 5177 50  0000 C CNN
F 2 "" H 6750 5350 50  0001 C CNN
F 3 "" H 6750 5350 50  0001 C CNN
	1    6750 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5350 6750 5300
Wire Wire Line
	6750 5000 6750 4800
Wire Wire Line
	6750 4800 6800 4800
Text GLabel 3150 4250 2    50   Output ~ 0
VLFI
$Comp
L power:+12V #PWR0108
U 1 1 61AB4243
P 2600 3650
F 0 "#PWR0108" H 2600 3500 50  0001 C CNN
F 1 "+12V" H 2615 3823 50  0000 C CNN
F 2 "" H 2600 3650 50  0001 C CNN
F 3 "" H 2600 3650 50  0001 C CNN
	1    2600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3900 3050 3850
Wire Wire Line
	3050 4650 3050 4600
$Comp
L power:GND #PWR0109
U 1 1 61ACF66E
P 3050 5000
F 0 "#PWR0109" H 3050 4750 50  0001 C CNN
F 1 "GND" H 3055 4827 50  0000 C CNN
F 2 "" H 3050 5000 50  0001 C CNN
F 3 "" H 3050 5000 50  0001 C CNN
	1    3050 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5000 3050 4950
Text GLabel 6700 4500 0    50   Input ~ 0
VLFI
Text GLabel 6700 4900 0    50   Input ~ 0
VS
Wire Wire Line
	6700 4900 6800 4900
Wire Wire Line
	6700 4600 6800 4600
Wire Wire Line
	6700 4500 6800 4500
Wire Wire Line
	6700 3900 6800 3900
Wire Wire Line
	6700 4000 6800 4000
$Comp
L Device:C C4
U 1 1 61823666
P 5650 5000
F 0 "C4" H 5765 5046 50  0000 L CNN
F 1 "10n" H 5765 4955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5688 4850 50  0001 C CNN
F 3 "~" H 5650 5000 50  0001 C CNN
	1    5650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5200 5650 5150
$Comp
L power:GND #PWR0110
U 1 1 61835D0F
P 2600 4400
F 0 "#PWR0110" H 2600 4150 50  0001 C CNN
F 1 "GND" H 2605 4227 50  0000 C CNN
F 2 "" H 2600 4400 50  0001 C CNN
F 3 "" H 2600 4400 50  0001 C CNN
	1    2600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4400 2600 4350
Wire Wire Line
	3050 4200 3050 4250
Wire Wire Line
	3150 4250 3050 4250
Connection ~ 3050 4250
Wire Wire Line
	3050 4250 3050 4300
Wire Wire Line
	2750 3850 3050 3850
Wire Wire Line
	2600 4050 2600 4000
Wire Wire Line
	2600 3700 2600 3650
Wire Wire Line
	5650 4400 5650 4450
Wire Wire Line
	5650 4450 5750 4450
Connection ~ 5650 4450
Wire Wire Line
	5650 4450 5650 4500
Wire Wire Line
	4550 2100 4550 1900
Connection ~ 4550 2800
Wire Wire Line
	4550 2850 4550 2800
$Comp
L power:GND #PWR0111
U 1 1 61844D87
P 4550 2850
F 0 "#PWR0111" H 4550 2600 50  0001 C CNN
F 1 "GND" H 4555 2677 50  0000 C CNN
F 2 "" H 4550 2850 50  0001 C CNN
F 3 "" H 4550 2850 50  0001 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2600 4950 2600
Connection ~ 4750 2600
Wire Wire Line
	4550 2800 4550 2750
Wire Wire Line
	4750 2800 4550 2800
Wire Wire Line
	4750 2600 4750 2800
Wire Wire Line
	4700 2600 4750 2600
Connection ~ 4950 2600
Wire Wire Line
	4950 2400 4950 2600
Wire Wire Line
	5350 2600 4950 2600
Wire Wire Line
	5350 2550 5350 2600
Wire Wire Line
	4950 1900 5350 1900
Connection ~ 4950 1900
Wire Wire Line
	4950 2100 4950 1900
Wire Wire Line
	5350 1900 5400 1900
Connection ~ 5350 1900
Wire Wire Line
	5350 1950 5350 1900
Wire Wire Line
	4550 1900 4950 1900
Text GLabel 5400 1900 2    50   Output ~ 0
VS
Wire Wire Line
	4550 2400 4550 2450
$Comp
L Device:Jumper JP1
U 1 1 611E8F97
P 5350 2250
F 0 "JP1" V 5304 2377 50  0000 L CNN
F 1 "Jumper" V 5395 2377 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5350 2250 50  0001 C CNN
F 3 "~" H 5350 2250 50  0001 C CNN
	1    5350 2250
	0    1    -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 611E7840
P 4950 2250
F 0 "C1" H 4835 2204 50  0000 R CNN
F 1 "560p" H 4835 2295 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4988 2100 50  0001 C CNN
F 3 "~" H 4950 2250 50  0001 C CNN
	1    4950 2250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 611E4D47
P 4550 2250
F 0 "R5" H 4480 2204 50  0000 R CNN
F 1 "1k62" H 4480 2295 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4480 2250 50  0001 C CNN
F 3 "~" H 4550 2250 50  0001 C CNN
	1    4550 2250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV3
U 1 1 611E3583
P 4550 2600
F 0 "RV3" H 4481 2554 50  0000 R CNN
F 1 "500R" H 4481 2645 50  0000 R CNN
F 2 "eurorack:Potentiometer_Vishay_M64Y_Horizontal" H 4550 2600 50  0001 C CNN
F 3 "~" H 4550 2600 50  0001 C CNN
	1    4550 2600
	1    0    0    -1  
$EndComp
Wire Notes Line
	2350 2250 4000 2250
Text Notes 3450 3100 0    50   ~ 0
Scale adjust
Wire Notes Line
	4200 1800 4200 3150
Wire Notes Line
	4200 3150 5800 3150
Wire Notes Line
	5800 3150 5800 1800
Wire Notes Line
	5800 1800 4200 1800
Wire Notes Line
	2350 3150 4000 3150
Wire Notes Line
	4000 2250 4000 3150
Wire Notes Line
	2350 2250 2350 3150
Text Notes 5500 3100 0    50   ~ 0
Scale
Wire Notes Line
	5300 3350 6100 3350
Text Notes 5350 5550 0    50   ~ 0
Freq, control input
Wire Notes Line
	5300 5600 6100 5600
Wire Notes Line
	6100 3350 6100 5600
Wire Notes Line
	5300 3350 5300 5600
Text Notes 2750 5350 0    50   ~ 0
Linear FM input
Wire Notes Line
	3400 3350 3400 5400
Wire Notes Line
	3400 5400 2350 5400
Wire Notes Line
	2350 5400 2350 3350
Wire Notes Line
	2350 3350 3400 3350
Text GLabel 7850 4400 2    50   Output ~ 0
VSO
Text GLabel 4200 4400 0    50   Input ~ 0
VTO
Wire Wire Line
	7800 4400 7850 4400
Wire Wire Line
	7800 4600 7850 4600
Text Notes 7750 5550 0    50   ~ 0
Oscillator
Wire Notes Line
	6300 5600 6300 3350
$Comp
L Mechanical:MountingHole H1
U 1 1 61920322
P 6300 6700
F 0 "H1" H 6400 6746 50  0000 L CNN
F 1 "MountingHole" H 6400 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 6300 6700 50  0001 C CNN
F 3 "~" H 6300 6700 50  0001 C CNN
	1    6300 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61920AC7
P 6300 6900
F 0 "H2" H 6400 6946 50  0000 L CNN
F 1 "MountingHole" H 6400 6855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 6300 6900 50  0001 C CNN
F 3 "~" H 6300 6900 50  0001 C CNN
	1    6300 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61920C92
P 6300 7100
F 0 "H3" H 6400 7146 50  0000 L CNN
F 1 "MountingHole" H 6400 7055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 6300 7100 50  0001 C CNN
F 3 "~" H 6300 7100 50  0001 C CNN
	1    6300 7100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61920F3B
P 6300 7300
F 0 "H4" H 6400 7346 50  0000 L CNN
F 1 "MountingHole" H 6400 7255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 6300 7300 50  0001 C CNN
F 3 "~" H 6300 7300 50  0001 C CNN
	1    6300 7300
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0112
U 1 1 61930915
P 6400 2400
F 0 "#PWR0112" H 6400 2500 50  0001 C CNN
F 1 "-12V" V 6415 2528 50  0000 L CNN
F 2 "" H 6400 2400 50  0001 C CNN
F 3 "" H 6400 2400 50  0001 C CNN
	1    6400 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:-5V #PWR0113
U 1 1 61934BB0
P 7200 2400
F 0 "#PWR0113" H 7200 2500 50  0001 C CNN
F 1 "-5V" V 7215 2528 50  0000 L CNN
F 2 "" H 7200 2400 50  0001 C CNN
F 3 "" H 7200 2400 50  0001 C CNN
	1    7200 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 619368D1
P 6800 2850
F 0 "#PWR0114" H 6800 2600 50  0001 C CNN
F 1 "GND" H 6805 2677 50  0000 C CNN
F 2 "" H 6800 2850 50  0001 C CNN
F 3 "" H 6800 2850 50  0001 C CNN
	1    6800 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 61939817
P 7150 2600
F 0 "C5" H 7032 2554 50  0000 R CNN
F 1 "10u" H 7032 2645 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7188 2450 50  0001 C CNN
F 3 "~" H 7150 2600 50  0001 C CNN
	1    7150 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 2750 7150 2800
Wire Wire Line
	7150 2800 6800 2800
Wire Wire Line
	6800 2850 6800 2800
Connection ~ 6800 2800
Wire Wire Line
	6800 2800 6800 2700
Wire Wire Line
	7100 2400 7150 2400
Wire Wire Line
	7150 2450 7150 2400
Connection ~ 7150 2400
Wire Wire Line
	7150 2400 7200 2400
Wire Wire Line
	6400 2400 6450 2400
Wire Wire Line
	6450 2400 6450 2000
Wire Wire Line
	6450 2000 6650 2000
Connection ~ 6450 2400
Wire Wire Line
	6450 2400 6500 2400
Wire Wire Line
	7150 2400 7150 2000
Wire Wire Line
	7150 2000 6950 2000
Text Notes 6950 3100 0    50   ~ 0
-5v regulator
Wire Notes Line
	7550 3150 7550 1700
Wire Notes Line
	7550 1700 6000 1700
Wire Notes Line
	6000 1700 6000 3150
Wire Notes Line
	6000 3150 7550 3150
$Comp
L power:-12V #PWR0115
U 1 1 617DEF4A
P 8350 2000
F 0 "#PWR0115" H 8350 2100 50  0001 C CNN
F 1 "-12V" V 8365 2128 50  0000 L CNN
F 2 "" H 8350 2000 50  0001 C CNN
F 3 "" H 8350 2000 50  0001 C CNN
	1    8350 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0117
U 1 1 617DFEBC
P 8100 2400
F 0 "#PWR0117" H 8100 2250 50  0001 C CNN
F 1 "+12V" V 8115 2528 50  0000 L CNN
F 2 "" H 8100 2400 50  0001 C CNN
F 3 "" H 8100 2400 50  0001 C CNN
	1    8100 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0118
U 1 1 617E0503
P 9000 2400
F 0 "#PWR0118" H 9000 2250 50  0001 C CNN
F 1 "+12V" V 9015 2528 50  0000 L CNN
F 2 "" H 9000 2400 50  0001 C CNN
F 3 "" H 9000 2400 50  0001 C CNN
	1    9000 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 6180C5DB
P 8650 2850
F 0 "#PWR0119" H 8650 2600 50  0001 C CNN
F 1 "GND" H 8655 2677 50  0000 C CNN
F 2 "" H 8650 2850 50  0001 C CNN
F 3 "" H 8650 2850 50  0001 C CNN
	1    8650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2800 8350 2300
Wire Wire Line
	8350 2100 8400 2100
Wire Wire Line
	8400 2200 8350 2200
Connection ~ 8350 2200
Wire Wire Line
	8350 2200 8350 2100
Wire Wire Line
	8400 2300 8350 2300
Connection ~ 8350 2300
Wire Wire Line
	8350 2300 8350 2200
Connection ~ 8350 2100
Wire Wire Line
	8100 2400 8200 2400
Connection ~ 8200 2400
Wire Wire Line
	8350 2000 8400 2000
Wire Wire Line
	8950 2800 8950 2300
Wire Wire Line
	8950 2100 8900 2100
Wire Wire Line
	8900 2300 8950 2300
Connection ~ 8950 2300
Wire Wire Line
	8950 2300 8950 2200
Wire Wire Line
	8950 2300 9100 2300
Wire Wire Line
	8900 2200 8950 2200
Connection ~ 8950 2200
Wire Wire Line
	8950 2200 8950 2100
Wire Wire Line
	8900 2400 9000 2400
Wire Wire Line
	8650 2850 8650 2800
Connection ~ 8650 2800
Text Notes 9000 3100 0    50   ~ 0
Eurorack PSU
Wire Notes Line
	9550 3150 9550 1700
Wire Notes Line
	9550 1700 7750 1700
Wire Notes Line
	7750 1700 7750 3150
Wire Notes Line
	7750 3150 9550 3150
$Comp
L power:-5V #PWR0120
U 1 1 6185F470
P 7850 3950
F 0 "#PWR0120" H 7850 4050 50  0001 C CNN
F 1 "-5V" H 7792 3987 50  0000 R CNN
F 2 "" H 7850 3950 50  0001 C CNN
F 3 "" H 7850 3950 50  0001 C CNN
	1    7850 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 3950 7850 3900
$Comp
L Device:C C3
U 1 1 611F9C06
P 6750 5150
F 0 "C3" H 6635 5196 50  0000 R CNN
F 1 "1n" H 6635 5105 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W3.0mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 6788 5000 50  0001 C CNN
F 3 "~" H 6750 5150 50  0001 C CNN
	1    6750 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6186BECE
P 7850 3750
F 0 "C6" H 7965 3796 50  0000 L CNN
F 1 "100n" H 7965 3705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7888 3600 50  0001 C CNN
F 3 "~" H 7850 3750 50  0001 C CNN
	1    7850 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 617F39BC
P 8200 2250
F 0 "C7" H 8400 2150 50  0000 R CNN
F 1 "10u" H 8450 2250 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 8238 2100 50  0001 C CNN
F 3 "~" H 8200 2250 50  0001 C CNN
	1    8200 2250
	-1   0    0    1   
$EndComp
Text GLabel 4200 4500 0    50   Input ~ 0
VSO
Text GLabel 5750 4450 2    50   Output ~ 0
VFCI
Text GLabel 4200 3700 0    50   Output ~ 0
VFCI
$Comp
L power:-12V #PWR0121
U 1 1 61894347
P 4200 4200
F 0 "#PWR0121" H 4200 4300 50  0001 C CNN
F 1 "-12V" V 4215 4328 50  0000 L CNN
F 2 "" H 4200 4200 50  0001 C CNN
F 3 "" H 4200 4200 50  0001 C CNN
	1    4200 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0124
U 1 1 61896B8D
P 4200 4000
F 0 "#PWR0124" H 4200 3850 50  0001 C CNN
F 1 "+12V" V 4215 4128 50  0000 L CNN
F 2 "" H 4200 4000 50  0001 C CNN
F 3 "" H 4200 4000 50  0001 C CNN
	1    4200 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 618ABB8E
P 3800 4250
F 0 "#PWR0125" H 3800 4000 50  0001 C CNN
F 1 "GND" H 3805 4077 50  0000 C CNN
F 2 "" H 3800 4250 50  0001 C CNN
F 3 "" H 3800 4250 50  0001 C CNN
	1    3800 4250
	1    0    0    -1  
$EndComp
NoConn ~ 8400 2500
NoConn ~ 8400 2600
NoConn ~ 8400 2700
Text Notes 4500 4650 0    50   ~ 0
PCB connector
Wire Notes Line
	5100 3350 3600 3350
Wire Notes Line
	3600 4700 5100 4700
Text GLabel 7850 4600 2    50   Output ~ 0
VTO
Wire Wire Line
	8200 2100 8350 2100
Wire Wire Line
	8200 2400 8400 2400
Wire Notes Line
	8200 3350 8200 5600
Wire Notes Line
	6300 3350 8200 3350
Wire Notes Line
	6300 5600 8200 5600
$Comp
L Regulator_Linear:L79L05_TO92 U2
U 1 1 620B14D9
P 6800 2400
F 0 "U2" H 6800 2158 50  0000 C CNN
F 1 "L79L05_TO92" H 6800 2249 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 6800 2200 50  0001 C CIN
F 3 "http://www.farnell.com/datasheets/1827870.pdf" H 6800 2400 50  0001 C CNN
	1    6800 2400
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 620BA239
P 6800 2000
F 0 "D1" H 6800 2217 50  0000 C CNN
F 1 "1N4148" H 6800 2126 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6800 1825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6800 2000 50  0001 C CNN
	1    6800 2000
	-1   0    0    -1  
$EndComp
Text GLabel 7850 4200 2    50   Output ~ 0
VP
Wire Wire Line
	7800 4200 7850 4200
Text GLabel 4200 4300 0    50   Input ~ 0
VP
Text GLabel 6700 4100 0    50   Input ~ 0
VPWM
Wire Wire Line
	6700 4100 6750 4100
Text GLabel 4200 3800 0    50   Output ~ 0
VPWM
$Comp
L Device:R R11
U 1 1 61888DEE
P 6750 3650
F 0 "R11" H 6820 3696 50  0000 L CNN
F 1 "10M" H 6820 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6680 3650 50  0001 C CNN
F 3 "~" H 6750 3650 50  0001 C CNN
	1    6750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3800 6750 4100
Connection ~ 6750 4100
Wire Wire Line
	6750 4100 6800 4100
Text GLabel 6700 3450 0    50   Input ~ 0
VP
Wire Wire Line
	6700 3450 6750 3450
Wire Wire Line
	6750 3450 6750 3500
Text GLabel 6700 4300 0    50   Output ~ 0
VHFT
Wire Wire Line
	6700 4300 6800 4300
Text GLabel 8700 3450 0    50   Input ~ 0
VHFT
$Comp
L Device:R_POT_TRIM RV5
U 1 1 61952DE1
P 8800 3700
F 0 "RV5" H 8730 3654 50  0000 R CNN
F 1 "10k" H 8730 3745 50  0000 R CNN
F 2 "eurorack:Potentiometer_Vishay_M64Y_Horizontal" H 8800 3700 50  0001 C CNN
F 3 "~" H 8800 3700 50  0001 C CNN
	1    8800 3700
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 6195D501
P 8800 3900
F 0 "#PWR0122" H 8800 3650 50  0001 C CNN
F 1 "GND" H 8805 3727 50  0000 C CNN
F 2 "" H 8800 3900 50  0001 C CNN
F 3 "" H 8800 3900 50  0001 C CNN
	1    8800 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 6195E5F8
P 9150 3700
F 0 "R12" V 8943 3700 50  0000 C CNN
F 1 "470k" V 9034 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9080 3700 50  0001 C CNN
F 3 "~" H 9150 3700 50  0001 C CNN
	1    9150 3700
	0    1    1    0   
$EndComp
Text GLabel 9350 3700 2    50   Output ~ 0
VFCI
Wire Wire Line
	8950 3700 9000 3700
Wire Wire Line
	9300 3700 9350 3700
Wire Wire Line
	8800 3550 8800 3450
Wire Wire Line
	8800 3450 8700 3450
Wire Wire Line
	8800 3900 8800 3850
Text Notes 8900 4150 0    50   ~ 0
High freq. tracking
Wire Notes Line
	9650 4200 9650 3350
Wire Notes Line
	9650 3350 8400 3350
Wire Notes Line
	8400 4200 9650 4200
Wire Notes Line
	8400 3350 8400 4200
Text GLabel 4200 3900 0    50   Output ~ 0
VLFI
Wire Wire Line
	2800 2850 3100 2850
Text GLabel 3100 2850 2    50   Output ~ 0
SCALE2
Wire Wire Line
	3050 2800 3050 2750
Wire Wire Line
	3200 2600 3250 2600
Wire Wire Line
	2850 2800 3050 2800
Wire Wire Line
	2800 2600 2850 2600
Wire Wire Line
	2850 2600 2900 2600
Connection ~ 2850 2600
Wire Wire Line
	2850 2600 2850 2800
$Comp
L Device:R_POT_TRIM RV1
U 1 1 611D724F
P 3050 2600
F 0 "RV1" V 2843 2600 50  0000 C CNN
F 1 "5k" V 2934 2600 50  0000 C CNN
F 2 "eurorack:Potentiometer_Vishay_M64Y_Horizontal" H 3050 2600 50  0001 C CNN
F 3 "~" H 3050 2600 50  0001 C CNN
	1    3050 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3600 7850 3550
Wire Wire Line
	7850 3550 7700 3550
Wire Wire Line
	7700 3550 7700 3700
Wire Wire Line
	7700 3700 7550 3700
Connection ~ 7550 3700
$Comp
L Connector_Generic:Conn_01x09 J2
U 1 1 61BD70F5
P 4450 4100
F 0 "J2" H 4368 4717 50  0000 C CNN
F 1 "Pin Socket 1x9" H 4368 4626 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 4450 4100 50  0001 C CNN
F 3 "~" H 4450 4100 50  0001 C CNN
	1    4450 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4250 3800 4100
Wire Wire Line
	3800 4100 4250 4100
Wire Wire Line
	4200 4200 4250 4200
Wire Wire Line
	4200 4300 4250 4300
Wire Wire Line
	4200 4400 4250 4400
Wire Wire Line
	4200 4500 4250 4500
Wire Wire Line
	4200 4000 4250 4000
Wire Wire Line
	4200 3900 4250 3900
Wire Wire Line
	4200 3800 4250 3800
Wire Wire Line
	4200 3700 4250 3700
Connection ~ 9100 2000
Wire Wire Line
	9100 2000 9200 2000
Wire Wire Line
	8900 2000 9100 2000
$Comp
L Device:CP C8
U 1 1 617F47EF
P 9100 2150
F 0 "C8" H 8982 2104 50  0000 R CNN
F 1 "10u" H 8982 2195 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 9138 2000 50  0001 C CNN
F 3 "~" H 9100 2150 50  0001 C CNN
	1    9100 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 2800 8950 2800
Wire Wire Line
	8350 2800 8650 2800
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 617D9E6A
P 8600 2300
F 0 "J1" H 8650 2817 50  0000 C CNN
F 1 "IDC Header 2x8" H 8650 2726 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 8600 2300 50  0001 C CNN
F 3 "~" H 8600 2300 50  0001 C CNN
	1    8600 2300
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0116
U 1 1 617DF545
P 9200 2000
F 0 "#PWR0116" H 9200 2100 50  0001 C CNN
F 1 "-12V" V 9215 2128 50  0000 L CNN
F 2 "" H 9200 2000 50  0001 C CNN
F 3 "" H 9200 2000 50  0001 C CNN
	1    9200 2000
	0    1    1    0   
$EndComp
NoConn ~ 8900 2500
NoConn ~ 8900 2600
NoConn ~ 8900 2700
Wire Notes Line
	3600 3350 3600 4700
Wire Notes Line
	5100 3350 5100 4700
$EndSCHEMATC
