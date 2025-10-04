import matplotlib.pyplot as plt
from matplotlib import font_manager
import numpy as np
import os

# Använd Lexend Deca från systemfonter
plt.rcParams['font.family'] = 'sans-serif'
plt.rcParams['font.sans-serif'] = ['Lexend Deca', 'Arial', 'Helvetica', 'DejaVu Sans']

# Verifiera att fonten laddas
try:
    # Testa att skapa en figur med fonten
    test_font = font_manager.FontProperties(family='Lexend Deca')
    print("✓ Använder Lexend Deca font")
except:
    print("⚠ Lexend Deca hittades inte, använder fallback-font")

x = np.linspace(0, 10, 400)
threshold = 5
step_custom = (x >= threshold).astype(float)

plt.figure(figsize=(6,4))
plt.plot(x, step_custom, color='blue')
plt.title("Stegfunktion med tröskelvärde 5 — Neuronbeslut för bevattning")
plt.xlabel("Linjär kombination av indata")
plt.ylabel("Utgång (beslut)")
plt.grid(True)
plt.ylim(-0.1, 1.1)

plt.text(1, 0.2, "Vattna inte", fontsize=10, color="red")
plt.text(6, 0.8, "Vattna", fontsize=10, color="green")
plt.axvline(threshold, color='gray', linestyle='--')
plt.text(threshold + 0.2, 0.05, "Tröskelvärde = 5", rotation=0, fontsize=9, color='gray')

# Spara som PNG istället för att visa interaktivt
# Spara i resources/images/ mappen
script_dir = os.path.dirname(os.path.abspath(__file__))
images_dir = os.path.join(os.path.dirname(script_dir), "images")
output_path = os.path.join(images_dir, "step_function.png")
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"✓ Graf sparad: {output_path}")
plt.close()
