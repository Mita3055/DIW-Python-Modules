import cv2
import numpy as np
from skimage.morphology import skeletonize
import csv

def binarize_and_filter(image_path):
    """
    Converts the input image to grayscale, applies binarization, and performs filtering.

    Args:
        image_path (str): Path to the input image.

    Returns:
        ndarray: Binary image after thresholding and filtering.
    """
    img = cv2.imread(image_path)
    if img is None:
        raise IOError("Image not found. Check the file path.")
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    _, binary = cv2.threshold(gray, 128, 255, cv2.THRESH_BINARY_INV | cv2.THRESH_OTSU)
    kernel = np.ones((3, 3), np.uint8)
    binary = cv2.morphologyEx(binary, cv2.MORPH_OPEN, kernel)
    binary = cv2.morphologyEx(binary, cv2.MORPH_CLOSE, kernel)
    return binary

def analyze_collapsing_square_wave(binary_component, pixel_to_mm, shape_index):
    """
    Analyzes a collapsing square wave by computing:
      - Its skeleton.
      - The lengths of each branch segment.
      - The local widths along each segment and their average.
    
    After computing the segments, the function writes all measured segments to a CSV file.
    
    Args:
        binary_component (ndarray): Binary image (8-bit) of the square wave.
        pixel_to_mm (float): Conversion factor (mm per pixel).
        shape_index (int): Index used to name the output CSV file.
    
    Returns:
        list: List of dictionaries, each representing a measured segment.
    """
    # Compute the distance transform for width estimation.
    dist_transform = cv2.distanceTransform(binary_component, cv2.DIST_L2, 3)
    
    # Skeletonize the binary image.
    binary_bool = (binary_component // 255).astype(np.uint8)
    skeleton = skeletonize(binary_bool)
    skeleton = (skeleton.astype(np.uint8)) * 255  # Convert back to 0/255 image

    # Function to count nonzero neighbors (excluding the center pixel)
    def count_neighbors(y, x, skel):
        y_min = max(0, y - 1)
        y_max = min(skel.shape[0], y + 2)
        x_min = max(0, x - 1)
        x_max = min(skel.shape[1], x + 2)
        return np.count_nonzero(skel[y_min:y_max, x_min:x_max]) - 1

    # Identify branch points and endpoints.
    branch_points = []
    endpoints = []
    ys, xs = np.where(skeleton == 255)
    for y, x in zip(ys, xs):
        neighbors = count_neighbors(y, x, skeleton)
        if neighbors > 2:
            branch_points.append((y, x))
        elif neighbors == 1:
            endpoints.append((y, x))
    
    # Remove branch points from the skeleton to break it into segments.
    skeleton_no_branches = skeleton.copy()
    for (y, x) in branch_points:
        skeleton_no_branches[y, x] = 0

    # Find connected components in the skeleton.
    num_labels, labels = cv2.connectedComponents(skeleton_no_branches)
    segments = []
    for label in range(1, num_labels):  # label 0 is background.
        coords = np.column_stack(np.where(labels == label))
        if coords.shape[0] == 0:
            continue

        # Calculate segment length (in pixels) and convert to mm.
        length_pixels = coords.shape[0]
        length_mm = length_pixels * pixel_to_mm

        # Estimate local width for each point along the segment.
        widths = []
        for (y, x) in coords:
            if y < dist_transform.shape[0] and x < dist_transform.shape[1]:
                # Multiply by 2 to get the full width at that point.
                widths.append(2 * dist_transform[y, x])
        # Convert widths to mm and calculate average (if widths exist).
        widths_mm = [w * pixel_to_mm for w in widths]
        avg_width_mm = np.mean(widths_mm) if widths_mm else 0

        # Store measured properties for this segment.
        segments.append({
            "label": label,
            "length_pixels": length_pixels,
            "length_mm": length_mm,
            "average_width_mm": avg_width_mm,
            "num_points": coords.shape[0]
        })

    # Write the measured segments to a CSV file.
    csv_filename = f"segments_{shape_index}.csv"
    with open(csv_filename, mode="w", newline="") as csv_file:
        fieldnames = ["label", "length_pixels", "length_mm", "average_width_mm", "num_points"]
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
        writer.writeheader()
        for seg in segments:
            writer.writerow(seg)

    print(f"Segment data written to {csv_filename}")
    return segments

# Example usage:
if __name__ == "__main__":
    image_path = "path/to/your/image.png"  # Update with your image path.
    pixel_to_mm = 0.1  # Set your conversion factor here.
    shape_index = 1  # Use an index if processing multiple shapes.
    
    binary = binarize_and_filter(image_path)
    analyze_collapsing_square_wave(binary, pixel_to_mm, shape_index)
