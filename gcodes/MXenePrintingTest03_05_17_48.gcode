; Beidaghi Lab - Capacitor File : <function fileName at 0x7fff87c61620>
; Printer Profile: MXeneProfile2_20_slide
	;Extrusion: 0.008
	;Feed Rate: 1750
	;Movement Speed: 5000
	;Print Height: 0.5
	;Bed Height: 0.5
	;Line Gap: 0.1
; Capacitor Profile: smallCap
	;Stem Length: 5
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


;Printing Capasitor (double Line no lift)
;	xStart : 10
;	yStart : 35
G90; Absolute Cordinates
G1 X10 Y35 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y3 E-0.024000 F1750
G1 Y2 E-0.016000 F1750
G1 X5 E-0.040000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X-5 E-0.040000 F1750
G1 Y2 E-0.016000 F1750
G1 X5 E-0.040000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X-5 E-0.040000 F1750
G1 Y2 E-0.016000 F1750
G1 X5 E-0.040000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X-5 E-0.040000 F1750
G1 Y2 E-0.016000 F1750
G1 X5 E-0.040000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X-5 E-0.040000 F1750
G1 X-0.1 E-0.000800 F1750
G1 Y-11.4 E-0.091200 F1750
G90; Absolute Cordinates
G1 X16 Y35 Z10 F5000 
G1 Z0.5 F5000
G91; Relative Cordinates
G1 Y2.0 E-0.016000 F1750
G1 Y2 E-0.016000 F1750
G1 X-5 E-0.040000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X5 E-0.040000 F1750
G1 Y2 E-0.016000 F1750
G1 X-5 E-0.040000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X5 E-0.040000 F1750
G1 Y2 E-0.016000 F1750
G1 X-5 E-0.040000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X5 E-0.040000 F1750
G1 Y2 E-0.016000 F1750
G1 X-5 E-0.040000 F1750
G1 Y0.1 E-0.000800 F1750
G1 X5 E-0.040000 F1750
G1 Y-10.4 E-0.083200 F1750
G1 Z10 F5000
G90; Absolute Cordinates
G1 X180 Y180 Z70 F5000 
M84
;END OF FILE
