from printer import*
import os

cap = stdCap
prnt = MXeneInkPrintProfile

spongeX = 185
spongeY = 220
spongeZ = 6

save_directory = r"C:\Users\dmele\Desktop\Beidaghi Lab\DIW\G-Code Generator 11-21\Gcode Output"
os.makedirs(save_directory, exist_ok=True)

file_name = fileName(stdCap, MXeneInkPrintProfile)+".gcode" # Update File name as printer Paramiters Change

file_path = os.path.join(save_directory, file_name)

with open(file_path, 'w') as f:
    output = []

       # Start Gcode
    output.extend(gcodeStart(cap, prnt, fileName))

    output.extend(printPrimeLine(3, 20, 30, prnt))
        
    output.extend(singleLineCap(cap, prnt, 5, 1, 30, xStart=25, yStart=35))
    output.extend(singleLineCap_left(cap, prnt, 5, .1, 30, xStart=50, yStart=35))
    output.extend(singleLineCap_right(cap, prnt, 5, .1, 30, xStart=50, yStart=35))
    #writing output into the file
    for line in output:
        f.write(line + '\n')

print(f"\n\n\n==================================================\n\n\t\t---- Success ----\n\n==================================================\n\n")
print(f"G-code file '{file_name}' in path {file_path}\n\n")
