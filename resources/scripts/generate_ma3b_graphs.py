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

# Graf 1: Polynom med dubbel rot (Uppgift P9)
# p(x) = (x + 1)^2(x - 2)(x - 4)
x = np.linspace(-2, 5, 400)
y = (x + 1)**2 * (x - 2) * (x - 4)

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', linewidth=2, label='$p(x) = (x+1)^2(x-2)(x-4)$')
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.5)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.5)
plt.grid(True, alpha=0.3)

# Markera nollställen
plt.plot(-1, 0, 'ro', markersize=8, label='Dubbel rot: $x = -1$')
plt.plot(2, 0, 'go', markersize=8, label='Enkel rot: $x = 2$')
plt.plot(4, 0, 'go', markersize=8, label='Enkel rot: $x = 4$')

# Markera punkten (0, 8)
plt.plot(0, 8, 'mo', markersize=8, label='Punkt: $(0, 8)$')

plt.xlabel('$x$', fontsize=12)
plt.ylabel('$p(x)$', fontsize=12)
plt.title('Polynom med dubbel rot vid $x = -1$', fontsize=14)
plt.legend(fontsize=10)
plt.ylim(-30, 30)

output_path = os.path.join(images_dir, "polynom_dubbel_rot.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# Graf 2: Styckvis definierad funktion (Uppgift G6)
x1 = np.linspace(-1, 1.99, 100)
y1 = x1**2 + 1

x2 = np.linspace(2.01, 5, 100)
y2 = 3*x2 - 1

plt.figure(figsize=(8, 6))
plt.plot(x1, y1, 'b-', linewidth=2, label='$f(x) = x^2 + 1$ för $x < 2$')
plt.plot(x2, y2, 'r-', linewidth=2, label='$f(x) = 3x - 1$ för $x > 2$')

# Markera punkten vid x = 2
plt.plot(2, 5, 'bo', markersize=8)  # Vänstergränsvärde
plt.plot(2, 5, 'ro', markersize=8)  # Högergränsvärde
plt.plot(2, 5, 'ko', markersize=10, fillstyle='none', markeredgewidth=2, label='$f(2) = 5$')

# Streckade linjer till gränsvärdena
plt.plot([2, 2], [0, 5], 'k--', alpha=0.5, linewidth=1)
plt.plot([0, 2], [5, 5], 'k--', alpha=0.5, linewidth=1)

plt.axhline(y=0, color='k', linestyle='-', linewidth=0.5)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.5)
plt.grid(True, alpha=0.3)

plt.xlabel('$x$', fontsize=12)
plt.ylabel('$f(x)$', fontsize=12)
plt.title('Styckvis definierad funktion', fontsize=14)
plt.legend(fontsize=10)
plt.xlim(-1, 5)
plt.ylim(0, 12)

output_path = os.path.join(images_dir, "styckvis_funktion.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

# Graf 3: Rationell funktion med hebbar diskontinuitet (Uppgift G9)
x_left = np.linspace(-2, 2.9, 100)
x_right = np.linspace(3.1, 8, 100)
y_left = (x_left**2 - 9) / (x_left - 3)
y_right = (x_right**2 - 9) / (x_right - 3)

plt.figure(figsize=(8, 6))
plt.plot(x_left, y_left, 'b-', linewidth=2, label='$g(x) = \\frac{x^2-9}{x-3}$')
plt.plot(x_right, y_right, 'b-', linewidth=2)

# Markera "hålet" vid x = 3
plt.plot(3, 6, 'wo', markersize=10, markeredgecolor='b', markeredgewidth=2, label='Hebbar diskontinuitet vid $x=3$')

# Streckad linje till gränsvärdet
plt.plot([3, 3], [0, 6], 'k--', alpha=0.5, linewidth=1)
plt.plot([0, 3], [6, 6], 'k--', alpha=0.5, linewidth=1)

plt.axhline(y=0, color='k', linestyle='-', linewidth=0.5)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.5)
plt.grid(True, alpha=0.3)

plt.xlabel('$x$', fontsize=12)
plt.ylabel('$g(x)$', fontsize=12)
plt.title('Rationell funktion med hebbar diskontinuitet', fontsize=14)
plt.legend(fontsize=10)
plt.xlim(-2, 8)
plt.ylim(-2, 12)

output_path = os.path.join(images_dir, "hebbar_diskontinuitet.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()

print("\n✓ Alla grafer genererade!")
