from printer import*
import os
from datetime import datetime

cap = electroCellCap
prnt = MXeneInkPrintProfile



spongeX = 185
spongeY = 220
spongeZ = 6

save_directory = "gcodes"
os.makedirs(save_directory, exist_ok=True)

date = datetime.now().strftime("%m_%d_%H_%M")
file_name = f"PrintibilityTest{date}.gcode"
file_path = os.path.join(save_directory, file_name)

with open(file_path, 'w') as f:
    output = []

    # Start Gcode
    output.extend(gcodeStart(cap, prnt, fileName))

    output.extend(printPrimeLine(2, 10, 60, prnt))
    output.extend(printPrimeLine(4, 10, 60, prnt))
    output.extend(printPrimeLine(6, 10, 60, prnt))
    '''''
    output.extend(contracting_square_wave(start_x=15, start_y=20, height=40, width=10, iterations=7, shrink_rate=0.8, prnt=prnt)) 
    output.extend(lattice(start_x=70, start_y=20, rows=8, cols=8, spacing=2, prnt=prnt))
    output.extend(lattice(start_x=90, start_y=20, rows=8, cols=8, spacing=1.5, prnt=prnt))
    prnt = MXeneProfile2_20_slide
    output.extend(endline_experiment_retraction(prnt, xStart=20, yStart=80, length=40, spacing=5, iterations=5, stop_dist=1, rate=1.1))
    prnt = MXeneProfile2_20_slide
    output.extend(endline_experiment_stopdist(prnt, xStart=20, yStart=80, length=40, spacing=5, iterations=5, stop_dist=2, rate=0.8))
    '''
    # Program 
    #output.extend(singleLineCap_left(cap, prnt, 1, .2, 5, xStart=10, yStart=10))
    #output.extend(singleLineCap_right(cap, prnt, 1, .2, 5, xStart=50, yStart=60))
    output.extend(printCap_doubleWall_contactPatch(cap, prnt, 140, 30))
    #output.extend(printCap(cap, prnt, 101, 35))
    #output.extend(printCap(cap, prnt, 120, 35))
    #output.extend(printCap(cap, prnt, 140, 5))
    #output.extend(printCap(cap, prnt, 140, 35))

    # Gcode End
    output.extend(absolute())
    prnt.movement_speed = 5000
    output.extend(absolute())
    output.extend(movePrintHead(180, 180, 70, prnt))
    output.extend(motorOff())


    output.extend([";END OF FILE"])

    #writing output into the file
    for line in output:
      f.write(line + '\n')

print(f"\n\n\n==================================================\n\n\t\t---- Success ----\n\n==================================================\n\n")
print(f"G-code file '{file_name}' in path {file_path}\n\n")
