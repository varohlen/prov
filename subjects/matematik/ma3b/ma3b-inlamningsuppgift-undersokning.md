# Matematik 3b – Inlämningsuppgift: Analys av hållbar produktion

## Syfte
- Träna på att formulera och lösa problem med **system av olikheter** och **linjär optimering**.
- Utforska hur **sekant** och **tangent** kopplar till **derivata** och villkor för deriverbarhet.
- Använda **digitala verktyg** (t.ex. GeoGebra, Desmos, Python) för att analysera funktioner och beräkna derivator.
- Kommunicera matematiska resonemang skriftligt med tydlig struktur.

## Genomförande
- Uppgiften görs i par eller individuellt under två lektioner + hemarbete.
- All text, resonemang, grafer och beräkningar ska samlas i ett dokument eller en digital presentation.
- Bifoga skärmdumpar och/eller exportfiler från digitala verktyg.
- Redovisa tydligt vilka digitala verktyg som används och hur.

---

## Del A – Produktionsmodell med linjära begränsningar

**Situation:** Ett kooperativ producerar två produkter: **energidryck (x)** och **proteinbars (y)**. Produktionen begränsas av:
- Råvara A: `4x + 2y ≤ 120`
- Råvara B: `x + 3y ≤ 90`
- Marknadsavtal: `x ≥ 10`, `y ≥ 5`

1. **Modellering:**
   - Identifiera beslutsvariabler, begränsningar och mål.
   - Sätt upp systemet av olikheter och visualisera det tillåtna området.

2. **Analys:**
   - Beräkna hörnpunkterna och ange hur du gjorde.
   - Mål: maximera vinsten `V = 25x + 30y`.
   - Avgör optimal produktion med en metod du beskriver (t.ex. grafiskt, simplex i digitalt verktyg, egen kod).

3. **Reflektion:**
   - Formulera två alternativa scenarier (t.ex. nytt avtal, råvarubrist) och diskutera hur begränsningssystemet förändras.
   - Förklara hur du kan använda digitala verktyg för att snabbt utvärdera sådana scenarier.

---

## Del B – Från sekant till tangent på en efterfrågekurva

Företagets efterfrågekurva beskrivs av `P(x) = -0.2x^2 + 6x + 10`, där `P` är pris i kronor och `x` är antal hundra enheter.

1. **Sekantens lutning:**
   - Välj punkterna `x = 5` och `x = 6`. Beräkna sekantens lutning analytiskt och visa steg.
   - Illustrera sekanten i graf (digitalt verktyg) och markera punkterna.

2. **Mot tangent:**
   - Flytta punkt B (`x = 5 + h`) och visa hur lutningen förändras när `h → 0`.
   - Dokumentera minst tre steg (t.ex. `h = 1`, `0.5`, `0.1`) med tabell och graf.

3. **Formell härledning:**
   - Ställ upp derivatans definitionsgränsvärde för `P(x)` i `x = 5`.
   - Förenkla uttrycket och beräkna gränsvärdet.
   - Jämför med digitalt beräknad derivata (GeoGebra CAS, Python `sympy.diff`, etc.).

4. **Tangentens tolkning:**
   - Tolka tangentens lutning i kontext (prisförändring per 100 enheter).

---

## Del C – Villkor för deriverbarhet

Företaget överväger en ny prissättning som gör funktionen styckvis:

```
Q(x) = {
  -0.3x^2 + 8x + 5,   x < 4
   4x + 1,             x ≥ 4
}
```

1. **Kontinuitet:**
   - Undersök om `Q(x)` är kontinuerlig i `x = 4`. Visa beräkningar.

2. **Deriverbarhet:**
   - Använd definitionen av derivata från vänster och höger för att avgöra om funktionen är deriverbar i `x = 4`.
   - Visualisera funktionen och tangenterna nära brytpunkten med digitalt verktyg.

3. **Diskussion:**
   - Förklara vilka villkor som måste uppfyllas för deriverbarhet i en brytpunkt.
   - Ge ett exempel (med kort motivering) på en funktion som är kontinuerlig men inte deriverbar, samt hur det syns grafiskt.

---

## Del D – Digitalt verktyg: simulering av marginalintäkter

1. **Verktygsval:**
   - Välj ett digitalt verktyg som kan beräkna och visualisera derivata.
   - Beskriv kort varför du valde verktyget.

2. **Experiment:**
   - Importera funktionen `R(x) = -0.25x^3 + 3x^2 + 12x` (intäkt i tkr, `x` i hundra enheter).
   - Visualisera funktionen samt dess derivata.
   - Bestäm med hjälp av verktyget:
     - Var marginalintäkten är noll (`R'(x) = 0`).
     - Var marginalintäkten är störst.

3. **Koppling till optimering:**
   - Relatera dina resultat till beslut om produktion (Del A).
   - Diskutera hur derivatainformation kan förbättra optimala produktionsbeslut.

---

## Inlämning
- Sammanfatta slutsatser i en **rapport** (max 4 sidor) eller **presentation** (10–12 bilder).
- Strukturera enligt Del A–D med rubriker, text, grafer, tabeller och källor.
- Bifoga råfiler eller länkar (t.ex. GeoGebra, Python-notebook) som bilaga.
- Deadline: *2025-XX-XX* (fylls i av lärare).

## Bedömning (utkast)
- **Begreppsförståelse:** korrekt användning av centrala begrepp.
- **Metod:** genomförda beräkningar och resonemang.
- **Problemlösning:** förmåga att analysera scenarier och dra slutsatser.
- **Kommunikation:** tydlighet, struktur, koppling mellan text och visualiseringar.
- **Digital kompetens:** relevanta digitala verktyg används och redovisas.

> **Tips:** Arbeta löpande med uppgiften under lektionstid. Stäm av delresultat med läraren innan hemstudiemomentet.
