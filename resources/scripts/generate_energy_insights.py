#!/usr/bin/env python3
"""Generate visualization assets for the AI Summor lesson."""

from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np

DATA = [
    {"day": 1, "temp": 15, "energy": 22},
    {"day": 2, "temp": 16, "energy": 23},
    {"day": 3, "temp": 13, "energy": 27},
    {"day": 4, "temp": 18, "energy": 20},
    {"day": 5, "temp": 14, "energy": 25},
]

temps = np.array([row["temp"] for row in DATA], dtype=float)
energy = np.array([row["energy"] for row in DATA], dtype=float)
days = np.array([row["day"] for row in DATA], dtype=int)

SCRIPT_DIR = Path(__file__).resolve().parent
output_dir = SCRIPT_DIR

# --- Plot 1: regression vs data ---
coeffs = np.polyfit(temps, energy, 1)
line_x = np.linspace(temps.min() - 1, temps.max() + 1, 100)
line_y = np.polyval(coeffs, line_x)

fig, ax = plt.subplots(figsize=(6, 4))
ax.scatter(temps, energy, s=80, color="#2563EB", edgecolor="white", linewidth=1.2, label="Observationer")
ax.plot(line_x, line_y, color="#F97316", linewidth=2.5, label=f"Regression: y = {coeffs[0]:.2f}x + {coeffs[1]:.2f}")

for day, t, e in zip(days, temps, energy):
    ax.annotate(f"Dag {day}", xy=(t, e), xytext=(4, 4), textcoords="offset points", fontsize=9)

ax.set_title("Temperatur vs energiförbrukning")
ax.set_xlabel("Temperatur (°C)")
ax.set_ylabel("Energi (kWh)")
ax.grid(alpha=0.3)
ax.legend()
fig.tight_layout()

regression_path = output_dir / "energy_regression.png"
fig.savefig(regression_path, dpi=300)
plt.close(fig)

# --- Plot 2: statistiska mått ---
mean_val = energy.mean()
median_val = float(np.median(energy))
q1 = float(np.percentile(energy, 25))
q3 = float(np.percentile(energy, 75))

fig, ax = plt.subplots(figsize=(4, 4))
box = ax.boxplot(
    energy,
    widths=0.4,
    vert=True,
    patch_artist=True,
    boxprops={"facecolor": "#D9F99D", "edgecolor": "#15803D", "linewidth": 1.5},
    medianprops={"color": "#EA580C", "linewidth": 2},
    whiskerprops={"linewidth": 1.5},
    capprops={"linewidth": 1.5},
)

ax.scatter(1.1, mean_val, color="#1D4ED8", marker="D", s=60, label=f"Medel = {mean_val:.1f}")
ax.scatter(1.1, median_val, color="#EA580C", marker="s", s=50, label=f"Median = {median_val:.1f}")
ax.set_xticks([])
ax.set_ylabel("Energi (kWh)")
ax.set_title("Statistik för energiförbrukning")
ax.text(1.25, q3, f"Övre kvartil ≈ {q3:.1f}", fontsize=9)
ax.text(1.25, q1, f"Nedre kvartil ≈ {q1:.1f}", fontsize=9)
ax.legend(loc="upper right")
ax.grid(axis="y", alpha=0.2)
fig.tight_layout()

stats_path = output_dir / "energy_stats.png"
fig.savefig(stats_path, dpi=300)
plt.close(fig)

print(f"Saved {regression_path}")
print(f"Saved {stats_path}")
