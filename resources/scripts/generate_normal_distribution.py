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

# Skapa normalfördelning för längd hos människor
# Medelvärde: 175 cm, Standardavvikelse: 10 cm
x = np.linspace(145, 205, 1000)
mean = 175
std = 10
y = (1/(std * np.sqrt(2 * np.pi))) * np.exp(-0.5 * ((x - mean) / std) ** 2)

# Skapa figur
plt.figure(figsize=(10, 6))
plt.plot(x, y, linewidth=2.5, color='#2563eb')
plt.fill_between(x, y, alpha=0.3, color='#3b82f6')

# Etiketter och titel
plt.xlabel('Längd (cm)', fontsize=14, fontweight='bold')
plt.ylabel('Frekvens', fontsize=14, fontweight='bold')
plt.title('Kontinuerlig variation — Längd hos människor', fontsize=16, fontweight='bold', pad=20)

# Grid för läsbarhet
plt.grid(True, alpha=0.3, linestyle='--')

# Markera medelvärde
plt.axvline(mean, color='#dc2626', linestyle='--', linewidth=2, label=f'Medelvärde: {mean} cm')

# Markera standardavvikelser
plt.axvline(mean - std, color='#f59e0b', linestyle=':', linewidth=1.5, alpha=0.7)
plt.axvline(mean + std, color='#f59e0b', linestyle=':', linewidth=1.5, alpha=0.7)
plt.text(mean - std, max(y) * 0.95, f'{mean - std} cm', ha='center', fontsize=10, color='#f59e0b')
plt.text(mean + std, max(y) * 0.95, f'{mean + std} cm', ha='center', fontsize=10, color='#f59e0b')

# Legend
plt.legend(fontsize=11, loc='upper right')

# Justera layout
plt.tight_layout()

# Spara som PNG
script_dir = os.path.dirname(os.path.abspath(__file__))
images_dir = os.path.join(os.path.dirname(script_dir), "images")
output_path = os.path.join(images_dir, "normal_distribution_height.png")

# Skapa images-mappen om den inte finns
os.makedirs(images_dir, exist_ok=True)

plt.savefig(output_path, dpi=300, bbox_inches='tight', facecolor='white')
print(f"✓ Graf sparad: {output_path}")
plt.close()
