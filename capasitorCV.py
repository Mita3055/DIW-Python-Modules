import cv2
import numpy as np
from skimage.morphology import skeletonize

def analyze_shape_component(binary_component, pixel_to_mm, shape_index):
    """
    Analyzes a single shape (as a binary image ROI) by computing:
      - Its total area.
      - Its skeleton.
      - Its branch segments (line segments) with length and average width.
    Also creates and saves an overlay image (skeleton in red over the binary shape).

    Args:
        binary_component (ndarray): Binary image (8-bit) of one shape.
        pixel_to_mm (float): Conversion factor (mm per pixel).
        shape_index (int): Index used to name the output overlay file.

    Returns:
        dict: Dictionary with the shape's area (mm²), branch segments, and overlay filename.
    """
    area_pixels = cv2.countNonZero(binary_component)
    area_mm2 = area_pixels * (pixel_to_mm ** 2)
    
    # Compute the distance transform for width estimation.
    dist_transform = cv2.distanceTransform(binary_component, cv2.DIST_L2, 3)
    
    # --- Skeletonize the shape ---
    # Convert to boolean (values 0 and 1) for skeletonize().
    binary_bool = (binary_component // 255).astype(np.uint8)
    skeleton = skeletonize(binary_bool)
    skeleton = (skeleton.astype(np.uint8)) * 255  # Convert back to 0/255 image

    # --- Identify branch points and endpoints in the skeleton ---
    def count_neighbors(y, x, skel):
        y_min = max(0, y - 1)
        y_max = min(skel.shape[0], y + 2)
        x_min = max(0, x - 1)
        x_max = min(skel.shape[1], x + 2)
        # Subtract one to not count the center pixel.
        return np.count_nonzero(skel[y_min:y_max, x_min:x_max]) - 1

    branch_points = []
    endpoints = []
    ys, xs = np.where(skeleton == 255)
    for y, x in zip(ys, xs):
        neighbors = count_neighbors(y, x, skeleton)
        if neighbors > 2:
            branch_points.append((y, x))
        elif neighbors == 1:
            endpoints.append((y, x))
    
    # --- Remove branch points to break the skeleton into individual segments ---
    skeleton_no_branches = skeleton.copy()
    for (y, x) in branch_points:
        skeleton_no_branches[y, x] = 0

    # --- Find connected components (each representing a branch segment) ---
    num_labels, labels = cv2.connectedComponents(skeleton_no_branches)
    segments = []
    for label in range(1, num_labels):  # label 0 is the background.
        coords = np.column_stack(np.where(labels == label))
        if coords.shape[0] == 0:
            continue

        # Calculate segment length (in pixels) and convert to mm.
        length_pixels = coords.shape[0]
        length_mm = length_pixels * pixel_to_mm

        # Estimate local width along the segment (using the distance transform).
        widths = []
        for (y, x) in coords:
            if y < dist_transform.shape[0] and x < dist_transform.shape[1]:
                widths.append(2 * dist_transform[y, x])
        avg_width_pixels = np.mean(widths) if widths else 0
        avg_width_mm = avg_width_pixels * pixel_to_mm

        segments.append({
            'length_mm': length_mm,
            'avg_width_mm': avg_width_mm,
            'num_pixels': length_pixels
        })
    
    # --- Create an overlay image: skeleton (red) on top of the binary shape ---
    overlay = cv2.cvtColor(binary_component, cv2.COLOR_GRAY2BGR)
    overlay[skeleton == 255] = [0, 0, 255]  # Red color for the skeleton.
    overlay_filename = f"shape_{shape_index}_skeleton_overlay.jpg"
    cv2.imwrite(overlay_filename, overlay)
    
    return {
        'area_mm2': area_mm2,
        'segments': segments,
        'overlay_filename': overlay_filename
    }

def analyze_multiple_shapes(image_path, pixel_to_mm):
    """
    Processes an image containing multiple non-touching shapes.
    Uses connected components to isolate each shape and analyzes it.

    Args:
        image_path (str): Path to the input image.
        pixel_to_mm (float): Conversion factor (mm per pixel).

    Returns:
        dict: Dictionary mapping shape identifiers to their analysis results.
    """
    img = cv2.imread(image_path)
    if img is None:
        raise IOError("Image not found. Check the file path.")
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    
    _, binary = cv2.threshold(gray, 128, 255, cv2.THRESH_BINARY_INV | cv2.THRESH_OTSU)
    
    # Use connected components to separate individual shapes.
    num_labels, labels, stats, _ = cv2.connectedComponentsWithStats(binary, connectivity=8)
    results = {}
    shape_index = 0
    for label in range(1, num_labels):  # Skip label 0 (background)
        x, y, w, h, area = stats[label]
        # Extract the ROI corresponding to this shape.
        shape_mask = binary[y:y+h, x:x+w]
        analysis = analyze_shape_component(shape_mask, pixel_to_mm, shape_index)
        results[f"shape_{shape_index}"] = analysis
        shape_index += 1
    
    return results

def print_results(results):
    """
    Prints the analysis results for each shape.
    """
    for shape_id, analysis in results.items():
        print(f"Results for {shape_id}:")
        print(f"  Total Area: {analysis['area_mm2']:.2f} mm²")
        print("  Branch Segments:")
        for i, seg in enumerate(analysis['segments']):
            print(f"    Segment {i+1}:")
            print(f"      Length: {seg['length_mm']:.2f} mm ({seg['num_pixels']} pixels)")
            print(f"      Average Line Width: {seg['avg_width_mm']:.2f} mm")
        print(f"  Overlay image saved as: {analysis['overlay_filename']}\n")

'''
    def main():
         Specify the input image and the conversion factor.
        image_path = "capacitor.jpeg"  # Make sure this image is in the same directory.
        # Example: if 100 pixels equal 1 mm, then pixel_to_mm = 0.01.
        pixel_to_mm = 0.01

        # Analyze the shapes in the image.
        results = analyze_multiple_shapes(image_path, pixel_to_mm)
        # Print the results.
        print_results(results)

    if __name__ == "__main__":
        main()
'''