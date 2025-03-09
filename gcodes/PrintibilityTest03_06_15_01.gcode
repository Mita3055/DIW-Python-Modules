; Beidaghi Lab - Capacitor File : <function fileName at 0x7fff1c3d0f40>
; Printer Profile: MXeneProfile_pet_25G
	;Extrusion: 0.02
	;Feed Rate: 1300
	;Movement Speed: 5000
	;Print Height: 1.1
	;Bed Height: 1
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
G1 Z1 F5000
G91; Relative Cordinates
G1 Y60 E-1.200000 F1300


;Printing Priming Line 
;	xStart : 4
;	yStart : 10
G90; Absolute Cordinates
G1 X4 Y10 Z10 F5000 
G1 Z1 F5000
G91; Relative Cordinates
G1 Y60 E-1.200000 F1300


;Printing Priming Line 
;	xStart : 8
;	yStart : 10
G90; Absolute Cordinates
G1 X8 Y10 Z10 F5000 
G1 Z1 F5000
G91; Relative Cordinates
G1 Y60 E-1.200000 F1300


;Printing Capasitor (double Line no lift)
;	xStart : 125
;	yStart : 5
G90; Absolute Cordinates
G1 X125 Y5 Z10 F5000 
G1 Z1.1 F5000
G91; Relative Cordinates
G1 Y6 E-0.120000 F1300
G1 Y4 E-0.080000 F1300
G1 X10 E-0.200000 F1300
G1 Y0.4 E-0.008000 F1300
G1 X-10 E-0.200000 F1300
G1 Y4 E-0.080000 F1300
G1 X10 E-0.200000 F1300
G1 Y0.4 E-0.008000 F1300
G1 X-10 E-0.200000 F1300
G1 Y4 E-0.080000 F1300
G1 X10 E-0.200000 F1300
G1 Y0.4 E-0.008000 F1300
G1 X-10 E-0.200000 F1300
G1 Y4 E-0.080000 F1300
G1 X10 E-0.200000 F1300
G1 Y0.4 E-0.008000 F1300
G1 X-10 E-0.200000 F1300
G1 X-0.4 E-0.008000 F1300
G1 Y-23.6 E-0.472000 F1300
G90; Absolute Cordinates
G1 X138 Y5 Z10 F5000 
G1 Z1.1 F5000
G91; Relative Cordinates
G1 Y4.0 E-0.080000 F1300
G1 Y4 E-0.080000 F1300
G1 X-10 E-0.200000 F1300
G1 Y0.4 E-0.008000 F1300
G1 X10 E-0.200000 F1300
G1 Y4 E-0.080000 F1300
G1 X-10 E-0.200000 F1300
G1 Y0.4 E-0.008000 F1300
G1 X10 E-0.200000 F1300
G1 Y4 E-0.080000 F1300
G1 X-10 E-0.200000 F1300
G1 Y0.4 E-0.008000 F1300
G1 X10 E-0.200000 F1300
G1 Y4 E-0.080000 F1300
G1 X-10 E-0.200000 F1300
G1 Y0.4 E-0.008000 F1300
G1 X10 E-0.200000 F1300
G1 Y-21.6 E-0.432000 F1300
G1 Z10 F5000
G90; Absolute Cordinates
G90; Absolute Cordinates
G1 X180 Y180 Z70 F5000 
M84
;END OF FILE
