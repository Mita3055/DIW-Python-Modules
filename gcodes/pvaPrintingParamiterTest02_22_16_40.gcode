; Beidaghi Lab - Capacitor File : <function fileName at 0x7ffeeaac1620>
; Printer Profile: pvaPrintProfile
	;Extrusion: 0.075
	;Feed Rate: 950
	;Movement Speed: 5000
	;Print Height: 0.38
	;Bed Height: 0.38
	;Line Gap: 0.1
; Capacitor Profile: stdCap
	;Stem Length: 10
	;Arm Length: 10
	;Arm Count: 4
	;Gap: 3
	;Arm Gap: 4
	;Contact Patch Width: 5
;Start G-Code


;BED_MESH_PROFILE LOAD=DIW
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
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y100 E-7.500000 F950


;Printing Capasitor (single Line - left)
;	xStart : 30
;	yStart : 10
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.04
G90; Absolute Cordinates
G1 X30 Y10 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y22 E-0.880000 F1300
G1 X10 E-0.400000 F1300
G1 E0.8
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1300
G1 E0.8
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1300
G1 E0.8
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1300
G1 E0.8
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - right)
;	xStart : 30
;	yStart : 10
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.04
G90; Absolute Cordinates
G1 X44 Y10 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y24.0 E-0.960000 F1300
G1 X-10 E-0.400000 F1300
G1 E0.8
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1300
G1 E0.8
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1300
G1 E0.8
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1300
G1 E0.8
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - left)
;	xStart : 70
;	yStart : 10
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.04
G90; Absolute Cordinates
G1 X70 Y10 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y22 E-0.880000 F1300
G1 X10 E-0.400000 F1300
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1300
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1300
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1300
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - right)
;	xStart : 70
;	yStart : 10
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.04
G90; Absolute Cordinates
G1 X84 Y10 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y24.0 E-0.960000 F1300
G1 X-10 E-0.400000 F1300
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1300
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1300
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1300
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - left)
;	xStart : 30
;	yStart : 75
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.04
G90; Absolute Cordinates
G1 X30 Y75 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y22 E-0.880000 F1450
G1 X10 E-0.400000 F1450
G1 E1
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1450
G1 E1
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1450
G1 E1
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1450
G1 E1
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - right)
;	xStart : 30
;	yStart : 75
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.04
G90; Absolute Cordinates
G1 X44 Y75 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y24.0 E-0.960000 F1450
G1 X-10 E-0.400000 F1450
G1 E1
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1450
G1 E1
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1450
G1 E1
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1450
G1 E1
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - left)
;	xStart : 70
;	yStart : 75
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.04
G90; Absolute Cordinates
G1 X70 Y75 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y22 E-0.880000 F1450
G1 X10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - right)
;	xStart : 70
;	yStart : 75
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.04
G90; Absolute Cordinates
G1 X84 Y75 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y24.0 E-0.960000 F1450
G1 X-10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - left)
;	xStart : 30
;	yStart : 75
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.04
G90; Absolute Cordinates
G1 X30 Y75 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y22 E-0.880000 F1450
G1 X10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - right)
;	xStart : 30
;	yStart : 75
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.04
G90; Absolute Cordinates
G1 X44 Y75 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y24.0 E-0.960000 F1450
G1 X-10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.400000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - left)
;	xStart : 70
;	yStart : 75
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.03
G90; Absolute Cordinates
G1 X70 Y75 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y22 E-0.660000 F1450
G1 X10 E-0.300000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.300000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.300000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 X10 E-0.300000 F1450
G1 E1.2
G1 Z2 F5000
G1 X-10 Y-4 Z-2 F5000 
G1 Z10 F5000


;Printing Capasitor (single Line - right)
;	xStart : 70
;	yStart : 75
;	Layers: 1
;	Layer Height: 0.2
;	Delay: 5
;	Printer: <printer.Printer object at 0x7ffeeaadf290>
;	Extrusion Rate: 0.03
G90; Absolute Cordinates
G1 X84 Y75 Z10 F5000 
G1 Z0.38 F5000
G91; Relative Cordinates
G1 Y24.0 E-0.720000 F1450
G1 X-10 E-0.300000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.300000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.300000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 X-10 E-0.300000 F1450
G1 E1.2
G1 Z2 F5000
G1 X10 Y-4 Z-2 F5000 
G1 Z10 F5000
G90; Absolute Cordinates
G1 X120 Y120 Z70 F5000 
M84
;END OF FILE
