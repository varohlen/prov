# Scripts

Hjälpscript för provsamlingen.

## Python-grafgenerering

### graph.py
Genererar matematiska grafer med matplotlib för användning i LaTeX-dokument.

**Användning:**
```bash
# Aktivera Python-miljö först
source ../../venv/bin/activate

# Kör scriptet
python graph.py
```

**Output:** PNG-filer sparas i `../images/` med 300 DPI för högkvalitativ utskrift.

**Font:** Använder Lexend Deca om den finns installerad, annars systemfont.

## Kompileringsscript

### compile_pdfs.sh
Batch-kompilerar alla LaTeX-filer i provsamlingen.

**Användning:**
```bash
./compile_pdfs.sh
```
