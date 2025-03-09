; Beidaghi Lab - Capacitor File : <function fileName at 0x7ffed0d10f40>
; Printer Profile: MXeneProfile2_20_slide
	;Extrusion: 0.008
	;Feed Rate: 1750
	;Movement Speed: 5000
	;Print Height: 0.5
	;Bed Height: 0.5
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
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y60 E-0.480000 F1750


;Printing Priming Line 
;	xStart : 4
;	yStart : 10
G90; Absolute Cordinates
G1 X4 Y10 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y60 E-0.480000 F1750


;Printing Priming Line 
;	xStart : 6
;	yStart : 10
G90; Absolute Cordinates
G1 X6 Y10 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y60 E-0.480000 F1750


;Printing Lattice/Grid
;	start_x : 150
;	start_y : 20
;	horizontal_lines : 8
;	vertical_lines : 8
;\spacing : 3
G90; Absolute Cordinates
G1 X150 Y17 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y10 E-0.080000 F1750
G1 Y24 E-0.192000 F1750
G1 X3 E-0.024000 F1750
G1 Y-24 E-0.192000 F1750
G1 X3 E-0.024000 F1750
G1 Y24 E-0.192000 F1750
G1 X3 E-0.024000 F1750
G1 Y-24 E-0.192000 F1750
G1 X3 E-0.024000 F1750
G1 Y24 E-0.192000 F1750
G1 X3 E-0.024000 F1750
G1 Y-24 E-0.192000 F1750
G1 X3 E-0.024000 F1750
G1 Y24 E-0.192000 F1750
G1 X3 E-0.024000 F1750
G1 Y-24 E-0.192000 F1750
G1 X3 E-0.024000 F1750
G1 Y24 E-0.192000 F1750
G1 X-24 E-0.192000 F1750
G1 Y-3 E-0.024000 F1750
G1 X24 E-0.192000 F1750
G1 Y-3 E-0.024000 F1750
G1 X-24 E-0.192000 F1750
G1 Y-3 E-0.024000 F1750
G1 X24 E-0.192000 F1750
G1 Y-3 E-0.024000 F1750
G1 X-24 E-0.192000 F1750
G1 Y-3 E-0.024000 F1750
G1 X24 E-0.192000 F1750
G1 Y-3 E-0.024000 F1750
G1 X-24 E-0.192000 F1750
G1 Y-3 E-0.024000 F1750
G1 X24 E-0.192000 F1750
G1 Y-3 E-0.024000 F1750
G1 X-27 E-0.216000 F1750
G90; Absolute Cordinates
G1 X180 Y180 Z70 F5000 
M84
;END OF FILE
