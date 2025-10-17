# Guide: PDF-generering för uppgifter

## 🎯 Rekommenderad metod: Astro + Puppeteer

### Varför denna metod?

1. ✅ **Använd din befintliga Pedigree-komponent**
2. ✅ **Samma styling som webbplatsen**
3. ✅ **Automatiserad generering**
4. ✅ **Enkel att uppdatera**
5. ✅ **Professionellt resultat**

---

## 📋 Setup

### 1. Installera Puppeteer

```bash
cd /Users/varohlen/utveckling/prov
npm init -y  # Om package.json inte finns
npm install puppeteer
```

### 2. Skapa uppgift som Astro-sida

Skapa filen i ditt Summor-projekt:
`/Users/varohlen/utveckling/summor.se/src/pages/uppgifter/stamtradsanalys.astro`

```astro
---
import Pedigree from '../../components/Pedigree.astro';
---

<!DOCTYPE html>
<html lang="sv">
<head>
    <meta charset="UTF-8">
    <title>Uppgift: Stamträdsanalys</title>
    <style>
        @media print {
            body {
                font-family: 'Times New Roman', serif;
                font-size: 11pt;
                line-height: 1.5;
            }
            
            .page-break {
                page-break-before: always;
            }
            
            .no-print {
                display: none;
            }
        }
        
        body {
            max-width: 210mm;
            margin: 0 auto;
            padding: 20mm;
        }
        
        h1 {
            text-align: center;
            font-size: 18pt;
            margin-bottom: 1em;
        }
        
        h2 {
            font-size: 14pt;
            margin-top: 2em;
        }
        
        .header {
            text-align: center;
            margin-bottom: 2em;
        }
        
        .info-line {
            display: flex;
            justify-content: space-between;
            border-bottom: 1px solid #000;
            padding-bottom: 0.5em;
            margin-bottom: 1em;
        }
        
        .question {
            margin: 1.5em 0;
        }
        
        .answer-space {
            border: 1px solid #ccc;
            min-height: 100px;
            margin-top: 0.5em;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Uppgift: Stamträdsanalys</h1>
        <p>Biologi 1 - Klassisk genetik</p>
    </div>
    
    <div class="info-line">
        <span>Namn: _______________________________</span>
        <span>Datum: _______________________________</span>
    </div>
    
    <h2>Instruktioner</h2>
    <p>
        Denna uppgift testar din förmåga att analysera stamträd och tillämpa 
        kunskaper om ärftlighetsmönster. Du kommer att analysera tre stamträd 
        med olika nedärvningsmönster.
    </p>
    
    <p><strong>Tillåtna hjälpmedel:</strong></p>
    <ul>
        <li>Dina egna anteckningar</li>
        <li>Kursmaterial från summor.se/bio1/5</li>
        <li>Miniräknare</li>
    </ul>
    
    <p><strong>Tid:</strong> 90 minuter</p>
    
    <div class="page-break"></div>
    
    <h2>Uppgift 1: Cystisk fibros (10 poäng)</h2>
    
    <p>
        En familj söker genetisk rådgivning eftersom de har en släkting med 
        cystisk fibros. Nedan visas familjens stamträd.
    </p>
    
    <Pedigree 
        title=""
        legend={false}
        generations={[
            {
                individuals: [
                    { id: '1', sex: 'male', affected: false },
                    { id: '2', sex: 'female', affected: false }
                ],
                partnerships: [[0, 1]]
            },
            {
                individuals: [
                    { id: '3', sex: 'female', affected: false },
                    { id: '4', sex: 'male', affected: false },
                    { id: '5', sex: 'female', affected: false },
                    { id: '6', sex: 'male', affected: false }
                ],
                partnerships: [[2, 3]]
            },
            {
                individuals: [
                    { id: '7', sex: 'female', affected: true },
                    { id: '8', sex: 'male', affected: false }
                ],
                partnerships: []
            }
        ]}
    />
    
    <div class="question">
        <p><strong>a)</strong> Vilket nedärvningsmönster visar detta stamträd? 
        Motivera ditt svar med minst två observationer från stamträdet. <em>(2p)</em></p>
        <div class="answer-space"></div>
    </div>
    
    <!-- Fler frågor... -->
    
</body>
</html>
```

### 3. Starta dev-server

```bash
cd /Users/varohlen/utveckling/summor.se
npm run dev
```

### 4. Generera PDF

```bash
cd /Users/varohlen/utveckling/prov
node scripts/generate-pdf.js \
  http://localhost:4321/uppgifter/stamtradsanalys \
  subjects/biologi/bio1/stamtradsanalys_uppgift.pdf
```

---

## 🔄 Alternativ: Direkt från HTML

Om du inte vill använda Astro kan du också:

1. Använd den HTML-fil jag skapade (`stamtrad_generator.html`)
2. Lägg till uppgiftstext i HTML
3. Generera PDF direkt från HTML-filen

```bash
node scripts/generate-pdf.js \
  file:///Users/varohlen/utveckling/prov/subjects/biologi/bio1/stamtrad_generator.html \
  subjects/biologi/bio1/stamtradsanalys_uppgift.pdf
```

---

## 📊 Jämförelse av metoder

| Metod | Stamträd | Styling | Automation | Komplexitet |
|-------|----------|---------|------------|-------------|
| **Typst + bilder** | Manuella screenshots | Typst | Delvis | Medel |
| **LaTeX + TikZ** | Kod | LaTeX | Full | Hög |
| **Astro + Puppeteer** | Pedigree-komponent | CSS | Full | Låg |
| **HTML + Puppeteer** | HTML/CSS | CSS | Full | Låg |

---

## 💡 Min rekommendation

För **DIG** specifikt:

### **Använd Astro + Puppeteer**

**Varför?**
1. Du har redan Pedigree-komponenten
2. Du har redan Astro-setup
3. Du har redan Tailwind CSS
4. Automatisk generering
5. Lätt att uppdatera och versionshantera
6. Samma design överallt

**Workflow:**
1. Skapa uppgift som `.astro`-fil
2. Förhandsgranska i webbläsare
3. Kör script för att generera PDF
4. Dela PDF med elever

**Bonus:**
- Kan också publicera uppgiften online
- Elever kan öva interaktivt på webben
- PDF för prov/utskrift

---

## 🚀 Nästa steg

Vill du att jag:
1. ✅ Skapar en komplett Astro-sida för uppgiften?
2. ✅ Sätter upp Puppeteer-scriptet?
3. ✅ Skapar ett automatiskt build-script?

Säg till! 🎯
