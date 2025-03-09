; Beidaghi Lab - Capacitor File : <function fileName at 0x7fffbd131620>
; Printer Profile: MXeneProfile2_20_slide
	;Extrusion: 0.008
	;Feed Rate: 1750
	;Movement Speed: 6000
	;Print Height: 1.05
	;Bed Height: 0.95
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
;	xStart : 2
;	yStart : 10
G90; Absolute Cordinates
G1 X2 Y10 Z10 F6000 
G1 Z0.95 F6000
G91; Relative Cordinates
G1 Y60 E-0.480000 F1750


;Printing Priming Line 
;	xStart : 4
;	yStart : 10
G90; Absolute Cordinates
G1 X4 Y10 Z10 F6000 
G1 Z0.95 F6000
G91; Relative Cordinates
G1 Y60 E-0.480000 F1750


;Printing Priming Line 
;	xStart : 8
;	yStart : 10
G90; Absolute Cordinates
G1 X8 Y10 Z10 F6000 
G1 Z0.95 F6000
G91; Relative Cordinates
G1 Y60 E-0.480000 F1750


;Printing Capasitor (double Line no lift)
;	xStart : 125
;	yStart : 5
G90; Absolute Cordinates
G1 X125 Y5 Z10 F6000 
G1 Z1.05 F6000
G91; Relative Cordinates
G1 Y6 E-0.048000 F1750
G1 Y4 E-0.032000 F1750
G1 X10 E-0.080000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X-10 E-0.080000 F1750
G1 Y4 E-0.032000 F1750
G1 X10 E-0.080000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X-10 E-0.080000 F1750
G1 Y4 E-0.032000 F1750
G1 X10 E-0.080000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X-10 E-0.080000 F1750
G1 Y4 E-0.032000 F1750
G1 X10 E-0.080000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X-10 E-0.080000 F1750
G1 X-0.1 E-0.000800 F1750
G1 Y-22.4 E-0.179200 F1750
G90; Absolute Cordinates
G1 X138 Y5 Z10 F6000 
G1 Z1.05 F6000
G91; Relative Cordinates
G1 Y4.0 E-0.032000 F1750
G1 Y4 E-0.032000 F1750
G1 X-10 E-0.080000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X10 E-0.080000 F1750
G1 Y4 E-0.032000 F1750
G1 X-10 E-0.080000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X10 E-0.080000 F1750
G1 Y4 E-0.032000 F1750
G1 X-10 E-0.080000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X10 E-0.080000 F1750
G1 Y4 E-0.032000 F1750
G1 X-10 E-0.080000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X10 E-0.080000 F1750
G1 Y-20.4 E-0.163200 F1750
G1 Z10 F6000
G90; Absolute Cordinates
G90; Absolute Cordinates
G1 X180 Y180 Z70 F5000 
M84
;END OF FILE
