; Beidaghi Lab - Capacitor File : <function fileName at 0x7fff57d11620>
; Printer Profile: MXeneProfile_pet_25G
	;Extrusion: 0.035
	;Feed Rate: 1000
	;Movement Speed: 5000
	;Print Height: 1.15
	;Bed Height: 1
	;Line Gap: 0.6
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
G1 Y60 E-2.100000 F1000


;Printing Priming Line 
;	xStart : 4
;	yStart : 10
G90; Absolute Cordinates
G1 X4 Y10 Z10 F5000 
G1 Z1 F5000
G91; Relative Cordinates
G1 Y60 E-2.100000 F1000


;Printing Priming Line 
;	xStart : 8
;	yStart : 10
G90; Absolute Cordinates
G1 X8 Y10 Z10 F5000 
G1 Z1 F5000
G91; Relative Cordinates
G1 Y60 E-2.100000 F1000


;Printing Capasitor (double Line no lift)
;	xStart : 125
;	yStart : 45
G90; Absolute Cordinates
G1 X125 Y45 Z10 F5000 
G1 Z1.15 F5000
G91; Relative Cordinates
G1 Y6 E-0.210000 F1000
G1 Y4 E-0.140000 F1000
G1 X10 E-0.350000 F1000
G1 Y0.6 E-0.021000 F1000
G1 X-10 E-0.350000 F1000
G1 Y4 E-0.140000 F1000
G1 X10 E-0.350000 F1000
G1 Y0.6 E-0.021000 F1000
G1 X-10 E-0.350000 F1000
G1 Y4 E-0.140000 F1000
G1 X10 E-0.350000 F1000
G1 Y0.6 E-0.021000 F1000
G1 X-10 E-0.350000 F1000
G1 Y4 E-0.140000 F1000
G1 X10 E-0.350000 F1000
G1 Y0.6 E-0.021000 F1000
G1 X-10 E-0.350000 F1000
G1 X-0.6 E-0.021000 F1000
G1 Y-24.4 E-0.854000 F1000
G90; Absolute Cordinates
G1 X138 Y45 Z10 F5000 
G1 Z1.15 F5000
G91; Relative Cordinates
G1 Y4.0 E-0.140000 F1000
G1 Y4 E-0.140000 F1000
G1 X-10 E-0.350000 F1000
G1 Y0.6 E-0.021000 F1000
G1 X10 E-0.350000 F1000
G1 Y4 E-0.140000 F1000
G1 X-10 E-0.350000 F1000
G1 Y0.6 E-0.021000 F1000
G1 X10 E-0.350000 F1000
G1 Y4 E-0.140000 F1000
G1 X-10 E-0.350000 F1000
G1 Y0.6 E-0.021000 F1000
G1 X10 E-0.350000 F1000
G1 Y4 E-0.140000 F1000
G1 X-10 E-0.350000 F1000
G1 Y0.6 E-0.021000 F1000
G1 X10 E-0.350000 F1000
G1 Y-22.4 E-0.784000 F1000
G1 Z10 F5000
G90; Absolute Cordinates
G90; Absolute Cordinates
G1 X180 Y180 Z70 F5000 
M84
;END OF FILE
