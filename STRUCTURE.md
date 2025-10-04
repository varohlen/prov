# Mappstruktur

Översikt över den nya strukturen i provsamlingen.

## 📂 Huvudmappar

### `subjects/` - Alla ämnesprover
Organiserat per ämne och kursnivå:

```
subjects/
├── biologi/
│   ├── bio1/          # Biologi 1 prov
│   └── bio2/          # Biologi 2 prov
├── naturkunskap/
│   ├── nak1a1/        # Naturkunskap 1a1
│   ├── nak1b/         # Naturkunskap 1b
│   └── nak2/          # Naturkunskap 2
├── miljo/
│   └── milj1/         # Miljökunskap 1
├── matematik/
│   ├── ma1b/          # Matematik 1b
│   ├── ma2b/          # Matematik 2b
│   └── ma3b/          # Matematik 3b (inkl. prov_algebra_ma3b.tex)
└── ai/
    ├── bias-transparens/  # AI etik-material
    └── laboration/        # AI-laborationer
```

### `resources/` - Återanvändbara resurser

```
resources/
├── templates/         # LaTeX-mallar
│   └── grafmall_med_instruktioner.tex
├── images/           # Python-genererade bilder
│   └── step_function.png
└── scripts/          # Hjälpscript
    ├── graph.py              # Python-grafgenerering
    └── compile_pdfs.sh       # Batch-kompilering
```

### `archive/` - Äldre material

```
archive/
├── individuella/     # Personliga/individuella prov (adam, fabian, etc.)
└── SA23b/           # Äldre kursmaterial
```

### `nationella-prov/` - Referensmaterial

```
nationella-prov/
└── ma3b/            # Nationella prov i Matematik 3b
```

### `docs/` - Dokumentation

```
docs/
└── referenser/
    └── prov_referenser_ma3b.md  # Referenser för Ma3b-prov
```

## 🔧 Tekniska filer

- `venv/` - Python virtuell miljö
- `requirements.txt` - Python-dependencies
- `.gitignore` - Git-exkluderingar
- `.python-version` - Python-version
- `README.md` - Huvuddokumentation

## 📝 Workflow

### Skapa nytt prov
1. Navigera till rätt ämne/kurs i `subjects/`
2. Skapa ny `.tex`-fil
3. Använd mallar från `resources/templates/` vid behov

### Generera grafer
1. Redigera `resources/scripts/graph.py`
2. Kör: `venv/bin/python resources/scripts/graph.py`
3. Bilder sparas i `resources/images/`
4. Inkludera i LaTeX: `\includegraphics{../../resources/images/filename.png}`

### Kompilera prov
```bash
cd subjects/matematik/ma3b
pdflatex prov_algebra_ma3b.tex
```

## 🧹 Rensning

LaTeX-kompileringsfiler (.aux, .log, .fls, etc.) exkluderas från git men kan finnas lokalt. Rensa med:

```bash
find . -name "*.aux" -o -name "*.log" -o -name "*.fls" | xargs rm
```
