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
L power:VCC #PWR01
U 1 1 5ECA46DD
P 1000 1300
F 0 "#PWR01" H 1000 1150 50  0001 C CNN
F 1 "VCC" H 1017 1473 50  0000 C CNN
F 2 "" H 1000 1300 50  0001 C CNN
F 3 "" H 1000 1300 50  0001 C CNN
	1    1000 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5ECA4E17
P 1450 1300
F 0 "#PWR02" H 1450 1050 50  0001 C CNN
F 1 "GND" H 1455 1127 50  0000 C CNN
F 2 "" H 1450 1300 50  0001 C CNN
F 3 "" H 1450 1300 50  0001 C CNN
	1    1450 1300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5ECA5B58
P 1000 1300
F 0 "#FLG01" H 1000 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1473 50  0000 C CNN
F 2 "" H 1000 1300 50  0001 C CNN
F 3 "~" H 1000 1300 50  0001 C CNN
	1    1000 1300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5ECA695A
P 1450 1300
F 0 "#FLG02" H 1450 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 1473 50  0000 C CNN
F 2 "" H 1450 1300 50  0001 C CNN
F 3 "~" H 1450 1300 50  0001 C CNN
	1    1450 1300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push R_SW_1
U 1 1 5ECA82AE
P 1250 2050
F 0 "R_SW_1" H 1250 2335 50  0000 C CNN
F 1 "SW_Push" H 1250 2244 50  0000 C CNN
F 2 "" H 1250 2250 50  0001 C CNN
F 3 "~" H 1250 2250 50  0001 C CNN
	1    1250 2050
	1    0    0    -1  
$EndComp
Text GLabel 2300 1250 0    50   Input ~ 0
GND
$Comp
L SMK_foostan:ProMicro_r U1
U 1 1 5ECAB5B2
P 2950 1850
F 0 "U1" H 3000 2837 60  0000 C CNN
F 1 "ProMicro_r" H 3000 2731 60  0000 C CNN
F 2 "" H 3100 800 60  0000 C CNN
F 3 "" H 3100 800 60  0000 C CNN
	1    2950 1850
	1    0    0    -1  
$EndComp
Text GLabel 2300 1350 0    50   Input ~ 0
RST
Text GLabel 1050 2050 0    50   Input ~ 0
GND
Text GLabel 1450 2050 2    50   Input ~ 0
RST
Text GLabel 2300 2050 0    50   Input ~ 0
PIN1
Text GLabel 2300 2150 0    50   Input ~ 0
PIN2
Text GLabel 2300 2250 0    50   Input ~ 0
PIN3
NoConn ~ 2300 1150
NoConn ~ 2300 1450
NoConn ~ 2300 1550
NoConn ~ 2300 1650
NoConn ~ 2300 1750
NoConn ~ 2300 1850
NoConn ~ 2300 1950
NoConn ~ 3700 1150
NoConn ~ 3700 1250
NoConn ~ 3700 1350
NoConn ~ 3700 1450
NoConn ~ 3700 1550
NoConn ~ 3700 1650
NoConn ~ 3700 1750
NoConn ~ 3700 1850
NoConn ~ 3700 1950
NoConn ~ 3700 2050
NoConn ~ 3700 2150
NoConn ~ 3700 2250
Text GLabel 1100 3250 0    50   Input ~ 0
PIN1
Text GLabel 1100 4250 0    50   Input ~ 0
PIN2
Text GLabel 1100 5250 0    50   Input ~ 0
PIN3
$Comp
L Switch:SW_Push SW12
U 1 1 5ED77D11
P 1550 3950
F 0 "SW12" H 1550 4235 50  0000 C CNN
F 1 "SW_Push" H 1550 4144 50  0000 C CNN
F 2 "" H 1550 4150 50  0001 C CNN
F 3 "~" H 1550 4150 50  0001 C CNN
	1    1550 3950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW13
U 1 1 5ED77D17
P 1550 4950
F 0 "SW13" H 1550 5235 50  0000 C CNN
F 1 "SW_Push" H 1550 5144 50  0000 C CNN
F 2 "" H 1550 5150 50  0001 C CNN
F 3 "~" H 1550 5150 50  0001 C CNN
	1    1550 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D13
U 1 1 5ED77D1D
P 1750 5100
F 0 "D13" V 1796 5021 50  0000 R CNN
F 1 "D" V 1705 5021 50  0000 R CNN
F 2 "" H 1750 5100 50  0001 C CNN
F 3 "~" H 1750 5100 50  0001 C CNN
	1    1750 5100
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW21
U 1 1 5ED77D23
P 2550 2950
F 0 "SW21" H 2550 3235 50  0000 C CNN
F 1 "SW_Push" H 2550 3144 50  0000 C CNN
F 2 "" H 2550 3150 50  0001 C CNN
F 3 "~" H 2550 3150 50  0001 C CNN
	1    2550 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D21
U 1 1 5ED77D29
P 2750 3100
F 0 "D21" V 2796 3021 50  0000 R CNN
F 1 "D" V 2705 3021 50  0000 R CNN
F 2 "" H 2750 3100 50  0001 C CNN
F 3 "~" H 2750 3100 50  0001 C CNN
	1    2750 3100
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW23
U 1 1 5ED77D2F
P 2550 4950
F 0 "SW23" H 2550 5235 50  0000 C CNN
F 1 "SW_Push" H 2550 5144 50  0000 C CNN
F 2 "" H 2550 5150 50  0001 C CNN
F 3 "~" H 2550 5150 50  0001 C CNN
	1    2550 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D23
U 1 1 5ED77D35
P 2750 5100
F 0 "D23" V 2796 5021 50  0000 R CNN
F 1 "D" V 2705 5021 50  0000 R CNN
F 2 "" H 2750 5100 50  0001 C CNN
F 3 "~" H 2750 5100 50  0001 C CNN
	1    2750 5100
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW31
U 1 1 5ED77D3B
P 3550 2950
F 0 "SW31" H 3550 3235 50  0000 C CNN
F 1 "SW_Push" H 3550 3144 50  0000 C CNN
F 2 "" H 3550 3150 50  0001 C CNN
F 3 "~" H 3550 3150 50  0001 C CNN
	1    3550 2950
	-1   0    0    -1  
$EndComp
$Comp
L Device:D D31
U 1 1 5ED77D41
P 3750 3100
F 0 "D31" V 3796 3021 50  0000 R CNN
F 1 "D" V 3705 3021 50  0000 R CNN
F 2 "" H 3750 3100 50  0001 C CNN
F 3 "~" H 3750 3100 50  0001 C CNN
	1    3750 3100
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW32
U 1 1 5ED77D47
P 3550 3950
F 0 "SW32" H 3550 4235 50  0000 C CNN
F 1 "SW_Push" H 3550 4144 50  0000 C CNN
F 2 "" H 3550 4150 50  0001 C CNN
F 3 "~" H 3550 4150 50  0001 C CNN
	1    3550 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D32
U 1 1 5ED77D4D
P 3750 4100
F 0 "D32" V 3796 4021 50  0000 R CNN
F 1 "D" V 3705 4021 50  0000 R CNN
F 2 "" H 3750 4100 50  0001 C CNN
F 3 "~" H 3750 4100 50  0001 C CNN
	1    3750 4100
	0    -1   -1   0   
$EndComp
Connection ~ 2750 3250
Wire Wire Line
	2750 3250 3750 3250
Connection ~ 1750 5250
Wire Wire Line
	1750 5250 2750 5250
Wire Wire Line
	2350 2950 2350 3950
Wire Wire Line
	3350 2950 3350 3950
Wire Wire Line
	1350 3950 1350 4950
Connection ~ 1750 4250
$Comp
L Device:D D12
U 1 1 5ED77D80
P 1750 4100
F 0 "D12" V 1796 4021 50  0000 R CNN
F 1 "D" V 1705 4021 50  0000 R CNN
F 2 "" H 1750 4100 50  0001 C CNN
F 3 "~" H 1750 4100 50  0001 C CNN
	1    1750 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 5250 1750 5250
Wire Wire Line
	1100 4250 1750 4250
Wire Wire Line
	3750 5250 2750 5250
Connection ~ 2750 5250
Wire Wire Line
	1350 2950 1350 3950
Connection ~ 1350 3950
Connection ~ 2350 3950
Wire Wire Line
	2350 3950 2350 4950
Wire Wire Line
	3350 3950 3350 4950
Connection ~ 3350 3950
$Comp
L Device:D D33
U 1 1 5ED77D53
P 3750 5100
F 0 "D33" V 3796 5021 50  0000 R CNN
F 1 "D" V 3705 5021 50  0000 R CNN
F 2 "" H 3750 5100 50  0001 C CNN
F 3 "~" H 3750 5100 50  0001 C CNN
	1    3750 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 4950 3750 4950
Connection ~ 2750 4250
Wire Wire Line
	2750 4250 1750 4250
Wire Wire Line
	3750 4250 2750 4250
Wire Wire Line
	2750 3950 2350 3950
$Comp
L Device:D D22
U 1 1 5ED77D86
P 2750 4100
F 0 "D22" V 2796 4021 50  0000 R CNN
F 1 "D" V 2705 4021 50  0000 R CNN
F 2 "" H 2750 4100 50  0001 C CNN
F 3 "~" H 2750 4100 50  0001 C CNN
	1    2750 4100
	0    1    1    0   
$EndComp
Connection ~ 1750 3250
Wire Wire Line
	1750 3250 2750 3250
Wire Wire Line
	1100 3250 1750 3250
Wire Wire Line
	1750 2950 1350 2950
$Comp
L Device:D D11
U 1 1 5ED77D59
P 1750 3100
F 0 "D11" V 1796 3021 50  0000 R CNN
F 1 "D" V 1705 3021 50  0000 R CNN
F 2 "" H 1750 3100 50  0001 C CNN
F 3 "~" H 1750 3100 50  0001 C CNN
	1    1750 3100
	0    1    1    0   
$EndComp
$EndSCHEMATC
