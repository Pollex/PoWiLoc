EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Device:Crystal Y?
U 1 1 600B205E
P 1100 1000
F 0 "Y?" V 1050 850 50  0000 R CNN
F 1 "16MHz" V 1150 850 50  0000 R CNN
F 2 "" H 1100 1000 50  0001 C CNN
F 3 "~" H 1100 1000 50  0001 C CNN
	1    1100 1000
	0    1    1    0   
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U?
U 1 1 600B4186
P 4200 5900
F 0 "U?" H 4700 7500 50  0000 R CNN
F 1 "328p_radio" H 4850 7400 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4200 5900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4200 5900 50  0001 C CNN
	1    4200 5900
	1    0    0    -1  
$EndComp
Text GLabel 2400 5300 2    50   Input ~ 0
XTAL1
Text GLabel 2400 5400 2    50   Input ~ 0
XTAL2
Text GLabel 950  800  0    50   Input ~ 0
XTAL1
Text GLabel 950  1200 0    50   Input ~ 0
XTAL2
$Comp
L Device:C_Small C?
U 1 1 600B7B61
P 1600 1200
F 0 "C?" V 1500 1200 50  0000 C CNN
F 1 "22p" V 1700 1200 50  0000 C CNN
F 2 "" H 1600 1200 50  0001 C CNN
F 3 "~" H 1600 1200 50  0001 C CNN
	1    1600 1200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 600B83A5
P 1600 800
F 0 "C?" V 1500 800 50  0000 C CNN
F 1 "22p" V 1700 800 50  0000 C CNN
F 2 "" H 1600 800 50  0001 C CNN
F 3 "~" H 1600 800 50  0001 C CNN
	1    1600 800 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 600B8A00
P 1850 1250
F 0 "#PWR0101" H 1850 1000 50  0001 C CNN
F 1 "GND" H 1855 1077 50  0000 C CNN
F 2 "" H 1850 1250 50  0001 C CNN
F 3 "" H 1850 1250 50  0001 C CNN
	1    1850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 850  1100 800 
Wire Wire Line
	1100 800  1500 800 
Wire Wire Line
	1100 1150 1100 1200
Wire Wire Line
	1100 1200 1500 1200
Wire Wire Line
	950  1200 1100 1200
Connection ~ 1100 1200
Wire Wire Line
	950  800  1100 800 
Connection ~ 1100 800 
Wire Wire Line
	1700 1200 1850 1200
Wire Wire Line
	1850 1200 1850 1250
Wire Wire Line
	1700 800  1850 800 
Wire Wire Line
	1850 800  1850 1200
Connection ~ 1850 1200
Text Notes 650  700  0    50   ~ 0
Main OSC
Wire Notes Line
	650  600  1950 600 
Wire Notes Line
	1950 600  1950 1500
Wire Notes Line
	1950 1500 650  1500
Wire Notes Line
	650  1500 650  600 
Text Notes 900  3900 0    50   ~ 0
Main MCU
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U?
U 1 1 600AFA85
P 1800 5900
F 0 "U?" H 2100 7500 50  0000 R CNN
F 1 "328p_main" H 2650 7400 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 1800 5900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1800 5900 50  0001 C CNN
	1    1800 5900
	1    0    0    -1  
$EndComp
Text GLabel 2400 6100 2    50   Input ~ 0
I2C_SCL
Text GLabel 2400 6000 2    50   Input ~ 0
I2C_SDA
Text GLabel 2400 6200 2    50   Input ~ 0
NRST
$Comp
L power:VCC #PWR0102
U 1 1 600C9D22
P 2700 950
F 0 "#PWR0102" H 2700 800 50  0001 C CNN
F 1 "VCC" H 2715 1123 50  0000 C CNN
F 2 "" H 2700 950 50  0001 C CNN
F 3 "" H 2700 950 50  0001 C CNN
	1    2700 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 600C9858
P 2700 1050
F 0 "R?" H 2759 1096 50  0000 L CNN
F 1 "10k" H 2759 1005 50  0000 L CNN
F 2 "" H 2700 1050 50  0001 C CNN
F 3 "~" H 2700 1050 50  0001 C CNN
	1    2700 1050
	1    0    0    -1  
$EndComp
Text GLabel 2750 1200 2    50   Input ~ 0
NRST
Wire Wire Line
	2700 1150 2700 1200
Wire Wire Line
	2700 1200 2750 1200
$Comp
L Switch:SW_SPST SW?
U 1 1 600D2850
P 2400 1200
F 0 "SW?" H 2400 1435 50  0000 C CNN
F 1 "SW_RST" H 2400 1344 50  0000 C CNN
F 2 "" H 2400 1200 50  0001 C CNN
F 3 "~" H 2400 1200 50  0001 C CNN
	1    2400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1200 2700 1200
Connection ~ 2700 1200
$Comp
L power:GND #PWR0103
U 1 1 600D3AFA
P 2150 1250
F 0 "#PWR0103" H 2150 1000 50  0001 C CNN
F 1 "GND" H 2155 1077 50  0000 C CNN
F 2 "" H 2150 1250 50  0001 C CNN
F 3 "" H 2150 1250 50  0001 C CNN
	1    2150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1200 2150 1200
Wire Wire Line
	2150 1200 2150 1250
Text Notes 2100 700  0    50   ~ 0
Main Reset button
Wire Notes Line
	2050 600  3100 600 
Wire Notes Line
	3100 1500 2050 1500
Wire Notes Line
	2050 600  2050 1500
Wire Notes Line
	3100 600  3100 1500
Text Notes 7400 7500 0    50   ~ 0
PoWi Locator
$Comp
L Switch:SW_SPST SW?
U 1 1 600D956E
P 3950 1150
F 0 "SW?" H 3950 1385 50  0000 C CNN
F 1 "SW_SPST" H 3950 1294 50  0000 C CNN
F 2 "" H 3950 1150 50  0001 C CNN
F 3 "~" H 3950 1150 50  0001 C CNN
	1    3950 1150
	1    0    0    -1  
$EndComp
$Comp
L powiloc-custom:USB_B U?
U 1 1 600E22E1
P 9200 1200
F 0 "U?" H 9000 1350 50  0000 L CNN
F 1 "USB Conn" H 9000 1250 50  0000 L CNN
F 2 "" H 9200 1150 50  0001 C CNN
F 3 "" H 9200 1150 50  0001 C CNN
	1    9200 1200
	1    0    0    -1  
$EndComp
Text GLabel 2400 6600 2    50   Input ~ 0
USB_D+
Text GLabel 2400 6700 2    50   Input ~ 0
USB_D-
Text GLabel 8250 1500 0    50   Input ~ 0
USB_D+
Text GLabel 8250 1400 0    50   Input ~ 0
USB_D-
Wire Wire Line
	8800 1300 8850 1300
$Comp
L power:GND #PWR0104
U 1 1 600ECD85
P 7700 1700
F 0 "#PWR0104" H 7700 1450 50  0001 C CNN
F 1 "GND" H 7705 1527 50  0000 C CNN
F 2 "" H 7700 1700 50  0001 C CNN
F 3 "" H 7700 1700 50  0001 C CNN
	1    7700 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 600ED8D6
P 1800 7400
F 0 "#PWR0105" H 1800 7150 50  0001 C CNN
F 1 "GND" H 1805 7227 50  0000 C CNN
F 2 "" H 1800 7400 50  0001 C CNN
F 3 "" H 1800 7400 50  0001 C CNN
	1    1800 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 600F2769
P 7700 1450
F 0 "C?" H 7800 1400 50  0000 L CNN
F 1 "4u7" H 7800 1500 50  0000 L CNN
F 2 "" H 7700 1450 50  0001 C CNN
F 3 "~" H 7700 1450 50  0001 C CNN
	1    7700 1450
	-1   0    0    1   
$EndComp
Text Notes 7450 700  0    50   ~ 0
USB Connection*
Text Notes 700  1800 0    50   ~ 0
Power supply**
Text GLabel 950  2000 0    50   Input ~ 0
VBUS
Text GLabel 950  2350 0    50   Input ~ 0
BAT+
Text GLabel 950  2450 0    50   Input ~ 0
BAT-
$Comp
L power:GND #PWR0106
U 1 1 600FE9FE
P 1550 2500
F 0 "#PWR0106" H 1550 2250 50  0001 C CNN
F 1 "GND" H 1555 2327 50  0000 C CNN
F 2 "" H 1550 2500 50  0001 C CNN
F 3 "" H 1550 2500 50  0001 C CNN
	1    1550 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60106E17
P 8400 1500
F 0 "R?" V 8300 1450 50  0000 C CNN
F 1 "68" V 8300 1600 50  0000 C CNN
F 2 "" H 8400 1500 50  0001 C CNN
F 3 "~" H 8400 1500 50  0001 C CNN
	1    8400 1500
	0    1    -1   0   
$EndComp
Text GLabel 7700 1200 1    50   Input ~ 0
VBUS
Wire Wire Line
	8850 1600 8800 1600
$Comp
L Device:R_Small R?
U 1 1 6012B34F
P 8400 1400
F 0 "R?" V 8300 1350 50  0000 C CNN
F 1 "68" V 8300 1500 50  0000 C CNN
F 2 "" H 8400 1400 50  0001 C CNN
F 3 "~" H 8400 1400 50  0001 C CNN
	1    8400 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 1400 8250 1400
Wire Wire Line
	8250 1500 8300 1500
Wire Wire Line
	8800 1300 8800 1250
Wire Wire Line
	7700 1250 7700 1200
Wire Wire Line
	7700 1350 7700 1250
Connection ~ 7700 1250
Wire Wire Line
	8800 1600 8800 1650
Wire Wire Line
	7700 1550 7700 1650
Connection ~ 7700 1650
Wire Wire Line
	7700 1650 7700 1700
$Comp
L power:GND #PWR0107
U 1 1 6013440B
P 2850 2500
F 0 "#PWR0107" H 2850 2250 50  0001 C CNN
F 1 "GND" H 2855 2327 50  0000 C CNN
F 2 "" H 2850 2500 50  0001 C CNN
F 3 "" H 2850 2500 50  0001 C CNN
	1    2850 2500
	1    0    0    -1  
$EndComp
Text GLabel 8650 900  1    50   Input ~ 0
3.3V
$Comp
L Device:R_Small R?
U 1 1 60137EF2
P 8650 1050
F 0 "R?" V 8550 1000 50  0000 C CNN
F 1 "1k5" V 8550 1150 50  0000 C CNN
F 2 "" H 8650 1050 50  0001 C CNN
F 3 "~" H 8650 1050 50  0001 C CNN
	1    8650 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 900  8650 950 
Wire Wire Line
	7700 1250 8800 1250
Wire Wire Line
	7700 1650 8800 1650
Wire Notes Line
	7400 1950 9450 1950
Wire Notes Line
	9450 1950 9450 600 
Wire Notes Line
	7400 600  9450 600 
Wire Notes Line
	7400 600  7400 1950
Text GLabel 3250 2100 2    50   Input ~ 0
3.3V
$Comp
L Regulator_Linear:MCP1700-3302E_TO92 U?
U 1 1 6013050C
P 2850 2100
F 0 "U?" H 2850 1858 50  0000 C CNN
F 1 "MCP1700" H 2850 1949 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2850 1900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826D.pdf" H 2850 2100 50  0001 C CNN
	1    2850 2100
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60147CF3
P 1550 2150
F 0 "R?" V 1450 2100 50  0000 C CNN
F 1 "10k" V 1450 2250 50  0000 C CNN
F 2 "" H 1550 2150 50  0001 C CNN
F 3 "~" H 1550 2150 50  0001 C CNN
	1    1550 2150
	1    0    0    1   
$EndComp
Wire Wire Line
	950  2350 1150 2350
Wire Wire Line
	1800 2050 1800 2000
Wire Wire Line
	1800 2000 2000 2000
Connection ~ 1800 2000
Wire Wire Line
	2200 2000 2200 2100
$Comp
L Device:D_Schottky_Small D?
U 1 1 6015247E
P 2100 2000
F 0 "D?" H 2100 1885 50  0000 C CNN
F 1 "D_Schottky_Small" H 2100 1884 50  0001 C CNN
F 2 "" V 2100 2000 50  0001 C CNN
F 3 "~" V 2100 2000 50  0001 C CNN
	1    2100 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky_Small D?
U 1 1 601529BE
P 2100 2350
F 0 "D?" H 2100 2235 50  0000 C CNN
F 1 "D_Schottky_Small" H 2100 2234 50  0001 C CNN
F 2 "" V 2100 2350 50  0001 C CNN
F 3 "~" V 2100 2350 50  0001 C CNN
	1    2100 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	950  2000 1550 2000
Wire Wire Line
	1550 2450 1550 2250
Wire Wire Line
	1550 2050 1550 2000
Connection ~ 1550 2000
Wire Wire Line
	1550 2000 1800 2000
Wire Wire Line
	950  2450 1550 2450
Wire Wire Line
	1550 2500 1550 2450
Connection ~ 1550 2450
$Comp
L Transistor_FET:IRF740 Q?
U 1 1 601579E9
P 1800 2250
F 0 "Q?" V 2049 2250 50  0000 C CNN
F 1 "IRF740" V 2140 2250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2050 2175 50  0001 L CIN
F 3 "http://www.vishay.com/docs/91054/91054.pdf" H 1800 2250 50  0001 L CNN
	1    1800 2250
	0    1    1    0   
$EndComp
Wire Notes Line
	3550 1700 3550 2850
Wire Notes Line
	650  2850 650  1700
Text GLabel 1550 4050 1    50   Input ~ 0
3.3V
Wire Wire Line
	8650 1150 8650 1400
Wire Wire Line
	8500 1400 8650 1400
Connection ~ 8650 1400
Wire Wire Line
	8650 1400 8850 1400
Wire Wire Line
	8500 1500 8850 1500
$Comp
L Device:C_Small C?
U 1 1 600C8882
P 1550 4150
F 0 "C?" H 1650 4100 50  0000 L CNN
F 1 "100n" H 1650 4200 50  0000 L CNN
F 2 "" H 1550 4150 50  0001 C CNN
F 3 "~" H 1550 4150 50  0001 C CNN
	1    1550 4150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 600C8B02
P 1550 4250
F 0 "#PWR0108" H 1550 4000 50  0001 C CNN
F 1 "GND" H 1555 4077 50  0000 C CNN
F 2 "" H 1550 4250 50  0001 C CNN
F 3 "" H 1550 4250 50  0001 C CNN
	1    1550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4050 1800 4050
Wire Wire Line
	1800 4050 1800 4400
Wire Wire Line
	1800 4050 1900 4050
Wire Wire Line
	1900 4050 1900 4400
Connection ~ 1800 4050
Text GLabel 3950 4050 1    50   Input ~ 0
3.3V
$Comp
L Device:C_Small C?
U 1 1 600CECAA
P 3950 4150
F 0 "C?" H 4050 4100 50  0000 L CNN
F 1 "100n" H 4050 4200 50  0000 L CNN
F 2 "" H 3950 4150 50  0001 C CNN
F 3 "~" H 3950 4150 50  0001 C CNN
	1    3950 4150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 600CECB4
P 3950 4250
F 0 "#PWR0109" H 3950 4000 50  0001 C CNN
F 1 "GND" H 3955 4077 50  0000 C CNN
F 2 "" H 3950 4250 50  0001 C CNN
F 3 "" H 3950 4250 50  0001 C CNN
	1    3950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4050 4200 4050
Wire Wire Line
	4200 4050 4200 4400
Wire Wire Line
	4200 4050 4300 4050
Wire Wire Line
	4300 4050 4300 4400
Connection ~ 4200 4050
$Comp
L power:GND #PWR0110
U 1 1 600D1A03
P 4200 7400
F 0 "#PWR0110" H 4200 7150 50  0001 C CNN
F 1 "GND" H 4205 7227 50  0000 C CNN
F 2 "" H 4200 7400 50  0001 C CNN
F 3 "" H 4200 7400 50  0001 C CNN
	1    4200 7400
	1    0    0    -1  
$EndComp
Text GLabel 4800 6200 2    50   Input ~ 0
NRST
Text GLabel 4800 6100 2    50   Input ~ 0
I2C_SCL
Text GLabel 4800 6000 2    50   Input ~ 0
I2C_SDA
$Comp
L RF_Module:RFM95W-868S2 U?
U 1 1 600D40E1
P 7250 5300
F 0 "U?" H 7450 5900 50  0000 C CNN
F 1 "RFM95W" H 7500 5800 50  0000 C CNN
F 2 "" H 3950 6950 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 3950 6950 50  0001 C CNN
	1    7250 5300
	1    0    0    -1  
$EndComp
Text GLabel 7250 4800 1    50   Input ~ 0
3.3V
$Comp
L power:GND #PWR0111
U 1 1 600D6E6C
P 7250 5950
F 0 "#PWR0111" H 7250 5700 50  0001 C CNN
F 1 "GND" H 7255 5777 50  0000 C CNN
F 2 "" H 7250 5950 50  0001 C CNN
F 3 "" H 7250 5950 50  0001 C CNN
	1    7250 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5900 7150 5950
Wire Wire Line
	7150 5950 7250 5950
Wire Wire Line
	7250 5900 7250 5950
Connection ~ 7250 5950
Wire Wire Line
	7350 5900 7350 5950
Wire Wire Line
	7250 5950 7350 5950
Text GLabel 4800 4700 2    50   Input ~ 0
RADIO_DIO0
Text GLabel 7750 5700 2    50   Input ~ 0
RADIO_DIO0
Text GLabel 7750 5600 2    50   Input ~ 0
RADIO_DIO1
Text GLabel 7750 5500 2    50   Input ~ 0
RADIO_DIO2
Text GLabel 4800 7100 2    50   Input ~ 0
RADIO_DIO1
Text GLabel 4800 7000 2    50   Input ~ 0
RADIO_DIO2
Text GLabel 6750 5000 0    50   Input ~ 0
RADIO_SCK
Text GLabel 4800 5200 2    50   Input ~ 0
RADIO_SCK
Text GLabel 4800 5100 2    50   Input ~ 0
RADIO_MISO
Text GLabel 6750 5200 0    50   Input ~ 0
RADIO_MISO
Text GLabel 4800 5000 2    50   Input ~ 0
RADIO_MOSI
Text GLabel 6750 5100 0    50   Input ~ 0
RADIO_MOSI
Text GLabel 6750 5300 0    50   Input ~ 0
RADIO_NSS
Text GLabel 4800 4900 2    50   Input ~ 0
RADIO_NSS
Text GLabel 4800 4800 2    50   Input ~ 0
RADIO_RST
Text GLabel 6750 5500 0    50   Input ~ 0
RADIO_RST
Text GLabel 2400 5200 2    50   Input ~ 0
MAIN_SCK
Text GLabel 2400 5100 2    50   Input ~ 0
MAIN_MISO
Text GLabel 2400 5000 2    50   Input ~ 0
MAIN_MOSI
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 600E0A6D
P 10300 1050
F 0 "J?" H 10350 1367 50  0000 C CNN
F 1 "328p_main_ISP" H 10350 1276 50  0000 C CNN
F 2 "" H 10300 1050 50  0001 C CNN
F 3 "~" H 10300 1050 50  0001 C CNN
	1    10300 1050
	1    0    0    -1  
$EndComp
Text GLabel 10100 1050 0    50   Input ~ 0
MAIN_SCK
Text GLabel 10100 950  0    50   Input ~ 0
MAIN_MISO
Text GLabel 10600 1050 2    50   Input ~ 0
MAIN_MOSI
Text GLabel 10100 1150 0    50   Input ~ 0
NRST
$Comp
L power:GND #PWR0112
U 1 1 600E4912
P 10800 1200
F 0 "#PWR0112" H 10800 950 50  0001 C CNN
F 1 "GND" H 10805 1027 50  0000 C CNN
F 2 "" H 10800 1200 50  0001 C CNN
F 3 "" H 10800 1200 50  0001 C CNN
	1    10800 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 600E690C
P 10300 1650
F 0 "J?" H 10350 1967 50  0000 C CNN
F 1 "328p_radio_ISP" H 10350 1876 50  0000 C CNN
F 2 "" H 10300 1650 50  0001 C CNN
F 3 "~" H 10300 1650 50  0001 C CNN
	1    10300 1650
	1    0    0    -1  
$EndComp
Text GLabel 10100 1750 0    50   Input ~ 0
NRST
$Comp
L power:GND #PWR0113
U 1 1 600E6C78
P 10800 1800
F 0 "#PWR0113" H 10800 1550 50  0001 C CNN
F 1 "GND" H 10805 1627 50  0000 C CNN
F 2 "" H 10800 1800 50  0001 C CNN
F 3 "" H 10800 1800 50  0001 C CNN
	1    10800 1800
	1    0    0    -1  
$EndComp
Text GLabel 10100 1550 0    50   Input ~ 0
RADIO_MISO
Text GLabel 10600 1650 2    50   Input ~ 0
RADIO_MOSI
Text GLabel 10100 1650 0    50   Input ~ 0
RADIO_SCK
Wire Wire Line
	10800 1150 10800 1200
Wire Wire Line
	10600 1150 10800 1150
Wire Wire Line
	10800 1750 10800 1800
Wire Wire Line
	10600 1750 10800 1750
Text Notes 9600 700  0    50   ~ 0
MCU ISP*
Wire Notes Line
	11100 600  11100 2050
Wire Notes Line
	11100 2050 9550 2050
Wire Notes Line
	9550 2050 9550 600 
Wire Notes Line
	9550 600  11100 600 
$Comp
L Connector:Conn_Coaxial J?
U 1 1 6010B134
P 8350 5000
F 0 "J?" H 8100 5250 50  0000 L CNN
F 1 "radio_ant_conn**" H 8100 5150 50  0000 L CNN
F 2 "" H 8350 5000 50  0001 C CNN
F 3 " ~" H 8350 5000 50  0001 C CNN
	1    8350 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6010DEBA
P 8350 5200
F 0 "#PWR?" H 8350 4950 50  0001 C CNN
F 1 "GND" H 8355 5027 50  0000 C CNN
F 2 "" H 8350 5200 50  0001 C CNN
F 3 "" H 8350 5200 50  0001 C CNN
	1    8350 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J?
U 1 1 6011BBAB
P 5150 1250
F 0 "J?" H 5000 1600 50  0000 L CNN
F 1 "neo_gps_conn" H 5000 1500 50  0000 L CNN
F 2 "" H 5150 1250 50  0001 C CNN
F 3 "~" H 5150 1250 50  0001 C CNN
	1    5150 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6011D3E8
P 4900 1500
F 0 "#PWR?" H 4900 1250 50  0001 C CNN
F 1 "GND" H 4905 1327 50  0000 C CNN
F 2 "" H 4900 1500 50  0001 C CNN
F 3 "" H 4900 1500 50  0001 C CNN
	1    4900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1450 4900 1450
Wire Wire Line
	4900 1450 4900 1500
Wire Wire Line
	4950 1150 4900 1150
Wire Wire Line
	4900 1150 4900 1100
Text GLabel 4900 1250 0    50   Input ~ 0
GPS_RX
Text GLabel 4900 1350 0    50   Input ~ 0
GPS_TX
Wire Wire Line
	4900 1250 4950 1250
Wire Wire Line
	4950 1350 4900 1350
Text Notes 4400 700  0    50   ~ 0
GPS Connector
Wire Notes Line
	4400 1750 5550 1750
Wire Notes Line
	5550 600  4400 600 
$Comp
L Connector:Conn_01x04_Female J?
U 1 1 6012DBF0
P 9200 2700
F 0 "J?" H 9050 3050 50  0000 L CNN
F 1 "oled_conn" H 9050 2950 50  0000 L CNN
F 2 "" H 9200 2700 50  0001 C CNN
F 3 "~" H 9200 2700 50  0001 C CNN
	1    9200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2550 8950 2600
Wire Wire Line
	8950 2600 9000 2600
$Comp
L power:GND #PWR?
U 1 1 6012FD94
P 8500 2750
F 0 "#PWR?" H 8500 2500 50  0001 C CNN
F 1 "GND" H 8505 2577 50  0000 C CNN
F 2 "" H 8500 2750 50  0001 C CNN
F 3 "" H 8500 2750 50  0001 C CNN
	1    8500 2750
	1    0    0    -1  
$EndComp
Text GLabel 9000 2800 0    50   Input ~ 0
I2C_SCL
Text GLabel 9000 2900 0    50   Input ~ 0
I2C_SDA
Wire Wire Line
	8500 2750 8500 2700
Wire Wire Line
	8500 2700 9000 2700
Text Notes 8400 2150 0    50   ~ 0
OLED Connector*
Wire Notes Line
	8350 2050 9450 2050
Wire Notes Line
	9450 3000 8350 3000
Text GLabel 7750 5200 2    50   Input ~ 0
RADIO_DIO5
Wire Wire Line
	7750 5000 8150 5000
Text GLabel 4800 5900 2    50   Input ~ 0
RADIO_DIO5
Text GLabel 3700 850  1    50   Input ~ 0
3.3V
$Comp
L Device:R_Small R?
U 1 1 6014170E
P 3700 1000
F 0 "R?" V 3500 1000 50  0000 C CNN
F 1 "10k" V 3600 1000 50  0000 C CNN
F 2 "" H 3700 1000 50  0001 C CNN
F 3 "~" H 3700 1000 50  0001 C CNN
	1    3700 1000
	1    0    0    1   
$EndComp
Wire Wire Line
	3700 850  3700 900 
Wire Wire Line
	3700 1150 3750 1150
$Comp
L power:GND #PWR?
U 1 1 60147581
P 4200 1200
F 0 "#PWR?" H 4200 950 50  0001 C CNN
F 1 "GND" H 4205 1027 50  0000 C CNN
F 2 "" H 4200 1200 50  0001 C CNN
F 3 "" H 4200 1200 50  0001 C CNN
	1    4200 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1150 4200 1150
Wire Wire Line
	4200 1150 4200 1200
Wire Wire Line
	3700 1100 3700 1150
Text GLabel 3650 1150 0    50   Input ~ 0
TRIG_BTN
Text GLabel 2400 5900 2    50   Input ~ 0
TRIG_BTN
Wire Wire Line
	3650 1150 3700 1150
Connection ~ 3700 1150
Text Notes 3250 800  0    50   ~ 0
Trigger\nbutton
Wire Notes Line
	3200 600  4300 600 
Wire Notes Line
	4300 600  4300 1450
Wire Notes Line
	4300 1450 3200 1450
Wire Notes Line
	3200 1450 3200 600 
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60157CEE
P 1150 2150
F 0 "J?" V 1200 2250 50  0000 L BNN
F 1 "SW_PWR" V 1100 2250 50  0000 L CNN
F 2 "" H 1150 2150 50  0001 C CNN
F 3 "~" H 1150 2150 50  0001 C CNN
	1    1150 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 2350 1600 2350
$Comp
L Device:C_Small C?
U 1 1 6016CA3C
P 2500 2300
F 0 "C?" H 2650 2250 50  0000 C CNN
F 1 "1u" H 2650 2350 50  0000 C CNN
F 2 "" H 2500 2300 50  0001 C CNN
F 3 "~" H 2500 2300 50  0001 C CNN
	1    2500 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6016DCFA
P 3200 2300
F 0 "C?" H 3350 2250 50  0000 C CNN
F 1 "1u" H 3350 2350 50  0000 C CNN
F 2 "" H 3200 2300 50  0001 C CNN
F 3 "~" H 3200 2300 50  0001 C CNN
	1    3200 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	3150 2100 3200 2100
Wire Wire Line
	3200 2100 3200 2200
Connection ~ 3200 2100
Wire Wire Line
	3200 2100 3250 2100
Wire Wire Line
	3200 2400 3200 2450
Wire Wire Line
	3200 2450 2850 2450
Wire Wire Line
	2850 2450 2850 2500
Wire Wire Line
	2850 2400 2850 2450
Connection ~ 2850 2450
Wire Wire Line
	2850 2450 2500 2450
Wire Wire Line
	2500 2450 2500 2400
Wire Wire Line
	2500 2200 2500 2100
Connection ~ 2500 2100
Wire Wire Line
	2500 2100 2550 2100
Wire Wire Line
	2200 2100 2500 2100
Connection ~ 2200 2100
Wire Wire Line
	2200 2100 2200 2350
Wire Notes Line
	650  1700 3550 1700
Wire Notes Line
	650  2850 3550 2850
Text GLabel 4900 1100 1    50   Input ~ 0
3.3V_SW
Wire Notes Line
	5550 600  5550 1750
Wire Notes Line
	4400 600  4400 1750
Text GLabel 8950 2550 1    50   Input ~ 0
3.3V_SW
Wire Notes Line
	8350 2050 8350 3000
Wire Notes Line
	9450 2050 9450 3000
Text GLabel 2400 5800 2    50   Input ~ 0
PWR_SW
Text GLabel 4050 2100 0    50   Input ~ 0
PWR_SW
$Comp
L Transistor_FET:IRF740 Q?
U 1 1 602036C8
P 4350 2350
F 0 "Q?" V 4599 2350 50  0000 C CNN
F 1 "IRF740" V 4690 2350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4600 2275 50  0001 L CIN
F 3 "http://www.vishay.com/docs/91054/91054.pdf" H 4350 2350 50  0001 L CNN
	1    4350 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 2100 4350 2150
Text GLabel 4550 2450 2    50   Input ~ 0
3.3V_SW
Text GLabel 3950 2450 0    50   Input ~ 0
3.3V
$Comp
L Device:R_Small R?
U 1 1 602073AC
P 4100 2250
F 0 "R?" V 4000 2200 50  0000 C CNN
F 1 "10k" V 4000 2350 50  0000 C CNN
F 2 "" H 4100 2250 50  0001 C CNN
F 3 "~" H 4100 2250 50  0001 C CNN
	1    4100 2250
	1    0    0    1   
$EndComp
Wire Wire Line
	4050 2100 4100 2100
Wire Wire Line
	4100 2100 4100 2150
Connection ~ 4100 2100
Wire Wire Line
	4100 2100 4350 2100
$Comp
L power:GND #PWR?
U 1 1 60211667
P 4100 2600
F 0 "#PWR?" H 4100 2350 50  0001 C CNN
F 1 "GND" H 4105 2427 50  0000 C CNN
F 2 "" H 4100 2600 50  0001 C CNN
F 3 "" H 4100 2600 50  0001 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2600 4100 2350
Wire Wire Line
	3950 2450 4150 2450
Text Notes 3700 2000 0    50   ~ 0
Peripheral\npower switch
Wire Notes Line
	3650 1800 4950 1800
Wire Notes Line
	4950 1800 4950 2850
Wire Notes Line
	4950 2850 3650 2850
Wire Notes Line
	3650 2850 3650 1800
Text GLabel 2400 6500 2    50   Input ~ 0
GPS_RX
Text GLabel 2400 6400 2    50   Input ~ 0
GPS_TX
Text Notes 3400 3950 0    50   ~ 0
Radio MCU
$EndSCHEMATC
