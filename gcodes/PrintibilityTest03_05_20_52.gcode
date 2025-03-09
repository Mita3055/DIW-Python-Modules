; Beidaghi Lab - Capacitor File : <function fileName at 0x7fff7eca0f40>
; Printer Profile: MXeneInkPrintProfile
	;Extrusion: 0.015
	;Feed Rate: 1500
	;Movement Speed: 5000
	;Print Height: 0.5
	;Bed Height: 0.7
	;Line Gap: 0.1
; Capacitor Profile: smallCap
	;Stem Length: 10
	;Arm Length: 5
	;Arm Count: 4
	;Gap: 1
	;Arm Gap: 2
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
G1 Z0.7 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Priming Line 
;	xStart : 4
;	yStart : 10
G90; Absolute Cordinates
G1 X4 Y10 Z10 F5000 
G1 Z0.7 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Priming Line 
;	xStart : 8
;	yStart : 10
G90; Absolute Cordinates
G1 X8 Y10 Z10 F5000 
G1 Z0.7 F5000
G91; Relative Cordinates
G1 Y60 E-0.900000 F1500


;Printing Capasitor (double Line no lift)
;	xStart : 101
;	yStart : 5
G90; Absolute Cordinates
G1 X101 Y5 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y8 E-0.120000 F1500
G1 Y2 E-0.030000 F1500
G1 X5 E-0.075000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X-5 E-0.075000 F1500
G1 Y2 E-0.030000 F1500
G1 X5 E-0.075000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X-5 E-0.075000 F1500
G1 Y2 E-0.030000 F1500
G1 X5 E-0.075000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X-5 E-0.075000 F1500
G1 Y2 E-0.030000 F1500
G1 X5 E-0.075000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X-5 E-0.075000 F1500
G1 X-0.1 E-0.001500 F1500
G1 Y-16.4 E-0.246000 F1500
G90; Absolute Cordinates
G1 X107 Y5 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y7.0 E-0.105000 F1500
G1 Y2 E-0.030000 F1500
G1 X-5 E-0.075000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X5 E-0.075000 F1500
G1 Y2 E-0.030000 F1500
G1 X-5 E-0.075000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X5 E-0.075000 F1500
G1 Y2 E-0.030000 F1500
G1 X-5 E-0.075000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X5 E-0.075000 F1500
G1 Y2 E-0.030000 F1500
G1 X-5 E-0.075000 F1500
G1 Y0.1 E-0.001500 F1500
G1 X5 E-0.075000 F1500
G1 Y-15.399999999999999 E-0.231000 F1500
G1 Z10 F5000
G90; Absolute Cordinates
G1 X180 Y180 Z70 F5000 
M84
;END OF FILE
