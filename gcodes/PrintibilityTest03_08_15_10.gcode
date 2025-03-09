; Beidaghi Lab - Capacitor File : <function fileName at 0x7fffac1f1620>
; Printer Profile: MXeneInkPrintProfile
	;Extrusion: 0.02
	;Feed Rate: 1300
	;Movement Speed: 5000
	;Print Height: 1.26
	;Bed Height: 1.05
	;Line Gap: 0.3
; Capacitor Profile: electroCellCap
	;Stem Length: 10
	;Arm Length: 8
	;Arm Count: 3
	;Gap: 2
	;Arm Gap: 2.5
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
G1 Z1.05 F5000
G91; Relative Cordinates
G1 Y60 E-1.200000 F1300


;Printing Priming Line 
;	xStart : 4
;	yStart : 10
G90; Absolute Cordinates
G1 X4 Y10 Z10 F5000 
G1 Z1.05 F5000
G91; Relative Cordinates
G1 Y60 E-1.200000 F1300


;Printing Priming Line 
;	xStart : 6
;	yStart : 10
G90; Absolute Cordinates
G1 X6 Y10 Z10 F5000 
G1 Z1.05 F5000
G91; Relative Cordinates
G1 Y60 E-1.200000 F1300


;Printing Capasitor (double Line no lift)
;	xStart : 140
;	yStart : 30
G90; Absolute Cordinates
G1 X140 Y30 Z10 F5000 
G1 Z1.26 F5000
G91; Relative Cordinates
G1 Y7.5 E-0.150000 F1300
G1 Y2.5 E-0.050000 F1300
G1 X8 E-0.160000 F1300
G1 Y0.3 E-0.006000 F1300
G1 X-8 E-0.160000 F1300
G1 Y2.5 E-0.050000 F1300
G1 X8 E-0.160000 F1300
G1 Y0.3 E-0.006000 F1300
G1 X-8 E-0.160000 F1300
G1 Y2.5 E-0.050000 F1300
G1 X8 E-0.160000 F1300
G1 Y0.3 E-0.006000 F1300
G1 X-8 E-0.160000 F1300
G1 X-0.3 E-0.006000 F1300
G1 Y-15.9 E-0.318000 F1300
G90; Absolute Cordinates
G1 X150 Y30 Z10 F5000 
G1 Z1.26 F5000
G91; Relative Cordinates
G1 Y6.25 E-0.125000 F1300
G1 Y2.5 E-0.050000 F1300
G1 X-8 E-0.160000 F1300
G1 Y0.3 E-0.006000 F1300
G1 X8 E-0.160000 F1300
G1 Y2.5 E-0.050000 F1300
G1 X-8 E-0.160000 F1300
G1 Y0.3 E-0.006000 F1300
G1 X8 E-0.160000 F1300
G1 Y2.5 E-0.050000 F1300
G1 X-8 E-0.160000 F1300
G1 Y0.3 E-0.006000 F1300
G1 X8 E-0.160000 F1300
G1 Y-14.65 E-0.293000 F1300
G1 Z10 F5000
G90; Absolute Cordinates
G90; Absolute Cordinates
G1 X180 Y180 Z70 F5000 
M84
;END OF FILE
