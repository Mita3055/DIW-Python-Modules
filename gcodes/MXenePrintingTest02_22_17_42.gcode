; Beidaghi Lab - Capacitor File : <function fileName at 0x7fff97791620>
; Printer Profile: MXeneInkPrintProfile
	;Extrusion: 0.015
	;Feed Rate: 1500
	;Movement Speed: 5000
	;Print Height: 1.1
	;Bed Height: 1.1
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
;	xStart : 16
;	yStart : 10
G90; Absolute Cordinates
G1 X16 Y10 Z10 F5000 
G1 Z1.1 F5000
G91; Relative Cordinates
G1 Y100 E-1.500000 F1500


;Printing Capasitor (single Line - left)
;	xStart : 50
;	yStart : 60
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7fff977ab090>
;	Extrusion Rate: 0.015
G90; Absolute Cordinates
G1 X50 Y60 Z10 F5000 
G1 Z1.1 F5000
G91; Relative Cordinates
G1 Y22 E-0.330000 F1500
G1 X10 E-0.150000 F1500
G1 E0.04
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.150000 F1500
G1 E0.04
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.150000 F1500
G1 E0.04
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.150000 F1500
G1 E0.04
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - right)
;	xStart : 50
;	yStart : 60
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7fff977ab090>
;	Extrusion Rate: 0.015
G90; Absolute Cordinates
G1 X64 Y60 Z10 F5000 
G1 Z1.1 F5000
G91; Relative Cordinates
G1 Y24.0 E-0.360000 F1500
G1 X-10 E-0.150000 F1500
G1 E0.04
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.150000 F1500
G1 E0.04
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.150000 F1500
G1 E0.04
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.150000 F1500
G1 E0.04
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 Z10 F5000
G90; Absolute Cordinates
G1 X120 Y120 Z70 F5000 
M84
;END OF FILE
