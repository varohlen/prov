"""
Generera graf för uppgift 9 i övningsprovet
Polynom: p(x) = 0.5(x-2)(x-3.5)(x-5)²
Har två nollställen vid x = 2 och x = 3.5, samt dubbel rot vid x = 5

Kör från: /Users/varohlen/utveckling/prov/resources/scripts
"""

import matplotlib.pyplot as plt
from matplotlib import font_manager
import numpy as np

# Använd Lexend Deca från systemfonter
plt.rcParams['font.family'] = 'sans-serif'
plt.rcParams['font.sans-serif'] = ['Lexend Deca', 'Arial', 'Helvetica', 'DejaVu Sans']

# Verifiera att fonten laddas
try:
    test_font = font_manager.FontProperties(family='Lexend Deca')
    print("✓ Använder Lexend Deca font")
except:
    print("⚠ Lexend Deca hittades inte, använder fallback-font")

# Skapa x-värden
x = np.linspace(-4, 8, 1000)

# Beräkna y-värden: p(x) = 0.3(x+1.5)(x-2.8)(x²+x+3)
# x²+x+3 har inga reella nollställen (diskriminant < 0)
y = 0.5 * (x - 2) * (x - 3.5) * (x - 5)**2

# Skapa figur
plt.figure(figsize=(10, 7))
plt.plot(x, y, 'b-', linewidth=2)

# Lägg till axlar
plt.axhline(y=0, color='k', linewidth=0.8)
plt.axvline(x=0, color='k', linewidth=0.8)

# Grid
plt.grid(True, alpha=0.3, linestyle='--')

# Etiketter
plt.xlabel('$x$', fontsize=14)
plt.ylabel('$y$', fontsize=14)
plt.title('Graf av polynom $p(x)$', fontsize=16)

# Sätt lämpliga gränser
plt.xlim(-2, 7)
plt.ylim(-3, 3)

# Lägg till rutnät med tydliga markeringar
plt.xticks(range(-2, 7))
plt.yticks(range(-3, 4))

# Spara figur i resources/images/
output_path = '../images/polynom_graf.png'
plt.savefig(output_path, dpi=150, bbox_inches='tight')
print(f'Graf sparad som {output_path}')
plt.close()
