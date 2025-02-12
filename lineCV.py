import cv2
import numpy as np
import csv

img = cv2.imread("line.jpeg", cv2.IMREAD_GRAYSCALE)
if img is None:
    raise IOError("Image not found. Please check the file path.")

_, BW_img = cv2.threshold(img, 0, 255, cv2.THRESH_BINARY_INV + cv2.THRESH_OTSU)

kernel = np.ones((3, 3), np.uint8)
prossesed_img = cv2.morphologyEx(BW_img, cv2.MORPH_OPEN, kernel, iterations=1)
prossesed_img = cv2.morphologyEx(prossesed_img, cv2.MORPH_CLOSE, kernel, iterations=1)

conversion_factor = 0.1  # Conversion factor: 1 pixel = 0.1 mm
rows = []         
line_widths = []    

for row_index, row in enumerate(prossesed_img):
    # Find indices where the pixel value is white (i.e., 255)
    white_segment = np.where(row == 255)[0]
    if white_segment.size > 0:
        # Split white indices into contiguous groups (to separate the main line from any isolated noise)
        groups = np.split(white_segment, np.where(np.diff(white_segment) > 1)[0] + 1)
        # Assume the printed line is represented by the longest contiguous group
        largest_group = max(groups, key=len)
        # Calculate the width: difference between the last and first index plus one.
        width_pixel = int(largest_group[-1]) - int(largest_group[0]) + 1
        line_widths.append(width_pixel)
        # Convert the width to millimeters.
        width_mm = width_pixel * conversion_factor
        # Record the data: row number, width in pixels, and width in mm.
        rows.append((row_index, width_pixel, width_mm))
    # If no white pixels are found, the row is skipped.

if len(line_widths) == 0:
    raise ValueError("No line segments were detected. Check the input image or preprocessing steps.")

# ----- Compute Statistics in Pixels -----
average_width_pixels = np.mean(line_widths)
std_width_pixels = np.std(line_widths)
variance_width_pixels = np.var(line_widths)

# ----- Convert Measurements from Pixels to Millimeters -----
average_width_mm = average_width_pixels * conversion_factor
std_width_mm = std_width_pixels * conversion_factor
variance_width_mm = variance_width_pixels * (conversion_factor ** 2)

# ----- Print the Results -----
print("Line width statistics (in pixels):")
print("  Average line width: {:.2f} pixels".format(average_width_pixels))
print("  Standard deviation: {:.2f} pixels".format(std_width_pixels))
print("  Variance: {:.2f} pixels^2".format(variance_width_pixels))
print("\nConverted measurements (in millimeters):")
print("  Average line width: {:.2f} mm".format(average_width_mm))
print("  Standard deviation: {:.2f} mm".format(std_width_mm))
print("  Variance: {:.2f} mm^2".format(variance_width_mm))

# ----- Write the Recorded Data to a CSV File -----
csv_filename = "line_widths.csv"
with open(csv_filename, mode='w', newline='') as csvfile:
    csv_writer = csv.writer(csvfile)
    # Write the header row
    csv_writer.writerow(["row_number", "width_pixels", "width_mm"])
    # Write the data rows
    for row_data in rows:
        csv_writer.writerow(row_data)

print(f"\nCSV file '{csv_filename}' created with the recorded line width data.")