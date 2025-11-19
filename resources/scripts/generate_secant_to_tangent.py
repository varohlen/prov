#!/usr/bin/env python3
"""
Genererar visualiseringar som visar hur en sekant övergår till en tangent.
Används i Matematik 3b (ändringskvot → tangent → derivata).
"""

import matplotlib.pyplot as plt
import numpy as np
from pathlib import Path
from typing import Optional

# Matplotlib-inställningar (matchar summor.se)
plt.rcParams['font.family'] = 'Lexend Deca'
plt.rcParams['font.size'] = 12
plt.rcParams['axes.unicode_minus'] = False

# Färgpalett
COLOR_CURVE = '#2563eb'      # Blå kurva
COLOR_SECANT = '#f59e0b'     # Orange sekant
COLOR_TANGENT = '#dc2626'    # Röd tangent
COLOR_POINT_A = '#10b981'    # Grön startpunkt
COLOR_POINT_B = '#1d4ed8'    # Mörkblå rörlig punkt
COLOR_GRID = '#e5e7eb'       # Ljust rutnät

# Utdata-mapp
OUTPUT_DIR = Path(__file__).parent.parent / 'images' / 'mat3b' / 'sekant_tangent'
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

# Funktion och derivata

def f(x: np.ndarray) -> np.ndarray:
    """Parabel som ger snälla värden i intervallet [0, 10]."""
    # f(x) = 0.1(x-2)(x-8) + 3
    return 0.1 * (x - 2) * (x - 8) + 3


def f_prime(x: np.ndarray) -> np.ndarray:
    """Analytisk derivata till f(x)."""
    # f'(x) = 0.2x - 1
    return 0.2 * x - 1


X0 = 4  # Baspunkt där vi vill ha tangenten
Y0 = f(X0)


def setup_plot(title: str):
    """Skapar ett grunddiagram med axlar, rutnät och kurvan f(x)."""
    fig, ax = plt.subplots(figsize=(10, 7), dpi=150)
    ax.set_xlim(0, 10)
    ax.set_ylim(0.5, 6.5)
    ax.set_xlabel('x', fontsize=14, fontweight='bold')
    ax.set_ylabel('y', fontsize=14, fontweight='bold')
    ax.set_title(title, fontsize=16, fontweight='bold', pad=18)
    ax.grid(True, which='both', color=COLOR_GRID, linewidth=0.75, alpha=0.6)
    ax.axhline(0, color='black', linewidth=1.2)
    ax.axvline(0, color='black', linewidth=1.2)
    x_vals = np.linspace(0, 10, 400)
    ax.plot(x_vals, f(x_vals), color=COLOR_CURVE, linewidth=3, label='Kurva $y = f(x)$')
    ax.scatter([X0], [Y0], color=COLOR_POINT_A, s=90, zorder=5, label=f'Punkt A ({X0}, f({X0}))')
    ax.annotate('A', xy=(X0, Y0), xytext=(X0 + 0.2, Y0 + 0.2), fontsize=12, fontweight='bold')
    return fig, ax


def draw_secant(ax, x1: float, show_label: bool = True):
    """Ritar sekanten mellan A (X0) och en punkt B (x1)."""
    y1 = f(x1)
    slope = (y1 - Y0) / (x1 - X0)
    x_line = np.linspace(min(X0, x1) - 0.5, max(X0, x1) + 0.5, 100)
    y_line = slope * (x_line - X0) + Y0

    label = f'Sekant (lutning ≈ {slope:.2f})' if show_label else None
    ax.plot(x_line, y_line, color=COLOR_SECANT, linewidth=2.8, linestyle='-', label=label)
    ax.scatter([x1], [y1], color=COLOR_POINT_B, s=90, zorder=5)
    ax.annotate('B', xy=(x1, y1), xytext=(x1 + 0.2, y1 + 0.2), fontsize=12, fontweight='bold')

    # Visa sekantens lutning
    ax.text(0.65, 0.92, f'Δy/Δx ≈ {slope:.2f}', transform=ax.transAxes,
            fontsize=12, bbox=dict(boxstyle='round', facecolor='white', alpha=0.8, edgecolor=COLOR_SECANT))


def draw_tangent(ax):
    """Ritar tangenten i X0."""
    slope = f_prime(X0)
    x_line = np.linspace(X0 - 2, X0 + 2, 100)
    y_line = slope * (x_line - X0) + Y0
    ax.plot(x_line, y_line, color=COLOR_TANGENT, linewidth=3, linestyle='--',
            label=f'Tangent (lutning = f\'({X0}) = {slope:.2f})')
    ax.text(0.62, 0.15, f'Tangentlutning ≈ {slope:.2f}', transform=ax.transAxes,
            fontsize=12, bbox=dict(boxstyle='round', facecolor='white', alpha=0.85, edgecolor=COLOR_TANGENT))


def plot_step(title: str, filename: str, x1: float, show_label: bool = True, show_annotation: Optional[str] = None):
    """Ritar ett steg där en sekant visas.

    Args:
        title: Diagramtitel
        filename: namn på filen som sparas
        x1: x-koordinaten för punkt B
        show_label: om sekanten skall ha legend-text
        show_annotation: valfri extra text placerad i figuren
    """
    fig, ax = setup_plot(title)
    draw_secant(ax, x1=x1, show_label=show_label)

    if show_annotation:
        ax.text(0.05, 0.82, show_annotation, transform=ax.transAxes,
                fontsize=12, bbox=dict(boxstyle='round', facecolor='#fef3c7', edgecolor='#f59e0b', linewidth=1.2))

    ax.legend(loc='upper right', fontsize=11)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / filename, bbox_inches='tight', dpi=150)
    plt.close()
    print(f"✓ {title}")


def plot_tangent_step():
    """Sista steget där tangenten tydligt markeras."""
    fig, ax = setup_plot('Steg 6: Tangenten i punkten A')
    draw_secant(ax, x1=4.1, show_label=False)
    draw_tangent(ax)

    ax.text(0.05, 0.78,
            'När punkt B närmar sig A får sekanten samma lutning som tangenten.\n'
            'Tangenten kan ses som "gränsvärdet" av sekantens lutningar.',
            transform=ax.transAxes,
            fontsize=12,
            bbox=dict(boxstyle='round', facecolor='#fee2e2', edgecolor=COLOR_TANGENT, linewidth=1.2))

    ax.legend(loc='upper right', fontsize=11)
    plt.tight_layout()
    plt.savefig(OUTPUT_DIR / 'step6_tangent.png', bbox_inches='tight', dpi=150)
    plt.close()
    print('✓ Steg 6: Tangenten i punkten A')


def main():
    print('Genererar bilder för sekant → tangent...')
    print(f'Output: {OUTPUT_DIR}\n')

    steps = [
        {
            'title': 'Steg 1: Sekant mellan två punkter',
            'filename': 'step1_sekant_definition.png',
            'x1': 7.5,
            'annotation': 'Sekant = linjen genom två punkter på kurvan.'
        },
        {
            'title': 'Steg 2: Punkt B flyttas närmare',
            'filename': 'step2_sekant_narmare.png',
            'x1': 6.0,
            'annotation': 'Vi låter punkt B glida mot A.'
        },
        {
            'title': 'Steg 3: Avståndet halveras igen',
            'filename': 'step3_sekant_ytterligare.png',
            'x1': 5.0,
            'annotation': 'Lutningen förändras när Δx blir mindre.'
        },
        {
            'title': 'Steg 4: Punkt B är mycket nära',
            'filename': 'step4_sekant_mycket_nara.png',
            'x1': 4.5,
            'annotation': 'Sekanten liknar nu den tangent vi vill hitta.'
        },
        {
            'title': 'Steg 5: Nästan tangent',
            'filename': 'step5_nastan_tangent.png',
            'x1': 4.2,
            'annotation': 'Δx är pyttelitet ⇒ lutningen≈ tangentens lutning.'
        }
    ]

    for i, step in enumerate(steps):
        plot_step(
            title=step['title'],
            filename=step['filename'],
            x1=step['x1'],
            show_label=(i == 0),
            show_annotation=step['annotation']
        )

    plot_tangent_step()

    print(f"\n✅ Alla bilder genererade i {OUTPUT_DIR}")


if __name__ == '__main__':
    main()
