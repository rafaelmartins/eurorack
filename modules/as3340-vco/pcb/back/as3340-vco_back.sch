EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "as3340-vco back board"
Date "2021-12-14"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Audio:AS3340 U1
U 1 1 611D320D
P 5750 4400
F 0 "U1" H 5750 5281 50  0000 C CNN
F 1 "AS3340" H 5750 5190 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 6250 4100 50  0001 C CNN
F 3 "http://www.alfarzpp.lv/eng/sc/AS3340.pdf" H 6350 3950 50  0001 C CNN
	1    5750 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 611D3ED1
P 3450 2050
F 0 "R1" V 3243 2050 50  0000 C CNN
F 1 "18k" V 3334 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 2050 50  0001 C CNN
F 3 "~" H 3450 2050 50  0001 C CNN
	1    3450 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 611D494D
P 2700 2050
F 0 "R2" V 2493 2050 50  0000 C CNN
F 1 "5k6" V 2584 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2630 2050 50  0001 C CNN
F 3 "~" H 2700 2050 50  0001 C CNN
	1    2700 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 611D5111
P 2700 2300
F 0 "R3" V 2815 2300 50  0000 C CNN
F 1 "5k6" V 2906 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2630 2300 50  0001 C CNN
F 3 "~" H 2700 2300 50  0001 C CNN
	1    2700 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT_TRIM RV2
U 1 1 611DB904
P 3700 3850
F 0 "RV2" H 3630 3804 50  0000 R CNN
F 1 "10k" H 3630 3895 50  0000 R CNN
F 2 "eurorack:Potentiometer_Vishay_M64Y_Horizontal" H 3700 3850 50  0001 C CNN
F 3 "~" H 3700 3850 50  0001 C CNN
	1    3700 3850
	1    0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 611DC213
P 3700 4200
F 0 "R4" H 3770 4246 50  0000 L CNN
F 1 "22k" H 3770 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3630 4200 50  0001 C CNN
F 3 "~" H 3700 4200 50  0001 C CNN
	1    3700 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 611F53DD
P 4150 4050
F 0 "R6" H 4220 4096 50  0000 L CNN
F 1 "1M" H 4220 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 4050 50  0001 C CNN
F 3 "~" H 4150 4050 50  0001 C CNN
	1    4150 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 611F7BBD
P 4150 4450
F 0 "R7" H 4220 4496 50  0000 L CNN
F 1 "470R" H 4220 4405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 4450 50  0001 C CNN
F 3 "~" H 4150 4450 50  0001 C CNN
	1    4150 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 611F95DC
P 4150 4800
F 0 "C2" H 4265 4846 50  0000 L CNN
F 1 "10n" H 4265 4755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4188 4650 50  0001 C CNN
F 3 "~" H 4150 4800 50  0001 C CNN
	1    4150 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61219EA2
P 2750 4650
F 0 "R10" H 2820 4696 50  0000 L CNN
F 1 "470R" H 2820 4605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2680 4650 50  0001 C CNN
F 3 "~" H 2750 4650 50  0001 C CNN
	1    2750 4650
	1    0    0    -1  
$EndComp
NoConn ~ 5250 4200
NoConn ~ 5250 4400
$Comp
L power:+12V #PWR0101
U 1 1 6180677E
P 6000 3650
F 0 "#PWR0101" H 6000 3500 50  0001 C CNN
F 1 "+12V" H 6015 3823 50  0000 C CNN
F 2 "" H 6000 3650 50  0001 C CNN
F 3 "" H 6000 3650 50  0001 C CNN
	1    6000 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3700 6000 3700
Wire Wire Line
	6000 3700 6000 3650
$Comp
L power:GND #PWR0102
U 1 1 6181BD36
P 5850 5150
F 0 "#PWR0102" H 5850 4900 50  0001 C CNN
F 1 "GND" H 5855 4977 50  0000 C CNN
F 2 "" H 5850 5150 50  0001 C CNN
F 3 "" H 5850 5150 50  0001 C CNN
	1    5850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5150 5850 5100
Wire Wire Line
	5700 5150 5750 5150
Wire Wire Line
	5750 5150 5750 5100
$Comp
L power:-5V #PWR0103
U 1 1 6186018E
P 5700 5150
F 0 "#PWR0103" H 5700 5250 50  0001 C CNN
F 1 "-5V" V 5715 5278 50  0000 L CNN
F 2 "" H 5700 5150 50  0001 C CNN
F 3 "" H 5700 5150 50  0001 C CNN
	1    5700 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:-5V #PWR0104
U 1 1 618A5A6D
P 2500 1950
F 0 "#PWR0104" H 2500 2050 50  0001 C CNN
F 1 "-5V" H 2515 2123 50  0000 C CNN
F 2 "" H 2500 1950 50  0001 C CNN
F 3 "" H 2500 1950 50  0001 C CNN
	1    2500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1950 2500 2050
Wire Wire Line
	2500 2300 2550 2300
Wire Wire Line
	2500 2050 2550 2050
Connection ~ 2500 2050
Wire Wire Line
	2500 2050 2500 2300
Text GLabel 3650 2050 2    50   Input ~ 0
SCALE1
Wire Wire Line
	3600 2050 3650 2050
Text GLabel 5150 3900 0    50   Input ~ 0
SCALE1
Text GLabel 5150 4000 0    50   Input ~ 0
SCALE2
$Comp
L Device:R_POT_TRIM RV4
U 1 1 6120F33D
P 2750 3850
F 0 "RV4" H 2681 3896 50  0000 R CNN
F 1 "100k" H 2681 3805 50  0000 R CNN
F 2 "eurorack:Potentiometer_Vishay_M64Y_Horizontal" H 2750 3850 50  0001 C CNN
F 3 "~" H 2750 3850 50  0001 C CNN
	1    2750 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 61217E56
P 2750 4250
F 0 "R9" H 2820 4296 50  0000 L CNN
F 1 "220k" H 2820 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2680 4250 50  0001 C CNN
F 3 "~" H 2750 4250 50  0001 C CNN
	1    2750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3850 2950 3850
Wire Wire Line
	2950 3850 2950 4050
Wire Wire Line
	2950 4050 2750 4050
Wire Wire Line
	2750 4050 2750 4000
Wire Wire Line
	2750 4100 2750 4050
Connection ~ 2750 4050
$Comp
L power:+12V #PWR0105
U 1 1 619544EB
P 2750 3650
F 0 "#PWR0105" H 2750 3500 50  0001 C CNN
F 1 "+12V" H 2765 3823 50  0000 C CNN
F 2 "" H 2750 3650 50  0001 C CNN
F 3 "" H 2750 3650 50  0001 C CNN
	1    2750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3700 2750 3650
$Comp
L power:GND #PWR0106
U 1 1 61975D5C
P 2750 5200
F 0 "#PWR0106" H 2750 4950 50  0001 C CNN
F 1 "GND" H 2755 5027 50  0000 C CNN
F 2 "" H 2750 5200 50  0001 C CNN
F 3 "" H 2750 5200 50  0001 C CNN
	1    2750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4850 2750 4800
Text GLabel 5150 4600 0    50   Input ~ 0
VFCI
$Comp
L power:GND #PWR0107
U 1 1 619E6F1A
P 5200 5350
F 0 "#PWR0107" H 5200 5100 50  0001 C CNN
F 1 "GND" H 5205 5177 50  0000 C CNN
F 2 "" H 5200 5350 50  0001 C CNN
F 3 "" H 5200 5350 50  0001 C CNN
	1    5200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5350 5200 5300
Wire Wire Line
	5200 5000 5200 4800
Wire Wire Line
	5200 4800 5250 4800
Text GLabel 4250 4250 2    50   Input ~ 0
VLFI
$Comp
L power:+12V #PWR0108
U 1 1 61AB4243
P 3700 3650
F 0 "#PWR0108" H 3700 3500 50  0001 C CNN
F 1 "+12V" H 3715 3823 50  0000 C CNN
F 2 "" H 3700 3650 50  0001 C CNN
F 3 "" H 3700 3650 50  0001 C CNN
	1    3700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3900 4150 3850
Wire Wire Line
	4150 4650 4150 4600
$Comp
L power:GND #PWR0109
U 1 1 61ACF66E
P 4150 5000
F 0 "#PWR0109" H 4150 4750 50  0001 C CNN
F 1 "GND" H 4155 4827 50  0000 C CNN
F 2 "" H 4150 5000 50  0001 C CNN
F 3 "" H 4150 5000 50  0001 C CNN
	1    4150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5000 4150 4950
Text GLabel 5150 4500 0    50   Input ~ 0
VLFI
Text GLabel 5150 4900 0    50   Input ~ 0
VS
Wire Wire Line
	5150 4900 5250 4900
Wire Wire Line
	5150 4600 5250 4600
Wire Wire Line
	5150 4500 5250 4500
Wire Wire Line
	5150 3900 5250 3900
Wire Wire Line
	5150 4000 5250 4000
$Comp
L Device:C C4
U 1 1 61823666
P 2750 5000
F 0 "C4" H 2865 5046 50  0000 L CNN
F 1 "10n" H 2865 4955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2788 4850 50  0001 C CNN
F 3 "~" H 2750 5000 50  0001 C CNN
	1    2750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5200 2750 5150
$Comp
L power:GND #PWR0110
U 1 1 61835D0F
P 3700 4400
F 0 "#PWR0110" H 3700 4150 50  0001 C CNN
F 1 "GND" H 3705 4227 50  0000 C CNN
F 2 "" H 3700 4400 50  0001 C CNN
F 3 "" H 3700 4400 50  0001 C CNN
	1    3700 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4400 3700 4350
Wire Wire Line
	4150 4200 4150 4250
Wire Wire Line
	4250 4250 4150 4250
Connection ~ 4150 4250
Wire Wire Line
	4150 4250 4150 4300
Wire Wire Line
	3850 3850 4150 3850
Wire Wire Line
	3700 4050 3700 4000
Wire Wire Line
	3700 3700 3700 3650
Wire Wire Line
	2750 4400 2750 4450
Wire Wire Line
	2750 4450 2850 4450
Connection ~ 2750 4450
Wire Wire Line
	2750 4450 2750 4500
Wire Wire Line
	4600 2000 4600 1800
Connection ~ 4600 2700
Wire Wire Line
	4600 2750 4600 2700
$Comp
L power:GND #PWR0111
U 1 1 61844D87
P 4600 2750
F 0 "#PWR0111" H 4600 2500 50  0001 C CNN
F 1 "GND" H 4605 2577 50  0000 C CNN
F 2 "" H 4600 2750 50  0001 C CNN
F 3 "" H 4600 2750 50  0001 C CNN
	1    4600 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2500 5000 2500
Connection ~ 4800 2500
Wire Wire Line
	4600 2700 4600 2650
Wire Wire Line
	4800 2700 4600 2700
Wire Wire Line
	4800 2500 4800 2700
Wire Wire Line
	4750 2500 4800 2500
Connection ~ 5000 2500
Wire Wire Line
	5000 2300 5000 2500
Wire Wire Line
	5400 2500 5000 2500
Wire Wire Line
	5400 2450 5400 2500
Wire Wire Line
	5000 1800 5400 1800
Connection ~ 5000 1800
Wire Wire Line
	5000 2000 5000 1800
Wire Wire Line
	5400 1800 5450 1800
Connection ~ 5400 1800
Wire Wire Line
	5400 1850 5400 1800
Wire Wire Line
	4600 1800 5000 1800
Text GLabel 5450 1800 2    50   Input ~ 0
VS
Wire Wire Line
	4600 2300 4600 2350
$Comp
L Device:Jumper JP1
U 1 1 611E8F97
P 5400 2150
F 0 "JP1" V 5354 2277 50  0000 L CNN
F 1 "Jumper" V 5445 2277 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5400 2150 50  0001 C CNN
F 3 "~" H 5400 2150 50  0001 C CNN
	1    5400 2150
	0    1    -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 611E7840
P 5000 2150
F 0 "C1" H 4885 2104 50  0000 R CNN
F 1 "560p" H 4885 2195 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5038 2000 50  0001 C CNN
F 3 "~" H 5000 2150 50  0001 C CNN
	1    5000 2150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 611E4D47
P 4600 2150
F 0 "R5" H 4530 2104 50  0000 R CNN
F 1 "1k62" H 4530 2195 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4530 2150 50  0001 C CNN
F 3 "~" H 4600 2150 50  0001 C CNN
	1    4600 2150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV3
U 1 1 611E3583
P 4600 2500
F 0 "RV3" H 4531 2454 50  0000 R CNN
F 1 "500R" H 4531 2545 50  0000 R CNN
F 2 "eurorack:Potentiometer_Vishay_M64Y_Horizontal" H 4600 2500 50  0001 C CNN
F 3 "~" H 4600 2500 50  0001 C CNN
	1    4600 2500
	1    0    0    -1  
$EndComp
Wire Notes Line
	2400 1700 4050 1700
Text Notes 3500 2550 0    50   ~ 0
Scale adjust
Wire Notes Line
	4250 1700 4250 3050
Wire Notes Line
	4250 3050 5850 3050
Wire Notes Line
	5850 3050 5850 1700
Wire Notes Line
	5850 1700 4250 1700
Wire Notes Line
	2400 2600 4050 2600
Wire Notes Line
	4050 1700 4050 2600
Wire Notes Line
	2400 1700 2400 2600
Text Notes 5550 3000 0    50   ~ 0
Scale
Wire Notes Line
	2400 3350 3200 3350
Text Notes 2450 5550 0    50   ~ 0
Freq, control input
Wire Notes Line
	2400 5600 3200 5600
Wire Notes Line
	3200 3350 3200 5600
Wire Notes Line
	2400 3350 2400 5600
Text Notes 3850 5350 0    50   ~ 0
Linear FM input
Wire Notes Line
	4500 3350 4500 5400
Wire Notes Line
	4500 5400 3450 5400
Wire Notes Line
	3450 5400 3450 3350
Wire Notes Line
	3450 3350 4500 3350
Text GLabel 6300 4400 2    50   Input ~ 0
VSO
Text GLabel 7500 5300 0    50   Input ~ 0
VTO
Wire Wire Line
	6250 4400 6300 4400
Wire Wire Line
	6250 4600 6300 4600
Text Notes 6200 5550 0    50   ~ 0
Oscillator
Wire Notes Line
	4750 5600 4750 3350
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
P 6450 2400
F 0 "#PWR0112" H 6450 2500 50  0001 C CNN
F 1 "-12V" V 6465 2528 50  0000 L CNN
F 2 "" H 6450 2400 50  0001 C CNN
F 3 "" H 6450 2400 50  0001 C CNN
	1    6450 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:-5V #PWR0113
U 1 1 61934BB0
P 7250 2400
F 0 "#PWR0113" H 7250 2500 50  0001 C CNN
F 1 "-5V" V 7265 2528 50  0000 L CNN
F 2 "" H 7250 2400 50  0001 C CNN
F 3 "" H 7250 2400 50  0001 C CNN
	1    7250 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 619368D1
P 6850 2850
F 0 "#PWR0114" H 6850 2600 50  0001 C CNN
F 1 "GND" H 6855 2677 50  0000 C CNN
F 2 "" H 6850 2850 50  0001 C CNN
F 3 "" H 6850 2850 50  0001 C CNN
	1    6850 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 61939817
P 7200 2600
F 0 "C5" H 7082 2554 50  0000 R CNN
F 1 "10u" H 7082 2645 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7238 2450 50  0001 C CNN
F 3 "~" H 7200 2600 50  0001 C CNN
	1    7200 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 2750 7200 2800
Wire Wire Line
	7200 2800 6850 2800
Wire Wire Line
	6850 2850 6850 2800
Connection ~ 6850 2800
Wire Wire Line
	6850 2800 6850 2700
Wire Wire Line
	7150 2400 7200 2400
Wire Wire Line
	7200 2450 7200 2400
Connection ~ 7200 2400
Wire Wire Line
	7200 2400 7250 2400
Wire Wire Line
	6450 2400 6500 2400
Wire Wire Line
	6500 2400 6500 2000
Wire Wire Line
	6500 2000 6700 2000
Connection ~ 6500 2400
Wire Wire Line
	6500 2400 6550 2400
Wire Wire Line
	7200 2400 7200 2000
Wire Wire Line
	7200 2000 7000 2000
Text Notes 7000 3100 0    50   ~ 0
-5v regulator
Wire Notes Line
	7600 3150 7600 1700
Wire Notes Line
	7600 1700 6050 1700
Wire Notes Line
	6050 1700 6050 3150
Wire Notes Line
	6050 3150 7600 3150
$Comp
L power:-12V #PWR0115
U 1 1 617DEF4A
P 8400 2000
F 0 "#PWR0115" H 8400 2100 50  0001 C CNN
F 1 "-12V" V 8415 2128 50  0000 L CNN
F 2 "" H 8400 2000 50  0001 C CNN
F 3 "" H 8400 2000 50  0001 C CNN
	1    8400 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0117
U 1 1 617DFEBC
P 8150 2400
F 0 "#PWR0117" H 8150 2250 50  0001 C CNN
F 1 "+12V" V 8165 2528 50  0000 L CNN
F 2 "" H 8150 2400 50  0001 C CNN
F 3 "" H 8150 2400 50  0001 C CNN
	1    8150 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0118
U 1 1 617E0503
P 9050 2400
F 0 "#PWR0118" H 9050 2250 50  0001 C CNN
F 1 "+12V" V 9065 2528 50  0000 L CNN
F 2 "" H 9050 2400 50  0001 C CNN
F 3 "" H 9050 2400 50  0001 C CNN
	1    9050 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 6180C5DB
P 8700 2850
F 0 "#PWR0119" H 8700 2600 50  0001 C CNN
F 1 "GND" H 8705 2677 50  0000 C CNN
F 2 "" H 8700 2850 50  0001 C CNN
F 3 "" H 8700 2850 50  0001 C CNN
	1    8700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2800 8400 2300
Wire Wire Line
	8400 2100 8450 2100
Wire Wire Line
	8450 2200 8400 2200
Connection ~ 8400 2200
Wire Wire Line
	8400 2200 8400 2100
Wire Wire Line
	8450 2300 8400 2300
Connection ~ 8400 2300
Wire Wire Line
	8400 2300 8400 2200
Connection ~ 8400 2100
Wire Wire Line
	8150 2400 8250 2400
Connection ~ 8250 2400
Wire Wire Line
	8400 2000 8450 2000
Wire Wire Line
	9000 2800 9000 2300
Wire Wire Line
	9000 2100 8950 2100
Wire Wire Line
	8950 2300 9000 2300
Connection ~ 9000 2300
Wire Wire Line
	9000 2300 9000 2200
Wire Wire Line
	9000 2300 9150 2300
Wire Wire Line
	8950 2200 9000 2200
Connection ~ 9000 2200
Wire Wire Line
	9000 2200 9000 2100
Wire Wire Line
	8950 2400 9050 2400
Wire Wire Line
	8700 2850 8700 2800
Connection ~ 8700 2800
Text Notes 9050 3100 0    50   ~ 0
Eurorack PSU
Wire Notes Line
	9600 3150 9600 1700
Wire Notes Line
	9600 1700 7800 1700
Wire Notes Line
	7800 1700 7800 3150
Wire Notes Line
	7800 3150 9600 3150
$Comp
L power:-5V #PWR0120
U 1 1 6185F470
P 6300 3950
F 0 "#PWR0120" H 6300 4050 50  0001 C CNN
F 1 "-5V" H 6242 3987 50  0000 R CNN
F 2 "" H 6300 3950 50  0001 C CNN
F 3 "" H 6300 3950 50  0001 C CNN
	1    6300 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 3950 6300 3900
$Comp
L Device:C C3
U 1 1 611F9C06
P 5200 5150
F 0 "C3" H 5085 5196 50  0000 R CNN
F 1 "1n" H 5085 5105 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W3.0mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 5238 5000 50  0001 C CNN
F 3 "~" H 5200 5150 50  0001 C CNN
	1    5200 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6186BECE
P 6300 3750
F 0 "C6" H 6415 3796 50  0000 L CNN
F 1 "100n" H 6415 3705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6338 3600 50  0001 C CNN
F 3 "~" H 6300 3750 50  0001 C CNN
	1    6300 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 617F39BC
P 8250 2250
F 0 "C7" H 8132 2204 50  0000 R CNN
F 1 "10u" H 8132 2295 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 8288 2100 50  0001 C CNN
F 3 "~" H 8250 2250 50  0001 C CNN
	1    8250 2250
	-1   0    0    1   
$EndComp
Text GLabel 7500 5400 0    50   Input ~ 0
VSO
Text GLabel 2850 4450 2    50   Input ~ 0
VFCI
Text GLabel 7500 4600 0    50   Input ~ 0
VFCI
$Comp
L power:-12V #PWR0121
U 1 1 61894347
P 7500 5100
F 0 "#PWR0121" H 7500 5200 50  0001 C CNN
F 1 "-12V" V 7515 5228 50  0000 L CNN
F 2 "" H 7500 5100 50  0001 C CNN
F 3 "" H 7500 5100 50  0001 C CNN
	1    7500 5100
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0124
U 1 1 61896B8D
P 7500 4900
F 0 "#PWR0124" H 7500 4750 50  0001 C CNN
F 1 "+12V" V 7515 5028 50  0000 L CNN
F 2 "" H 7500 4900 50  0001 C CNN
F 3 "" H 7500 4900 50  0001 C CNN
	1    7500 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 618ABB8E
P 7100 5150
F 0 "#PWR0125" H 7100 4900 50  0001 C CNN
F 1 "GND" H 7105 4977 50  0000 C CNN
F 2 "" H 7100 5150 50  0001 C CNN
F 3 "" H 7100 5150 50  0001 C CNN
	1    7100 5150
	1    0    0    -1  
$EndComp
NoConn ~ 8450 2500
NoConn ~ 8450 2600
NoConn ~ 8450 2700
Text Notes 7800 5550 0    50   ~ 0
PCB connector
Wire Notes Line
	8400 5600 8400 4450
Wire Notes Line
	8400 4450 6900 4450
Wire Notes Line
	6900 4450 6900 5600
Wire Notes Line
	6900 5600 8400 5600
Text GLabel 6300 4600 2    50   Input ~ 0
VTO
Wire Wire Line
	8250 2100 8400 2100
Wire Wire Line
	8250 2400 8450 2400
Wire Notes Line
	6650 3350 6650 5600
Wire Notes Line
	4750 3350 6650 3350
Wire Notes Line
	4750 5600 6650 5600
$Comp
L Regulator_Linear:L79L05_TO92 U2
U 1 1 620B14D9
P 6850 2400
F 0 "U2" H 6850 2158 50  0000 C CNN
F 1 "L79L05_TO92" H 6850 2249 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 6850 2200 50  0001 C CIN
F 3 "http://www.farnell.com/datasheets/1827870.pdf" H 6850 2400 50  0001 C CNN
	1    6850 2400
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 620BA239
P 6850 2000
F 0 "D1" H 6850 2217 50  0000 C CNN
F 1 "1N4148" H 6850 2126 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6850 1825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6850 2000 50  0001 C CNN
	1    6850 2000
	-1   0    0    -1  
$EndComp
Text GLabel 6300 4200 2    50   Input ~ 0
VP
Wire Wire Line
	6250 4200 6300 4200
Text GLabel 7500 5200 0    50   Input ~ 0
VP
Text GLabel 5150 4100 0    50   Input ~ 0
VPWM
Wire Wire Line
	5150 4100 5200 4100
Text GLabel 7500 4700 0    50   Input ~ 0
VPWM
$Comp
L Device:R R11
U 1 1 61888DEE
P 5200 3650
F 0 "R11" H 5270 3696 50  0000 L CNN
F 1 "10M" H 5270 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5130 3650 50  0001 C CNN
F 3 "~" H 5200 3650 50  0001 C CNN
	1    5200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3800 5200 4100
Connection ~ 5200 4100
Wire Wire Line
	5200 4100 5250 4100
Text GLabel 5150 3450 0    50   Input ~ 0
VP
Wire Wire Line
	5150 3450 5200 3450
Wire Wire Line
	5200 3450 5200 3500
Text GLabel 5150 4300 0    50   Input ~ 0
VHFT
Wire Wire Line
	5150 4300 5250 4300
Text GLabel 7200 3450 0    50   Input ~ 0
VHFT
$Comp
L Device:R_POT_TRIM RV5
U 1 1 61952DE1
P 7300 3700
F 0 "RV5" H 7230 3654 50  0000 R CNN
F 1 "10k" H 7230 3745 50  0000 R CNN
F 2 "eurorack:Potentiometer_Vishay_M64Y_Horizontal" H 7300 3700 50  0001 C CNN
F 3 "~" H 7300 3700 50  0001 C CNN
	1    7300 3700
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 6195D501
P 7300 3900
F 0 "#PWR0122" H 7300 3650 50  0001 C CNN
F 1 "GND" H 7305 3727 50  0000 C CNN
F 2 "" H 7300 3900 50  0001 C CNN
F 3 "" H 7300 3900 50  0001 C CNN
	1    7300 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 6195E5F8
P 7650 3700
F 0 "R12" V 7443 3700 50  0000 C CNN
F 1 "470k" V 7534 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 3700 50  0001 C CNN
F 3 "~" H 7650 3700 50  0001 C CNN
	1    7650 3700
	0    1    1    0   
$EndComp
Text GLabel 7850 3700 2    50   Input ~ 0
VFCI
Wire Wire Line
	7450 3700 7500 3700
Wire Wire Line
	7800 3700 7850 3700
Wire Wire Line
	7300 3550 7300 3450
Wire Wire Line
	7300 3450 7200 3450
Wire Wire Line
	7300 3900 7300 3850
Text Notes 7400 4150 0    50   ~ 0
High freq. tracking
Wire Notes Line
	8150 4200 8150 3350
Wire Notes Line
	8150 3350 6900 3350
Wire Notes Line
	6900 4200 8150 4200
Wire Notes Line
	6900 3350 6900 4200
Text GLabel 7500 4800 0    50   Input ~ 0
VLFI
Wire Wire Line
	2850 2300 3150 2300
Text GLabel 3150 2300 2    50   Input ~ 0
SCALE2
Wire Wire Line
	3100 2250 3100 2200
Wire Wire Line
	3250 2050 3300 2050
Wire Wire Line
	2900 2250 3100 2250
Wire Wire Line
	2850 2050 2900 2050
Wire Wire Line
	2900 2050 2950 2050
Connection ~ 2900 2050
Wire Wire Line
	2900 2050 2900 2250
$Comp
L Device:R_POT_TRIM RV1
U 1 1 611D724F
P 3100 2050
F 0 "RV1" V 2893 2050 50  0000 C CNN
F 1 "5k" V 2984 2050 50  0000 C CNN
F 2 "eurorack:Potentiometer_Vishay_M64Y_Horizontal" H 3100 2050 50  0001 C CNN
F 3 "~" H 3100 2050 50  0001 C CNN
	1    3100 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 3600 6300 3550
Wire Wire Line
	6300 3550 6150 3550
Wire Wire Line
	6150 3550 6150 3700
Wire Wire Line
	6150 3700 6000 3700
Connection ~ 6000 3700
$Comp
L Connector_Generic:Conn_01x09 J2
U 1 1 61BD70F5
P 7750 5000
F 0 "J2" H 7830 5042 50  0000 L CNN
F 1 "Conn_01x09" H 7830 4951 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 7750 5000 50  0001 C CNN
F 3 "~" H 7750 5000 50  0001 C CNN
	1    7750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5150 7100 5000
Wire Wire Line
	7100 5000 7550 5000
Wire Wire Line
	7500 5100 7550 5100
Wire Wire Line
	7500 5200 7550 5200
Wire Wire Line
	7500 5300 7550 5300
Wire Wire Line
	7500 5400 7550 5400
Wire Wire Line
	7500 4900 7550 4900
Wire Wire Line
	7500 4800 7550 4800
Wire Wire Line
	7500 4700 7550 4700
Wire Wire Line
	7500 4600 7550 4600
Connection ~ 9150 2000
Wire Wire Line
	9150 2000 9250 2000
Wire Wire Line
	8950 2000 9150 2000
$Comp
L Device:CP C8
U 1 1 617F47EF
P 9150 2150
F 0 "C8" H 9032 2104 50  0000 R CNN
F 1 "10u" H 9032 2195 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 9188 2000 50  0001 C CNN
F 3 "~" H 9150 2150 50  0001 C CNN
	1    9150 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 2800 9000 2800
Wire Wire Line
	8400 2800 8700 2800
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 617D9E6A
P 8650 2300
F 0 "J1" H 8700 2817 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 8700 2726 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 8650 2300 50  0001 C CNN
F 3 "~" H 8650 2300 50  0001 C CNN
	1    8650 2300
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0116
U 1 1 617DF545
P 9250 2000
F 0 "#PWR0116" H 9250 2100 50  0001 C CNN
F 1 "-12V" V 9265 2128 50  0000 L CNN
F 2 "" H 9250 2000 50  0001 C CNN
F 3 "" H 9250 2000 50  0001 C CNN
	1    9250 2000
	0    1    1    0   
$EndComp
NoConn ~ 8950 2500
NoConn ~ 8950 2600
NoConn ~ 8950 2700
$EndSCHEMATC