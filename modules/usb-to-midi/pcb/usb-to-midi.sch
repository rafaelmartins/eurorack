EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "usb-to-midi"
Date "2021-12-13"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5050 2600 0    50   BiDi ~ 0
dw
$Comp
L Device:C C4
U 1 1 613A9B72
P 4300 3100
F 0 "C4" V 4460 3100 50  0000 C CNN
F 1 "22p" V 4551 3100 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4338 2950 50  0001 C CNN
F 3 "~" H 4300 3100 50  0001 C CNN
	1    4300 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 613AA538
P 4050 3200
F 0 "#PWR0109" H 4050 2950 50  0001 C CNN
F 1 "GND" H 4055 3027 50  0000 C CNN
F 2 "" H 4050 3200 50  0001 C CNN
F 3 "" H 4050 3200 50  0001 C CNN
	1    4050 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 613E3A6A
P 5250 5200
F 0 "#PWR0110" H 5250 4950 50  0001 C CNN
F 1 "GND" H 5255 5027 50  0000 C CNN
F 2 "" H 5250 5200 50  0001 C CNN
F 3 "" H 5250 5200 50  0001 C CNN
	1    5250 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6145FF1C
P 2950 2450
F 0 "R1" V 2743 2450 50  0000 C CNN
F 1 "22R" V 2834 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 2450 50  0001 C CNN
F 3 "~" H 2950 2450 50  0001 C CNN
	1    2950 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 61460FA0
P 2950 2550
F 0 "R2" V 3065 2550 50  0000 C CNN
F 1 "22R" V 3156 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 2550 50  0001 C CNN
F 3 "~" H 2950 2550 50  0001 C CNN
	1    2950 2550
	0    1    1    0   
$EndComp
Text GLabel 6550 4400 2    50   Output ~ 0
UART_TX
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 61353B09
P 4150 4500
F 0 "J3" H 4068 4717 50  0000 C CNN
F 1 "JST XH 1x2" H 4068 4626 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 4150 4500 50  0001 C CNN
F 3 "~" H 4150 4500 50  0001 C CNN
	1    4150 4500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 613638B2
P 4400 4650
F 0 "#PWR0108" H 4400 4400 50  0001 C CNN
F 1 "GND" H 4405 4477 50  0000 C CNN
F 2 "" H 4400 4650 50  0001 C CNN
F 3 "" H 4400 4650 50  0001 C CNN
	1    4400 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 613A7694
P 4600 2900
F 0 "Y1" V 4554 2769 50  0000 R CNN
F 1 "16mhz" V 4645 2769 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 4600 2900 50  0001 C CNN
F 3 "~" H 4600 2900 50  0001 C CNN
	1    4600 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 2750 4600 2700
Wire Wire Line
	4600 3050 4600 3100
Wire Wire Line
	4450 3100 4600 3100
Wire Wire Line
	5050 2600 5100 2600
Wire Wire Line
	4050 3200 4050 3100
Wire Wire Line
	4050 2700 4150 2700
Wire Wire Line
	4150 3100 4050 3100
Connection ~ 4050 3100
Wire Wire Line
	4050 3100 4050 2700
Wire Wire Line
	3100 2450 3150 2450
Wire Wire Line
	3100 2550 3150 2550
Text GLabel 4450 4600 2    50   BiDi ~ 0
dw
$Comp
L MCU_Microchip_ATmega:ATmega32U2-AU U1
U 1 1 616DB556
P 5800 3700
F 0 "U1" H 5800 2211 50  0000 C CNN
F 1 "ATmega8U2-AU" H 5800 2120 50  0000 C CNN
F 2 "eurorack:TQFP-32_7x7mm_P0.8mm_LongPads" H 5800 3700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc7799.pdf" H 5800 3700 50  0001 C CNN
	1    5800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2700 4600 2700
Wire Wire Line
	5100 2800 4800 2800
Wire Wire Line
	4800 2800 4800 2700
Wire Wire Line
	4800 2700 4600 2700
Connection ~ 4600 2700
Wire Wire Line
	5100 3000 4800 3000
Wire Wire Line
	4800 3000 4800 3100
Wire Wire Line
	4800 3100 4600 3100
Connection ~ 4600 3100
$Comp
L Device:CP C5
U 1 1 61759049
P 4950 3700
F 0 "C5" H 5068 3746 50  0000 L CNN
F 1 "1u" H 5068 3655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4988 3550 50  0001 C CNN
F 3 "~" H 4950 3700 50  0001 C CNN
	1    4950 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6175F902
P 4950 3900
F 0 "#PWR0102" H 4950 3650 50  0001 C CNN
F 1 "GND" H 4955 3727 50  0000 C CNN
F 2 "" H 4950 3900 50  0001 C CNN
F 3 "" H 4950 3900 50  0001 C CNN
	1    4950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3850 4950 3900
Text GLabel 5050 3200 0    50   BiDi ~ 0
USB_D+
Text GLabel 5050 3300 0    50   BiDi ~ 0
USB_D-
Wire Wire Line
	5050 3200 5100 3200
Wire Wire Line
	5050 3300 5100 3300
$Comp
L Device:LED D1
U 1 1 61C74867
P 7700 4000
F 0 "D1" V 7739 3882 50  0000 R CNN
F 1 "LED Red" V 7648 3882 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 7700 4000 50  0001 C CNN
F 3 "~" H 7700 4000 50  0001 C CNN
	1    7700 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 61C75707
P 8350 4000
F 0 "D2" V 8389 3882 50  0000 R CNN
F 1 "LED Green" V 8298 3882 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8350 4000 50  0001 C CNN
F 3 "~" H 8350 4000 50  0001 C CNN
	1    8350 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 61C76595
P 7700 3600
F 0 "R5" H 7770 3646 50  0000 L CNN
F 1 "2k2" H 7770 3555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7630 3600 50  0001 C CNN
F 3 "~" H 7700 3600 50  0001 C CNN
	1    7700 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 61C770E0
P 8350 3600
F 0 "R6" H 8420 3646 50  0000 L CNN
F 1 "2k2" H 8420 3555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8280 3600 50  0001 C CNN
F 3 "~" H 8350 3600 50  0001 C CNN
	1    8350 3600
	1    0    0    -1  
$EndComp
Text GLabel 7650 3400 0    50   Input ~ 0
LED1
Text GLabel 8300 3400 0    50   Input ~ 0
LED2
$Comp
L power:GND #PWR0105
U 1 1 61C7A67E
P 7700 4250
F 0 "#PWR0105" H 7700 4000 50  0001 C CNN
F 1 "GND" H 7705 4077 50  0000 C CNN
F 2 "" H 7700 4250 50  0001 C CNN
F 3 "" H 7700 4250 50  0001 C CNN
	1    7700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3400 7700 3400
Wire Wire Line
	7700 3400 7700 3450
Wire Wire Line
	8300 3400 8350 3400
Wire Wire Line
	8350 3400 8350 3450
Wire Wire Line
	7700 3850 7700 3750
Wire Wire Line
	8350 3750 8350 3850
NoConn ~ 6500 4200
NoConn ~ 6500 4100
NoConn ~ 6500 3500
NoConn ~ 6500 2900
$Comp
L power:GND #PWR0106
U 1 1 6178C37E
P 2200 2900
F 0 "#PWR0106" H 2200 2650 50  0001 C CNN
F 1 "GND" H 2205 2727 50  0000 C CNN
F 2 "" H 2200 2900 50  0001 C CNN
F 3 "" H 2200 2900 50  0001 C CNN
	1    2200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 61B89C58
P 5800 2200
F 0 "#PWR0101" H 5800 2050 50  0001 C CNN
F 1 "+5V" H 5815 2373 50  0000 C CNN
F 2 "" H 5800 2200 50  0001 C CNN
F 3 "" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2250 5800 2200
Wire Wire Line
	4950 3550 4950 3500
Wire Wire Line
	4950 3500 5100 3500
Wire Wire Line
	5700 5100 5800 5100
Wire Wire Line
	2100 2850 2200 2850
Wire Wire Line
	2200 2900 2200 2850
Text GLabel 3150 2450 2    50   BiDi ~ 0
USB_D+
Text GLabel 3150 2550 2    50   BiDi ~ 0
USB_D-
Text GLabel 6550 4600 2    50   Output ~ 0
LED2
Text GLabel 6550 4500 2    50   Output ~ 0
LED1
$Comp
L Mechanical:MountingHole H1
U 1 1 626864A3
P 6250 6850
F 0 "H1" H 6350 6896 50  0000 L CNN
F 1 "MountingHole" H 6350 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 6250 6850 50  0001 C CNN
F 3 "~" H 6250 6850 50  0001 C CNN
	1    6250 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 62696A3B
P 6250 7100
F 0 "H2" H 6350 7146 50  0000 L CNN
F 1 "MountingHole" H 6350 7055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 6250 7100 50  0001 C CNN
F 3 "~" H 6250 7100 50  0001 C CNN
	1    6250 7100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 62697384
P 6250 7350
F 0 "H3" H 6350 7396 50  0000 L CNN
F 1 "MountingHole" H 6350 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 6250 7350 50  0001 C CNN
F 3 "~" H 6250 7350 50  0001 C CNN
	1    6250 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 62697C53
P 6250 7600
F 0 "H4" H 6350 7646 50  0000 L CNN
F 1 "MountingHole" H 6350 7555 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 6250 7600 50  0001 C CNN
F 3 "~" H 6250 7600 50  0001 C CNN
	1    6250 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4650 4400 4500
Wire Wire Line
	4400 4500 4350 4500
Wire Wire Line
	4350 4600 4450 4600
NoConn ~ 6500 3700
Wire Wire Line
	4050 2700 4050 2400
Connection ~ 4050 2700
NoConn ~ 6500 3200
NoConn ~ 6500 3100
NoConn ~ 6500 3600
Text Notes 9100 2900 0    50   ~ 0
Output
Wire Notes Line
	8950 3250 8950 4550
Text Notes 8700 4500 0    50   ~ 0
Leds
Wire Notes Line
	7000 5450 3900 5450
Wire Wire Line
	5250 5100 5700 5100
Wire Wire Line
	5250 5100 5250 5200
Connection ~ 5700 5100
Text Notes 6350 5400 0    50   ~ 0
Microcontroller
Wire Notes Line
	3600 1900 3600 3150
Wire Notes Line
	1800 3150 1800 1900
Text Notes 3400 3100 0    50   ~ 0
USB
Text Label 2800 2100 0    50   ~ 0
USB_CONN_D+
Connection ~ 2200 2850
$Comp
L Connector:USB_B J1
U 1 1 61C21FC1
P 2200 2450
AR Path="/61C21FC1" Ref="J1"  Part="1" 
AR Path="/6175D50F/61C21FC1" Ref="J?"  Part="1" 
F 0 "J1" H 2257 2917 50  0000 C CNN
F 1 "USB Type B Vertical" H 2257 2826 50  0000 C CNN
F 2 "eurorack:USB_B_Vertical" H 2350 2400 50  0001 C CNN
F 3 " ~" H 2350 2400 50  0001 C CNN
	1    2200 2450
	1    0    0    -1  
$EndComp
Text Label 2800 2950 0    50   ~ 0
USB_CONN_D-
$Comp
L power:GND #PWR0103
U 1 1 616A3D13
P 8300 2500
F 0 "#PWR0103" H 8300 2250 50  0001 C CNN
F 1 "GND" H 8305 2327 50  0000 C CNN
F 2 "" H 8300 2500 50  0001 C CNN
F 3 "" H 8300 2500 50  0001 C CNN
	1    8300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2500 8300 2450
Wire Wire Line
	8300 2450 8350 2450
$Comp
L Device:R R3
U 1 1 616AC4DE
P 8100 2250
F 0 "R3" V 7893 2250 50  0000 C CNN
F 1 "220R" V 7984 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8030 2250 50  0001 C CNN
F 3 "~" H 8100 2250 50  0001 C CNN
	1    8100 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 616AD794
P 8100 2350
F 0 "R4" V 8215 2350 50  0000 C CNN
F 1 "220R" V 8306 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8030 2350 50  0001 C CNN
F 3 "~" H 8100 2350 50  0001 C CNN
	1    8100 2350
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack3 J2
U 1 1 616B61A2
P 8550 2350
F 0 "J2" H 8270 2283 50  0000 R CNN
F 1 "Thonkiconn ST" H 8270 2374 50  0000 R CNN
F 2 "eurorack:Jack_3.5mm_QingPu_WQP-PJ366ST_Vertical" H 8550 2350 50  0001 C CNN
F 3 "~" H 8550 2350 50  0001 C CNN
	1    8550 2350
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 616B6859
P 7850 2150
F 0 "#PWR0104" H 7850 2000 50  0001 C CNN
F 1 "+5V" H 7865 2323 50  0000 C CNN
F 2 "" H 7850 2150 50  0001 C CNN
F 3 "" H 7850 2150 50  0001 C CNN
	1    7850 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2150 7850 2350
Wire Wire Line
	7850 2350 7950 2350
Wire Wire Line
	8250 2350 8350 2350
Wire Wire Line
	8250 2250 8350 2250
Text GLabel 7750 2250 0    50   Input ~ 0
UART_TX
Wire Wire Line
	7750 2250 7950 2250
Wire Wire Line
	6500 4400 6550 4400
NoConn ~ 6500 2600
NoConn ~ 6500 2700
NoConn ~ 6500 2800
NoConn ~ 6500 3000
NoConn ~ 6500 3300
NoConn ~ 6500 4300
NoConn ~ 6500 4700
NoConn ~ 6500 4800
Wire Notes Line
	9450 2950 9450 1900
Wire Notes Line
	7300 1900 7300 2950
Wire Notes Line
	7300 4550 7300 3250
Wire Wire Line
	2500 2250 2550 2250
Wire Wire Line
	6500 4600 6550 4600
Wire Wire Line
	6500 4500 6550 4500
NoConn ~ 6500 3900
NoConn ~ 6500 3800
$Comp
L Device:CP C2
U 1 1 61688E09
P 4500 2200
F 0 "C2" H 4618 2246 50  0000 L CNN
F 1 "10u" H 4618 2155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4538 2050 50  0001 C CNN
F 3 "~" H 4500 2200 50  0001 C CNN
	1    4500 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 616F1A22
P 4050 2200
F 0 "C1" H 4165 2246 50  0000 L CNN
F 1 "100n" H 4165 2155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4088 2050 50  0001 C CNN
F 3 "~" H 4050 2200 50  0001 C CNN
	1    4050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2300 5900 2250
Wire Wire Line
	5900 2250 5800 2250
Wire Wire Line
	5700 2250 5700 2300
Connection ~ 5800 2250
Wire Wire Line
	5800 2250 5700 2250
Wire Wire Line
	5800 2300 5800 2250
Wire Wire Line
	5700 2250 5150 2250
Connection ~ 5700 2250
Wire Wire Line
	4050 2400 4500 2400
Wire Wire Line
	4500 2400 4500 2350
Connection ~ 4050 2400
Wire Wire Line
	4050 2400 4050 2350
$Comp
L Device:C C3
U 1 1 613A8FA4
P 4300 2700
F 0 "C3" V 4048 2700 50  0000 C CNN
F 1 "22p" V 4139 2700 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4338 2550 50  0001 C CNN
F 3 "~" H 4300 2700 50  0001 C CNN
	1    4300 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2050 4050 2000
Wire Wire Line
	4050 2000 4500 2000
Wire Wire Line
	5150 2000 5150 2250
Wire Wire Line
	4500 2050 4500 2000
Connection ~ 4500 2000
Wire Wire Line
	4500 2000 5150 2000
Wire Notes Line
	3900 1900 7000 1900
Wire Notes Line
	7000 1900 7000 5450
Wire Notes Line
	3900 1900 3900 5450
Wire Wire Line
	2500 2550 2750 2550
Wire Wire Line
	2500 2450 2750 2450
$Comp
L power:+5V #PWR0107
U 1 1 61655010
P 2550 2250
F 0 "#PWR0107" H 2550 2100 50  0001 C CNN
F 1 "+5V" V 2600 2250 50  0000 L CNN
F 2 "" H 2550 2250 50  0001 C CNN
F 3 "" H 2550 2250 50  0001 C CNN
	1    2550 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 2450 2750 2100
Wire Wire Line
	2750 2100 2800 2100
Connection ~ 2750 2450
Wire Wire Line
	2750 2450 2800 2450
Wire Wire Line
	2750 2550 2750 2950
Wire Wire Line
	2750 2950 2800 2950
Connection ~ 2750 2550
Wire Wire Line
	2750 2550 2800 2550
Wire Notes Line
	1800 1900 3600 1900
Wire Notes Line
	1800 3150 3600 3150
Wire Notes Line
	7300 3250 8950 3250
Wire Notes Line
	7300 4550 8950 4550
Wire Notes Line
	7300 2950 9450 2950
Wire Notes Line
	7300 1900 9450 1900
Wire Wire Line
	7700 4150 7700 4250
$Comp
L power:GND #PWR?
U 1 1 61D92920
P 8350 4250
F 0 "#PWR?" H 8350 4000 50  0001 C CNN
F 1 "GND" H 8355 4077 50  0000 C CNN
F 2 "" H 8350 4250 50  0001 C CNN
F 3 "" H 8350 4250 50  0001 C CNN
	1    8350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4150 8350 4250
$EndSCHEMATC
