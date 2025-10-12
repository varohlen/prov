#!/usr/bin/env python3
"""
Generate polynomial graph for question 14
p(x) with zeros at x = -2, 1, 3 and p(0) = 12
"""
import matplotlib.pyplot as plt
from matplotlib import font_manager
import numpy as np
import os

# Use Lexend Deca font
plt.rcParams['font.family'] = 'sans-serif'
plt.rcParams['font.sans-serif'] = ['Lexend Deca', 'Arial', 'Helvetica', 'DejaVu Sans']

# Get paths
script_dir = os.path.dirname(os.path.abspath(__file__))
images_dir = os.path.join(os.path.dirname(script_dir), "images")

# Define the polynomial
# p(x) = a(x + 2)(x - 1)(x - 3)
# p(0) = a(2)(-1)(-3) = 6a = 10
# Therefore a = 10/6 = 5/3
# p(x) = (5/3)(x + 2)(x - 1)(x - 3)

def p(x):
    return (5/3) * (x + 2) * (x - 1) * (x - 3)

# Create x values
x = np.linspace(-3, 4, 500)
y = p(x)

# Create figure with clean styling
plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', linewidth=2.5)

# Add axes
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)

# Add grid
plt.grid(True, alpha=0.3, linestyle='--', linewidth=0.5)

# NO markers - students should find intersections themselves

# Labels and title
plt.xlabel('$x$', fontsize=13)
plt.ylabel('$p(x)$', fontsize=13)
plt.title('Graf till polynomet $p(x)$', fontsize=15, pad=15)

# Set limits with nice round numbers
plt.xlim(-3, 4)
plt.ylim(-15, 15)

# Add tick marks at integer intervals
plt.xticks(range(-3, 5))
plt.yticks(range(-15, 16, 5))

# Save figure
output_path = os.path.join(images_dir, "polynomial_q14.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")

plt.close()
