EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 5 6
Title "ESP32 Sensor Module"
Date "2020-11-23"
Rev "v0.0.1"
Comp "Created by Choong Jin Ng | jin3838@gmail.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Component Identifier: BAT"
$EndDescr
$Comp
L 1546931-2:1546931-2 H_BAT_1
U 1 1 5FBD174D
P 4150 4100
F 0 "H_BAT_1" V 3997 4330 50  0000 L CNN
F 1 "1546931-2" V 4088 4330 50  0000 L CNN
F 2 "footprints:1546931-2" H 4150 4100 50  0001 L BNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1-1773458-1_EURO_STYLE_QRG&DocType=DS&DocLang=English" H 4150 4100 50  0001 L BNN
F 4 "1546931-2" H 4150 4100 50  0001 C CNN "Part Name"
F 5 "TE Connectivity AMP Connectors" H 4150 4100 50  0001 C CNN "Manufacturer"
F 6 "Digikey Canada" H 4150 4100 50  0001 C CNN "Vendor"
F 7 "" H 4150 4100 50  0001 C CNN "digikeypn"
F 8 "A97965-ND" H 4150 4100 50  0001 C CNN "Vendor Part Name"
	1    4150 4100
	0    1    1    0   
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5FBD255D
P 4050 3450
F 0 "#PWR?" H 4050 3300 50  0001 C CNN
F 1 "+BATT" H 4065 3623 50  0000 C CNN
F 2 "" H 4050 3450 50  0001 C CNN
F 3 "" H 4050 3450 50  0001 C CNN
	1    4050 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FBD2FE6
P 4350 3450
F 0 "#PWR?" H 4350 3200 50  0001 C CNN
F 1 "GND" H 4355 3277 50  0000 C CNN
F 2 "" H 4350 3450 50  0001 C CNN
F 3 "" H 4350 3450 50  0001 C CNN
	1    4350 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 3700 4050 3700
Wire Wire Line
	4050 3700 4050 3450
Wire Wire Line
	4250 3700 4350 3700
Wire Wire Line
	4350 3700 4350 3450
$EndSCHEMATC
