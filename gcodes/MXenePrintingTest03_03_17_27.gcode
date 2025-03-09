; Beidaghi Lab - Capacitor File : <function fileName at 0x7ffed4430f40>
; Printer Profile: MXeneInkPrintProfile
	;Extrusion: 0.015
	;Feed Rate: 1500
	;Movement Speed: 5000
	;Print Height: 1.3
	;Bed Height: 1.3
	;Line Gap: 0.1
; Capacitor Profile: stdCap
	;Stem Length: 10
	;Arm Length: 10
	;Arm Count: 4
	;Gap: 3
	;Arm Gap: 4
	;Contact Patch Width: 5
;Start G-Code


;BED_MESH_PROFILE LOAD=default
G21 ; Set units to millimeters
M104 S0
M140 S0
G28; Homing Printer
G90;
G92 E0 ; Reset extruder position


;Printing Priming Line 
;	xStart : 10
;	yStart : 10
G90; Absolute Cordinates
G1 X10 Y10 Z10 F5000 
G1 Z1.3 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Priming Line 
;	xStart : 13
;	yStart : 10
G90; Absolute Cordinates
G1 X13 Y10 Z10 F5000 
G1 Z1.3 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Priming Line 
;	xStart : 16
;	yStart : 10
G90; Absolute Cordinates
G1 X16 Y10 Z10 F5000 
G1 Z1.3 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Priming Line 
;	xStart : 20
;	yStart : 10
G90; Absolute Cordinates
G1 X20 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Priming Line 
;	xStart : 23
;	yStart : 10
G90; Absolute Cordinates
G1 X23 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Priming Line 
;	xStart : 26
;	yStart : 10
G90; Absolute Cordinates
G1 X26 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Priming Line 
;	xStart : 40
;	yStart : 10
G90; Absolute Cordinates
G1 X40 Y10 Z10 F5000 
G1 Z1.3 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 43
;	yStart : 10
G90; Absolute Cordinates
G1 X43 Y10 Z10 F5000 
G1 Z1.3 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 46
;	yStart : 10
G90; Absolute Cordinates
G1 X46 Y10 Z10 F5000 
G1 Z1.3 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 50
;	yStart : 10
G90; Absolute Cordinates
G1 X50 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 53
;	yStart : 10
G90; Absolute Cordinates
G1 X53 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 56
;	yStart : 10
G90; Absolute Cordinates
G1 X56 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Capasitor (double Line no lift)
;	xStart : 60
;	yStart : 10
G90; Absolute Cordinates
G1 X60 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y6 E-0.090000 F1500
G1 Y4 E-0.060000 F1500
G1 X10 E-0.150000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X-10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X10 E-0.150000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X-10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X10 E-0.150000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X-10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X10 E-0.150000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X-10 E-0.150000 F1500
G1 X-0.1 E-0.001500 F1500
G1 Y-22.4 E-0.336000 F1500
G90; Absolute Cordinates
G1 X73 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y4.0 E-0.060000 F1500
G1 Y4 E-0.060000 F1500
G1 X-10 E-0.150000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X-10 E-0.150000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X-10 E-0.150000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X-10 E-0.150000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X10 E-0.150000 F1500
G1 Y-20.4 E-0.306000 F1500
G1 Z10 F5000


;Printing Capasitor (double Line no lift)
;	xStart : 90
;	yStart : 10
G90; Absolute Cordinates
G1 X90 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y6 E-0.060000 F1600
G1 Y4 E-0.040000 F1600
G1 X10 E-0.100000 F1600
G1 Y0.1 E-0.001000 F1600
G1 X-10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X10 E-0.100000 F1600
G1 Y0.1 E-0.001000 F1600
G1 X-10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X10 E-0.100000 F1600
G1 Y0.1 E-0.001000 F1600
G1 X-10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X10 E-0.100000 F1600
G1 Y0.1 E-0.001000 F1600
G1 X-10 E-0.100000 F1600
G1 X-0.1 E-0.001000 F1600
G1 Y-22.4 E-0.224000 F1600
G90; Absolute Cordinates
G1 X103 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y4.0 E-0.040000 F1600
G1 Y4 E-0.040000 F1600
G1 X-10 E-0.100000 F1600
G1 Y0.1 E-0.001000 F1600
G1 X10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X-10 E-0.100000 F1600
G1 Y0.1 E-0.001000 F1600
G1 X10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X-10 E-0.100000 F1600
G1 Y0.1 E-0.001000 F1600
G1 X10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X-10 E-0.100000 F1600
G1 Y0.1 E-0.001000 F1600
G1 X10 E-0.100000 F1600
G1 Y-20.4 E-0.204000 F1600
G1 Z10 F5000
G90; Absolute Cordinates
G1 X120 Y120 Z70 F5000 
M84
;END OF FILE
