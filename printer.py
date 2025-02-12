import math

class Capacitor:
    def __init__(self, stem_len=None, arm_len=None, arm_count=None, gap=None, arm_gap=None, contact_patch_width=None):
        self.stem_len = stem_len
        self.arm_len = arm_len
        self.arm_count = arm_count
        self.gap = gap
        self.arm_gap = arm_gap
        self.contact_patch_width = contact_patch_width

class Printer:
    def __init__(self, extrusion, retraction, feed_rate, movement_speed, print_height, bed_height, z_hop, line_gap):
        self.extrusion = extrusion
        self.retraction = retraction
        self.feed_rate = feed_rate
        self.movement_speed = movement_speed
        self.print_height = print_height
        self.bed_height = bed_height
        self.z_hop = z_hop
        self.line_gap = line_gap

# Standard Capacitor Profile
stdCap = Capacitor(
    stem_len=10,
    arm_len=10,
    arm_count=4,
    gap=3,
    arm_gap=4,
    contact_patch_width = 5,
)

# PVA Print Profile
pvaPrintProfile = Printer(
    extrusion=0.15,
    retraction=0.1,
    feed_rate=450,
    movement_speed=2000,
    print_height= .3,
    bed_height= .3,
    z_hop= 5,
    line_gap=.1,
)

# MXene Ink Print Profile
MXeneInkPrintProfile = Printer(
    extrusion=0.003,
    retraction=0.01,
    feed_rate=1550,
    movement_speed=5000,
    print_height= 1.1,
    bed_height= .3,
    z_hop = 5,
    line_gap=.1
)

def gcodeStart(cap, prnt, filename):
    prnt_name = [name for name, value in globals().items() if value is prnt]
    prnt_name_str = prnt_name[0] if prnt_name else "UnknownPrinterConfig"

    cap_name = [name for name, value in globals().items() if value is cap]
    cap_name_str = cap_name[0] if cap_name else "UnknownCapasitorConfig"

    output = [
       f"; Beidaghi Lab - Capacitor File : {filename}",
        f"; Printer Profile: {prnt_name_str}",
        f"\t;Extrusion: {prnt.extrusion}",
        f"\t;Feed Rate: {prnt.feed_rate}",
        f"\t;Movement Speed: {prnt.movement_speed}",
        f"\t;Print Height: {prnt.print_height}",
        f"\t;Bed Height: {prnt.bed_height}",
        f"\t;Line Gap: {prnt.line_gap}",
        f"; Capacitor Profile: {cap_name_str}",
        f"\t;Stem Length: {cap.stem_len}",
        f"\t;Arm Length: {cap.arm_len}",
        f"\t;Arm Count: {cap.arm_count}",
        f"\t;Gap: {cap.gap}",
        f"\t;Arm Gap: {cap.arm_gap}",
        f"\t;Contact Patch Width: {cap.contact_patch_width}",
        ";Start G-Code",
        "",
        "",
        "BED_MESH_PROFILE LOAD=default",
        "G21 ; Set units to millimeters",
        "M104 S0",
        "M140 S0",
        "G28; Homing Printer",
        "G90;",
        "G92 E0 ; Reset extruder position"
    ]
    return output

def fileName(cap, prnt):
    prnt_name = [name for name, value in globals().items() if value is prnt]
    prnt_name_str = prnt_name[0] if prnt_name else "UnknownPrinter"
    
    filename = f"{cap.arm_count}X{cap.arm_len} - {prnt_name_str}"
    
    return filename

def movePrintHead(x_move, y_move, z_move, prnt):
    output = [f"G1 X{x_move} Y{y_move} Z{z_move} F{prnt.movement_speed}"]
    return output

def retract(prnt):
    output = [f"G1 E-{prnt.retraction}"]

def printX(x_move, prnt):
    output = [f"G1 X{x_move} E{(prnt.extrusion*abs(x_move)):f} F{prnt.feed_rate}"]
    return output

def printY(y_move, prnt):
    output = [f"G1 Y{y_move} E{(prnt.extrusion*abs(y_move)):f} F{prnt.feed_rate}"]
    return output

def moveX(x_move, prnt, lift):
    output = [f"G1 X{x_move} F{prnt.feed_rate}"]
    return output

def moveZ(z_move, prnt):
    output = [f"G1 Z{z_move} F{prnt.movement_speed}"]
    return output
def absolute():
    output = [f"G90; Absolute Cordinates"]
    return output

def relative():
    output = [f"G91; Relative Cordinates"]
    return output

def home():
    output = ["G28"]
    return output

def pause(delay):
    output = [f"G4 S{delay}"]
    return output


def print_circle(radius, x_center, y_center, segments, prnt):
    output = []
    
    output.extend(absolute())
    
    x_start = x_center + radius
    y_start = y_center
    output.extend(movePrintHead(x_start, y_start, prnt.print_height, prnt))
    

    angle_step = 2 * math.pi / segments
    arc_len = radius*angle_step
    e_value = arc_len*prnt.extrusion
    for i in range(segments):
        # Calculate the next point along the circumference
        angle = i * angle_step
        x = x_center + radius * math.cos(angle)
        y = y_center + radius * math.sin(angle)
        
        # Move command to the current point with updated extrusion
        output.extend([f"G1 X{x:.4f} Y{y:.4f} E{e_value:.4f} F{prnt.feed_rate}"])
        

     
    
    # Return to the starting point to close the circle
    output.extend([f"G1 X{x_start:.4f} Y{y_start:.4f} E{e_value:.4f} F{prnt.feed_rate}"])
    
    return output

def cleanNeedle(x, y, z, prnt):
    output = ["",
              ";",
              ";",
              ";Cleaning Needle Tip"]
    
    output.extend(absolute())
    output.extend(moveZ(25, prnt))
    output.extend(movePrintHead(x, y, 25, prnt))

    output.extend(moveZ(z, prnt))
    output.extend(moveZ(z+5, prnt))
    output.extend(moveZ(z, prnt))
    output.extend(moveZ(z+5, prnt))
    output.extend(moveZ(z, prnt))
    output.extend(moveZ(25, prnt))

    return output


def printCap(cap, prnt, xStart, yStart):
    output = ["",
              "",
              ";Printing Capasitor (double Line no lift)",
              f";\txStart : {xStart}",
              f";\tyStart : {yStart}"]
    #Moving to Start 
    output.extend(absolute())
    output.extend(movePrintHead(xStart, yStart, 10, prnt))
    output.extend(moveZ(prnt.print_height, prnt))
    output.extend(relative())
    #Left Side
    output.extend(printY(cap.stem_len-cap.arm_gap, prnt)) #Stem

    for arm in range (0, cap.arm_count, 1):  # arms
        output.extend(printY(cap.arm_gap, prnt))
        output.extend(printX(cap.arm_len, prnt))
        output.extend(printY(prnt.line_gap, prnt))
        output.extend(printX(-cap.arm_len, prnt))

    output.extend(printX(-prnt.line_gap, prnt))
    downTravel = cap.stem_len + (cap.arm_count*(prnt.line_gap))+(cap.arm_count-1)*(cap.arm_gap)
    output.extend(printY(-downTravel, prnt))

    moveZ(prnt.z_hop,prnt)

    #Moving to new Start

    output.extend(absolute())
    output.extend(movePrintHead(xStart + cap.arm_len + cap.gap, yStart, 10, prnt))
    output.extend(moveZ(prnt.print_height, prnt))
    output.extend(relative())
    output.extend(printY(cap.stem_len-(3*cap.arm_gap/2),prnt))
    for arm in range (0, cap.arm_count, 1):
        output.extend(printY(cap.arm_gap, prnt))
        output.extend(printX(-cap.arm_len, prnt))
        output.extend(printY(prnt.line_gap, prnt))
        output.extend(printX(cap.arm_len, prnt))

    downTravel = cap.stem_len + cap.arm_count*prnt.line_gap + (cap.arm_count-1)*cap.arm_gap - cap.arm_gap/2
    output.extend(printY(-downTravel, prnt))

    output.extend(moveZ(10, prnt))


    return output


def printPrimeLine(xStart, yStart, len, prnt):
    output = ["",
              "",
              ";Printing Priming Line ",
              f";\txStart : {xStart}",
              f";\tyStart : {yStart}"]

    output.extend(absolute())
    output.extend(movePrintHead(xStart, yStart, 10, prnt))
    output.extend(moveZ(prnt.bed_height, prnt))
    output.extend(relative())
    output.extend(printY(len,prnt)) 


    return output

def PrintLayeredCap(cap, prnt, xStart, yStart, layers, layer_height):
    temp = cap.print_height
    for layer in range(0, layers, 1):
        printCap(cap, prnt, xStart, yStart)
        cap.print_height += layer_height
    cap.print_height = temp    


def contactPatch(cap, prnt, xStart, yStart):
    output = ["",
              "",
              ";Printing contact Patch"]
    output.extend(absolute())
    output.extend(movePrintHead(xStart, yStart, prnt.z_hop, prnt))
    output.extend(moveZ(prnt.print_height, prnt))

    output.extend(relative())
    output.extend(printX(-cap.contact_patch_width/2, prnt))
    output.extend(printY(cap.contact_patch_width,prnt))
    output.extend(printX(cap.contact_patch_width, prnt))
    output.extend(printY(-cap.contact_patch_width,prnt))
    output.extend(printX(-cap.contact_patch_width/2, prnt))


    output.extend(moveZ(prnt.z_hop, prnt))
    output.extend(absolute())
    output.extend(movePrintHead(xStart + cap.arm_len + cap.gap, yStart, prnt.z_hop, prnt))
    output.extend(moveZ(prnt.print_height, prnt))

    output.extend(relative())
    output.extend(printX(-cap.contact_patch_width/2, prnt))
    output.extend(printY(cap.contact_patch_width,prnt))
    output.extend(printX(cap.contact_patch_width, prnt))
    output.extend(printY(-cap.contact_patch_width,prnt))
    output.extend(printX(-cap.contact_patch_width/2, prnt))

    return output


def singleLineCap(cap, prnt, layers, layer_height, delay, xStart, yStart):
    output = ["",
              "",
              ";Printing Capasitor (single Line)",
              f";\txStart : {xStart}",
              f";\tyStart : {yStart}"]
    
    #Moving to Start 
    output.extend(absolute())
    output.extend(movePrintHead(xStart, yStart, 10, prnt))
    output.extend(moveZ(prnt.print_height, prnt))
    output.extend(relative())
    
    #Left Side
    output.extend(printY(cap.stem_len + (cap.arm_count-1)*cap.arm_gap, prnt))

    for arm in range (0, cap.arm_count, 1):
        output.extend(printX(cap.arm_len, prnt))
        output.extend(moveZ(2, prnt))
        output.extend(movePrintHead(-cap.arm_len, -cap.arm_gap, -2, prnt))

    output.extend(moveZ(10, prnt))
    output.extend(absolute())
    output.extend(movePrintHead(xStart + cap.arm_len + cap.arm_gap, yStart, prnt.print_height, prnt))
    output.extend(relative())
    output.extend(printY(cap.stem_len + (cap.arm_count-1/2)*cap.arm_gap, prnt))

    for arm in range (0, cap.arm_count, 1):
        output.extend(printX(-cap.arm_len, prnt))
        output.extend(moveZ(2, prnt))
        output.extend(movePrintHead(cap.arm_len, -cap.arm_gap, -2, prnt))

    output.extend(moveZ(10, prnt))

    if layers == 1:
        return output
    
    else:
        for layer in range(1, layers, 1):
            output.extend(pause(delay))
            output.extend(absolute())
            output.extend(movePrintHead(xStart, yStart + cap.stem_len + (cap.arm_count-1)*cap.arm_gap, 10, prnt))
            output.extend(moveZ(prnt.print_height + layer_height * (layer + 1), prnt))
            output.extend(relative())

            for arm in range (0, cap.arm_count, 1):
                output.extend(printX(cap.arm_len, prnt))
                output.extend(moveZ(2, prnt))
                output.extend(movePrintHead(-cap.arm_len, -cap.arm_gap, -2, prnt))    
            
            output.extend(absolute())
            output.extend(movePrintHead(xStart + cap.arm_len + cap.arm_gap, yStart + cap.stem_len + (cap.arm_count-1/2)*cap.arm_gap, 10, prnt))
            output.extend(moveZ(prnt.print_height + layer_height * (layer + 1), prnt))
            output.extend(relative())

            for arm in range (0, cap.arm_count, 1):
                output.extend(printX(-cap.arm_len, prnt))
                output.extend(moveZ(2, prnt))
                output.extend(movePrintHead(cap.arm_len, -cap.arm_gap, -2, prnt))
        return output

            

            
def sidewaysCapacitor(cap, prnt, xStart, yStart):
    output = ["",
                "",
                ";Printing Capacitor (sideways)",
                f";\txStart : {xStart}",
                f";\tyStart : {yStart}"]

    # Moving to Start 
    output.extend(absolute())
    output.extend(movePrintHead(xStart, yStart, 10, prnt))
    output.extend(moveZ(prnt.print_height, prnt))
    output.extend(relative())

    # Bottom Side
    output.extend(printX(cap.stem_len + (cap.arm_count-1)*cap.arm_gap, prnt))

    for arm in range(cap.arm_count):
        output.extend(printY(cap.arm_len, prnt))
        output.extend(moveZ(2, prnt))
        output.extend(movePrintHead(-cap.arm_gap, -cap.arm_len, -2, prnt))

    output.extend(moveZ(10, prnt))
    output.extend(absolute())
    output.extend(movePrintHead(xStart, yStart + cap.arm_len + cap.arm_gap, prnt.print_height, prnt))
    output.extend(relative())
    output.extend(printX(cap.stem_len + (cap.arm_count-1/2)*cap.arm_gap, prnt))

    for arm in range(cap.arm_count):
        output.extend(printY(-cap.arm_len, prnt))
        output.extend(moveZ(2, prnt))
        output.extend(movePrintHead(-cap.arm_gap, cap.arm_len, -2, prnt))

    output.extend(moveZ(10, prnt))
    return output


def singleLineCap_left(cap, prnt, layers, layer_height, delay, xStart, yStart):
    output = ["",
              "",
              ";Printing Capasitor (single Line - left)",
              f";\txStart : {xStart}",
              f";\tyStart : {yStart}"]
    
    #Moving to Start 
    output.extend(absolute())
    output.extend(movePrintHead(xStart, yStart, 10, prnt))
    output.extend(moveZ(prnt.print_height, prnt))
    output.extend(relative())
    
    #Left Side
    output.extend(printY(cap.stem_len + (cap.arm_count-1)*cap.arm_gap, prnt))

    for arm in range (0, cap.arm_count, 1):
        output.extend(printX(cap.arm_len, prnt))
        output.extend(moveZ(2, prnt))
        output.extend(movePrintHead(-cap.arm_len, -cap.arm_gap, -2, prnt))

    output.extend(moveZ(10, prnt))

    if layers == 1:
        return output
    
    else:
        for layer in range(1, layers, 1):
            output.extend(pause(delay))
            output.extend(absolute())
            output.extend(movePrintHead(xStart, yStart + cap.stem_len + (cap.arm_count-1)*cap.arm_gap, 10, prnt))
            output.extend(moveZ(prnt.print_height + layer_height * (layer + 1), prnt))
            output.extend(relative())

            for arm in range (0, cap.arm_count, 1):
                output.extend(printX(cap.arm_len, prnt))
                output.extend(moveZ(2, prnt))
                output.extend(movePrintHead(-cap.arm_len, -cap.arm_gap, -2, prnt))    
        
        output.extend(moveZ(10, prnt))
        return output

def singleLineCap_left_absolute(cap, prnt, layers, layer_height, delay, xStart, yStart):
    output = ["",
                "",
                ";Printing Capacitor (single Line - left, absolute)",
                f";\txStart : {xStart}",
                f";\tyStart : {yStart}"]

    # Moving to Start
    output.extend(absolute())
    output.extend(movePrintHead(xStart, yStart, 10, prnt))
    output.extend(moveZ(prnt.print_height, prnt))

    # Left Side
    output.extend(printY(cap.stem_len + (cap.arm_count - 1) * cap.arm_gap, prnt))

    for arm in range(cap.arm_count):
        output.extend(printX(cap.arm_len, prnt))
        output.extend(moveZ(2, prnt))
        output.extend(movePrintHead(xStart, yStart + cap.stem_len + (arm + 1) * cap.arm_gap, prnt.print_height, prnt))

    output.extend(moveZ(10, prnt))

    if layers == 1:
        return output
    else:
        for layer in range(1, layers):
            output.extend(pause(delay))
            output.extend(absolute())
            output.extend(movePrintHead(xStart, yStart + cap.stem_len + (cap.arm_count - 1) * cap.arm_gap, 10, prnt))
            output.extend(moveZ(prnt.print_height + layer_height * (layer + 1), prnt))

            for arm in range(cap.arm_count):
                output.extend(printX(cap.arm_len, prnt))
                output.extend(moveZ(2, prnt))
                output.extend(movePrintHead(xStart, yStart + cap.stem_len + (arm + 1) * cap.arm_gap, prnt.print_height, prnt))

        output.extend(moveZ(10, prnt))
        return output

def singleLineCap_right(cap, prnt, layers, layer_height, delay, xStart, yStart):
    output = ["",
              "",
              ";Printing Capacitor (single Line - right)",
              f";\txStart : {xStart}",
              f";\tyStart : {yStart}"]
    
    # Moving to Start 
    output.extend(absolute())
    output.extend(movePrintHead(xStart + cap.arm_len + cap.gap, yStart, 10, prnt))
    output.extend(moveZ(prnt.print_height, prnt))
    output.extend(relative())

    # Right Side
    output.extend(printY(cap.stem_len + (cap.arm_count-1/2)*cap.arm_gap, prnt)) #stem

    for arm in range(cap.arm_count): # arms
        output.extend(printX(-cap.arm_len, prnt))
        output.extend(moveZ(2, prnt))
        output.extend(movePrintHead(cap.arm_len, -cap.arm_gap, -2, prnt))

    output.extend(moveZ(10, prnt))

    if layers == 1:
        return output
    
    else:
        for layer in range(1, layers):
            output.extend(pause(delay))
            output.extend(absolute())    
            output.extend(movePrintHead(xStart + cap.arm_len + cap.gap, yStart + cap.stem_len + (cap.arm_count-1/2)*cap.arm_gap, 10, prnt))
            output.extend(moveZ(prnt.print_height + layer_height * (layer + 1), prnt))
            output.extend(relative())

            for arm in range(cap.arm_count):
                output.extend(printX(-cap.arm_len, prnt))
                output.extend(moveZ(2, prnt))
                output.extend(movePrintHead(cap.arm_len, -cap.arm_gap, -2, prnt))
        return output
