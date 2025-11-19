import matplotlib.pyplot as plt
from matplotlib import font_manager
import numpy as np
import os

# Använd Lexend Deca från systemfonter
plt.rcParams['font.family'] = 'sans-serif'
plt.rcParams['font.sans-serif'] = ['Lexend Deca', 'Arial', 'Helvetica', 'DejaVu Sans']

# Verifiera att fonten laddas
try:
    test_font = font_manager.FontProperties(family='Lexend Deca')
    print("✓ Använder Lexend Deca font")
except:
    print("⚠ Lexend Deca hittades inte, använder fallback-font")

# Spara i resources/images/ mappen
script_dir = os.path.dirname(os.path.abspath(__file__))
images_dir = os.path.join(os.path.dirname(script_dir), "images")

# Skapa koordinatsystem för alla grafer
x = np.linspace(-1, 6, 400)

# ============================================================================
# STEG 1: Grundläggande olikheter
# ============================================================================

# Graf 1a: x > 0 (höger om y-axeln)
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='b', linestyle='--', linewidth=2, label='$x = 0$')
plt.fill_between([0, 6], -1, 6, alpha=0.3, color='blue', label='$x > 0$')
plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('Olikhet: $x > 0$', fontsize=14, fontweight='bold')
plt.legend(fontsize=11, loc='upper left')
plt.xlim(-1, 6)
plt.ylim(-1, 6)
output_path = os.path.join(images_dir, "olikhet_1a_x_positiv.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# Graf 1b: y > 0 (ovanför x-axeln)
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)
plt.axhline(y=0, color='r', linestyle='--', linewidth=2, label='$y = 0$')
plt.fill_between([-1, 6], 0, 6, alpha=0.3, color='red', label='$y > 0$')
plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('Olikhet: $y > 0$', fontsize=14, fontweight='bold')
plt.legend(fontsize=11, loc='upper left')
plt.xlim(-1, 6)
plt.ylim(-1, 6)
output_path = os.path.join(images_dir, "olikhet_1b_y_positiv.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# Graf 1c: x > 0 OCH y > 0 (första kvadranten)
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='b', linestyle='--', linewidth=2, label='$x = 0$')
plt.axhline(y=0, color='r', linestyle='--', linewidth=2, label='$y = 0$')
plt.fill_between([0, 6], 0, 6, alpha=0.4, color='purple', label='$x > 0$ och $y > 0$')
plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('System: $x > 0$ och $y > 0$', fontsize=14, fontweight='bold')
plt.legend(fontsize=11, loc='upper left')
plt.xlim(-1, 6)
plt.ylim(-1, 6)
output_path = os.path.join(images_dir, "olikhet_1c_forsta_kvadranten.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# ============================================================================
# STEG 2: Linjära olikheter
# ============================================================================

# Graf 2a: y < 2x + 1 (under en linje)
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)
y_line = 2*x + 1
plt.plot(x, y_line, 'b--', linewidth=2, label='$y = 2x + 1$')
plt.fill_between(x, -1, y_line, alpha=0.3, color='blue', label='$y < 2x + 1$')
plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('Olikhet: $y < 2x + 1$', fontsize=14, fontweight='bold')
plt.legend(fontsize=11, loc='upper left')
plt.xlim(-1, 6)
plt.ylim(-1, 6)
output_path = os.path.join(images_dir, "olikhet_2a_under_linje.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# Graf 2b: y > -x + 3 (över en linje)
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)
y_line = -x + 3
plt.plot(x, y_line, 'r--', linewidth=2, label='$y = -x + 3$')
plt.fill_between(x, y_line, 6, alpha=0.3, color='red', label='$y > -x + 3$')
plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('Olikhet: $y > -x + 3$', fontsize=14, fontweight='bold')
plt.legend(fontsize=11, loc='upper left')
plt.xlim(-1, 6)
plt.ylim(-1, 6)
output_path = os.path.join(images_dir, "olikhet_2b_over_linje.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# Graf 2c: Kombination av två linjära olikheter
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)
y_line1 = 2*x + 1
y_line2 = -x + 3
plt.plot(x, y_line1, 'b--', linewidth=2, label='$y = 2x + 1$')
plt.plot(x, y_line2, 'r--', linewidth=2, label='$y = -x + 3$')
# Fyll området mellan linjerna där båda villkoren uppfylls
# y < 2x + 1 betyder under blå linjen
# y > -x + 3 betyder över röda linjen
# Området är där y är över röda OCH under blå
y_lower = y_line2  # över -x + 3
y_upper = y_line1  # under 2x + 1
plt.fill_between(x, y_lower, y_upper, where=(y_upper >= y_lower), alpha=0.4, color='purple', 
                 label='$y < 2x + 1$ och $y > -x + 3$')
plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('System: $y < 2x + 1$ och $y > -x + 3$', fontsize=14, fontweight='bold')
plt.legend(fontsize=11, loc='upper left')
plt.xlim(-1, 6)
plt.ylim(-1, 6)
output_path = os.path.join(images_dir, "olikhet_2c_mellan_linjer.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# ============================================================================
# STEG 3: Progressiv uppbyggnad (4 bilder)
# ============================================================================

# Graf 3a: Första olikheten
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=1, color='b', linestyle='--', linewidth=2, label='$x \\geq 1$')
plt.fill_between([1, 9], -0.5, 6, alpha=0.3, color='blue')
plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('Steg 1: $x \\geq 1$', fontsize=14, fontweight='bold')
plt.legend(fontsize=11)
plt.xlim(-0.5, 9)
plt.ylim(-0.5, 6)
output_path = os.path.join(images_dir, "olikhet_3a_steg1.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# Graf 3b: Två olikheter
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=1, color='b', linestyle='--', linewidth=2, label='$x \\geq 1$')
plt.axhline(y=1, color='r', linestyle='--', linewidth=2, label='$y \\geq 1$')
plt.fill_between([1, 9], 1, 6, alpha=0.4, color='purple')
plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('Steg 2: $x \\geq 1$ och $y \\geq 1$', fontsize=14, fontweight='bold')
plt.legend(fontsize=11)
plt.xlim(-0.5, 9)
plt.ylim(-0.5, 6)
output_path = os.path.join(images_dir, "olikhet_3b_steg2.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# Graf 3c: Tre olikheter
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=1, color='b', linestyle='--', linewidth=2, label='$x \\geq 1$')
plt.axhline(y=1, color='r', linestyle='--', linewidth=2, label='$y \\geq 1$')
x_plot = np.linspace(-0.5, 9, 400)
y_line1 = -0.5*x_plot + 5
plt.plot(x_plot, y_line1, 'g--', linewidth=2, label='$y \\leq -0.5x + 5$')
# Fyll området: x >= 1, y >= 1, y <= -0.5x + 5
x_fill = x_plot[(x_plot >= 1)]
y_upper = -0.5*x_fill + 5
plt.fill_between(x_fill, 1, y_upper, where=(y_upper >= 1), alpha=0.4, color='green')
plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('Steg 3: + $y \\leq -0.5x + 5$', fontsize=14, fontweight='bold')
plt.legend(fontsize=10)
plt.xlim(-0.5, 9)
plt.ylim(-0.5, 6)
output_path = os.path.join(images_dir, "olikhet_3c_steg3.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# Graf 3d: Alla fyra olikheter (triangel från progressionen)
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=1, color='b', linestyle='--', linewidth=2, label='$x \\geq 1$')
plt.axhline(y=1, color='r', linestyle='--', linewidth=2, label='$y \\geq 1$')
x_plot = np.linspace(-0.5, 9, 400)
y_line1 = -0.5*x_plot + 5
y_line2 = 0.5*x_plot + 0.5
plt.plot(x_plot, y_line1, 'g--', linewidth=2, label='$y \\leq -0.5x + 5$')
plt.plot(x_plot, y_line2, 'm--', linewidth=2, label='$y \\geq 0.5x + 0.5$')
# Korrigerade hörn för triangeln
x_triangle = np.array([1, 1, 4.5, 1])
y_triangle = np.array([1, 4.5, 2.75, 1])
plt.fill(x_triangle, y_triangle, alpha=0.5, color='orange', label='Lösningsområde')
plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('Steg 4: + $y \\geq 0.5x + 0.5$', fontsize=14, fontweight='bold')
plt.legend(fontsize=10, loc='upper right')
plt.xlim(-0.5, 6)
plt.ylim(-0.5, 6)
output_path = os.path.join(images_dir, "olikhet_3d_steg4.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# ============================================================================
# STEG 4: Roliga former (triangel och fyrhörning)
# ============================================================================

# Graf 4a: Ny triangel (annorlunda än progressionsexemplet)
# System: x ≥ 0, y ≥ 0, y ≤ -x + 4
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)

# Definiera linjerna
y_line = -x + 4

plt.axvline(x=0, color='b', linestyle='--', linewidth=2, label='$x = 0$')
plt.axhline(y=0, color='r', linestyle='--', linewidth=2, label='$y = 0$')
plt.plot(x, y_line, 'g--', linewidth=2, label='$y = -x + 4$')

# Fyll triangelområdet
# Hörn: (0,0), (4,0), (0,4)
x_triangle = np.array([0, 4, 0, 0])
y_triangle = np.array([0, 0, 4, 0])
plt.fill(x_triangle, y_triangle, alpha=0.4, color='orange', 
         label='Lösningsområde')

plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('System: $x \\geq 0$, $y \\geq 0$, $y \\leq -x + 4$', fontsize=14, fontweight='bold')
plt.legend(fontsize=10, loc='upper right')
plt.xlim(-0.5, 5)
plt.ylim(-0.5, 5)
output_path = os.path.join(images_dir, "olikhet_4a_triangel.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# Graf 4b: Fyrhörning
# System: x ≥ 1, y ≥ 1, y ≤ 3, y ≤ -0.5x + 5
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.8)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.8)

# Definiera linjerna - använd längre x-intervall för att rita hela linjen
x_extended = np.linspace(-1, 10, 400)
y_line = -0.5*x_extended + 5

plt.axvline(x=1, color='b', linestyle='--', linewidth=2, label='$x = 1$')
plt.axhline(y=1, color='r', linestyle='--', linewidth=2, label='$y = 1$')
plt.axhline(y=3, color='g', linestyle='--', linewidth=2, label='$y = 3$')
plt.plot(x_extended, y_line, 'm--', linewidth=2, label='$y = -0.5x + 5$')

# Beräkna hörn för fyrhörningen (moturs från nedre vänster):
# 1. Skärning x=1 och y=1: (1, 1)
# 2. Skärning x=1 och y=3: (1, 3)
# 3. Skärning y=3 och y=-0.5x+5: 3 = -0.5x + 5 => x = 4, (4, 3)
# 4. Skärning y=1 och y=-0.5x+5: 1 = -0.5x + 5 => x = 8, (8, 1)

x_quad = np.array([1, 1, 4, 8, 1])
y_quad = np.array([1, 3, 3, 1, 1])
plt.fill(x_quad, y_quad, alpha=0.4, color='cyan', 
         label='Lösningsområde')

plt.grid(True, alpha=0.3)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$y$', fontsize=12)
plt.title('System: $x \\geq 1$, $y \\geq 1$, $y \\leq 3$, $y \\leq -0.5x + 5$', 
          fontsize=12, fontweight='bold')
plt.legend(fontsize=9, loc='upper right')
plt.xlim(-0.5, 9)
plt.ylim(-0.5, 5)
output_path = os.path.join(images_dir, "olikhet_4b_fyrhörning.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

print("\n✓ Alla grafer för system av olikheter genererade!")
print(f"✓ Totalt 13 bilder skapade i {images_dir}")
