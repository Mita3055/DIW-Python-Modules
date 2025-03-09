; Beidaghi Lab - Capacitor File : <function fileName at 0x7ffecfa30f40>
; Printer Profile: MXeneInkPrintProfile
	;Extrusion: 0.02
	;Feed Rate: 1800
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
G1 Y60 E-1.200000 F1800


;Printing Priming Line 
;	xStart : 4
;	yStart : 10
G90; Absolute Cordinates
G1 X4 Y10 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y60 E-1.200000 F1800


;Printing Priming Line 
;	xStart : 8
;	yStart : 10
G90; Absolute Cordinates
G1 X8 Y10 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y60 E-1.200000 F1800


;Printing Capasitor (double Line no lift)
;	xStart : 130
;	yStart : 30
G90; Absolute Cordinates
G1 X130 Y30 Z10 F5000 
G1 Z0.7 F5000
G91; Relative Cordinates
G1 Y6 E-0.120000 F1800
G1 Y4 E-0.080000 F1800
G1 X10 E-0.200000 F1800
G1 Y0.3 E-0.006000 F1800
G1 X-10 E-0.200000 F1800
G1 Y4 E-0.080000 F1800
G1 X10 E-0.200000 F1800
G1 Y0.3 E-0.006000 F1800
G1 X-10 E-0.200000 F1800
G1 Y4 E-0.080000 F1800
G1 X10 E-0.200000 F1800
G1 Y0.3 E-0.006000 F1800
G1 X-10 E-0.200000 F1800
G1 Y4 E-0.080000 F1800
G1 X10 E-0.200000 F1800
G1 Y0.3 E-0.006000 F1800
G1 X-10 E-0.200000 F1800
G1 X-0.3 E-0.006000 F1800
G1 Y-23.2 E-0.464000 F1800
G90; Absolute Cordinates
G1 X143 Y30 Z10 F5000 
G1 Z0.7 F5000
G91; Relative Cordinates
G1 Y4.0 E-0.080000 F1800
G1 Y4 E-0.080000 F1800
G1 X-10 E-0.200000 F1800
G1 Y0.3 E-0.006000 F1800
G1 X10 E-0.200000 F1800
G1 Y4 E-0.080000 F1800
G1 X-10 E-0.200000 F1800
G1 Y0.3 E-0.006000 F1800
G1 X10 E-0.200000 F1800
G1 Y4 E-0.080000 F1800
G1 X-10 E-0.200000 F1800
G1 Y0.3 E-0.006000 F1800
G1 X10 E-0.200000 F1800
G1 Y4 E-0.080000 F1800
G1 X-10 E-0.200000 F1800
G1 Y0.3 E-0.006000 F1800
G1 X10 E-0.200000 F1800
G1 Y-21.2 E-0.424000 F1800
G1 Z10 F5000
G90; Absolute Cordinates
G1 X180 Y180 Z70 F5000 
M84
;END OF FILE
