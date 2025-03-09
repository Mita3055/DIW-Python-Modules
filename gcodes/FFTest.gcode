; Beidaghi Lab - Capacitor File : <function fileName at 0x7fff881e0ea0>
; Printer Profile: pvaPrintProfile
	;Extrusion: 0.075
	;Feed Rate: 650
	;Movement Speed: 5000
	;Print Height: 0.15
	;Bed Height: 0.15
	;Line Gap: 0.1
; Capacitor Profile: stdCap
	;Stem Length: 20
	;Arm Length: 20
	;Arm Count: 4
	;Gap: 6
	;Arm Gap: 6
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
;	yStart : 10
G90; Absolute Cordinates
G1 X10 Y10 Z10 F5000 
G1 Z0.15 F5000
G91; Relative Cordinates
G1 Y100 E-7.500000 F650


;Printing Capasitor (single Line - right)
;	xStart : 50
;	yStart : 10
G90; Absolute Cordinates
G1 X76 Y10 Z10 F5000 
G1 Z0.15 F5000
G91; Relative Cordinates
G1 Y41.0 E-3.075000 F650
G1 X-20 E-1.500000 F650
G1 Z2 F5000
G1 X20 Y-6 Z-2 F5000 
G1 X-20 E-1.500000 F650
G1 Z2 F5000
G1 X20 Y-6 Z-2 F5000 
G1 X-20 E-1.500000 F650
G1 Z2 F5000
G1 X20 Y-6 Z-2 F5000 
G1 X-20 E-1.500000 F650
G1 Z2 F5000
G1 X20 Y-6 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - right)
;	xStart : 50
;	yStart : 10
G90; Absolute Cordinates
G1 X76 Y10 Z10 F5000 
G1 Z0.15 F5000
G91; Relative Cordinates
G1 Y41.0 E-3.075000 F650
G1 X-20 E-1.500000 F650
G1 Z2 F5000
G1 X20 Y-6 Z-2 F5000 
G1 X-20 E-1.500000 F650
G1 Z2 F5000
G1 X20 Y-6 Z-2 F5000 
G1 X-20 E-1.500000 F650
G1 Z2 F5000
G1 X20 Y-6 Z-2 F5000 
G1 X-20 E-1.500000 F650
G1 Z2 F5000
G1 X20 Y-6 Z-2 F5000 
G1 Z10 F5000
G90; Absolute Cordinates
G1 X120 Y120 Z70 F5000 
M84
