from printer import*
import os

cap = stdCap
prnt = pvaPrintProfile



spongeX = 185
spongeY = 220
spongeZ = 6

save_directory = "gcodes"
os.makedirs(save_directory, exist_ok=True)

file_name = "Demonstration.gcode"
file_path = os.path.join(save_directory, file_name)

with open(file_path, 'w') as f:
    output = []

       # Start Gcode
    output.extend(gcodeStart(cap, prnt, fileName))

    output.extend(printPrimeLine(10, 10, 100, prnt))

    prnt.extrusion = 0.06
    prnt.retraction = 0.2
    prnt.feed_rate = 1000
    output.extend(singleLineCap_left(cap, prnt, 1, .2, 5, xStart=30, yStart=10))
    output.extend(singleLineCap_right(cap, prnt, 1, .2, 5, xStart=30, yStart=10))

    prnt.feed_rate = 1150
    prnt.retraction = 0.4
    output.extend(singleLineCap_left(cap, prnt, 1, .2, 5, xStart=70, yStart=10))
    output.extend(singleLineCap_right(cap, prnt, 1, .2, 5, xStart=70, yStart=10))
    
    prnt.extrusion = 0.04
    prnt.feed_rate = 1300
    prnt.retraction = 0.6
    output.extend(singleLineCap_left(cap, prnt, 1, .2, 5, xStart=30, yStart=75))
    output.extend(singleLineCap_right(cap, prnt, 1, .2, 5, xStart=30, yStart=75))

    prnt.feed_rate = 1450
    prnt.retraction = 0.8
    output.extend(singleLineCap_left(cap, prnt, 1, .2, 5, xStart=70, yStart=75))
    output.extend(singleLineCap_right(cap, prnt, 1, .2, 5, xStart=70, yStart=75))
   
    # Gcode End
    output.extend(absolute())
    output.extend(movePrintHead(120, 120, 70, prnt))
    output.extend(motorOff())

    #writing output into the file
    for line in output:
      f.write(line + '\n')

print(f"\n\n\n==================================================\n\n\t\t---- Success ----\n\n==================================================\n\n")
print(f"G-code file '{file_name}' in path {file_path}\n\n")
