EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 6
Title "ESP32 Sensor Module | ESP32 Chip"
Date "2020-11-23"
Rev "v0.0.1"
Comp "Created by Choong Jin Ng | jin3838@gmail.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Component Identifier: ESP"
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32D U_ESP_1
U 1 1 5FB67AD8
P 5100 3600
F 0 "U_ESP_1" H 4300 4350 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 4150 4250 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 5100 2100 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 4800 3650 50  0001 C CNN
F 4 "USB4110-GF-A" H 5100 3600 50  0001 C CNN "Part Name"
F 5 "DigiKey Canada" H 5100 3600 50  0001 C CNN "Vendor"
F 6 "Espressif Systems" H 5100 3600 50  0001 C CNN "Manufacturer"
F 7 "1965-ESP32-WROOM-32D(4MB)CT-ND" H 5100 3600 50  0001 C CNN "Vendor Part Name"
	1    5100 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FB6BDC8
P 4600 1550
F 0 "#PWR?" H 4600 1400 50  0001 C CNN
F 1 "+3.3V" H 4615 1723 50  0000 C CNN
F 2 "" H 4600 1550 50  0001 C CNN
F 3 "" H 4600 1550 50  0001 C CNN
	1    4600 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP CP_ESP_1
U 1 1 5FB6D16F
P 5450 1800
F 0 "CP_ESP_1" V 5705 1800 50  0000 C CNN
F 1 "100uF" V 5614 1800 50  0000 C CNN
F 2 "footprints:UCB0J101MCL1GS" H 5488 1650 50  0001 C CNN
F 3 "https://www.nichicon.co.jp/english/products/pdfs/e-ucb.pdf" H 5450 1800 50  0001 C CNN
F 4 "DigiKey Canada" H 5450 1800 50  0001 C CNN "Vendor"
F 5 "Nichicon" H 5450 1800 50  0001 C CNN "Manufacturer"
F 6 "UCB0J101MCL1GS" H 5450 1800 50  0001 C CNN "Part Name"
F 7 "493-9357-1-ND" H 5450 1800 50  0001 C CNN "Vendor Part Name"
	1    5450 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB6F7CF
P 5950 2050
F 0 "#PWR?" H 5950 1800 50  0001 C CNN
F 1 "GND" H 5955 1877 50  0000 C CNN
F 2 "" H 5950 2050 50  0001 C CNN
F 3 "" H 5950 2050 50  0001 C CNN
	1    5950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1800 5950 1800
$Comp
L power:GND #PWR?
U 1 1 5FB70296
P 5700 5200
F 0 "#PWR?" H 5700 4950 50  0001 C CNN
F 1 "GND" H 5705 5027 50  0000 C CNN
F 2 "" H 5700 5200 50  0001 C CNN
F 3 "" H 5700 5200 50  0001 C CNN
	1    5700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2200 5100 1800
Wire Wire Line
	5100 1800 5300 1800
$Comp
L CANtech:4157 J_ESP_2
U 1 1 5FBB9F84
P 7750 6100
F 0 "J_ESP_2" V 8163 5554 50  0000 C CNN
F 1 "4157" V 8254 5554 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 7750 6100 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Adafruit%20PDFs/4157_Web.pdf" H 7750 6100 50  0001 C CNN
F 4 "DigiKey Canada" H 7750 6100 50  0001 C CNN "Vendor"
F 5 "Adafruit Industries LLC" H 7750 6100 50  0001 C CNN "Manufacturer"
F 6 "" H 7750 6100 50  0001 C CNN "digikeypn"
F 7 "" H 7750 6100 50  0001 C CNN "Vendor Part Number"
F 8 "4157" H 7750 6100 50  0001 C CNN "Part Name"
F 9 "1528-2929-ND" H 7750 6100 50  0001 C CNN "Vendor Part Name"
	1    7750 6100
	0    1    1    0   
$EndComp
Text HLabel 9050 3200 2    50   Output ~ 0
IMU_SCL
Text HLabel 9050 3000 2    50   BiDi ~ 0
IMU_SDA
Text HLabel 9050 3400 2    50   Output ~ 0
IMU_SDO_SAO
Text HLabel 9000 4300 2    50   Input ~ 0
IMU_INT1
Text HLabel 9000 4200 2    50   Input ~ 0
IMU_INT2
$Comp
L Device:R_Small R_ESP_2
U 1 1 5FC15A8C
P 900 1800
F 0 "R_ESP_2" H 959 1846 50  0000 L CNN
F 1 "10k" H 959 1755 50  0000 L CNN
F 2 "footprints:RESC1608X55N" H 900 1800 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RT_1-to-0.01_RoHS_L_12.pdf" H 900 1800 50  0001 C CNN
F 4 "Yageo" H 900 1800 50  0001 C CNN "Manufacturer"
F 5 "RT0603FRE0710KL" H 900 1800 50  0001 C CNN "Part Name"
F 6 "DigiKey Canada" H 900 1800 50  0001 C CNN "Vendor"
F 7 "YAG2321CT-ND" H 900 1800 50  0001 C CNN "Vendor Part Name"
	1    900  1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R_ESP_1
U 1 1 5FC16B69
P 900 3050
F 0 "R_ESP_1" H 959 3096 50  0000 L CNN
F 1 "500" H 959 3005 50  0000 L CNN
F 2 "footprints:RESC1508X55N" H 900 3050 50  0001 C CNN
F 3 "https://www.vishay.com/docs/28916/mcxhp.pdf" H 900 3050 50  0001 C CNN
F 4 "DigiKey Canada" H 900 3050 50  0001 C CNN "Vendor"
F 5 "Vishay" H 900 3050 50  0001 C CNN "Manufacturer"
F 6 "MCT0603PD4990DP500" H 900 3050 50  0001 C CNN "Part Name"
F 7 "749-1523-1-ND" H 900 3050 50  0001 C CNN "Vendor Part Name"
	1    900  3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FC17725
P 900 1500
F 0 "#PWR?" H 900 1350 50  0001 C CNN
F 1 "+3.3V" H 915 1673 50  0000 C CNN
F 2 "" H 900 1500 50  0001 C CNN
F 3 "" H 900 1500 50  0001 C CNN
	1    900  1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FC1B90D
P 10050 1950
F 0 "#PWR?" H 10050 1800 50  0001 C CNN
F 1 "+3.3V" H 10065 2123 50  0000 C CNN
F 2 "" H 10050 1950 50  0001 C CNN
F 3 "" H 10050 1950 50  0001 C CNN
	1    10050 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R_ESP_4
U 1 1 5FC1CA19
P 10050 2150
F 0 "R_ESP_4" H 9991 2104 50  0000 R CNN
F 1 "10k" H 9991 2195 50  0000 R CNN
F 2 "footprints:RESC1608X55N" H 10050 2150 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RT_1-to-0.01_RoHS_L_12.pdf" H 10050 2150 50  0001 C CNN
F 4 "Yageo" H 10050 2150 50  0001 C CNN "Manufacturer"
F 5 "RT0603FRE0710KL" H 10050 2150 50  0001 C CNN "Part Name"
F 6 "DigiKey Canada" H 10050 2150 50  0001 C CNN "Vendor"
F 7 "YAG2321CT-ND" H 10050 2150 50  0001 C CNN "Vendor Part Name"
	1    10050 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R_ESP_5
U 1 1 5FC1D091
P 10050 2750
F 0 "R_ESP_5" H 10109 2796 50  0000 L CNN
F 1 "500" H 10109 2705 50  0000 L CNN
F 2 "footprints:RESC1508X55N" H 10050 2750 50  0001 C CNN
F 3 "https://www.vishay.com/docs/28916/mcxhp.pdf" H 10050 2750 50  0001 C CNN
F 4 "DigiKey Canada" H 10050 2750 50  0001 C CNN "Vendor"
F 5 "Vishay" H 10050 2750 50  0001 C CNN "Manufacturer"
F 6 "MCT0603PD4990DP500" H 10050 2750 50  0001 C CNN "Part Name"
F 7 "749-1523-1-ND" H 10050 2750 50  0001 C CNN "Vendor Part Name"
	1    10050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2400 8150 5950
$Comp
L 1546931-2:1546931-2 H_ESP_3
U 1 1 5FC1F433
P 7400 1400
F 0 "H_ESP_3" V 7339 1270 50  0000 R CNN
F 1 "1546931-2" V 7248 1270 50  0000 R CNN
F 2 "footprints:1546931-2" H 7400 1400 50  0001 L BNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1-1773458-1_EURO_STYLE_QRG&DocType=DS&DocLang=English" H 7400 1400 50  0001 L BNN
F 4 "1546931-2" H 7400 1400 50  0001 C CNN "Part Name"
F 5 "TE Connectivity AMP Connectors" H 7400 1400 50  0001 C CNN "Manufacturer"
F 6 "Digikey Canada" H 7400 1400 50  0001 C CNN "Vendor"
F 7 "" H 7400 1400 50  0001 C CNN "digikeypn"
F 8 "A97965-ND" H 7400 1400 50  0001 C CNN "Vendor Part Name"
	1    7400 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 2500 7300 2500
Wire Wire Line
	7300 2500 7300 1800
Wire Wire Line
	7300 2500 8050 2500
Wire Wire Line
	8050 2500 8050 5950
Connection ~ 7300 2500
Wire Wire Line
	5700 2600 6400 2600
Wire Wire Line
	7950 2600 7950 5950
Wire Wire Line
	7400 2700 7400 1800
Wire Wire Line
	5700 2700 7400 2700
Wire Wire Line
	7400 2700 7850 2700
Wire Wire Line
	7850 2700 7850 5950
Connection ~ 7400 2700
$Comp
L Device:LED LED_ESP_1
U 1 1 5FC240FF
P 8400 1750
F 0 "LED_ESP_1" V 8347 1830 50  0000 L CNN
F 1 "LED" V 8438 1830 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8400 1750 50  0001 C CNN
F 3 "https://katalog.we-online.de/led/datasheet/150060YS75000.pdf" H 8400 1750 50  0001 C CNN
F 4 "Würth Elektronik" H 8400 1750 50  0001 C CNN "Manufacturer"
F 5 "150060YS75000" H 8400 1750 50  0001 C CNN "Part Name"
F 6 "DigiKey Canada" H 8400 1750 50  0001 C CNN "Vendor"
F 7 "732-4981-1-ND" H 8400 1750 50  0001 C CNN "Vendor Part Name"
	1    8400 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R_ESP_3
U 1 1 5FC24DF2
P 8400 2150
F 0 "R_ESP_3" H 8341 2104 50  0000 R CNN
F 1 "500" H 8341 2195 50  0000 R CNN
F 2 "footprints:RESC1508X55N" H 8400 2150 50  0001 C CNN
F 3 "https://www.vishay.com/docs/28916/mcxhp.pdf" H 8400 2150 50  0001 C CNN
F 4 "DigiKey Canada" H 8400 2150 50  0001 C CNN "Vendor"
F 5 "Vishay" H 8400 2150 50  0001 C CNN "Manufacturer"
F 6 "MCT0603PD4990DP500" H 8400 2150 50  0001 C CNN "Part Name"
F 7 "749-1523-1-ND" H 8400 2150 50  0001 C CNN "Vendor Part Name"
	1    8400 2150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FC2648F
P 8400 1400
F 0 "#PWR?" H 8400 1150 50  0001 C CNN
F 1 "GND" H 8405 1227 50  0000 C CNN
F 2 "" H 8400 1400 50  0001 C CNN
F 3 "" H 8400 1400 50  0001 C CNN
	1    8400 1400
	-1   0    0    1   
$EndComp
$Comp
L PTS647SK38SMTR2LFS:PTS647SK38SMTR2LFS SW_ESP_2
U 1 1 5FC31D43
P 10150 2500
F 0 "SW_ESP_2" H 10950 2013 60  0000 C CNN
F 1 "PTS647SK38SMTR2LFS" H 10950 2119 60  0000 C CNN
F 2 "footprints:PTS647SK38SMTR2LFS" H 10950 2740 60  0001 C CNN
F 3 "https://www.ckswitches.com/media/2567/pts647.pdf" H 10150 2500 60  0001 C CNN
F 4 "DigiKey Canada" H 10150 2500 50  0001 C CNN "Vendor"
F 5 "C&K" H 10150 2500 50  0001 C CNN "Manufacturer"
F 6 "PTS 647 SK38 SMTR2 LFS" H 10150 2500 50  0001 C CNN "Part Name"
F 7 "PTS647SK38SMTR2LFSCT-ND" H 10150 2500 50  0001 C CNN "Vendor Part Name"
	1    10150 2500
	-1   0    0    1   
$EndComp
$Comp
L 1546931-2:1546931-2 H_ESP_1
U 1 1 5FC3624B
P 3850 1400
F 0 "H_ESP_1" V 3789 1270 50  0000 R CNN
F 1 "1546931-2" V 3698 1270 50  0000 R CNN
F 2 "footprints:1546931-2" H 3850 1400 50  0001 L BNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1-1773458-1_EURO_STYLE_QRG&DocType=DS&DocLang=English" H 3850 1400 50  0001 L BNN
F 4 "1546931-2" H 3850 1400 50  0001 C CNN "Part Name"
F 5 "TE Connectivity AMP Connectors" H 3850 1400 50  0001 C CNN "Manufacturer"
F 6 "Digikey Canada" H 3850 1400 50  0001 C CNN "Vendor"
F 7 "" H 3850 1400 50  0001 C CNN "digikeypn"
F 8 "A97965-ND" H 3850 1400 50  0001 C CNN "Vendor Part Name"
	1    3850 1400
	0    -1   -1   0   
$EndComp
$Comp
L PTS647SK38SMTR2LFS:PTS647SK38SMTR2LFS SW_ESP_1
U 1 1 5FC3FB15
P 2400 2500
F 0 "SW_ESP_1" H 3200 2013 60  0000 C CNN
F 1 "PTS647SK38SMTR2LFS" H 3200 2119 60  0000 C CNN
F 2 "footprints:PTS647SK38SMTR2LFS" H 3200 2740 60  0001 C CNN
F 3 "https://www.ckswitches.com/media/2567/pts647.pdf" H 2400 2500 60  0001 C CNN
F 4 "DigiKey Canada" H 2400 2500 50  0001 C CNN "Vendor"
F 5 "C&K" H 2400 2500 50  0001 C CNN "Manufacturer"
F 6 "PTS 647 SK38 SMTR2 LFS" H 2400 2500 50  0001 C CNN "Part Name"
F 7 "PTS647SK38SMTR2LFSCT-ND" H 2400 2500 50  0001 C CNN "Vendor Part Name"
	1    2400 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 2400 900  2400
Wire Wire Line
	1200 2500 900  2500
Wire Wire Line
	900  2500 900  2950
$Comp
L power:GND #PWR?
U 1 1 5FC46594
P 900 3250
F 0 "#PWR?" H 900 3000 50  0001 C CNN
F 1 "GND" H 905 3077 50  0000 C CNN
F 2 "" H 900 3250 50  0001 C CNN
F 3 "" H 900 3250 50  0001 C CNN
	1    900  3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3250 900  3150
Wire Wire Line
	5700 2800 7750 2800
Wire Wire Line
	7750 2800 7750 5950
Wire Wire Line
	5700 2900 7650 2900
Wire Wire Line
	7650 2900 7650 5950
Wire Wire Line
	5700 3000 7550 3000
Wire Wire Line
	7550 3000 7550 5950
Wire Wire Line
	5700 3100 7450 3100
Wire Wire Line
	7450 3100 7450 5950
Wire Wire Line
	5700 3200 7350 3200
Wire Wire Line
	7350 3200 7350 5950
Wire Wire Line
	5700 3300 7250 3300
Wire Wire Line
	7250 3300 7250 5950
Wire Wire Line
	5700 3400 7150 3400
Wire Wire Line
	5700 3500 7050 3500
Wire Wire Line
	7050 3500 7050 5950
Wire Wire Line
	5700 3600 6950 3600
Wire Wire Line
	6950 3600 6950 5950
Wire Wire Line
	5700 3700 6850 3700
Wire Wire Line
	6850 3700 6850 5950
Wire Wire Line
	5700 3800 6750 3800
Wire Wire Line
	6750 3800 6750 5950
Wire Wire Line
	5700 3900 6650 3900
Wire Wire Line
	6650 3900 6650 5950
Wire Wire Line
	6550 4000 6550 5950
Wire Wire Line
	5700 4000 6550 4000
Wire Wire Line
	5700 4100 6450 4100
Wire Wire Line
	6450 4100 6450 5950
Wire Wire Line
	5700 4200 6350 4200
Wire Wire Line
	6350 4200 6350 5950
Wire Wire Line
	5700 4300 6250 4300
Wire Wire Line
	6250 4300 6250 5950
$Comp
L CANtech:4157 J_ESP_1
U 1 1 5FBBFD6B
P 3600 6100
F 0 "J_ESP_1" V 4013 5554 50  0000 C CNN
F 1 "4157" V 4104 5554 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 3600 6100 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Adafruit%20PDFs/4157_Web.pdf" H 3600 6100 50  0001 C CNN
F 4 "DigiKey Canada" H 3600 6100 50  0001 C CNN "Vendor"
F 5 "Adafruit Industries LLC" H 3600 6100 50  0001 C CNN "Manufacturer"
F 6 "" H 3600 6100 50  0001 C CNN "digikeypn"
F 7 "" H 3600 6100 50  0001 C CNN "Vendor Part Number"
F 8 "4157" H 3600 6100 50  0001 C CNN "Part Name"
F 9 "1528-2929-ND" H 3600 6100 50  0001 C CNN "Vendor Part Name"
	1    3600 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 2600 2200 2600
Wire Wire Line
	2200 2600 2200 5950
Wire Wire Line
	4500 2700 2300 2700
Wire Wire Line
	2300 2700 2300 5950
Wire Wire Line
	2100 2400 2100 5950
Wire Wire Line
	900  2400 900  1900
Wire Wire Line
	900  1700 900  1500
Wire Wire Line
	2000 2400 2100 2400
Connection ~ 2100 2400
NoConn ~ 2000 2500
Wire Wire Line
	4000 5950 4000 5800
Wire Wire Line
	4000 5800 6150 5800
Wire Wire Line
	6150 5800 6150 4400
Wire Wire Line
	6150 4400 5700 4400
Wire Wire Line
	5700 4500 6050 4500
Wire Wire Line
	6050 4500 6050 5700
Wire Wire Line
	6050 5700 3900 5700
Wire Wire Line
	3900 5700 3900 5950
Wire Wire Line
	5700 4600 5950 4600
Wire Wire Line
	5950 4600 5950 5550
Wire Wire Line
	5950 5550 3800 5550
Wire Wire Line
	3800 5550 3800 5950
Wire Wire Line
	5700 4700 5850 4700
Wire Wire Line
	5850 4700 5850 5450
Wire Wire Line
	5850 5450 3700 5450
Wire Wire Line
	3700 5450 3700 5950
Wire Wire Line
	5100 5050 3600 5050
Wire Wire Line
	3600 5050 3600 5950
Connection ~ 5100 5050
Wire Wire Line
	5100 5050 5100 5000
Wire Wire Line
	4500 4100 3500 4100
Wire Wire Line
	3500 4100 3500 5950
Wire Wire Line
	4500 4000 3400 4000
Wire Wire Line
	3400 4000 3400 5950
Wire Wire Line
	4500 3900 3300 3900
Wire Wire Line
	3300 3900 3300 5950
Wire Wire Line
	4500 3800 3200 3800
Wire Wire Line
	3200 3800 3200 5950
Wire Wire Line
	4500 3700 3100 3700
Wire Wire Line
	3100 3700 3100 5950
Wire Wire Line
	4500 3600 3000 3600
Wire Wire Line
	3000 3600 3000 5950
Wire Wire Line
	2100 2400 3400 2400
Wire Wire Line
	5700 2400 6300 2400
Wire Wire Line
	3400 2400 3400 1800
Connection ~ 3400 2400
Wire Wire Line
	3400 2400 4500 2400
$Comp
L 1546931-2:1546931-2 H_ESP_2
U 1 1 5FCBDB3B
P 6400 1400
F 0 "H_ESP_2" V 6339 1270 50  0000 R CNN
F 1 "1546931-2" V 6248 1270 50  0000 R CNN
F 2 "footprints:1546931-2" H 6400 1400 50  0001 L BNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1-1773458-1_EURO_STYLE_QRG&DocType=DS&DocLang=English" H 6400 1400 50  0001 L BNN
F 4 "1546931-2" H 6400 1400 50  0001 C CNN "Part Name"
F 5 "TE Connectivity AMP Connectors" H 6400 1400 50  0001 C CNN "Manufacturer"
F 6 "Digikey Canada" H 6400 1400 50  0001 C CNN "Vendor"
F 7 "" H 6400 1400 50  0001 C CNN "digikeypn"
F 8 "A97965-ND" H 6400 1400 50  0001 C CNN "Vendor Part Name"
	1    6400 1400
	0    -1   -1   0   
$EndComp
Connection ~ 5100 1800
Wire Wire Line
	3750 1800 3400 1800
Wire Wire Line
	5950 2050 5950 1800
Wire Wire Line
	6400 1800 6400 2600
Connection ~ 6400 2600
Wire Wire Line
	6400 2600 7950 2600
Wire Wire Line
	6300 1800 6300 2400
Connection ~ 6300 2400
Wire Wire Line
	6300 2400 8150 2400
Wire Wire Line
	10050 2400 10050 2250
Wire Wire Line
	10050 2050 10050 1950
Wire Wire Line
	7950 2600 8400 2600
Connection ~ 7950 2600
Wire Wire Line
	8150 2400 8950 2400
Connection ~ 8150 2400
Wire Wire Line
	9750 2400 10050 2400
$Comp
L power:GND #PWR?
U 1 1 5FD22AC1
P 10050 3600
F 0 "#PWR?" H 10050 3350 50  0001 C CNN
F 1 "GND" H 10055 3427 50  0000 C CNN
F 2 "" H 10050 3600 50  0001 C CNN
F 3 "" H 10050 3600 50  0001 C CNN
	1    10050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2850 10050 3600
Wire Wire Line
	10050 2500 10050 2650
Wire Wire Line
	9750 2500 10050 2500
NoConn ~ 8950 2500
Wire Wire Line
	8400 2600 8400 2250
Wire Wire Line
	8400 2050 8400 1900
Wire Wire Line
	8400 1600 8400 1400
Wire Wire Line
	9050 3200 7350 3200
Connection ~ 7350 3200
Wire Wire Line
	9050 3000 7550 3000
Connection ~ 7550 3000
Wire Wire Line
	6350 4200 9000 4200
Connection ~ 6350 4200
Wire Wire Line
	6250 4300 9000 4300
Connection ~ 6250 4300
Wire Wire Line
	9050 3400 7150 3400
Connection ~ 7150 3400
Wire Wire Line
	7150 3400 7150 5950
Wire Wire Line
	3850 1800 4600 1800
Wire Wire Line
	4600 1800 4600 1550
Connection ~ 4600 1800
Wire Wire Line
	4600 1800 5100 1800
$Comp
L power:+3.3V #PWR?
U 1 1 5FDA2BCD
P 2500 5350
F 0 "#PWR?" H 2500 5200 50  0001 C CNN
F 1 "+3.3V" H 2515 5523 50  0000 C CNN
F 2 "" H 2500 5350 50  0001 C CNN
F 3 "" H 2500 5350 50  0001 C CNN
	1    2500 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDF4623
P 2900 5300
F 0 "#PWR?" H 2900 5050 50  0001 C CNN
F 1 "GND" H 2905 5127 50  0000 C CNN
F 2 "" H 2900 5300 50  0001 C CNN
F 3 "" H 2900 5300 50  0001 C CNN
	1    2900 5300
	-1   0    0    1   
$EndComp
$Comp
L power:VS #PWR?
U 1 1 5FDF5FF7
P 2700 5550
F 0 "#PWR?" H 2500 5400 50  0001 C CNN
F 1 "VS" H 2715 5723 50  0000 C CNN
F 2 "" H 2700 5550 50  0001 C CNN
F 3 "" H 2700 5550 50  0001 C CNN
	1    2700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5350 2500 5950
Wire Wire Line
	2700 5550 2700 5950
Wire Wire Line
	2900 5950 2900 5300
NoConn ~ 2400 5950
NoConn ~ 2600 5950
NoConn ~ 2800 5950
$Comp
L Device:C_Small C_ESP_1
U 1 1 5FBE54E3
P 5400 5200
F 0 "C_ESP_1" V 5171 5200 50  0000 C CNN
F 1 "100nF" V 5262 5200 50  0000 C CNN
F 2 "footprints:CAPC1608X90N" H 5400 5200 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_midvoltage_en.pdf" H 5400 5200 50  0001 C CNN
F 4 "TDK Corporation" H 5400 5200 50  0001 C CNN "Manufacturer"
F 5 "C1608X7R2A103K080AA" H 5400 5200 50  0001 C CNN "Part Name"
F 6 "DigiKey Canada" H 5400 5200 50  0001 C CNN "Vendor"
F 7 "445-1304-1-ND" H 5400 5200 50  0001 C CNN "Vendor Part Name"
	1    5400 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 5200 5300 5200
Wire Wire Line
	5100 5050 5100 5200
Wire Wire Line
	5500 5200 5700 5200
$EndSCHEMATC
