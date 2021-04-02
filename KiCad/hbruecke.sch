EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "1200V Halfbridge"
Date "10.06.2020"
Rev "1"
Comp "Benjamin Vervoort"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3350 3200 0    50   Input ~ 0
uC_SD
Text GLabel 3350 3300 0    50   Input ~ 0
uC_Low
Text GLabel 3350 3100 0    50   Input ~ 0
uC_High
Wire Wire Line
	3350 3100 3450 3100
Wire Wire Line
	3450 3300 3350 3300
$Comp
L hbruecke-rescue:FAN73912MX-0_SamacSys_Parts IC1
U 1 1 5E820B56
P 4550 3500
F 0 "IC1" H 5100 2535 50  0000 C CNN
F 1 "FAN73912MX" H 5100 2626 50  0000 C CNN
F 2 "0_SamacSys_Parts:SOIC127P1032X265-16N" H 5500 3600 50  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/FAN73912-D.pdf" H 5500 3500 50  0001 L CNN
F 4 "ON Semiconductor FAN73912MX Dual Half Bridge MOSFET Power Driver, Dual, SOIC 16-Pin" H 5500 3400 50  0001 L CNN "Description"
F 5 "2.65" H 5500 3300 50  0001 L CNN "Height"
F 6 "512-FAN73912MX" H 5500 3200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=512-FAN73912MX" H 5500 3100 50  0001 L CNN "Mouser Price/Stock"
F 8 "ON Semiconductor" H 5500 3000 50  0001 L CNN "Manufacturer_Name"
F 9 "FAN73912MX" H 5500 2900 50  0001 L CNN "Manufacturer_Part_Number"
	1    4550 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 3200 3450 3200
Text GLabel 3350 3400 0    50   Input ~ 0
GND
$Comp
L Transistor_FET:BUZ11 Q1
U 1 1 5E827482
P 5750 2250
F 0 "Q1" H 5955 2296 50  0000 L CNN
F 1 "_" H 5955 2205 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-247-3_Vertical" H 6000 2175 50  0001 L CIN
F 3 "" H 5750 2250 50  0001 L CNN
	1    5750 2250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BUZ11 Q2
U 1 1 5E8296CE
P 5750 3500
F 0 "Q2" H 5955 3546 50  0000 L CNN
F 1 "_" H 5955 3455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-247-3_Vertical" H 6000 3425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BU/BUZ11.pdf" H 5750 3500 50  0001 L CNN
	1    5750 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E82A6D9
P 5250 3500
F 0 "R2" V 5043 3500 50  0000 C CNN
F 1 "47" V 5134 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P15.24mm_Horizontal" V 5180 3500 50  0001 C CNN
F 3 "~" H 5250 3500 50  0001 C CNN
	1    5250 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E82AA5B
P 5300 2250
F 0 "R1" V 5093 2250 50  0000 C CNN
F 1 "47" V 5184 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P15.24mm_Horizontal" V 5230 2250 50  0001 C CNN
F 3 "~" H 5300 2250 50  0001 C CNN
	1    5300 2250
	0    1    1    0   
$EndComp
Text GLabel 5850 1700 0    50   Input ~ 0
HV
Text GLabel 5850 3900 0    50   Input ~ 0
HV_GND
Wire Wire Line
	4550 3500 5100 3500
Wire Wire Line
	5400 3500 5550 3500
Wire Wire Line
	5450 2250 5550 2250
Wire Wire Line
	4550 2250 4550 2800
Wire Wire Line
	5850 3700 5850 3750
Wire Wire Line
	5850 1700 5850 2050
$Comp
L Device:D D1
U 1 1 5E830A1F
P 4550 3950
F 0 "D1" V 4504 4029 50  0000 L CNN
F 1 "1200V" V 4595 4029 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 4550 3950 50  0001 C CNN
F 3 "~" H 4550 3950 50  0001 C CNN
	1    4550 3950
	0    1    1    0   
$EndComp
$Comp
L Device:CP C2
U 1 1 5E83948D
P 4200 4700
F 0 "C2" H 4318 4746 50  0000 L CNN
F 1 "4u7" H 4318 4655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4238 4550 50  0001 C CNN
F 3 "~" H 4200 4700 50  0001 C CNN
	1    4200 4700
	1    0    0    -1  
$EndComp
Text GLabel 4550 4900 2    50   Input ~ 0
HV_GND
Wire Wire Line
	5850 2450 5850 3000
Connection ~ 5850 3000
Wire Wire Line
	5850 3000 5850 3300
Wire Wire Line
	4550 2250 5150 2250
Text GLabel 3350 3000 0    50   Input ~ 0
V_DD,logicsupply
Wire Wire Line
	3350 3000 3450 3000
Wire Wire Line
	3350 3400 3450 3400
Text GLabel 3900 3750 0    50   Input ~ 0
VB
Text GLabel 3900 4100 0    50   Input ~ 0
VS
Text GLabel 3900 4550 0    50   Input ~ 0
VCC
Wire Wire Line
	4550 3750 4550 3800
Wire Wire Line
	4550 3000 5850 3000
$Comp
L Device:R R4
U 1 1 5E83861E
P 4800 4300
F 0 "R4" H 4950 4400 50  0000 R CNN
F 1 "2.2" H 4950 4300 50  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 4730 4300 50  0001 C CNN
F 3 "~" H 4800 4300 50  0001 C CNN
	1    4800 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E838D4F
P 5050 4300
F 0 "R5" H 4980 4254 50  0000 R CNN
F 1 "2.2" H 4980 4345 50  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 4980 4300 50  0001 C CNN
F 3 "~" H 5050 4300 50  0001 C CNN
	1    5050 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5E82F066
P 4550 4300
F 0 "R3" H 4700 4250 50  0000 R CNN
F 1 "2.2" H 4480 4345 50  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 4480 4300 50  0001 C CNN
F 3 "~" H 4550 4300 50  0001 C CNN
	1    4550 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 4550 4200 4550
Wire Wire Line
	5050 4150 4800 4150
Wire Wire Line
	4800 4450 4550 4450
Wire Wire Line
	4550 4150 4550 4100
Text GLabel 3900 4900 0    50   Input ~ 0
COM
Wire Wire Line
	3900 4900 4200 4900
Wire Wire Line
	4200 4900 4200 4850
Wire Wire Line
	4200 4900 4550 4900
Connection ~ 4200 4900
Text GLabel 4650 2900 2    50   Input ~ 0
VB
Text GLabel 5050 3000 1    50   Input ~ 0
VS
Text GLabel 4650 3400 2    50   Input ~ 0
COM
Text GLabel 4650 3300 2    50   Input ~ 0
VCC
Wire Wire Line
	4550 3400 4650 3400
Wire Wire Line
	4550 3300 4650 3300
Wire Wire Line
	4550 2900 4650 2900
Wire Wire Line
	4100 3750 4550 3750
Wire Wire Line
	3900 3750 4100 3750
Connection ~ 4100 3750
$Comp
L Device:C C1
U 1 1 5E82D210
P 4100 3900
F 0 "C1" H 3985 3854 50  0000 R CNN
F 1 "0.47u" H 3985 3945 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P5.00mm" H 4138 3750 50  0001 C CNN
F 3 "~" H 4100 3900 50  0001 C CNN
	1    4100 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 4050 4100 4100
Wire Wire Line
	4100 4100 3900 4100
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5E848383
P 1600 3200
F 0 "J1" H 1708 3481 50  0000 C CNN
F 1 "Input_Signal" H 1708 3390 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-3_P5.00mm" H 1600 3200 50  0001 C CNN
F 3 "~" H 1600 3200 50  0001 C CNN
	1    1600 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5E849683
P 7700 1750
F 0 "J2" V 7762 1794 50  0000 L CNN
F 1 "Input_VCC" V 7853 1794 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 7700 1750 50  0001 C CNN
F 3 "~" H 7700 1750 50  0001 C CNN
	1    7700 1750
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5E84A30D
P 8850 1700
F 0 "J3" V 8912 1512 50  0000 R CNN
F 1 "Input_HV" V 9003 1512 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-3_P5.00mm" H 8850 1700 50  0001 C CNN
F 3 "~" H 8850 1700 50  0001 C CNN
	1    8850 1700
	0    -1   1    0   
$EndComp
Text GLabel 1950 3600 2    50   Input ~ 0
V_DD,logicsupply
Text GLabel 1900 3300 2    50   Input ~ 0
uC_High
Text GLabel 1900 3200 2    50   Input ~ 0
uC_SD
Text GLabel 1900 3100 2    50   Input ~ 0
uC_Low
Text GLabel 1950 3700 2    50   Input ~ 0
GND
Wire Wire Line
	1800 3100 1900 3100
Wire Wire Line
	1800 3200 1900 3200
Wire Wire Line
	1800 3300 1900 3300
Text GLabel 7700 2100 3    50   Input ~ 0
VCC
Text GLabel 7800 2100 3    50   Input ~ 0
COM
Wire Wire Line
	7800 1950 7800 2100
Wire Wire Line
	7700 1950 7700 2100
Text GLabel 8750 2000 3    50   Input ~ 0
+1200
Text GLabel 8950 2000 3    50   Input ~ 0
HV_GND
Wire Wire Line
	8750 1900 8750 2000
$Comp
L Connector:Conn_01x02_Female J7
U 1 1 5E85828E
P 1600 4050
F 0 "J7" H 1450 4200 50  0000 L CNN
F 1 "Output_Logic" H 1300 4150 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 1600 4050 50  0001 C CNN
F 3 "~" H 1600 4050 50  0001 C CNN
	1    1600 4050
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5E859888
P 1600 3600
F 0 "J6" H 1708 3781 50  0000 C CNN
F 1 "Input_Logic" H 1708 3690 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 1600 3600 50  0001 C CNN
F 3 "~" H 1600 3600 50  0001 C CNN
	1    1600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3600 1950 3600
Wire Wire Line
	1950 3700 1800 3700
Text GLabel 2000 4050 2    50   Input ~ 0
V_DD,logicsupply
Text GLabel 2000 4150 2    50   Input ~ 0
GND
Wire Wire Line
	1800 4050 2000 4050
Wire Wire Line
	1800 4150 2000 4150
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 5E868574
P 8850 3050
F 0 "J5" V 8696 2862 50  0000 R CNN
F 1 "Output_HV" V 8787 2862 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-3_P5.00mm" H 8850 3050 50  0001 C CNN
F 3 "~" H 8850 3050 50  0001 C CNN
	1    8850 3050
	0    -1   1    0   
$EndComp
Text GLabel 7700 2650 1    50   Input ~ 0
VCC
Text GLabel 7800 2650 1    50   Input ~ 0
COM
Text GLabel 8750 2700 1    50   Input ~ 0
+1200
Text GLabel 8950 2700 1    50   Input ~ 0
HV_GND
Wire Wire Line
	7700 2650 7700 2850
Wire Wire Line
	7800 2650 7800 2850
Wire Wire Line
	8750 2700 8750 2850
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 5E848DDF
P 7700 3050
F 0 "J4" V 7546 3098 50  0000 L CNN
F 1 "Output_VCC" V 7637 3098 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 7700 3050 50  0001 C CNN
F 3 "~" H 7700 3050 50  0001 C CNN
	1    7700 3050
	0    -1   1    0   
$EndComp
Wire Wire Line
	8950 2700 8950 2850
Wire Wire Line
	8950 1900 8950 2000
$Comp
L Device:C C3
U 1 1 5E8725B5
P 6750 3300
F 0 "C3" H 6865 3346 50  0000 L CNN
F 1 "150p" H 6865 3255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W5.0mm_P7.50mm" H 6788 3150 50  0001 C CNN
F 3 "~" H 6750 3300 50  0001 C CNN
	1    6750 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5E872CE3
P 6600 3000
F 0 "R10" V 6393 3000 50  0000 C CNN
F 1 "3M" V 6484 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric_Pad1.52x2.65mm_HandSolder" V 6530 3000 50  0001 C CNN
F 3 "~" H 6600 3000 50  0001 C CNN
	1    6600 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3000 6150 3000
Wire Wire Line
	6750 3000 6750 3150
Wire Wire Line
	6750 3450 6750 3750
Wire Wire Line
	6750 3750 5850 3750
Connection ~ 5850 3750
Wire Wire Line
	5850 3750 5850 3900
$Comp
L Mechanical:MountingHole H4
U 1 1 5E87CBC9
P 6900 2000
F 0 "H4" H 7000 2046 50  0000 L CNN
F 1 "MountingHole" H 7000 1955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6900 2000 50  0001 C CNN
F 3 "~" H 6900 2000 50  0001 C CNN
	1    6900 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E87CE51
P 6950 4850
F 0 "H3" H 7050 4896 50  0001 L CNN
F 1 "MountingHole" H 7050 4850 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6950 4850 50  0001 C CNN
F 3 "~" H 6950 4850 50  0001 C CNN
	1    6950 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5E87D260
P 3150 2000
F 0 "H1" H 3250 2046 50  0000 L CNN
F 1 "MountingHole" H 3250 1955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3150 2000 50  0001 C CNN
F 3 "~" H 3150 2000 50  0001 C CNN
	1    3150 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E87D716
P 3150 4850
F 0 "H2" H 3250 4896 50  0000 L CNN
F 1 "MountingHole" H 3250 4805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3150 4850 50  0001 C CNN
F 3 "~" H 3150 4850 50  0001 C CNN
	1    3150 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J8
U 1 1 5E88A334
P 7600 3350
F 0 "J8" H 7628 3376 50  0000 L CNN
F 1 "Output_Elektrode" H 7628 3285 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-3_P5.00mm" H 7600 3350 50  0001 C CNN
F 3 "~" H 7600 3350 50  0001 C CNN
	1    7600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3000 7400 3000
Wire Wire Line
	7400 3000 7400 3250
Connection ~ 6750 3000
Wire Wire Line
	6750 3750 7400 3750
Wire Wire Line
	7400 3750 7400 3450
Connection ~ 6750 3750
Wire Wire Line
	4200 4550 5050 4550
Wire Wire Line
	5050 4550 5050 4450
Connection ~ 4200 4550
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 5E8C84B2
P 6600 2500
F 0 "J9" H 6680 2542 50  0000 L CNN
F 1 "Output_Raw" H 6680 2451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6600 2500 50  0001 C CNN
F 3 "~" H 6600 2500 50  0001 C CNN
	1    6600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2500 6150 2500
Wire Wire Line
	6150 2500 6150 3000
Connection ~ 6150 3000
Wire Wire Line
	6150 3000 6450 3000
$EndSCHEMATC
