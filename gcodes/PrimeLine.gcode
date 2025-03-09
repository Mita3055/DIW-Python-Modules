; Beidaghi Lab - Capacitor File : <function fileName at 0x7ffef21c0f40>
; Printer Profile: pvaPrintProfile
	;Extrusion: 0.15
	;Feed Rate: 450
	;Movement Speed: 2000
	;Print Height: 0
	;Bed Height: 0
	;Line Gap: 0.1
; Capacitor Profile: stdCap
	;Stem Length: 10
	;Arm Length: 10
	;Arm Count: 4
	;Gap: 3
	;Arm Gap: 4
	;Contact Patch Width: 5
;Start G-Code


G21 ; Set units to millimeters
M104 S0
M140 S0
G28; Homing Printer
G90;
G92 E0 ; Reset extruder position


;Printing Priming Line 
;	xStart : 10
;	yStart : 0
G90; Absolute Cordinates
G1 X10 Y0 Z10 F2000
G1 Z0 F2000
G91; Relative Cordinates
G1 Y100 E15.000000 F450
