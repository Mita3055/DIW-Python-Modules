; Beidaghi Lab - Capacitor File : <function fileName at 0x7ffeedd01620>
; Printer Profile: MXeneProfile2_20
	;Extrusion: 0.01
	;Feed Rate: 1600
	;Movement Speed: 5000
	;Print Height: 0.5
	;Bed Height: 0.5
	;Line Gap: 0.4
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
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 4
;	yStart : 10
G90; Absolute Cordinates
G1 X4 Y10 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Priming Line 
;	xStart : 6
;	yStart : 10
G90; Absolute Cordinates
G1 X6 Y10 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y60 E-0.600000 F1600


;Printing Capasitor (double Line no lift)
;	xStart : 10
;	yStart : 35
G90; Absolute Cordinates
G1 X10 Y35 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y6 E-0.060000 F1600
G1 Y4 E-0.040000 F1600
G1 X10 E-0.100000 F1600
G1 Y0.4 E-0.004000 F1600
G1 X-10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X10 E-0.100000 F1600
G1 Y0.4 E-0.004000 F1600
G1 X-10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X10 E-0.100000 F1600
G1 Y0.4 E-0.004000 F1600
G1 X-10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X10 E-0.100000 F1600
G1 Y0.4 E-0.004000 F1600
G1 X-10 E-0.100000 F1600
G1 X-0.4 E-0.004000 F1600
G1 Y-23.6 E-0.236000 F1600
G90; Absolute Cordinates
G1 X23 Y35 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y4.0 E-0.040000 F1600
G1 Y4 E-0.040000 F1600
G1 X-10 E-0.100000 F1600
G1 Y0.4 E-0.004000 F1600
G1 X10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X-10 E-0.100000 F1600
G1 Y0.4 E-0.004000 F1600
G1 X10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X-10 E-0.100000 F1600
G1 Y0.4 E-0.004000 F1600
G1 X10 E-0.100000 F1600
G1 Y4 E-0.040000 F1600
G1 X-10 E-0.100000 F1600
G1 Y0.4 E-0.004000 F1600
G1 X10 E-0.100000 F1600
G1 Y-21.6 E-0.216000 F1600
G1 Z10 F5000
G90; Absolute Cordinates
G1 X180 Y180 Z70 F5000 
M84
;END OF FILE
