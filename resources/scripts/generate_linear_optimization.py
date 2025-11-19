#!/usr/bin/env python3
"""
Genererar steg-för-steg visualiseringar för linjär optimering.
Exempel: Möbeltillverkning med bord och stolar.
"""

import matplotlib.pyplot as plt
import numpy as np
from pathlib import Path

# Konfigurera matplotlib för svenska tecken och font
plt.rcParams['font.family'] = 'Lexend Deca'
plt.rcParams['font.size'] = 11
plt.rcParams['axes.unicode_minus'] = False

# Färgschema (matchar summor.se)
COLOR_PRIMARY = '#2563eb'      # Blå
COLOR_SECONDARY = '#10b981'    # Grön
COLOR_ACCENT = '#f59e0b'       # Orange
COLOR_REGION = '#dbeafe'       # Ljusblå
COLOR_OPTIMAL = '#dc2626'      # Röd
COLOR_GRID = '#e5e7eb'         # Grå

# Output-mapp
OUTPUT_DIR = Path(__file__).parent.parent / 'images' / 'mat3b' / 'linear_optimization'
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

def setup_plot(title=""):
    """Skapar en grundläggande plot med rutnät."""
    fig, ax = plt.subplots(figsize=(10, 8), dpi=150)
    ax.set_xlim(-0.5, 13)
    ax.set_ylim(-0.5, 13)
    ax.set_xlabel('x (antal bord)', fontsize=12, fontweight='bold')
    ax.set_ylabel('y (antal stolar)', fontsize=12, fontweight='bold')
    ax.set_title(title, fontsize=14, fontweight='bold', pad=20)
    ax.grid(True, alpha=0.3, color=COLOR_GRID)
    ax.set_aspect('equal')
    ax.axhline(y=0, color='black', linewidth=1.5)
    ax.axvline(x=0, color='black', linewidth=1.5)
    return fig, ax

def plot_step1_problem():
    """Steg 1: Problemformulering"""
    fig, ax = setup_plot("Steg 1: Problemformulering")
    
    # Textbox med problemet
    problem_text = (
        "Problem:\n"
        "En möbelfabrik tillverkar bord och stolar.\n\n"
        "• Ett bord tar 3 timmar och ger 500 kr vinst\n"
        "• En stol tar 1 timme och ger 200 kr vinst\n"
        "• Fabriken har 12 timmar per dag\n\n"
        "Hur många bord (x) och stolar (y) ska\n"
        "tillverkas för maximal vinst?"
    )
    
    ax.text(6.5, 6.5, problem_text, 
            bbox=dict(boxstyle='round', facecolor='wheat', alpha=0.8),
            fontsize=11, ha='center', va='center',
            family='monospace')
    
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'step1_problem.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Steg 1: Problemformulering")

def plot_step2_variables():
    """Steg 2: Definiera variabler och målfunktion"""
    fig, ax = setup_plot("Steg 2: Variabler och målfunktion")
    
    variables_text = (
        "Variabler:\n"
        "x = antal bord\n"
        "y = antal stolar\n\n"
        "Målfunktion (maximera):\n"
        "z = 500x + 200y kr\n\n"
        "Begränsningar:\n"
        "3x + y ≤ 12  (tid)\n"
        "x ≥ 0\n"
        "y ≥ 0"
    )
    
    ax.text(6.5, 6.5, variables_text, 
            bbox=dict(boxstyle='round', facecolor='lightblue', alpha=0.8),
            fontsize=12, ha='center', va='center',
            family='monospace', fontweight='bold')
    
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'step2_variables.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Steg 2: Variabler och målfunktion")

def plot_step3_first_constraint():
    """Steg 3: Rita första begränsningen"""
    fig, ax = setup_plot("Steg 3: Tidsbegränsning (3x + y ≤ 12)")
    
    # Rita linjen 3x + y = 12
    x = np.array([0, 4])
    y = 12 - 3*x
    ax.plot(x, y, color=COLOR_PRIMARY, linewidth=3, label='3x + y = 12')
    
    # Markera skärningspunkter
    ax.plot(0, 12, 'o', color=COLOR_PRIMARY, markersize=10)
    ax.plot(4, 0, 'o', color=COLOR_PRIMARY, markersize=10)
    
    # Annotera punkter
    ax.annotate('(0, 12)', xy=(0, 12), xytext=(-1, 12), fontsize=10, fontweight='bold')
    ax.annotate('(4, 0)', xy=(4, 0), xytext=(4, -1), fontsize=10, fontweight='bold')
    
    # Pil som visar lösningsområdet
    ax.arrow(2, 3, 0, -1, head_width=0.3, head_length=0.3, fc=COLOR_ACCENT, ec=COLOR_ACCENT)
    ax.text(2, 1.5, 'Lösningsområde\n(under linjen)', ha='center', fontsize=10, 
            bbox=dict(boxstyle='round', facecolor=COLOR_ACCENT, alpha=0.3))
    
    ax.legend(loc='upper right', fontsize=11)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'step3_constraint1.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Steg 3: Första begränsningen")

def plot_step4_all_constraints():
    """Steg 4: Alla begränsningar"""
    fig, ax = setup_plot("Steg 4: Alla begränsningar")
    
    # Rita linjen 3x + y = 12
    x = np.array([0, 4])
    y = 12 - 3*x
    ax.plot(x, y, color=COLOR_PRIMARY, linewidth=3, label='3x + y ≤ 12')
    
    # Rita x ≥ 0 och y ≥ 0 (redan gjort med axlarna)
    ax.axhline(y=0, color='black', linewidth=2, label='y ≥ 0')
    ax.axvline(x=0, color='black', linewidth=2, label='x ≥ 0')
    
    ax.legend(loc='upper right', fontsize=11)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'step4_all_constraints.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Steg 4: Alla begränsningar")

def plot_step5_feasible_region():
    """Steg 5: Markera lösningsområdet"""
    fig, ax = setup_plot("Steg 5: Lösningsområde (feasible region)")
    
    # Rita linjen 3x + y = 12
    x_line = np.array([0, 4])
    y_line = 12 - 3*x_line
    ax.plot(x_line, y_line, color=COLOR_PRIMARY, linewidth=3, label='3x + y = 12')
    
    # Fyll lösningsområdet
    x_fill = np.array([0, 4, 0, 0])
    y_fill = np.array([0, 0, 12, 0])
    ax.fill(x_fill, y_fill, color=COLOR_REGION, alpha=0.5, label='Lösningsområde')
    
    ax.legend(loc='upper right', fontsize=11)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'step5_feasible_region.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Steg 5: Lösningsområde")

def plot_step6_corner_points():
    """Steg 6: Identifiera hörnpunkter"""
    fig, ax = setup_plot("Steg 6: Hörnpunkter")
    
    # Rita linjen och området
    x_line = np.array([0, 4])
    y_line = 12 - 3*x_line
    ax.plot(x_line, y_line, color=COLOR_PRIMARY, linewidth=3)
    
    x_fill = np.array([0, 4, 0, 0])
    y_fill = np.array([0, 0, 12, 0])
    ax.fill(x_fill, y_fill, color=COLOR_REGION, alpha=0.3)
    
    # Markera hörnpunkter
    corners = [(0, 0), (4, 0), (0, 12)]
    for corner in corners:
        ax.plot(corner[0], corner[1], 'o', color=COLOR_OPTIMAL, markersize=15, 
                markeredgewidth=2, markeredgecolor='darkred')
        ax.annotate(f'{corner}', xy=corner, xytext=(corner[0]+0.5, corner[1]+0.5), 
                   fontsize=12, fontweight='bold',
                   bbox=dict(boxstyle='round', facecolor='yellow', alpha=0.8))
    
    # Textbox med värden
    values_text = (
        "Beräkna z = 500x + 200y:\n\n"
        "(0, 0):  z = 0 kr\n"
        "(4, 0):  z = 2000 kr\n"
        "(0, 12): z = 2400 kr"
    )
    ax.text(8, 6, values_text, 
            bbox=dict(boxstyle='round', facecolor='lightyellow', alpha=0.9),
            fontsize=11, ha='left', va='center', family='monospace')
    
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'step6_corner_points.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Steg 6: Hörnpunkter")

def plot_step7_objective_function():
    """Steg 7: Målfunktionslinjer"""
    fig, ax = setup_plot("Steg 7: Målfunktion z = 500x + 200y")
    
    # Rita linjen och området
    x_line = np.array([0, 4])
    y_line = 12 - 3*x_line
    ax.plot(x_line, y_line, color=COLOR_PRIMARY, linewidth=3, label='Begränsning')
    
    x_fill = np.array([0, 4, 0, 0])
    y_fill = np.array([0, 0, 12, 0])
    ax.fill(x_fill, y_fill, color=COLOR_REGION, alpha=0.3)
    
    # Rita målfunktionslinjer för olika z-värden
    # z = 500x + 200y => y = (z - 500x) / 200
    z_values = [1000, 2000, 2400]
    colors = ['lightgreen', 'orange', 'red']
    
    for z, color in zip(z_values, colors):
        x = np.linspace(0, z/500, 100)
        y = (z - 500*x) / 200
        ax.plot(x, y, '--', color=color, linewidth=2, alpha=0.7, label=f'z = {z} kr')
    
    # Markera optimum
    ax.plot(0, 12, 'o', color=COLOR_OPTIMAL, markersize=20, 
            markeredgewidth=3, markeredgecolor='darkred', label='OPTIMUM')
    ax.annotate('OPTIMUM\n(0, 12)\nz = 2400 kr', xy=(0, 12), xytext=(2, 10), 
               fontsize=12, fontweight='bold',
               bbox=dict(boxstyle='round', facecolor='yellow', alpha=0.9),
               arrowprops=dict(arrowstyle='->', lw=2, color='red'))
    
    ax.legend(loc='upper right', fontsize=10)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'step7_objective_function.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Steg 7: Målfunktion")

def plot_step8_solution():
    """Steg 8: Slutsats"""
    fig, ax = setup_plot("Steg 8: Lösning och tolkning")
    
    # Rita linjen och området
    x_line = np.array([0, 4])
    y_line = 12 - 3*x_line
    ax.plot(x_line, y_line, color=COLOR_PRIMARY, linewidth=3)
    
    x_fill = np.array([0, 4, 0, 0])
    y_fill = np.array([0, 0, 12, 0])
    ax.fill(x_fill, y_fill, color=COLOR_REGION, alpha=0.3)
    
    # Markera optimum
    ax.plot(0, 12, 'o', color=COLOR_OPTIMAL, markersize=20, 
            markeredgewidth=3, markeredgecolor='darkred')
    
    # Lösning
    solution_text = (
        "LÖSNING:\n\n"
        "Tillverka:\n"
        "• 0 bord\n"
        "• 12 stolar\n\n"
        "Maximal vinst:\n"
        "2400 kr/dag\n\n"
        "Tolkning:\n"
        "Stolar ger bättre vinst\n"
        "per arbetstimme!"
    )
    
    ax.text(6.5, 6, solution_text, 
            bbox=dict(boxstyle='round', facecolor='lightgreen', alpha=0.9),
            fontsize=12, ha='center', va='center',
            family='monospace', fontweight='bold')
    
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'step8_solution.png', bbox_inches='tight', dpi=150)
    plt.close()
    print("✓ Steg 8: Lösning")

def main():
    """Genererar alla bilder."""
    print("Genererar bilder för linjär optimering...")
    print(f"Output: {OUTPUT_DIR}\n")
    
    plot_step1_problem()
    plot_step2_variables()
    plot_step3_first_constraint()
    plot_step4_all_constraints()
    plot_step5_feasible_region()
    plot_step6_corner_points()
    plot_step7_objective_function()
    plot_step8_solution()
    
    print(f"\n✅ Alla bilder genererade i {OUTPUT_DIR}")

if __name__ == "__main__":
    main()
