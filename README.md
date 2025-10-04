# Provsamling

Samling av prov, uppgifter och resurser för gymnasiekurser.

## 📁 Struktur

```
prov/
├── subjects/              # Alla ämnesprover
│   ├── biologi/          # Biologi 1, 2
│   ├── naturkunskap/     # Naturkunskap 1a1, 1b, 2
│   ├── miljo/            # Miljökunskap 1
│   ├── matematik/        # Matematik 1b, 2b, 3b
│   └── ai/               # AI-kursmaterial
├── resources/            # Återanvändbara resurser
│   ├── templates/        # LaTeX-mallar
│   ├── images/          # Python-genererade bilder
│   └── scripts/         # Hjälpscript
├── archive/             # Äldre/personliga prov
├── nationella-prov/     # Referensmaterial från NP
└── docs/                # Dokumentation och referenser
```

## 🚀 Användning

### LaTeX-prov

Proven är skrivna i LaTeX med `exam` document class:

```bash
# Navigera till provmapp
cd subjects/matematik/ma3b

# Kompilera elevversion
pdflatex prov_algebra_ma3b.tex

# Kompilera facit
pdflatex "\def\answers{1}\input{prov_algebra_ma3b.tex}"
```

### Python-grafgenerering

```bash
# Aktivera Python-miljö
source venv/bin/activate

# Kör ett grafscript
python resources/scripts/graph.py

# Bilder sparas i resources/images/
```

## 📦 Krav

### LaTeX
- LaTeX distribution (TeX Live, MiKTeX)
- `exam` document class
- Standard LaTeX-paket

### Python
- Python 3.11+
- matplotlib, numpy (se `requirements.txt`)

### Installation
```bash
# Python-miljö (första gången)
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## 📝 Resurser

- **Templates**: Återanvändbara LaTeX-mallar i `resources/templates/`
- **Scripts**: Hjälpscript för kompilering och bildgenerering i `resources/scripts/`
- **Images**: Genererade grafer och bilder i `resources/images/`
- **Docs**: Dokumentation och referenser i `docs/`
