; Beidaghi Lab - Capacitor File : <function fileName at 0x7fff38c71620>
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
;	xStart : 10
;	yStart : 10
G90; Absolute Cordinates
G1 X10 Y10 Z10 F5000 
G1 Z1.3 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 13
;	yStart : 10
G90; Absolute Cordinates
G1 X13 Y10 Z10 F5000 
G1 Z1.3 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 16
;	yStart : 10
G90; Absolute Cordinates
G1 X16 Y10 Z10 F5000 
G1 Z1.3 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 20
;	yStart : 10
G90; Absolute Cordinates
G1 X20 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 23
;	yStart : 10
G90; Absolute Cordinates
G1 X23 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 26
;	yStart : 10
G90; Absolute Cordinates
G1 X26 Y10 Z10 F5000 
G1 Z1.2 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600
G90; Absolute Cordinates
G1 X120 Y120 Z70 F5000 
M84
;END OF FILE
