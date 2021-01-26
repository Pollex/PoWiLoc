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
L Device:Crystal Y1
U 1 1 600B205E
P 1000 2150
F 0 "Y1" V 950 2000 50  0000 R CNN
F 1 "12MHz" V 1050 2000 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 1000 2150 50  0001 C CNN
F 3 "~" H 1000 2150 50  0001 C CNN
	1    1000 2150
	0    1    1    0   
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U5
U 1 1 600B4186
P 4200 5900
F 0 "U5" H 4700 7500 50  0000 R CNN
F 1 "328p_radio" H 4850 7400 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 4200 5900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4200 5900 50  0001 C CNN
	1    4200 5900
	1    0    0    -1  
$EndComp
Text GLabel 2400 5300 2    50   Input ~ 0
XTAL1
Text GLabel 2400 5400 2    50   Input ~ 0
XTAL2
Text GLabel 850  1950 0    50   Input ~ 0
XTAL1
Text GLabel 850  2350 0    50   Input ~ 0
XTAL2
$Comp
L Device:C_Small C5
U 1 1 600B7B61
P 1500 2350
F 0 "C5" V 1400 2350 50  0000 C CNN
F 1 "20p" V 1600 2350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1500 2350 50  0001 C CNN
F 3 "~" H 1500 2350 50  0001 C CNN
	1    1500 2350
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 600B83A5
P 1500 1950
F 0 "C4" V 1400 1950 50  0000 C CNN
F 1 "20p" V 1600 1950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1500 1950 50  0001 C CNN
F 3 "~" H 1500 1950 50  0001 C CNN
	1    1500 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 600B8A00
P 1750 2400
F 0 "#PWR0101" H 1750 2150 50  0001 C CNN
F 1 "GND" H 1755 2227 50  0000 C CNN
F 2 "" H 1750 2400 50  0001 C CNN
F 3 "" H 1750 2400 50  0001 C CNN
	1    1750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2000 1000 1950
Wire Wire Line
	1000 1950 1400 1950
Wire Wire Line
	1000 2300 1000 2350
Wire Wire Line
	1000 2350 1400 2350
Wire Wire Line
	850  2350 1000 2350
Connection ~ 1000 2350
Wire Wire Line
	850  1950 1000 1950
Connection ~ 1000 1950
Wire Wire Line
	1600 2350 1750 2350
Wire Wire Line
	1750 2350 1750 2400
Wire Wire Line
	1600 1950 1750 1950
Wire Wire Line
	1750 1950 1750 2350
Connection ~ 1750 2350
Text Notes 550  1850 0    50   ~ 0
Main OSC
Wire Notes Line
	550  1750 1850 1750
Wire Notes Line
	1850 1750 1850 2650
Wire Notes Line
	1850 2650 550  2650
Wire Notes Line
	550  2650 550  1750
Text Notes 900  3900 0    50   ~ 0
Main MCU
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U4
U 1 1 600AFA85
P 1800 5900
F 0 "U4" H 2100 7500 50  0000 R CNN
F 1 "328p_main" H 2650 7400 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 1800 5900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1800 5900 50  0001 C CNN
	1    1800 5900
	1    0    0    -1  
$EndComp
Text GLabel 2400 6100 2    50   Input ~ 0
I2C_SCL
Text GLabel 2400 6000 2    50   Input ~ 0
I2C_SDA
Text GLabel 2400 6200 2    50   Input ~ 0
NRST_MAIN_MCU
$Comp
L Device:R_Small R8
U 1 1 600C9858
P 4050 2250
F 0 "R8" H 4100 2300 50  0000 L CNN
F 1 "10k" H 4100 2200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4050 2250 50  0001 C CNN
F 3 "~" H 4050 2250 50  0001 C CNN
	1    4050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2350 4050 2400
Wire Wire Line
	4050 2400 4100 2400
$Comp
L Switch:SW_SPST SW2
U 1 1 600D2850
P 3750 2400
F 0 "SW2" H 3750 2635 50  0000 C CNN
F 1 "SW_MAIN_RST" H 3750 2544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3750 2400 50  0001 C CNN
F 3 "~" H 3750 2400 50  0001 C CNN
	1    3750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2400 4050 2400
Connection ~ 4050 2400
$Comp
L power:GND #PWR0103
U 1 1 600D3AFA
P 3500 2450
F 0 "#PWR0103" H 3500 2200 50  0001 C CNN
F 1 "GND" H 3600 2350 50  0000 C CNN
F 2 "" H 3500 2450 50  0001 C CNN
F 3 "" H 3500 2450 50  0001 C CNN
	1    3500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2400 3500 2400
Text Notes 3450 1850 0    50   ~ 0
Main Reset button
Wire Notes Line
	3400 1750 3400 2650
Wire Notes Line
	4850 1750 4850 2650
Text Notes 7400 7500 0    50   ~ 0
PoWi Locator
$Comp
L Switch:SW_SPST SW1
U 1 1 600D956E
P 5250 2400
F 0 "SW1" H 5250 2635 50  0000 C CNN
F 1 "SW_TRIG" H 5250 2544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5250 2400 50  0001 C CNN
F 3 "~" H 5250 2400 50  0001 C CNN
	1    5250 2400
	-1   0    0    -1  
$EndComp
$Comp
L powiloc-custom:USB_B U2
U 1 1 600E22E1
P 9300 1150
F 0 "U2" H 9100 1300 50  0000 L CNN
F 1 "USB Conn" H 9100 1200 50  0000 L CNN
F 2 "powiloc-custom:USBPCB" H 9300 1100 50  0001 C CNN
F 3 "" H 9300 1100 50  0001 C CNN
	1    9300 1150
	1    0    0    -1  
$EndComp
Text GLabel 2400 6600 2    50   Input ~ 0
USB_D+
Text GLabel 2400 6700 2    50   Input ~ 0
USB_D-
Text GLabel 8350 1450 0    50   Input ~ 0
USB_D+
Text GLabel 8350 1350 0    50   Input ~ 0
USB_D-
Wire Wire Line
	8900 1250 8950 1250
$Comp
L power:GND #PWR0104
U 1 1 600ECD85
P 7800 1650
F 0 "#PWR0104" H 7800 1400 50  0001 C CNN
F 1 "GND" H 7805 1477 50  0000 C CNN
F 2 "" H 7800 1650 50  0001 C CNN
F 3 "" H 7800 1650 50  0001 C CNN
	1    7800 1650
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
L Device:C_Small C3
U 1 1 600F2769
P 7800 1400
F 0 "C3" H 7900 1350 50  0000 L CNN
F 1 "4u7" H 7900 1450 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7800 1400 50  0001 C CNN
F 3 "~" H 7800 1400 50  0001 C CNN
	1    7800 1400
	-1   0    0    1   
$EndComp
Text Notes 7550 650  0    50   ~ 0
USB Connection*
Text Notes 600  650  0    50   ~ 0
Power supply**
Text GLabel 850  850  0    50   Input ~ 0
VBUS
Text GLabel 850  1200 0    50   Input ~ 0
BAT+
Text GLabel 850  1300 0    50   Input ~ 0
BAT-
$Comp
L power:GND #PWR0106
U 1 1 600FE9FE
P 1450 1350
F 0 "#PWR0106" H 1450 1100 50  0001 C CNN
F 1 "GND" H 1455 1177 50  0000 C CNN
F 2 "" H 1450 1350 50  0001 C CNN
F 3 "" H 1450 1350 50  0001 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 60106E17
P 8500 1450
F 0 "R5" V 8400 1400 50  0000 C CNN
F 1 "68" V 8400 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8500 1450 50  0001 C CNN
F 3 "~" H 8500 1450 50  0001 C CNN
	1    8500 1450
	0    1    -1   0   
$EndComp
Text GLabel 7800 1150 1    50   Input ~ 0
VBUS
$Comp
L Device:R_Small R4
U 1 1 6012B34F
P 8500 1350
F 0 "R4" V 8400 1300 50  0000 C CNN
F 1 "68" V 8400 1450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8500 1350 50  0001 C CNN
F 3 "~" H 8500 1350 50  0001 C CNN
	1    8500 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 1350 8350 1350
Wire Wire Line
	8350 1450 8400 1450
Wire Wire Line
	8900 1250 8900 1200
Wire Wire Line
	7800 1200 7800 1150
Wire Wire Line
	7800 1300 7800 1200
Connection ~ 7800 1200
$Comp
L power:GND #PWR0107
U 1 1 6013440B
P 2750 1350
F 0 "#PWR0107" H 2750 1100 50  0001 C CNN
F 1 "GND" H 2755 1177 50  0000 C CNN
F 2 "" H 2750 1350 50  0001 C CNN
F 3 "" H 2750 1350 50  0001 C CNN
	1    2750 1350
	1    0    0    -1  
$EndComp
Text GLabel 8750 850  1    50   Input ~ 0
3.3V
$Comp
L Device:R_Small R3
U 1 1 60137EF2
P 8750 1000
F 0 "R3" V 8650 950 50  0000 C CNN
F 1 "1k5" V 8650 1100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8750 1000 50  0001 C CNN
F 3 "~" H 8750 1000 50  0001 C CNN
	1    8750 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 850  8750 900 
Wire Wire Line
	7800 1200 8900 1200
Wire Notes Line
	7500 2000 9550 2000
Wire Notes Line
	7500 550  9550 550 
Text GLabel 3150 950  2    50   Input ~ 0
3.3V
$Comp
L Regulator_Linear:MCP1700-3302E_TO92 U1
U 1 1 6013050C
P 2750 950
F 0 "U1" H 2750 708 50  0000 C CNN
F 1 "MCP1700" H 2750 799 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2750 750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826D.pdf" H 2750 950 50  0001 C CNN
	1    2750 950 
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 60147CF3
P 1450 1000
F 0 "R1" V 1350 950 50  0000 C CNN
F 1 "10k" V 1350 1100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1450 1000 50  0001 C CNN
F 3 "~" H 1450 1000 50  0001 C CNN
	1    1450 1000
	1    0    0    1   
$EndComp
Wire Wire Line
	1700 900  1700 850 
Wire Wire Line
	1700 850  1900 850 
Connection ~ 1700 850 
$Comp
L Device:D_Schottky_Small D1
U 1 1 6015247E
P 2000 850
F 0 "D1" H 2000 735 50  0000 C CNN
F 1 "D_Schottky_Small" H 2000 734 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 2000 850 50  0001 C CNN
F 3 "~" V 2000 850 50  0001 C CNN
	1    2000 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky_Small D2
U 1 1 601529BE
P 2000 1200
F 0 "D2" H 2000 1085 50  0000 C CNN
F 1 "D_Schottky_Small" H 2000 1084 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 2000 1200 50  0001 C CNN
F 3 "~" V 2000 1200 50  0001 C CNN
	1    2000 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  850  1450 850 
Wire Wire Line
	1450 900  1450 850 
Connection ~ 1450 850 
Wire Wire Line
	1450 850  1700 850 
$Comp
L Transistor_FET:IRF740 Q1
U 1 1 601579E9
P 1700 1100
F 0 "Q1" V 1949 1100 50  0000 C CNN
F 1 "IRF740" V 2040 1100 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 1950 1025 50  0001 L CIN
F 3 "http://www.vishay.com/docs/91054/91054.pdf" H 1700 1100 50  0001 L CNN
	1    1700 1100
	0    1    1    0   
$EndComp
Wire Notes Line
	3450 550  3450 1700
Wire Notes Line
	550  1700 550  550 
Text GLabel 1550 4050 1    50   Input ~ 0
3.3V
Wire Wire Line
	8750 1100 8750 1350
Wire Wire Line
	8600 1350 8750 1350
Connection ~ 8750 1350
Wire Wire Line
	8750 1350 8950 1350
Wire Wire Line
	8600 1450 8950 1450
$Comp
L Device:C_Small C6
U 1 1 600C8882
P 1550 4150
F 0 "C6" H 1650 4100 50  0000 L CNN
F 1 "100n" H 1650 4200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1550 4150 50  0001 C CNN
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
L Device:C_Small C7
U 1 1 600CECAA
P 3950 4150
F 0 "C7" H 4050 4100 50  0000 L CNN
F 1 "100n" H 4050 4200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3950 4150 50  0001 C CNN
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
NRST_RADIO_MCU
Text GLabel 4800 6100 2    50   Input ~ 0
I2C_SCL
Text GLabel 4800 6000 2    50   Input ~ 0
I2C_SDA
$Comp
L RF_Module:RFM95W-868S2 U3
U 1 1 600D40E1
P 7250 5300
F 0 "U3" H 7450 5900 50  0000 C CNN
F 1 "RFM95W" H 7500 5800 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 3950 6950 50  0001 C CNN
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
SPI_SCK
Text GLabel 4800 5200 2    50   Input ~ 0
SPI_SCK
Text GLabel 4800 5100 2    50   Input ~ 0
SPI_MISO
Text GLabel 6750 5200 0    50   Input ~ 0
SPI_MISO
Text GLabel 4800 5000 2    50   Input ~ 0
SPI_MOSI
Text GLabel 6750 5100 0    50   Input ~ 0
SPI_MOSI
Text GLabel 6750 5300 0    50   Input ~ 0
RADIO_NSS
Text GLabel 4800 4900 2    50   Input ~ 0
RADIO_NSS
Text GLabel 4800 4800 2    50   Input ~ 0
RADIO_RST
Text GLabel 6750 5500 0    50   Input ~ 0
RADIO_RST
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 600E0A6D
P 10350 1000
F 0 "J2" H 10400 1317 50  0000 C CNN
F 1 "MCU_ISP" H 10400 1226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10350 1000 50  0001 C CNN
F 3 "~" H 10350 1000 50  0001 C CNN
	1    10350 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 600E4912
P 10850 1150
F 0 "#PWR0112" H 10850 900 50  0001 C CNN
F 1 "GND" H 10855 977 50  0000 C CNN
F 2 "" H 10850 1150 50  0001 C CNN
F 3 "" H 10850 1150 50  0001 C CNN
	1    10850 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 1100 10850 1150
Wire Wire Line
	10650 1100 10850 1100
Text Notes 9650 650  0    50   ~ 0
MCU ISP*
Wire Notes Line
	11150 550  11150 2000
Wire Notes Line
	11150 2000 9600 2000
Wire Notes Line
	9600 2000 9600 550 
Wire Notes Line
	9600 550  11150 550 
$Comp
L Connector:Conn_Coaxial J8
U 1 1 6010B134
P 8350 5000
F 0 "J8" H 8100 5250 50  0000 L CNN
F 1 "radio_ant_conn**" H 8100 5150 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132289_EdgeMount" H 8350 5000 50  0001 C CNN
F 3 " ~" H 8350 5000 50  0001 C CNN
	1    8350 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 6010DEBA
P 8350 5200
F 0 "#PWR08" H 8350 4950 50  0001 C CNN
F 1 "GND" H 8355 5027 50  0000 C CNN
F 2 "" H 8350 5200 50  0001 C CNN
F 3 "" H 8350 5200 50  0001 C CNN
	1    8350 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 6011BBAB
P 4250 1200
F 0 "J4" H 4100 1550 50  0000 L CNN
F 1 "neo_gps_conn" H 4100 1450 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4250 1200 50  0001 C CNN
F 3 "~" H 4250 1200 50  0001 C CNN
	1    4250 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6011D3E8
P 4000 1450
F 0 "#PWR02" H 4000 1200 50  0001 C CNN
F 1 "GND" H 4005 1277 50  0000 C CNN
F 2 "" H 4000 1450 50  0001 C CNN
F 3 "" H 4000 1450 50  0001 C CNN
	1    4000 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1400 4000 1400
Wire Wire Line
	4000 1400 4000 1450
Wire Wire Line
	4050 1100 4000 1100
Wire Wire Line
	4000 1100 4000 1050
Text GLabel 4000 1200 0    50   Input ~ 0
MAIN_TX
Text GLabel 4000 1300 0    50   Input ~ 0
MAIN_RX
Wire Wire Line
	4000 1200 4050 1200
Wire Wire Line
	4050 1300 4000 1300
Text Notes 3500 650  0    50   ~ 0
GPS Connector
Wire Notes Line
	3500 1700 4650 1700
Wire Notes Line
	4650 550  3500 550 
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 6012DBF0
P 9150 2700
F 0 "J5" H 9000 3050 50  0000 L CNN
F 1 "oled_conn" H 9000 2950 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 9150 2700 50  0001 C CNN
F 3 "~" H 9150 2700 50  0001 C CNN
	1    9150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2550 8900 2600
Wire Wire Line
	8900 2600 8950 2600
$Comp
L power:GND #PWR06
U 1 1 6012FD94
P 8450 2750
F 0 "#PWR06" H 8450 2500 50  0001 C CNN
F 1 "GND" H 8455 2577 50  0000 C CNN
F 2 "" H 8450 2750 50  0001 C CNN
F 3 "" H 8450 2750 50  0001 C CNN
	1    8450 2750
	1    0    0    -1  
$EndComp
Text GLabel 8950 2800 0    50   Input ~ 0
I2C_SCL
Text GLabel 8950 2900 0    50   Input ~ 0
I2C_SDA
Wire Wire Line
	8450 2750 8450 2700
Wire Wire Line
	8450 2700 8950 2700
Text Notes 8350 2150 0    50   ~ 0
OLED Connector*
Wire Notes Line
	8300 2050 9400 2050
Wire Notes Line
	9400 3000 8300 3000
Text GLabel 7750 5200 2    50   Input ~ 0
RADIO_DIO5
Wire Wire Line
	7750 5000 8150 5000
Text GLabel 4800 5800 2    50   Input ~ 0
RADIO_DIO5
Text GLabel 5500 2100 1    50   Input ~ 0
3.3V
$Comp
L Device:R_Small R6
U 1 1 6014170E
P 5500 2250
F 0 "R6" H 5450 2200 50  0000 R CNN
F 1 "10k" H 5450 2300 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5500 2250 50  0001 C CNN
F 3 "~" H 5500 2250 50  0001 C CNN
	1    5500 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2100 5500 2150
Wire Wire Line
	5500 2400 5450 2400
$Comp
L power:GND #PWR03
U 1 1 60147581
P 5000 2450
F 0 "#PWR03" H 5000 2200 50  0001 C CNN
F 1 "GND" H 4850 2350 50  0000 C CNN
F 2 "" H 5000 2450 50  0001 C CNN
F 3 "" H 5000 2450 50  0001 C CNN
	1    5000 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 2400 5000 2400
Wire Wire Line
	5000 2400 5000 2450
Wire Wire Line
	5500 2350 5500 2400
Text GLabel 5550 2400 2    50   Input ~ 0
TRIG_BTN
Text GLabel 2400 5800 2    50   Input ~ 0
TRIG_BTN
Wire Wire Line
	5550 2400 5500 2400
Connection ~ 5500 2400
Text Notes 5500 1850 2    50   ~ 0
Trigger button
Wire Notes Line
	4900 1750 6000 1750
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 60157CEE
P 1050 1000
F 0 "J1" V 1100 1100 50  0000 L BNN
F 1 "SW_PWR_BAT" V 1000 1050 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1050 1000 50  0001 C CNN
F 3 "~" H 1050 1000 50  0001 C CNN
	1    1050 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 1200 1500 1200
$Comp
L Device:C_Small C1
U 1 1 6016CA3C
P 2400 1150
F 0 "C1" H 2550 1100 50  0000 C CNN
F 1 "1u" H 2550 1200 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2400 1150 50  0001 C CNN
F 3 "~" H 2400 1150 50  0001 C CNN
	1    2400 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6016DCFA
P 3100 1150
F 0 "C2" H 3250 1100 50  0000 C CNN
F 1 "1u" H 3250 1200 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3100 1150 50  0001 C CNN
F 3 "~" H 3100 1150 50  0001 C CNN
	1    3100 1150
	1    0    0    1   
$EndComp
Wire Notes Line
	550  550  3450 550 
Wire Notes Line
	550  1700 3450 1700
Text GLabel 4000 1050 1    50   Input ~ 0
3.3V_SW
Wire Notes Line
	4650 550  4650 1700
Wire Notes Line
	3500 550  3500 1700
Text GLabel 8900 2550 1    50   Input ~ 0
3.3V_SW
Wire Notes Line
	8300 2050 8300 3000
Wire Notes Line
	9400 2050 9400 3000
Text GLabel 2400 5700 2    50   Input ~ 0
PWR_SW
Text GLabel 2400 6500 2    50   Input ~ 0
MAIN_TX
Text GLabel 2400 6400 2    50   Input ~ 0
MAIN_RX
Text Notes 3400 3950 0    50   ~ 0
Radio MCU
Text GLabel 2400 5900 2    50   Input ~ 0
I2C_SMBALERT
Text GLabel 4800 5900 2    50   Input ~ 0
I2C_SMBALERT
Text GLabel 2100 2100 1    50   Input ~ 0
3.3V
Text GLabel 2700 2500 2    50   Input ~ 0
I2C_SCL
Text GLabel 2700 2350 2    50   Input ~ 0
I2C_SDA
Text GLabel 2700 2200 2    50   Input ~ 0
I2C_SMBALERT
$Comp
L Device:R_Small R7
U 1 1 600EE965
P 2400 2200
F 0 "R7" V 2350 2050 50  0000 C CNN
F 1 "4k7" V 2350 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2400 2200 50  0001 C CNN
F 3 "~" H 2400 2200 50  0001 C CNN
	1    2400 2200
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 600F9269
P 2400 2350
F 0 "R9" V 2350 2200 50  0000 C CNN
F 1 "4k7" V 2350 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2400 2350 50  0001 C CNN
F 3 "~" H 2400 2350 50  0001 C CNN
	1    2400 2350
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 600F983A
P 2400 2500
F 0 "R10" V 2350 2350 50  0000 C CNN
F 1 "4k7" V 2350 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2400 2500 50  0001 C CNN
F 3 "~" H 2400 2500 50  0001 C CNN
	1    2400 2500
	0    -1   1    0   
$EndComp
Wire Wire Line
	2700 2200 2500 2200
Wire Wire Line
	2500 2350 2700 2350
Wire Wire Line
	2700 2500 2500 2500
Wire Wire Line
	2300 2200 2100 2200
Wire Wire Line
	2300 2350 2100 2350
Wire Wire Line
	2100 2100 2100 2200
Connection ~ 2100 2200
Wire Wire Line
	2300 2500 2100 2500
Wire Wire Line
	2100 2200 2100 2350
Connection ~ 2100 2350
Wire Wire Line
	2100 2350 2100 2500
Text Notes 1950 1850 0    50   ~ 0
I2C Bus
Wire Notes Line
	1900 1750 3350 1750
Wire Notes Line
	6000 1700 4700 1700
Wire Notes Line
	4700 550  6000 550 
Text Notes 4750 750  0    50   ~ 0
Peripheral\npower switch
Wire Wire Line
	5000 1250 5200 1250
Wire Wire Line
	5150 900  5400 900 
Connection ~ 5150 900 
Wire Wire Line
	5150 900  5150 950 
Wire Wire Line
	5100 900  5150 900 
$Comp
L Device:R_Small R2
U 1 1 602073AC
P 5150 1050
F 0 "R2" H 5050 1050 50  0000 C CNN
F 1 "10k" H 5250 1050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5150 1050 50  0001 C CNN
F 3 "~" H 5150 1050 50  0001 C CNN
	1    5150 1050
	1    0    0    1   
$EndComp
Text GLabel 5000 1250 0    50   Input ~ 0
3.3V
Text GLabel 5600 1250 2    50   Input ~ 0
3.3V_SW
Wire Wire Line
	5400 900  5400 950 
$Comp
L Transistor_FET:IRF740 Q2
U 1 1 602036C8
P 5400 1150
F 0 "Q2" V 5649 1150 50  0000 C CNN
F 1 "IRF740" V 5740 1150 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 5650 1075 50  0001 L CIN
F 3 "http://www.vishay.com/docs/91054/91054.pdf" H 5400 1150 50  0001 L CNN
	1    5400 1150
	0    1    1    0   
$EndComp
Text GLabel 5100 900  0    50   Input ~ 0
PWR_SW
Wire Notes Line
	6000 550  6000 1700
Wire Notes Line
	4700 550  4700 1700
Wire Notes Line
	1900 2650 3350 2650
Wire Notes Line
	3350 1750 3350 2650
Wire Notes Line
	1900 1750 1900 2650
Wire Notes Line
	4900 2650 6000 2650
Wire Notes Line
	6000 1750 6000 2650
Wire Notes Line
	4900 1750 4900 2650
Wire Notes Line
	7500 550  7500 2000
Wire Notes Line
	9550 550  9550 2000
$Comp
L Device:LED_Small D3
U 1 1 600F3CD8
P 7750 2450
F 0 "D3" H 7750 2243 50  0000 C CNN
F 1 "LED_PWR" H 7750 2334 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" V 7750 2450 50  0001 C CNN
F 3 "~" V 7750 2450 50  0001 C CNN
	1    7750 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 600F6267
P 7750 2650
F 0 "D4" H 7750 2900 50  0000 C CNN
F 1 "LED_STAT" H 7850 2800 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" V 7750 2650 50  0001 C CNN
F 3 "~" V 7750 2650 50  0001 C CNN
	1    7750 2650
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW3
U 1 1 600FECBE
P 7300 2450
F 0 "SW3" H 7300 2685 50  0000 C CNN
F 1 "SW_LED_PWR" H 7300 2594 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7300 2450 50  0001 C CNN
F 3 "~" H 7300 2450 50  0001 C CNN
	1    7300 2450
	1    0    0    -1  
$EndComp
Text GLabel 6950 2400 1    50   Input ~ 0
3.3V
Wire Wire Line
	6950 2400 6950 2450
Wire Wire Line
	6950 2450 7100 2450
Wire Wire Line
	7500 2450 7650 2450
Text GLabel 7050 2650 0    50   Input ~ 0
SW_LED_STAT
Wire Wire Line
	7850 2450 7900 2450
$Comp
L Device:R_Small R11
U 1 1 6011337F
P 8000 2450
F 0 "R11" V 8200 2500 50  0000 C CNN
F 1 "1k" V 8100 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8000 2450 50  0001 C CNN
F 3 "~" H 8000 2450 50  0001 C CNN
	1    8000 2450
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R12
U 1 1 60126A87
P 8000 2650
F 0 "R12" V 7800 2650 50  0000 C CNN
F 1 "1k" V 7900 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8000 2650 50  0001 C CNN
F 3 "~" H 8000 2650 50  0001 C CNN
	1    8000 2650
	0    1    -1   0   
$EndComp
Wire Wire Line
	7900 2650 7850 2650
$Comp
L power:GND #PWR05
U 1 1 6012AFD9
P 8150 2650
F 0 "#PWR05" H 8150 2400 50  0001 C CNN
F 1 "GND" H 8155 2477 50  0000 C CNN
F 2 "" H 8150 2650 50  0001 C CNN
F 3 "" H 8150 2650 50  0001 C CNN
	1    8150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2450 8150 2450
Wire Wire Line
	8150 2450 8150 2650
Wire Wire Line
	8100 2650 8150 2650
Text Notes 6850 2150 0    50   ~ 0
LEDs*
Connection ~ 8150 2650
Wire Notes Line
	8250 2050 8250 2950
Wire Notes Line
	6400 2950 6400 2050
Text GLabel 2400 7100 2    50   Input ~ 0
SW_LED_STAT
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J6
U 1 1 6015ECDB
P 10200 2600
F 0 "J6" H 10250 2917 50  0000 C CNN
F 1 "periph_conn_1" H 10250 2826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10200 2600 50  0001 C CNN
F 3 "~" H 10200 2600 50  0001 C CNN
	1    10200 2600
	1    0    0    -1  
$EndComp
Text GLabel 10000 2500 0    50   Input ~ 0
3.3V
$Comp
L power:GND #PWR04
U 1 1 60160C91
P 9550 2650
F 0 "#PWR04" H 9550 2400 50  0001 C CNN
F 1 "GND" H 9555 2477 50  0000 C CNN
F 2 "" H 9550 2650 50  0001 C CNN
F 3 "" H 9550 2650 50  0001 C CNN
	1    9550 2650
	1    0    0    -1  
$EndComp
Text GLabel 10500 2700 2    50   Input ~ 0
I2C_SCL
Text GLabel 10500 2600 2    50   Input ~ 0
I2C_SDA
Text GLabel 10500 2500 2    50   Input ~ 0
I2C_SMBALERT
Text GLabel 10000 2700 0    50   Input ~ 0
3.3V_SW
Wire Wire Line
	9550 2600 10000 2600
Wire Wire Line
	9550 2650 9550 2600
Text Notes 9500 2250 0    50   ~ 0
Peripheral\nConnectors*
Wire Notes Line
	9450 2050 11150 2050
Wire Notes Line
	11150 3000 9450 3000
NoConn ~ 7750 5300
NoConn ~ 7750 5400
NoConn ~ 4800 5300
NoConn ~ 4800 5400
NoConn ~ 4800 5600
NoConn ~ 4800 5700
NoConn ~ 4800 6400
NoConn ~ 4800 6600
NoConn ~ 4800 6700
NoConn ~ 4800 6800
NoConn ~ 4800 6900
NoConn ~ 2400 6800
NoConn ~ 2400 6900
NoConn ~ 2400 7000
NoConn ~ 2400 5600
NoConn ~ 2400 4700
NoConn ~ 2400 4800
NoConn ~ 2400 4900
NoConn ~ 3600 4700
NoConn ~ 1200 4700
Text GLabel 10650 900  2    50   Input ~ 0
VBUS
Wire Wire Line
	2100 850  2100 950 
Wire Wire Line
	2100 950  2300 950 
Connection ~ 2100 950 
Wire Wire Line
	2100 950  2100 1200
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6025A4AC
P 2300 950
F 0 "#FLG0101" H 2300 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 1123 50  0001 C CNN
F 2 "" H 2300 950 50  0001 C CNN
F 3 "~" H 2300 950 50  0001 C CNN
	1    2300 950 
	1    0    0    -1  
$EndComp
Connection ~ 2300 950 
Wire Wire Line
	1450 1100 1450 1300
Wire Wire Line
	850  1300 1450 1300
Connection ~ 1450 1300
Wire Wire Line
	1450 1300 1450 1350
Text GLabel 1050 3150 2    50   Input ~ 0
BAT-
Text GLabel 1050 2950 2    50   Input ~ 0
BAT+
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60268C64
P 1000 2950
F 0 "#FLG0102" H 1000 3025 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 3123 50  0001 C CNN
F 2 "" H 1000 2950 50  0001 C CNN
F 3 "~" H 1000 2950 50  0001 C CNN
	1    1000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1200 1050 1200
Wire Wire Line
	1000 2950 1050 2950
Connection ~ 1000 2950
Text Notes 600  2800 0    50   ~ 0
Battery Connector
Wire Notes Line
	550  2700 1350 2700
Wire Notes Line
	1350 2700 1350 3250
Wire Notes Line
	1350 3250 550  3250
Wire Notes Line
	550  3250 550  2700
Wire Wire Line
	4050 2100 4050 2150
Text GLabel 4050 2100 1    50   Input ~ 0
3.3V
Wire Wire Line
	3050 950  3100 950 
Wire Wire Line
	2300 950  2400 950 
Wire Wire Line
	2750 1250 2750 1300
Wire Wire Line
	2400 950  2400 1050
Connection ~ 2400 950 
Wire Wire Line
	2400 950  2450 950 
Wire Wire Line
	2400 1250 2400 1300
Wire Wire Line
	2400 1300 2750 1300
Connection ~ 2750 1300
Wire Wire Line
	2750 1300 2750 1350
Wire Wire Line
	2750 1300 3100 1300
Wire Wire Line
	3100 1300 3100 1250
Wire Wire Line
	3100 1050 3100 950 
Connection ~ 3100 950 
Wire Wire Line
	3100 950  3150 950 
Wire Wire Line
	3500 2450 3500 2400
$Comp
L power:GND #PWR01
U 1 1 60211667
P 5150 1400
F 0 "#PWR01" H 5150 1150 50  0001 C CNN
F 1 "GND" H 5155 1227 50  0000 C CNN
F 2 "" H 5150 1400 50  0001 C CNN
F 3 "" H 5150 1400 50  0001 C CNN
	1    5150 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1150 5150 1400
Wire Wire Line
	7800 1500 7800 1600
Wire Wire Line
	8950 1550 8900 1550
Wire Wire Line
	8900 1550 8900 1600
Wire Wire Line
	8900 1600 7800 1600
Connection ~ 7800 1600
Wire Wire Line
	7800 1600 7800 1650
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 602C7AE5
P 1000 3150
F 0 "#FLG0103" H 1000 3225 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 3323 50  0001 C CNN
F 2 "" H 1000 3150 50  0001 C CNN
F 3 "~" H 1000 3150 50  0001 C CNN
	1    1000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3150 1000 3150
Wire Wire Line
	1000 3150 1050 3150
Connection ~ 1000 3150
Wire Notes Line
	9450 2050 9450 3000
Wire Notes Line
	11150 3000 11150 2050
$Comp
L Switch:SW_SPST SW4
U 1 1 6024A7E5
P 7300 2650
F 0 "SW4" H 7350 2450 50  0000 C CNN
F 1 "SW_LED_STAT" H 7200 2550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7300 2650 50  0001 C CNN
F 3 "~" H 7300 2650 50  0001 C CNN
	1    7300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2650 7650 2650
Wire Wire Line
	7100 2650 7050 2650
Text GLabel 2400 5200 2    50   Input ~ 0
SPI_SCK
Text GLabel 2400 5100 2    50   Input ~ 0
SPI_MISO
Text GLabel 2400 5000 2    50   Input ~ 0
SPI_MOSI
Text GLabel 10150 1000 0    50   Input ~ 0
SPI_SCK
Text GLabel 10150 900  0    50   Input ~ 0
SPI_MISO
Text GLabel 10650 1000 2    50   Input ~ 0
SPI_MOSI
Wire Notes Line
	6400 2050 8250 2050
Wire Notes Line
	6400 2950 8250 2950
Text GLabel 10100 1600 2    50   Input ~ 0
NRST_MAIN_MCU
Text GLabel 10100 1400 2    50   Input ~ 0
NRST_RADIO_MCU
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 6032DFC0
P 9800 1500
F 0 "J3" H 9800 1800 50  0000 C CNN
F 1 "SW_ISP_MCU" H 9750 1700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9800 1500 50  0001 C CNN
F 3 "~" H 9800 1500 50  0001 C CNN
	1    9800 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 1400 10100 1400
Wire Wire Line
	10000 1600 10100 1600
Wire Wire Line
	10000 1500 10050 1500
Wire Wire Line
	10050 1500 10050 1100
Wire Wire Line
	10050 1100 10150 1100
Text GLabel 4100 3350 2    50   Input ~ 0
NRST_RADIO_MCU
Text GLabel 4100 2400 2    50   Input ~ 0
NRST_MAIN_MCU
$Comp
L Device:R_Small R13
U 1 1 60342BB0
P 4050 3200
F 0 "R13" H 4100 3250 50  0000 L CNN
F 1 "10k" H 4100 3150 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4050 3200 50  0001 C CNN
F 3 "~" H 4050 3200 50  0001 C CNN
	1    4050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3300 4050 3350
Wire Wire Line
	4050 3350 4100 3350
$Comp
L Switch:SW_SPST SW5
U 1 1 60343167
P 3750 3350
F 0 "SW5" H 3750 3585 50  0000 C CNN
F 1 "SW_RADIO_RST" H 3750 3494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3750 3350 50  0001 C CNN
F 3 "~" H 3750 3350 50  0001 C CNN
	1    3750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3350 4050 3350
Connection ~ 4050 3350
$Comp
L power:GND #PWR07
U 1 1 60343173
P 3500 3400
F 0 "#PWR07" H 3500 3150 50  0001 C CNN
F 1 "GND" H 3600 3300 50  0000 C CNN
F 2 "" H 3500 3400 50  0001 C CNN
F 3 "" H 3500 3400 50  0001 C CNN
	1    3500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3350 3500 3350
Text Notes 3450 2800 0    50   ~ 0
Radio Reset button
Wire Notes Line
	3400 2700 3400 3600
Wire Notes Line
	4850 2700 4850 3600
Wire Wire Line
	4050 3050 4050 3100
Text GLabel 4050 3050 1    50   Input ~ 0
3.3V
Wire Wire Line
	3500 3400 3500 3350
Wire Notes Line
	3400 2700 4850 2700
Wire Notes Line
	3400 3600 4850 3600
Wire Notes Line
	3400 1750 4850 1750
Wire Notes Line
	3400 2650 4850 2650
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 603EC8E3
P 700 3100
F 0 "J7" H 700 3200 50  0000 C CNN
F 1 "BATT" H 700 2900 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 700 3100 50  0001 C CNN
F 3 "~" H 700 3100 50  0001 C CNN
	1    700  3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	950  2950 1000 2950
Wire Wire Line
	900  3000 950  3000
Wire Wire Line
	950  3000 950  2950
Wire Wire Line
	900  3100 950  3100
Wire Wire Line
	950  3100 950  3150
Text GLabel 4800 6500 2    50   Input ~ 0
RADIO_TX
Text GLabel 5350 3100 2    50   Input ~ 0
RADIO_TX
Text GLabel 5350 2900 2    50   Input ~ 0
MAIN_TX
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 604FE046
P 5150 3000
F 0 "J9" H 5150 3300 50  0000 C CNN
F 1 "MCU_TX" H 5100 3200 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5150 3000 50  0001 C CNN
F 3 "~" H 5150 3000 50  0001 C CNN
	1    5150 3000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 604FF2AC
P 5850 3050
F 0 "#PWR0102" H 5850 2800 50  0001 C CNN
F 1 "GND" H 5700 2950 50  0000 C CNN
F 2 "" H 5850 3050 50  0001 C CNN
F 3 "" H 5850 3050 50  0001 C CNN
	1    5850 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 3000 5850 3050
Wire Wire Line
	5350 3000 5850 3000
Text Notes 4950 2800 0    50   ~ 0
MCU UART TX
Wire Notes Line
	4900 2700 6100 2700
Wire Notes Line
	6100 2700 6100 3350
Wire Notes Line
	6100 3350 4900 3350
Wire Notes Line
	4900 3350 4900 2700
$EndSCHEMATC
