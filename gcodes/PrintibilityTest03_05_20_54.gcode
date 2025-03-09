; Beidaghi Lab - Capacitor File : <function fileName at 0x7ffec8ac1620>
; Printer Profile: MXeneInkPrintProfile
	;Extrusion: 0.015
	;Feed Rate: 1500
	;Movement Speed: 5000
	;Print Height: 0.7
	;Bed Height: 0.5
	;Line Gap: 0.3
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
;	xStart : 2
;	yStart : 10
G90; Absolute Cordinates
G1 X2 Y10 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Priming Line 
;	xStart : 4
;	yStart : 10
G90; Absolute Cordinates
G1 X4 Y10 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Priming Line 
;	xStart : 8
;	yStart : 10
G90; Absolute Cordinates
G1 X8 Y10 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Capasitor (double Line no lift)
;	xStart : 110
;	yStart : 5
G90; Absolute Cordinates
G1 X110 Y5 Z10 F5000 
G1 Z0.7 F5000
G91; Relative Cordinates
G1 Y6 E-0.090000 F1500
G1 Y4 E-0.060000 F1500
G1 X10 E-0.150000 F1500
G1 Y0.3 E-0.004500 F1500
G1 X-10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X10 E-0.150000 F1500
G1 Y0.3 E-0.004500 F1500
G1 X-10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X10 E-0.150000 F1500
G1 Y0.3 E-0.004500 F1500
G1 X-10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X10 E-0.150000 F1500
G1 Y0.3 E-0.004500 F1500
G1 X-10 E-0.150000 F1500
G1 X-0.3 E-0.004500 F1500
G1 Y-23.2 E-0.348000 F1500
G90; Absolute Cordinates
G1 X123 Y5 Z10 F5000 
G1 Z0.7 F5000
G91; Relative Cordinates
G1 Y4.0 E-0.060000 F1500
G1 Y4 E-0.060000 F1500
G1 X-10 E-0.150000 F1500
G1 Y0.3 E-0.004500 F1500
G1 X10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X-10 E-0.150000 F1500
G1 Y0.3 E-0.004500 F1500
G1 X10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X-10 E-0.150000 F1500
G1 Y0.3 E-0.004500 F1500
G1 X10 E-0.150000 F1500
G1 Y4 E-0.060000 F1500
G1 X-10 E-0.150000 F1500
G1 Y0.3 E-0.004500 F1500
G1 X10 E-0.150000 F1500
G1 Y-21.2 E-0.318000 F1500
G1 Z10 F5000
G90; Absolute Cordinates
G1 X180 Y180 Z70 F5000 
M84
;END OF FILE
