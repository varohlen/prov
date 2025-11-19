#!/usr/bin/env python3
"""
Genererar visualiseringar för linjär optimering - Möbeltillverkning.
Problem: V = 5x + 3y
Begränsningar: 2x + y ≤ 600, x + 2y ≤ 800, x ≥ 0, y ≥ 0
"""

import matplotlib.pyplot as plt
import numpy as np
from pathlib import Path

# Konfigurera matplotlib
plt.rcParams['font.family'] = 'Lexend Deca'
plt.rcParams['font.size'] = 12
plt.rcParams['axes.unicode_minus'] = False

# Färgschema
COLOR_PRIMARY = '#2563eb'      # Blå
COLOR_SECONDARY = '#10b981'    # Grön
COLOR_ACCENT = '#f59e0b'       # Orange
COLOR_REGION = '#dbeafe'       # Ljusblå
COLOR_OPTIMAL = '#dc2626'      # Röd
COLOR_GRID = '#e5e7eb'         # Grå

# Output-mapp
OUTPUT_DIR = Path(__file__).parent.parent / 'images' / 'mat3b' / 'optimization_v2'
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

def setup_plot(title="", xlim=(0, 900), ylim=(0, 900)):
    """Skapar en grundläggande plot."""
    fig, ax = plt.subplots(figsize=(10, 10), dpi=150)
    ax.set_xlim(xlim)
    ax.set_ylim(ylim)
    ax.set_xlabel('x (antal soffor)', fontsize=14, fontweight='bold')
    ax.set_ylabel('y (antal fåtöljer)', fontsize=14, fontweight='bold')
    ax.set_title(title, fontsize=16, fontweight='bold', pad=20)
    ax.grid(True, alpha=0.3, color=COLOR_GRID, linewidth=0.5)
    ax.set_aspect('equal')
    ax.axhline(y=0, color='black', linewidth=2)
    ax.axvline(x=0, color='black', linewidth=2)
    return fig, ax

def plot_constraint1():
    """Begränsning 1: 2x + y ≤ 600 (monteringstid)"""
    fig, ax = setup_plot("Begränsning 1: Monteringstid")
    
    # Rita linjen 2x + y = 600
    x = np.array([0, 300])
    y = 600 - 2*x
    ax.plot(x, y, color=COLOR_PRIMARY, linewidth=4, label='2x + y = 600', zorder=3)
    
    # Markera skärningspunkter
    ax.plot(0, 600, 'o', color=COLOR_PRIMARY, markersize=12, zorder=4)
    ax.plot(300, 0, 'o', color=COLOR_PRIMARY, markersize=12, zorder=4)
    
    # Annotera punkter
    ax.annotate('(0, 600)', xy=(0, 600), xytext=(50, 600), 
                fontsize=12, fontweight='bold',
                bbox=dict(boxstyle='round', facecolor='white', edgecolor=COLOR_PRIMARY, linewidth=2))
    ax.annotate('(300, 0)', xy=(300, 0), xytext=(300, 50), 
                fontsize=12, fontweight='bold',
                bbox=dict(boxstyle='round', facecolor='white', edgecolor=COLOR_PRIMARY, linewidth=2))
    
    # Skugga lösningsområdet (under linjen)
    x_fill = np.array([0, 300, 0])
    y_fill = np.array([0, 0, 600])
    ax.fill(x_fill, y_fill, color=COLOR_PRIMARY, alpha=0.2, label='Tillåtet område')
    
    # Pil som visar lösningsområdet
    ax.annotate('', xy=(150, 150), xytext=(150, 250),
                arrowprops=dict(arrowstyle='->', lw=3, color=COLOR_ACCENT))
    ax.text(150, 120, 'Lösningsområde\n(2x + y ≤ 600)', ha='center', fontsize=11,
            bbox=dict(boxstyle='round', facecolor=COLOR_ACCENT, alpha=0.3))
    
    ax.legend(loc='upper right', fontsize=12, framealpha=0.9)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'constraint1_monteringstid.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Begränsning 1: Monteringstid")

def plot_constraint2():
    """Begränsning 2: x + 2y ≤ 800 (material)"""
    fig, ax = setup_plot("Begränsning 2: Material")
    
    # Rita linjen x + 2y = 800
    x = np.array([0, 800])
    y = (800 - x) / 2
    ax.plot(x, y, color=COLOR_SECONDARY, linewidth=4, label='x + 2y = 800', zorder=3)
    
    # Markera skärningspunkter
    ax.plot(0, 400, 'o', color=COLOR_SECONDARY, markersize=12, zorder=4)
    ax.plot(800, 0, 'o', color=COLOR_SECONDARY, markersize=12, zorder=4)
    
    # Annotera punkter
    ax.annotate('(0, 400)', xy=(0, 400), xytext=(50, 400), 
                fontsize=12, fontweight='bold',
                bbox=dict(boxstyle='round', facecolor='white', edgecolor=COLOR_SECONDARY, linewidth=2))
    ax.annotate('(800, 0)', xy=(800, 0), xytext=(800, 50), 
                fontsize=12, fontweight='bold',
                bbox=dict(boxstyle='round', facecolor='white', edgecolor=COLOR_SECONDARY, linewidth=2))
    
    # Skugga lösningsområdet (under linjen)
    x_fill = np.array([0, 800, 0])
    y_fill = np.array([0, 0, 400])
    ax.fill(x_fill, y_fill, color=COLOR_SECONDARY, alpha=0.2, label='Tillåtet område')
    
    # Pil som visar lösningsområdet
    ax.annotate('', xy=(300, 150), xytext=(300, 250),
                arrowprops=dict(arrowstyle='->', lw=3, color=COLOR_ACCENT))
    ax.text(300, 120, 'Lösningsområde\n(x + 2y ≤ 800)', ha='center', fontsize=11,
            bbox=dict(boxstyle='round', facecolor=COLOR_ACCENT, alpha=0.3))
    
    ax.legend(loc='upper right', fontsize=12, framealpha=0.9)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'constraint2_material.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Begränsning 2: Material")

def plot_first_quadrant():
    """Första kvadranten: x ≥ 0, y ≥ 0"""
    fig, ax = setup_plot("Begränsning 3: Första kvadranten (x ≥ 0, y ≥ 0)")
    
    # Markera första kvadranten
    x_fill = np.array([0, 900, 900, 0, 0])
    y_fill = np.array([0, 0, 900, 900, 0])
    ax.fill(x_fill, y_fill, color='lightgray', alpha=0.3, label='Första kvadranten', zorder=1)
    
    # Förstärk axlarna
    ax.axhline(y=0, color='black', linewidth=3, label='y ≥ 0')
    ax.axvline(x=0, color='black', linewidth=3, label='x ≥ 0')
    
    # Textbox med förklaring
    text = (
        "Första kvadranten:\n\n"
        "x ≥ 0 (höger om y-axeln)\n"
        "y ≥ 0 (ovanför x-axeln)\n\n"
        "Vi kan inte tillverka\n"
        "negativt antal möbler!"
    )
    ax.text(450, 450, text, fontsize=13, ha='center', va='center',
            bbox=dict(boxstyle='round', facecolor='lightyellow', alpha=0.9, linewidth=2))
    
    # Markera att andra kvadranter är otillåtna
    ax.text(-300, 450, '❌\nOtillåtet', ha='center', fontsize=12, color='red', fontweight='bold')
    ax.text(450, -300, '❌\nOtillåtet', ha='center', fontsize=12, color='red', fontweight='bold')
    ax.text(-300, -300, '❌\nOtillåtet', ha='center', fontsize=12, color='red', fontweight='bold')
    
    ax.legend(loc='upper right', fontsize=12, framealpha=0.9)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'first_quadrant.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Första kvadranten")

def plot_both_constraints():
    """Båda begränsningarna tillsammans"""
    fig, ax = setup_plot("Båda begränsningarna")
    
    # Rita båda linjerna
    # Begränsning 1: 2x + y = 600
    x1 = np.array([0, 300])
    y1 = 600 - 2*x1
    ax.plot(x1, y1, color=COLOR_PRIMARY, linewidth=4, label='2x + y = 600 (monteringstid)', zorder=3)
    
    # Begränsning 2: x + 2y = 800
    x2 = np.array([0, 800])
    y2 = (800 - x2) / 2
    ax.plot(x2, y2, color=COLOR_SECONDARY, linewidth=4, label='x + 2y = 800 (material)', zorder=3)
    
    ax.legend(loc='upper right', fontsize=12, framealpha=0.9)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'both_constraints.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Båda begränsningarna")

def plot_feasible_region():
    """Lösningsområdet (feasible region)"""
    fig, ax = setup_plot("Lösningsområde")
    
    # Rita båda linjerna
    x1 = np.array([0, 300])
    y1 = 600 - 2*x1
    ax.plot(x1, y1, color=COLOR_PRIMARY, linewidth=4, label='2x + y = 600', zorder=3)
    
    x2 = np.array([0, 800])
    y2 = (800 - x2) / 2
    ax.plot(x2, y2, color=COLOR_SECONDARY, linewidth=4, label='x + 2y = 800', zorder=3)
    
    # Hitta skärningspunkten mellan linjerna
    # 2x + y = 600 och x + 2y = 800
    # Från 2x + y = 600: y = 600 - 2x
    # Sätt in i x + 2y = 800: x + 2(600 - 2x) = 800
    # x + 1200 - 4x = 800 => -3x = -400 => x = 400/3
    # y = 600 - 2(400/3) = 600 - 800/3 = 1000/3
    x_intersect = 400/3  # ≈ 133.33
    y_intersect = 1000/3  # ≈ 333.33
    
    # Fyll lösningsområdet (fyrhörning med hörnpunkter: origo, (300,0), skärning, (0,400))
    x_fill = np.array([0, 300, x_intersect, 0, 0])
    y_fill = np.array([0, 0, y_intersect, 400, 0])
    ax.fill(x_fill, y_fill, color=COLOR_REGION, alpha=0.6, label='Lösningsområde', zorder=2)
    
    # Markera skärningspunkten
    ax.plot(x_intersect, y_intersect, 'o', color=COLOR_ACCENT, markersize=12, zorder=4)
    ax.annotate(f'({x_intersect:.1f}, {y_intersect:.1f})', 
                xy=(x_intersect, y_intersect), xytext=(x_intersect + 50, y_intersect + 30), 
                fontsize=11, fontweight='bold',
                bbox=dict(boxstyle='round', facecolor='yellow', alpha=0.8))
    
    ax.legend(loc='upper right', fontsize=12, framealpha=0.9)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'feasible_region.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Lösningsområde")

def plot_corner_points():
    """Hörnpunkter markerade"""
    fig, ax = setup_plot("Hörnpunkter")
    
    # Rita linjerna
    x1 = np.array([0, 300])
    y1 = 600 - 2*x1
    ax.plot(x1, y1, color=COLOR_PRIMARY, linewidth=3, alpha=0.5, zorder=2)
    
    x2 = np.array([0, 800])
    y2 = (800 - x2) / 2
    ax.plot(x2, y2, color=COLOR_SECONDARY, linewidth=3, alpha=0.5, zorder=2)
    
    # Fyll lösningsområdet (fyrhörning)
    x_intersect = 400/3
    y_intersect = 1000/3
    x_fill = np.array([0, 300, x_intersect, 0, 0])
    y_fill = np.array([0, 0, y_intersect, 400, 0])
    ax.fill(x_fill, y_fill, color=COLOR_REGION, alpha=0.3, zorder=1)
    
    # Hörnpunkter
    corners = [
        (0, 0, 'A'),
        (300, 0, 'B'),
        (x_intersect, y_intersect, 'C'),
        (0, 400, 'D')
    ]
    
    for x, y, label in corners:
        ax.plot(x, y, 'o', color=COLOR_OPTIMAL, markersize=16, 
                markeredgewidth=3, markeredgecolor='darkred', zorder=4)
        ax.text(x, y - 30, label, ha='center', fontsize=14, fontweight='bold',
                bbox=dict(boxstyle='circle', facecolor='yellow', edgecolor='darkred', linewidth=2))
    
    # Textbox med koordinater
    text = "Hörnpunkter:\n"
    text += "A: (0, 0)\n"
    text += "B: (300, 0)\n"
    text += f"C: ({x_intersect:.1f}, {y_intersect:.1f})\n"
    text += "D: (0, 400)"
    
    ax.text(550, 300, text, fontsize=12, family='monospace',
            bbox=dict(boxstyle='round', facecolor='lightyellow', alpha=0.9, linewidth=2))
    
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'corner_points.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Hörnpunkter")

def plot_objective_function():
    """Målfunktionslinjer"""
    fig, ax = setup_plot("Målfunktion: V = 5x + 3y")
    
    # Rita linjerna
    x1 = np.array([0, 300])
    y1 = 600 - 2*x1
    ax.plot(x1, y1, color=COLOR_PRIMARY, linewidth=3, alpha=0.5, zorder=2)
    
    x2 = np.array([0, 800])
    y2 = (800 - x2) / 2
    ax.plot(x2, y2, color=COLOR_SECONDARY, linewidth=3, alpha=0.5, zorder=2)
    
    # Fyll lösningsområdet (fyrhörning)
    x_intersect = 400/3
    y_intersect = 1000/3
    x_fill = np.array([0, 300, x_intersect, 0, 0])
    y_fill = np.array([0, 0, y_intersect, 400, 0])
    ax.fill(x_fill, y_fill, color=COLOR_REGION, alpha=0.3, zorder=1)
    
    # Rita målfunktionslinjer för olika V-värden
    # V = 5x + 3y => y = (V - 5x) / 3
    v_values = [600, 1200, 1666.67]  # 1666.67 är optimum
    colors = ['lightgreen', 'orange', 'red']
    labels = ['V = 600', 'V = 1200', 'V = 1667 (optimum)']
    
    for v, color, label in zip(v_values, colors, labels):
        x = np.linspace(0, v/5, 100)
        y = (v - 5*x) / 3
        ax.plot(x, y, '--', color=color, linewidth=3, alpha=0.8, label=label, zorder=3)
    
    # Markera hörnpunkter
    corners = [(0, 0), (300, 0), (x_intersect, y_intersect), (0, 400)]
    for x, y in corners:
        ax.plot(x, y, 'o', color=COLOR_OPTIMAL, markersize=12, zorder=4)
    
    ax.legend(loc='upper right', fontsize=12, framealpha=0.9)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'objective_function.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Målfunktion")

def plot_optimum():
    """Optimal lösning"""
    fig, ax = setup_plot("Optimal lösning")
    
    # Rita linjerna
    x1 = np.array([0, 300])
    y1 = 600 - 2*x1
    ax.plot(x1, y1, color=COLOR_PRIMARY, linewidth=3, alpha=0.5, zorder=2)
    
    x2 = np.array([0, 800])
    y2 = (800 - x2) / 2
    ax.plot(x2, y2, color=COLOR_SECONDARY, linewidth=3, alpha=0.5, zorder=2)
    
    # Fyll lösningsområdet (fyrhörning)
    x_intersect = 400/3
    y_intersect = 1000/3
    x_fill = np.array([0, 300, x_intersect, 0, 0])
    y_fill = np.array([0, 0, y_intersect, 400, 0])
    ax.fill(x_fill, y_fill, color=COLOR_REGION, alpha=0.3, zorder=1)
    
    # Beräkna vinst i alla hörnpunkter
    corners = [
        (0, 0, 5*0 + 3*0),
        (300, 0, 5*300 + 3*0),
        (x_intersect, y_intersect, 5*x_intersect + 3*y_intersect),
        (0, 400, 5*0 + 3*400)
    ]
    
    # Markera alla hörnpunkter
    for x, y, v in corners:
        if abs(v - 5*x_intersect - 3*y_intersect) < 1:  # Optimum
            ax.plot(x, y, 'o', color=COLOR_OPTIMAL, markersize=24, 
                    markeredgewidth=4, markeredgecolor='darkred', zorder=5)
            ax.annotate(f'OPTIMUM\n({x:.1f}, {y:.1f})\nV = {v:.0f}', 
                       xy=(x, y), xytext=(x + 100, y - 50),
                       fontsize=13, fontweight='bold',
                       bbox=dict(boxstyle='round', facecolor='yellow', 
                                edgecolor='darkred', linewidth=3),
                       arrowprops=dict(arrowstyle='->', lw=3, color='red'),
                       zorder=6)
        else:
            ax.plot(x, y, 'o', color='gray', markersize=12, alpha=0.5, zorder=4)
    
    # Textbox med alla värden
    text = "Vinst i hörnpunkter:\n\n"
    text += "A (0, 0):     V = 0\n"
    text += "B (300, 0):   V = 1500\n"
    text += f"C ({x_intersect:.1f}, {y_intersect:.1f}): V = {5*x_intersect + 3*y_intersect:.0f} ⭐\n"
    text += "D (0, 400):   V = 1200"
    
    ax.text(500, 600, text, fontsize=11, family='monospace',
            bbox=dict(boxstyle='round', facecolor='lightgreen', alpha=0.9, linewidth=2))
    
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'optimum.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Optimal lösning")

def main():
    """Genererar alla bilder."""
    print("Genererar bilder för linjär optimering v2...")
    print(f"Output: {OUTPUT_DIR}\n")
    
    plot_constraint1()
    plot_constraint2()
    plot_first_quadrant()
    plot_both_constraints()
    plot_feasible_region()
    plot_corner_points()
    plot_objective_function()
    plot_optimum()
    
    print(f"\n✅ Alla bilder genererade i {OUTPUT_DIR}")

if __name__ == "__main__":
    main()
