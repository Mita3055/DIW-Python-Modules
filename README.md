# G-Code Generator for DIW Capacitor Printing

**University of Arizona**  
**Department of Aerospace and Mechanical Engineering**  
**Beidaghi Electro-Chemical Research Lab**  

**Created By:**  
**Daniel Meles**  
**11/21/2024**  

---

## Description
This project provides a Python-based G-code generator tailored for a Direct Ink Writing (DIW) 3D printer. It automates the G-code generation for capacitors while allowing for the customization of dimensions and printing parameters. Additionally, it offers extended functionality such as layered printing, retraction, and pre-extrusion routines.

---

## Prerequisites
- Python 3.x

---

## File Structure
- **`main.py`**: Executes the G-code generation process using predefined configurations and saves the output.
- **`printer.py`**: Provides core classes (`Capacitor` and `Printer`) and functions to generate G-code commands.

---

## How to Use

### Changing the Output File Location
To specify where the generated G-code files will be saved:
1. Open `main.py`.
2. Locate the `save_directory` variable (line 11):
   ```python
   save_directory = r"C:\Users\dmele\Desktop\Beidaghi Lab\DIW\G-Code Generator 11-21\Gcode Output"
   ```
3. Replace the path with your desired location:
   ```python
   save_directory = r"C:\path\to\your\desired\directory"
   ```
4. Ensure the path exists or the program has permission to create it.

### Generating a G-code File
1. Open `main.py` and adjust the capacitor (`stdCap`) or printer profile (`MXeneInkPrintProfile`) in `printer.py` if needed.
2. Run the script:
   ```bash
   python main.py
   ```
3. Find the G-code file in the specified output directory. The filename dynamically reflects the capacitor and printer configurations.

---

## Important Functions

Below is a summary of critical functions in `printer.py`:

1. **`gcodeStart(cap, prnt, filename)`**:
   - Generates the starting G-code commands, including printer and capacitor configuration metadata.
   - Initializes the printer, homes axes, and prepares for printing.

2. **`printCap(cap, prnt, xStart, yStart)`**:
   - Generates G-code for printing a capacitor with two layers (double lines) without lifting the print head.

3. **`printPrimeLine(xStart, yStart, len, prnt)`**:
   - Prints a straight priming line to ensure consistent extrusion before printing begins.

4. **`cleanNeedle(x, y, z, prnt)`**:
   - Includes movements to clean the printer's needle tip by oscillating at a specified location.

5. **`print_circle(radius, x_center, y_center, segments, prnt)`**:
   - Generates commands to print a circular path, useful for rounded capacitor designs or tests.

6. **`singleLineCap(cap, prnt, xStart, yStart)`**:
   - Creates a single-line version of a capacitor.
   - Update 1/2/2025: Now includes layering functionality with an optional delay between layers. 

7. **`sidewaysCapacitor(cap, prnt, xStart, yStart)`**:
   - Produces a rotated capacitor layout, enabling side-by-side printing.

8. **`PrintLayeredCap(cap, prnt, xStart, yStart, layers, layer_height)`**:
   - Adds layered printing capabilities by stacking multiple capacitor layers with incremental height changes.

---


