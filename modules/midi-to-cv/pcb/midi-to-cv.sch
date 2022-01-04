EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "midi-to-cv board"
Date "2021-12-15"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3450 5000 2    50   Output ~ 0
UART_RX
Text GLabel 2050 1950 0    50   BiDi ~ 0
dw
$Comp
L Device:C C2
U 1 1 613A8FA4
P 1300 2050
F 0 "C2" V 1048 2050 50  0000 C CNN
F 1 "22p" V 1139 2050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1338 1900 50  0001 C CNN
F 3 "~" H 1300 2050 50  0001 C CNN
	1    1300 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 613A9B72
P 1300 2450
F 0 "C3" V 1460 2450 50  0000 C CNN
F 1 "22p" V 1551 2450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1338 2300 50  0001 C CNN
F 3 "~" H 1300 2450 50  0001 C CNN
	1    1300 2450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 613AA538
P 1050 2550
F 0 "#PWR0109" H 1050 2300 50  0001 C CNN
F 1 "GND" H 1055 2377 50  0000 C CNN
F 2 "" H 1050 2550 50  0001 C CNN
F 3 "" H 1050 2550 50  0001 C CNN
	1    1050 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 613E3A6A
P 2700 3900
F 0 "#PWR0110" H 2700 3650 50  0001 C CNN
F 1 "GND" H 2705 3727 50  0000 C CNN
F 2 "" H 2700 3900 50  0001 C CNN
F 3 "" H 2700 3900 50  0001 C CNN
	1    2700 3900
	1    0    0    -1  
$EndComp
Text GLabel 3350 2850 2    50   Input ~ 0
UART_RX
Text GLabel 3350 2650 2    50   Output ~ 0
SPI_SCK
Text GLabel 3350 2550 2    50   Output ~ 0
SPI_SD
Text GLabel 3350 3050 2    50   Output ~ 0
SPI_CS1
$Comp
L power:GND #PWR0108
U 1 1 613638B2
P 1350 3350
F 0 "#PWR0108" H 1350 3100 50  0001 C CNN
F 1 "GND" H 1355 3177 50  0000 C CNN
F 2 "" H 1350 3350 50  0001 C CNN
F 3 "" H 1350 3350 50  0001 C CNN
	1    1350 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 613A7694
P 1600 2250
F 0 "Y1" V 1554 2119 50  0000 R CNN
F 1 "20mhz" V 1645 2119 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 1600 2250 50  0001 C CNN
F 3 "~" H 1600 2250 50  0001 C CNN
	1    1600 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 2100 1600 2050
Wire Wire Line
	1600 2400 1600 2450
Wire Wire Line
	1450 2450 1600 2450
Wire Wire Line
	2050 1950 2100 1950
Wire Wire Line
	1050 2550 1050 2450
Wire Wire Line
	1050 2050 1150 2050
Wire Wire Line
	1150 2450 1050 2450
Connection ~ 1050 2450
Wire Wire Line
	1050 2450 1050 2050
$Comp
L Device:R R2
U 1 1 6120BD08
P 3400 4800
F 0 "R2" H 3470 4846 50  0000 L CNN
F 1 "10k" H 3470 4755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3330 4800 50  0001 C CNN
F 3 "~" H 3400 4800 50  0001 C CNN
	1    3400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5300 2250 5200
Wire Wire Line
	1900 5300 2250 5300
Wire Wire Line
	1900 5250 1900 5300
$Comp
L Isolator:6N137 U1
U 1 1 628E9FE1
P 2550 5000
F 0 "U1" H 2550 5467 50  0000 C CNN
F 1 "6N137" H 2550 5376 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 2550 4500 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-0940EN" H 1700 5550 50  0001 C CNN
	1    2550 5000
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N914 D1
U 1 1 61206357
P 1900 5100
F 0 "D1" V 1854 5021 50  0000 R CNN
F 1 "1N914" V 1945 5021 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1900 4925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85622/1n914.pdf" H 1900 5100 50  0001 C CNN
	1    1900 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 61205639
P 1700 4900
F 0 "R1" V 1493 4900 50  0000 C CNN
F 1 "220R" V 1584 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1630 4900 50  0001 C CNN
F 3 "~" H 1700 4900 50  0001 C CNN
	1    1700 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 4950 1900 4900
Wire Wire Line
	1900 4900 2250 4900
Wire Wire Line
	2250 4900 2250 5000
Wire Wire Line
	3000 4650 3000 4600
Wire Wire Line
	3400 5000 3400 4950
NoConn ~ 2850 4900
Wire Wire Line
	1850 4900 1900 4900
Connection ~ 1900 4900
$Comp
L power:GND #PWR02
U 1 1 62B31820
P 2900 5250
F 0 "#PWR02" H 2900 5000 50  0001 C CNN
F 1 "GND" H 2905 5077 50  0000 C CNN
F 2 "" H 2900 5250 50  0001 C CNN
F 3 "" H 2900 5250 50  0001 C CNN
	1    2900 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5200 2900 5200
Wire Wire Line
	2900 5200 2900 5250
Wire Wire Line
	3400 5000 3450 5000
Connection ~ 3400 5000
Text GLabel 1400 3300 2    50   BiDi ~ 0
dw
Wire Wire Line
	1450 2050 1600 2050
Wire Wire Line
	2100 2150 1800 2150
Wire Wire Line
	1800 2150 1800 2050
Wire Wire Line
	1800 2050 1600 2050
Connection ~ 1600 2050
Wire Wire Line
	2100 2350 1800 2350
Wire Wire Line
	1800 2350 1800 2450
Wire Wire Line
	1800 2450 1600 2450
Connection ~ 1600 2450
Text GLabel 3350 2150 2    50   Output ~ 0
SPI_CS2
$Comp
L Device:LED D2
U 1 1 61C74867
P 4400 5400
F 0 "D2" V 4439 5282 50  0000 R CNN
F 1 "LED" V 4348 5282 50  0000 R CNN
F 2 "eurorack:LED_D3.0mmP2.54mm" H 4400 5400 50  0001 C CNN
F 3 "~" H 4400 5400 50  0001 C CNN
	1    4400 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 61C75707
P 4850 5400
F 0 "D3" V 4889 5282 50  0000 R CNN
F 1 "LED" V 4798 5282 50  0000 R CNN
F 2 "eurorack:LED_D3.0mmP2.54mm" H 4850 5400 50  0001 C CNN
F 3 "~" H 4850 5400 50  0001 C CNN
	1    4850 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 61C76595
P 4400 5000
F 0 "R3" H 4470 5046 50  0000 L CNN
F 1 "2k2" H 4470 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4330 5000 50  0001 C CNN
F 3 "~" H 4400 5000 50  0001 C CNN
	1    4400 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 61C770E0
P 4850 5000
F 0 "R4" H 4920 5046 50  0000 L CNN
F 1 "2k2" H 4920 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4780 5000 50  0001 C CNN
F 3 "~" H 4850 5000 50  0001 C CNN
	1    4850 5000
	1    0    0    -1  
$EndComp
Text GLabel 4350 4800 0    50   Input ~ 0
LED1
Text GLabel 4800 4800 0    50   Input ~ 0
LED2
$Comp
L power:GND #PWR0105
U 1 1 61C7A67E
P 4400 5650
F 0 "#PWR0105" H 4400 5400 50  0001 C CNN
F 1 "GND" H 4405 5477 50  0000 C CNN
F 2 "" H 4400 5650 50  0001 C CNN
F 3 "" H 4400 5650 50  0001 C CNN
	1    4400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4800 4400 4800
Wire Wire Line
	4400 4800 4400 4850
Wire Wire Line
	4800 4800 4850 4800
Wire Wire Line
	4850 4800 4850 4850
Wire Wire Line
	4400 5250 4400 5150
Wire Wire Line
	4850 5150 4850 5250
Wire Wire Line
	4400 5650 4400 5600
Wire Wire Line
	4400 5600 4850 5600
Wire Wire Line
	4850 5600 4850 5550
Connection ~ 4400 5600
Wire Wire Line
	4400 5600 4400 5550
Text GLabel 9800 1600 0    50   Input ~ 0
CV1
Text GLabel 9800 2050 0    50   Input ~ 0
CV2
Text GLabel 9800 2500 0    50   Input ~ 0
CV3
$Comp
L Device:R R6
U 1 1 61A3E436
P 9650 3400
F 0 "R6" V 9857 3400 50  0000 C CNN
F 1 "1k" V 9766 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9580 3400 50  0001 C CNN
F 3 "~" H 9650 3400 50  0001 C CNN
	1    9650 3400
	0    -1   -1   0   
$EndComp
Text GLabel 9450 3400 0    50   Input ~ 0
GATE1
Wire Wire Line
	9450 3400 9500 3400
$Comp
L Device:R R7
U 1 1 61A45B3E
P 9650 3850
F 0 "R7" V 9857 3850 50  0000 C CNN
F 1 "1k" V 9766 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9580 3850 50  0001 C CNN
F 3 "~" H 9650 3850 50  0001 C CNN
	1    9650 3850
	0    -1   -1   0   
$EndComp
Text GLabel 9450 3850 0    50   Input ~ 0
GATE2
Wire Wire Line
	9450 3850 9500 3850
Text GLabel 9800 2950 0    50   Input ~ 0
CV4
Wire Wire Line
	9800 3850 9950 3850
Wire Wire Line
	9800 3400 9950 3400
Wire Wire Line
	9800 2950 9950 2950
Wire Wire Line
	9800 2500 9950 2500
Wire Wire Line
	9800 2050 9950 2050
Wire Wire Line
	9800 1600 9950 1600
Wire Wire Line
	9950 1700 9900 1700
Wire Wire Line
	9900 1700 9900 2150
Wire Wire Line
	9900 3950 9950 3950
Wire Wire Line
	9950 3500 9900 3500
Connection ~ 9900 3500
Wire Wire Line
	9900 3500 9900 3950
Wire Wire Line
	9950 3050 9900 3050
Connection ~ 9900 3050
Wire Wire Line
	9900 3050 9900 3500
Wire Wire Line
	9950 2600 9900 2600
Connection ~ 9900 2600
Wire Wire Line
	9900 2600 9900 3050
Wire Wire Line
	9950 2150 9900 2150
Connection ~ 9900 2150
Wire Wire Line
	9900 2150 9900 2600
$Comp
L power:GND #PWR0103
U 1 1 61ABAE2A
P 9900 4100
F 0 "#PWR0103" H 9900 3850 50  0001 C CNN
F 1 "GND" H 9905 3927 50  0000 C CNN
F 2 "" H 9900 4100 50  0001 C CNN
F 3 "" H 9900 4100 50  0001 C CNN
	1    9900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4100 9900 3950
Connection ~ 9900 3950
NoConn ~ 9950 3750
NoConn ~ 9950 3300
NoConn ~ 9950 2850
NoConn ~ 9950 2400
NoConn ~ 9950 1950
NoConn ~ 9950 1500
$Comp
L power:+5V #PWR0101
U 1 1 61B89C58
P 3100 1550
F 0 "#PWR0101" H 3100 1400 50  0001 C CNN
F 1 "+5V" H 3115 1723 50  0000 C CNN
F 2 "" H 3100 1550 50  0001 C CNN
F 3 "" H 3100 1550 50  0001 C CNN
	1    3100 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J1
U 1 1 61BE5D92
P 1250 4900
F 0 "J1" H 1232 5225 50  0000 C CNN
F 1 "MIDI in" H 1232 5134 50  0000 C CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ366ST_Vertical" H 1250 4900 50  0001 C CNN
F 3 "~" H 1250 4900 50  0001 C CNN
	1    1250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4900 1550 4900
Wire Wire Line
	1450 5000 1450 5300
Wire Wire Line
	1450 5300 1900 5300
Connection ~ 1900 5300
NoConn ~ 1450 4800
$Comp
L power:+5V #PWR0107
U 1 1 61BFA90C
P 3000 4550
F 0 "#PWR0107" H 3000 4400 50  0001 C CNN
F 1 "+5V" H 3015 4723 50  0000 C CNN
F 2 "" H 3000 4550 50  0001 C CNN
F 3 "" H 3000 4550 50  0001 C CNN
	1    3000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4600 3000 4550
Connection ~ 3000 4600
Wire Wire Line
	5250 2550 5250 2600
Wire Wire Line
	4750 2050 4700 2050
Wire Wire Line
	4700 2050 4700 2600
Wire Wire Line
	4700 2600 5250 2600
Wire Wire Line
	4650 1950 4750 1950
Wire Wire Line
	4650 2150 4750 2150
Wire Wire Line
	4650 2250 4750 2250
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 61D76D65
P 5250 2050
AR Path="/61518E9C/61D76D65" Ref="U?"  Part="1" 
AR Path="/61D76D65" Ref="U3"  Part="1" 
F 0 "U3" H 5250 2631 50  0000 C CNN
F 1 "MCP4822" H 5250 2540 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 6050 1750 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 6050 1750 50  0001 C CNN
	1    5250 2050
	1    0    0    -1  
$EndComp
Text GLabel 4650 1950 0    50   Input ~ 0
SPI_SCK
Text GLabel 4650 2150 0    50   Input ~ 0
SPI_SD
Text GLabel 4650 2250 0    50   Input ~ 0
SPI_CS1
$Comp
L power:GND #PWR0117
U 1 1 620A0716
P 5250 2650
F 0 "#PWR0117" H 5250 2400 50  0001 C CNN
F 1 "GND" H 5255 2477 50  0000 C CNN
F 2 "" H 5250 2650 50  0001 C CNN
F 3 "" H 5250 2650 50  0001 C CNN
	1    5250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2600 5250 2650
Connection ~ 5250 2600
$Comp
L power:+5V #PWR0118
U 1 1 620AF71E
P 4850 1600
F 0 "#PWR0118" H 4850 1450 50  0001 C CNN
F 1 "+5V" H 4865 1773 50  0000 C CNN
F 2 "" H 4850 1600 50  0001 C CNN
F 3 "" H 4850 1600 50  0001 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1600 4850 1650
Wire Wire Line
	4850 1650 5250 1650
Text GLabel 5800 1950 2    50   Output ~ 0
DAC_CV1
Text GLabel 5800 2250 2    50   Output ~ 0
DAC_CV2
Wire Wire Line
	5750 1950 5800 1950
Wire Wire Line
	5750 2250 5800 2250
Wire Wire Line
	5250 4150 5250 4200
Wire Wire Line
	4750 3650 4700 3650
Wire Wire Line
	4700 3650 4700 4200
Wire Wire Line
	4700 4200 5250 4200
Wire Wire Line
	4650 3550 4750 3550
Wire Wire Line
	4650 3750 4750 3750
Wire Wire Line
	4650 3850 4750 3850
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 621075E0
P 5250 3650
AR Path="/61518E9C/621075E0" Ref="U?"  Part="1" 
AR Path="/621075E0" Ref="U4"  Part="1" 
F 0 "U4" H 5250 4231 50  0000 C CNN
F 1 "MCP4822" H 5250 4140 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 6050 3350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 6050 3350 50  0001 C CNN
	1    5250 3650
	1    0    0    -1  
$EndComp
Text GLabel 4650 3550 0    50   Input ~ 0
SPI_SCK
Text GLabel 4650 3750 0    50   Input ~ 0
SPI_SD
Text GLabel 4650 3850 0    50   Input ~ 0
SPI_CS2
$Comp
L power:GND #PWR0119
U 1 1 621075E9
P 5250 4250
F 0 "#PWR0119" H 5250 4000 50  0001 C CNN
F 1 "GND" H 5255 4077 50  0000 C CNN
F 2 "" H 5250 4250 50  0001 C CNN
F 3 "" H 5250 4250 50  0001 C CNN
	1    5250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4200 5250 4250
Connection ~ 5250 4200
$Comp
L power:+5V #PWR0120
U 1 1 621075F1
P 4850 3200
F 0 "#PWR0120" H 4850 3050 50  0001 C CNN
F 1 "+5V" H 4865 3373 50  0000 C CNN
F 2 "" H 4850 3200 50  0001 C CNN
F 3 "" H 4850 3200 50  0001 C CNN
	1    4850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3200 4850 3250
Wire Wire Line
	4850 3250 5250 3250
Text GLabel 5800 3550 2    50   Output ~ 0
DAC_CV3
Text GLabel 5800 3850 2    50   Output ~ 0
DAC_CV4
Wire Wire Line
	5750 3550 5800 3550
Wire Wire Line
	5750 3850 5800 3850
Text GLabel 3350 3150 2    50   Output ~ 0
LED2
Text GLabel 3350 3350 2    50   Output ~ 0
LED1
Text GLabel 3350 2250 2    50   Output ~ 0
GATE1
Text GLabel 3350 2350 2    50   Output ~ 0
GATE2
$Comp
L Device:R R5
U 1 1 62B72D6D
P 5300 5000
F 0 "R5" H 5370 5046 50  0000 L CNN
F 1 "2k2" H 5370 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5230 5000 50  0001 C CNN
F 3 "~" H 5300 5000 50  0001 C CNN
	1    5300 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 62B73528
P 5300 5400
F 0 "D4" V 5339 5282 50  0000 R CNN
F 1 "LED" V 5248 5282 50  0000 R CNN
F 2 "eurorack:LED_D3.0mmP2.54mm" H 5300 5400 50  0001 C CNN
F 3 "~" H 5300 5400 50  0001 C CNN
	1    5300 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 5600 5300 5600
Wire Wire Line
	5300 5600 5300 5550
Connection ~ 4850 5600
Wire Wire Line
	5300 5250 5300 5150
Text GLabel 5250 4800 0    50   Input ~ 0
LED3
Wire Wire Line
	5250 4800 5300 4800
Wire Wire Line
	5300 4800 5300 4850
Text GLabel 3350 3250 2    50   Output ~ 0
LED3
Wire Wire Line
	1350 3350 1350 3200
Wire Wire Line
	1350 3200 1300 3200
Wire Wire Line
	1300 3300 1400 3300
$Comp
L Device:C C5
U 1 1 61676093
P 4200 1750
F 0 "C5" H 4315 1796 50  0000 L CNN
F 1 "100n" H 4315 1705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4238 1600 50  0001 C CNN
F 3 "~" H 4200 1750 50  0001 C CNN
	1    4200 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1600 4200 1550
Wire Wire Line
	4200 1550 4700 1550
Wire Wire Line
	4700 1550 4700 1650
Wire Wire Line
	4700 1650 4850 1650
Connection ~ 4850 1650
Wire Wire Line
	4200 1900 4200 2050
Wire Wire Line
	4200 2050 4700 2050
Connection ~ 4700 2050
$Comp
L Device:C C6
U 1 1 616A7353
P 4200 3350
F 0 "C6" H 4315 3396 50  0000 L CNN
F 1 "100n" H 4315 3305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4238 3200 50  0001 C CNN
F 3 "~" H 4200 3350 50  0001 C CNN
	1    4200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3200 4200 3150
Wire Wire Line
	4200 3150 4700 3150
Wire Wire Line
	4700 3150 4700 3250
Wire Wire Line
	4700 3250 4850 3250
Connection ~ 4850 3250
Wire Wire Line
	4200 3500 4200 3650
Wire Wire Line
	4200 3650 4700 3650
Connection ~ 4700 3650
$Comp
L Device:C C4
U 1 1 616F2376
P 1800 3150
F 0 "C4" H 1915 3196 50  0000 L CNN
F 1 "100n" H 1915 3105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1838 3000 50  0001 C CNN
F 3 "~" H 1800 3150 50  0001 C CNN
	1    1800 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6196B755
P 3000 4800
F 0 "C1" H 3115 4846 50  0000 L CNN
F 1 "100n" H 3115 4755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3038 4650 50  0001 C CNN
F 3 "~" H 3000 4800 50  0001 C CNN
	1    3000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4950 3000 5200
Wire Wire Line
	3000 5200 2900 5200
Connection ~ 2900 5200
Wire Wire Line
	3400 4650 3400 4600
Wire Wire Line
	3400 4600 3000 4600
Wire Wire Line
	2850 5000 3400 5000
Wire Wire Line
	2850 4800 2850 4600
Wire Wire Line
	2850 4600 3000 4600
Wire Notes Line
	10750 1300 10750 4400
Text Notes 10450 4350 0    50   ~ 0
Outputs
Wire Notes Line
	6250 1300 6250 4550
Wire Notes Line
	6250 4550 4000 4550
Wire Notes Line
	4000 4550 4000 1300
Wire Notes Line
	4000 1300 6250 1300
Text Notes 5550 4500 0    50   ~ 0
Digital to Analog
Wire Notes Line
	4000 4650 5650 4650
Wire Notes Line
	5650 4650 5650 5950
Wire Notes Line
	5650 5950 4000 5950
Wire Notes Line
	4000 5950 4000 4650
Text Notes 5450 5900 0    50   ~ 0
Leds
Text Notes 3250 4150 0    50   ~ 0
Microcontroller
Wire Notes Line
	3900 5550 3900 4300
Wire Notes Line
	3900 4300 900  4300
Wire Notes Line
	900  4300 900  5550
Wire Notes Line
	900  5550 3900 5550
Text Notes 3450 5500 0    50   ~ 0
MIDI input
Wire Notes Line
	10750 1300 9100 1300
Wire Notes Line
	9100 1300 9100 4400
Wire Notes Line
	9100 4400 10750 4400
$Comp
L MCU_Microchip_ATtiny:ATtiny4313-PU U2
U 1 1 617B3597
P 2700 2750
F 0 "U2" H 2700 4031 50  0000 C CNN
F 1 "ATtiny4313-PU" H 2700 3940 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 2700 2750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8246.pdf" H 2700 2750 50  0001 C CNN
	1    2700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1650 3100 1550
Wire Wire Line
	2700 1650 3100 1650
Wire Wire Line
	3300 2550 3350 2550
Wire Wire Line
	3300 2650 3350 2650
Wire Wire Line
	3300 2850 3350 2850
Wire Wire Line
	3300 2150 3350 2150
Wire Wire Line
	3300 2350 3350 2350
Wire Wire Line
	3300 2250 3350 2250
Wire Wire Line
	2700 3850 2700 3900
Wire Notes Line
	3900 1300 3900 4200
$Comp
L power:GND #PWR0102
U 1 1 619DD57C
P 1800 3350
F 0 "#PWR0102" H 1800 3100 50  0001 C CNN
F 1 "GND" H 1805 3177 50  0000 C CNN
F 2 "" H 1800 3350 50  0001 C CNN
F 3 "" H 1800 3350 50  0001 C CNN
	1    1800 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 61A2AB55
P 1800 2950
F 0 "#PWR0104" H 1800 2800 50  0001 C CNN
F 1 "+5V" H 1815 3123 50  0000 C CNN
F 2 "" H 1800 2950 50  0001 C CNN
F 3 "" H 1800 2950 50  0001 C CNN
	1    1800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2950 1800 3000
Wire Wire Line
	1800 3300 1800 3350
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 61353B09
P 1100 3200
F 0 "J2" H 992 3385 50  0000 C CNN
F 1 "DEBUG HEADER" H 992 3294 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 1100 3200 50  0001 C CNN
F 3 "~" H 1100 3200 50  0001 C CNN
	1    1100 3200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J8
U 1 1 61D7C693
P 10150 3850
F 0 "J8" H 9970 3783 50  0000 R CNN
F 1 "GATE2" H 9970 3874 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 10150 3850 50  0001 C CNN
F 3 "~" H 10150 3850 50  0001 C CNN
	1    10150 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J7
U 1 1 61D7BB33
P 10150 3400
F 0 "J7" H 9970 3333 50  0000 R CNN
F 1 "GATE1" H 9970 3424 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 10150 3400 50  0001 C CNN
F 3 "~" H 10150 3400 50  0001 C CNN
	1    10150 3400
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 61D7B10F
P 10150 2950
F 0 "J6" H 9970 2883 50  0000 R CNN
F 1 "CV4" H 9970 2974 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 10150 2950 50  0001 C CNN
F 3 "~" H 10150 2950 50  0001 C CNN
	1    10150 2950
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 61D7A622
P 10150 2500
F 0 "J5" H 9970 2433 50  0000 R CNN
F 1 "CV3" H 9970 2524 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 10150 2500 50  0001 C CNN
F 3 "~" H 10150 2500 50  0001 C CNN
	1    10150 2500
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 61D79A9B
P 10150 2050
F 0 "J4" H 9970 1983 50  0000 R CNN
F 1 "CV2" H 9970 2074 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 10150 2050 50  0001 C CNN
F 3 "~" H 10150 2050 50  0001 C CNN
	1    10150 2050
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 61D63FEE
P 10150 1600
F 0 "J3" H 9970 1533 50  0000 R CNN
F 1 "CV1" H 9970 1624 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 10150 1600 50  0001 C CNN
F 3 "~" H 10150 1600 50  0001 C CNN
	1    10150 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 3150 3350 3150
Wire Wire Line
	3300 3250 3350 3250
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J9
U 1 1 61BA502A
P 9900 5100
F 0 "J9" H 9950 5617 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 9950 5526 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 9900 5100 50  0001 C CNN
F 3 "~" H 9900 5100 50  0001 C CNN
	1    9900 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 61BA7AAD
P 9950 5700
F 0 "#PWR0106" H 9950 5450 50  0001 C CNN
F 1 "GND" H 9955 5527 50  0000 C CNN
F 2 "" H 9950 5700 50  0001 C CNN
F 3 "" H 9950 5700 50  0001 C CNN
	1    9950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5650 9950 5650
Wire Wire Line
	9950 5700 9950 5650
Connection ~ 9950 5650
Wire Wire Line
	9950 5650 10300 5650
$Comp
L power:+12V #PWR0111
U 1 1 61BCCFB3
P 9500 5200
F 0 "#PWR0111" H 9500 5050 50  0001 C CNN
F 1 "+12V" V 9515 5328 50  0000 L CNN
F 2 "" H 9500 5200 50  0001 C CNN
F 3 "" H 9500 5200 50  0001 C CNN
	1    9500 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0112
U 1 1 61C098D8
P 10400 5200
F 0 "#PWR0112" H 10400 5050 50  0001 C CNN
F 1 "+12V" V 10415 5328 50  0000 L CNN
F 2 "" H 10400 5200 50  0001 C CNN
F 3 "" H 10400 5200 50  0001 C CNN
	1    10400 5200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 61C0A251
P 9500 5300
F 0 "#PWR0113" H 9500 5150 50  0001 C CNN
F 1 "+5V" V 9515 5428 50  0000 L CNN
F 2 "" H 9500 5300 50  0001 C CNN
F 3 "" H 9500 5300 50  0001 C CNN
	1    9500 5300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 61C0ADF5
P 10400 5300
F 0 "#PWR0114" H 10400 5150 50  0001 C CNN
F 1 "+5V" V 10415 5428 50  0000 L CNN
F 2 "" H 10400 5300 50  0001 C CNN
F 3 "" H 10400 5300 50  0001 C CNN
	1    10400 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 5000 9700 5000
Wire Wire Line
	9600 5100 9700 5100
NoConn ~ 9700 5500
NoConn ~ 10200 5500
NoConn ~ 9700 4800
Wire Wire Line
	10300 5650 10300 5100
Wire Wire Line
	10300 4900 10200 4900
Wire Wire Line
	10200 5000 10300 5000
Connection ~ 10300 5000
Wire Wire Line
	10300 5000 10300 4900
Wire Wire Line
	10200 5100 10300 5100
Connection ~ 10300 5100
Wire Wire Line
	10300 5100 10300 5000
Wire Wire Line
	10200 5200 10350 5200
Wire Wire Line
	10200 5300 10400 5300
Wire Wire Line
	9600 5650 9600 5100
Wire Wire Line
	9600 4900 9700 4900
Connection ~ 9600 5000
Wire Wire Line
	9600 5000 9600 4900
Connection ~ 9600 5100
Wire Wire Line
	9600 5100 9600 5000
Wire Wire Line
	9500 5200 9700 5200
Wire Wire Line
	9500 5300 9550 5300
NoConn ~ 10200 5400
NoConn ~ 9700 5400
NoConn ~ 10200 4800
Wire Wire Line
	3300 3350 3350 3350
$Comp
L Device:CP C8
U 1 1 61BF19CD
P 9350 5600
F 0 "C8" H 9468 5646 50  0000 L CNN
F 1 "10u" H 9468 5555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 9388 5450 50  0001 C CNN
F 3 "~" H 9350 5600 50  0001 C CNN
	1    9350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5400 9550 5400
Wire Wire Line
	9550 5400 9550 5300
Connection ~ 9550 5300
Wire Wire Line
	9550 5300 9700 5300
$Comp
L power:GND #PWR0115
U 1 1 61BFA45D
P 9350 5800
F 0 "#PWR0115" H 9350 5550 50  0001 C CNN
F 1 "GND" H 9355 5627 50  0000 C CNN
F 2 "" H 9350 5800 50  0001 C CNN
F 3 "" H 9350 5800 50  0001 C CNN
	1    9350 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5450 9350 5400
Wire Wire Line
	9350 5800 9350 5750
$Comp
L Amplifier_Operational:LM324 U5
U 1 1 61C338A7
P 7250 1750
F 0 "U5" H 7250 2117 50  0000 C CNN
F 1 "LM324" H 7250 2026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7200 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7300 1950 50  0001 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 61C36DFB
P 7800 1750
F 0 "R18" V 7593 1750 50  0000 C CNN
F 1 "1k" V 7684 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7730 1750 50  0001 C CNN
F 3 "~" H 7800 1750 50  0001 C CNN
	1    7800 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 61C3AF42
P 7400 2050
F 0 "R14" V 7515 2050 50  0000 C CNN
F 1 "33k" V 7606 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7330 2050 50  0001 C CNN
F 3 "~" H 7400 2050 50  0001 C CNN
	1    7400 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 61C42A75
P 6700 2050
F 0 "R10" V 6493 2050 50  0000 C CNN
F 1 "8k45" V 6584 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6630 2050 50  0001 C CNN
F 3 "~" H 6700 2050 50  0001 C CNN
	1    6700 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 2050 6900 2050
Wire Wire Line
	7550 2050 7600 2050
Wire Wire Line
	7600 2050 7600 1750
Wire Wire Line
	7600 1750 7550 1750
Wire Wire Line
	7650 1750 7600 1750
Connection ~ 7600 1750
Wire Wire Line
	6950 1850 6900 1850
Wire Wire Line
	6900 1850 6900 2050
Connection ~ 6900 2050
Wire Wire Line
	6900 2050 7250 2050
$Comp
L power:GND #PWR0116
U 1 1 61C62970
P 6500 2100
F 0 "#PWR0116" H 6500 1850 50  0001 C CNN
F 1 "GND" H 6505 1927 50  0000 C CNN
F 2 "" H 6500 2100 50  0001 C CNN
F 3 "" H 6500 2100 50  0001 C CNN
	1    6500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2100 6500 2050
Wire Wire Line
	6500 2050 6550 2050
Text GLabel 6900 5100 0    50   Input ~ 0
DAC_CV1
Wire Wire Line
	6900 1650 6950 1650
Text GLabel 8000 5200 2    50   Output ~ 0
CV1
Wire Wire Line
	7950 1750 8000 1750
$Comp
L Device:R R19
U 1 1 61CAD49C
P 7800 2900
F 0 "R19" V 7593 2900 50  0000 C CNN
F 1 "1k" V 7684 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7730 2900 50  0001 C CNN
F 3 "~" H 7800 2900 50  0001 C CNN
	1    7800 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 61CAD4A2
P 7400 3200
F 0 "R15" V 7515 3200 50  0000 C CNN
F 1 "33k" V 7606 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7330 3200 50  0001 C CNN
F 3 "~" H 7400 3200 50  0001 C CNN
	1    7400 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 61CAD4A8
P 6700 3200
F 0 "R11" V 6493 3200 50  0000 C CNN
F 1 "8k45" V 6584 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6630 3200 50  0001 C CNN
F 3 "~" H 6700 3200 50  0001 C CNN
	1    6700 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 3200 6900 3200
Wire Wire Line
	7550 3200 7600 3200
Wire Wire Line
	7600 3200 7600 2900
Wire Wire Line
	7600 2900 7550 2900
Wire Wire Line
	7650 2900 7600 2900
Connection ~ 7600 2900
Wire Wire Line
	6950 3000 6900 3000
Wire Wire Line
	6900 3000 6900 3200
Connection ~ 6900 3200
Wire Wire Line
	6900 3200 7250 3200
$Comp
L power:GND #PWR0121
U 1 1 61CAD4B8
P 6500 3250
F 0 "#PWR0121" H 6500 3000 50  0001 C CNN
F 1 "GND" H 6505 3077 50  0000 C CNN
F 2 "" H 6500 3250 50  0001 C CNN
F 3 "" H 6500 3250 50  0001 C CNN
	1    6500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3250 6500 3200
Wire Wire Line
	6500 3200 6550 3200
Text GLabel 6900 3950 0    50   Input ~ 0
DAC_CV2
Wire Wire Line
	6900 2800 6950 2800
Text GLabel 8000 4050 2    50   Output ~ 0
CV2
Wire Wire Line
	7950 2900 8000 2900
$Comp
L Device:R R20
U 1 1 61CB82DA
P 7800 4050
F 0 "R20" V 7593 4050 50  0000 C CNN
F 1 "1k" V 7684 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7730 4050 50  0001 C CNN
F 3 "~" H 7800 4050 50  0001 C CNN
	1    7800 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 61CB82E0
P 7400 4350
F 0 "R16" V 7515 4350 50  0000 C CNN
F 1 "33k" V 7606 4350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7330 4350 50  0001 C CNN
F 3 "~" H 7400 4350 50  0001 C CNN
	1    7400 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 61CB82E6
P 6700 4350
F 0 "R12" V 6493 4350 50  0000 C CNN
F 1 "8k45" V 6584 4350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6630 4350 50  0001 C CNN
F 3 "~" H 6700 4350 50  0001 C CNN
	1    6700 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 4350 6900 4350
Wire Wire Line
	7550 4350 7600 4350
Wire Wire Line
	7600 4350 7600 4050
Wire Wire Line
	7600 4050 7550 4050
Wire Wire Line
	7650 4050 7600 4050
Connection ~ 7600 4050
Wire Wire Line
	6950 4150 6900 4150
Wire Wire Line
	6900 4150 6900 4350
Connection ~ 6900 4350
Wire Wire Line
	6900 4350 7250 4350
$Comp
L power:GND #PWR0122
U 1 1 61CB82F6
P 6500 4400
F 0 "#PWR0122" H 6500 4150 50  0001 C CNN
F 1 "GND" H 6505 4227 50  0000 C CNN
F 2 "" H 6500 4400 50  0001 C CNN
F 3 "" H 6500 4400 50  0001 C CNN
	1    6500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4400 6500 4350
Wire Wire Line
	6500 4350 6550 4350
Text GLabel 6900 1650 0    50   Input ~ 0
DAC_CV3
Wire Wire Line
	6900 3950 6950 3950
Text GLabel 8000 1750 2    50   Output ~ 0
CV3
Wire Wire Line
	7950 4050 8000 4050
$Comp
L Device:R R21
U 1 1 61CC4DEE
P 7800 5200
F 0 "R21" V 7593 5200 50  0000 C CNN
F 1 "1k" V 7684 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7730 5200 50  0001 C CNN
F 3 "~" H 7800 5200 50  0001 C CNN
	1    7800 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 61CC4DF4
P 7400 5500
F 0 "R17" V 7515 5500 50  0000 C CNN
F 1 "33k" V 7606 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7330 5500 50  0001 C CNN
F 3 "~" H 7400 5500 50  0001 C CNN
	1    7400 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 61CC4DFA
P 6700 5500
F 0 "R13" V 6493 5500 50  0000 C CNN
F 1 "8k45" V 6584 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6630 5500 50  0001 C CNN
F 3 "~" H 6700 5500 50  0001 C CNN
	1    6700 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 5500 6900 5500
Wire Wire Line
	7550 5500 7600 5500
Wire Wire Line
	7600 5500 7600 5200
Wire Wire Line
	7600 5200 7550 5200
Wire Wire Line
	7650 5200 7600 5200
Connection ~ 7600 5200
Wire Wire Line
	6950 5300 6900 5300
Wire Wire Line
	6900 5300 6900 5500
Connection ~ 6900 5500
Wire Wire Line
	6900 5500 7250 5500
$Comp
L power:GND #PWR0123
U 1 1 61CC4E0A
P 6500 5550
F 0 "#PWR0123" H 6500 5300 50  0001 C CNN
F 1 "GND" H 6505 5377 50  0000 C CNN
F 2 "" H 6500 5550 50  0001 C CNN
F 3 "" H 6500 5550 50  0001 C CNN
	1    6500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5550 6500 5500
Wire Wire Line
	6500 5500 6550 5500
Text GLabel 6900 2800 0    50   Input ~ 0
DAC_CV4
Wire Wire Line
	6900 5100 6950 5100
Text GLabel 8000 2900 2    50   Output ~ 0
CV4
Wire Wire Line
	7950 5200 8000 5200
$Comp
L Amplifier_Operational:LM324 U5
U 2 1 61CD27B6
P 7250 2900
F 0 "U5" H 7250 3267 50  0000 C CNN
F 1 "LM324" H 7250 3176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7200 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7300 3100 50  0001 C CNN
	2    7250 2900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U5
U 3 1 61CD4479
P 7250 4050
F 0 "U5" H 7250 4417 50  0000 C CNN
F 1 "LM324" H 7250 4326 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7200 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7300 4250 50  0001 C CNN
	3    7250 4050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U5
U 4 1 61CD6371
P 7250 5200
F 0 "U5" H 7250 5567 50  0000 C CNN
F 1 "LM324" H 7250 5476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7200 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7300 5400 50  0001 C CNN
	4    7250 5200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U5
U 5 1 61CF5833
P 8700 3500
F 0 "U5" H 8658 3546 50  0000 L CNN
F 1 "LM324" H 8658 3455 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8650 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 8750 3700 50  0001 C CNN
	5    8700 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0124
U 1 1 61CFE15B
P 8600 3100
F 0 "#PWR0124" H 8600 2950 50  0001 C CNN
F 1 "+12V" H 8615 3273 50  0000 C CNN
F 2 "" H 8600 3100 50  0001 C CNN
F 3 "" H 8600 3100 50  0001 C CNN
	1    8600 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 61D01E37
P 8600 3900
F 0 "#PWR0125" H 8600 3650 50  0001 C CNN
F 1 "GND" H 8605 3727 50  0000 C CNN
F 2 "" H 8600 3900 50  0001 C CNN
F 3 "" H 8600 3900 50  0001 C CNN
	1    8600 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C9
U 1 1 61F10A39
P 10450 5600
F 0 "C9" H 10568 5646 50  0000 L CNN
F 1 "10u" H 10568 5555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 10488 5450 50  0001 C CNN
F 3 "~" H 10450 5600 50  0001 C CNN
	1    10450 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 5200 10350 5450
Wire Wire Line
	10350 5450 10450 5450
Connection ~ 10350 5200
Wire Wire Line
	10350 5200 10400 5200
$Comp
L power:GND #PWR0126
U 1 1 61F1C699
P 10450 5800
F 0 "#PWR0126" H 10450 5550 50  0001 C CNN
F 1 "GND" H 10455 5627 50  0000 C CNN
F 2 "" H 10450 5800 50  0001 C CNN
F 3 "" H 10450 5800 50  0001 C CNN
	1    10450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 5800 10450 5750
$Comp
L Device:C C7
U 1 1 61F5374A
P 8400 3500
F 0 "C7" H 8285 3546 50  0000 R CNN
F 1 "100n" H 8285 3455 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8438 3350 50  0001 C CNN
F 3 "~" H 8400 3500 50  0001 C CNN
	1    8400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3900 8600 3850
Connection ~ 8600 3850
Wire Wire Line
	8600 3850 8600 3800
Wire Wire Line
	8600 3100 8600 3150
Connection ~ 8600 3150
Wire Wire Line
	8600 3150 8600 3200
Wire Notes Line
	6350 1300 6350 5850
Text Notes 8550 5800 0    50   ~ 0
Amplifiers
NoConn ~ 3300 1950
NoConn ~ 3300 2050
NoConn ~ 3300 3450
NoConn ~ 3300 2450
Wire Wire Line
	3300 3050 3350 3050
NoConn ~ 3300 2950
Wire Notes Line
	10800 4500 10800 6250
Wire Notes Line
	10800 6250 9100 6250
Wire Notes Line
	9100 6250 9100 4500
Wire Notes Line
	9100 4500 10800 4500
Text Notes 10200 6200 0    50   ~ 0
Eurorack PSU
Wire Wire Line
	8400 3350 8400 3150
Wire Wire Line
	8400 3150 8600 3150
Wire Wire Line
	8400 3650 8400 3850
Wire Wire Line
	8400 3850 8600 3850
Wire Notes Line
	6350 5850 9000 5850
Wire Notes Line
	9000 5850 9000 1300
Wire Notes Line
	6350 1300 9000 1300
Wire Notes Line
	3900 4200 900  4200
Wire Notes Line
	900  4200 900  1300
Wire Notes Line
	900  1300 3900 1300
$EndSCHEMATC