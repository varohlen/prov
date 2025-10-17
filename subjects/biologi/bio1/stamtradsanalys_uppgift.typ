#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
)

#set par(justify: true)

#align(center)[
  #text(size: 18pt, weight: "bold")[Uppgift: Stamträdsanalys]
  
  #v(0.5em)
  
  #text(size: 12pt)[Biologi 1 - Klassisk genetik]
  
  #v(0.5em)
  
  #text(size: 10pt)[Namn: #h(1fr) Datum: #h(1fr)]
]

#v(1em)

#line(length: 100%, stroke: 0.5pt)

#v(1em)

= Instruktioner

Denna uppgift testar din förmåga att analysera stamträd och tillämpa kunskaper om ärftlighetsmönster. Du kommer att analysera tre stamträd med olika nedärvningsmönster.

*Tillåtna hjälpmedel:*
- Dina egna anteckningar
- Kursmaterial från summor.se/bio1/5
- Miniräknare

*Tid:* 90 minuter

*Bedömning:* Se bedömningsmatris på sista sidan.

#v(1em)

#pagebreak()

= Uppgift 1: Cystisk fibros (Autosomalt recessiv)

En familj söker genetisk rådgivning eftersom de har en släkting med cystisk fibros. Nedan visas familjens stamträd.

#v(1em)

#align(center)[
  #box(stroke: 1pt, inset: 1.5em)[
    #text(size: 10pt, font: "Courier New")[
      #align(left)[
        ```
        Generation I:      ○ ═══ ○
                          I-1   I-2
                            │
                   ┌────────┼────────┐
                   │        │        │
        Generation II:    ○       □       ○ ═══ □
                         II-1   II-2    II-3   II-4
                                          │
                                      ┌───┴───┐
        Generation III:              ●       □
                                   III-1   III-2
        ```
      ]
    ]
  ]
]

#v(1em)

*Symbolförklaring:*
- ○ = Frisk kvinna
- □ = Frisk man  
- ● = Drabbad kvinna
- ■ = Drabbad man
- Horisontell linje mellan symboler = Par
- Vertikal linje = Förälder-barn relation

#v(1em)

== Frågor (10 poäng)

*a)* Vilket nedärvningsmönster visar detta stamträd? Motivera ditt svar med minst två observationer från stamträdet. *(2p)*

#v(3cm)

*b)* Bestäm genotyperna för alla individer i stamträdet. Använd *F* för den friska allelen och *f* för den sjuka allelen. Förklara ditt resonemang för minst två individer. *(4p)*

#v(5cm)

*c)* Om individ II-3 och II-4 får ytterligare ett barn, vad är sannolikheten att barnet blir drabbat av cystisk fibros? Visa dina beräkningar med ett korsningsschema. *(3p)*

#v(5cm)

*d)* Kan individ II-1 vara anlagsbärare? Förklara. *(1p)*

#v(2cm)

#pagebreak()

= Uppgift 2: Färgblindhet (X-bunden recessiv)

En familj vill förstå nedärvningen av röd-grön färgblindhet i sin släkt. Nedan visas deras stamträd.

#v(1em)

#align(center)[
  #box(stroke: 1pt, inset: 1.5em)[
    #text(size: 10pt, font: "Courier New")[
      #align(left)[
        ```
        Generation I:      □ ═══ ◉
                          I-1   I-2
                            │
                   ┌────────┼────────┐
                   │        │        │
        Generation II:    ■       □       ◉ ═══ □
                         II-1   II-2    II-3   II-4
                                          │
                                      ┌───┴───┐
        Generation III:              ■       ○
                                   III-1   III-2
        ```
      ]
    ]
  ]
]

#v(1em)

*Tillägg till symbolförklaring:*
- ◉ = Anlagsbärande kvinna (prick i mitten)

#v(1em)

== Frågor (12 poäng)

*a)* Vilket nedärvningsmönster visar detta stamträd? Ge minst tre kännetecken som stödjer din slutsats. *(3p)*

#v(3cm)

*b)* Bestäm genotyperna för alla individer. Använd X#super[F] för frisk allel och X#super[f] för färgblind allel. Glöm inte Y-kromosomen för män. *(4p)*

#v(5cm)

*c)* Varför är individ II-1 färgblind men inte individ II-2, trots att de har samma föräldrar? Förklara med hjälp av genotyper. *(2p)*

#v(3cm)

*d)* Om individ III-2 får barn med en färgblind man, vad är sannolikheten att:
  - En son blir färgblind? *(1p)*
  - En dotter blir färgblind? *(1p)*
  
Visa dina beräkningar. *(1p)*

#v(5cm)

#pagebreak()

= Uppgift 3: Huntingtons sjukdom (Autosomalt dominant)

En familj har drabbats av Huntingtons sjukdom genom flera generationer. Nedan visas stamträdet.

#v(1em)

#align(center)[
  #box(stroke: 1pt, inset: 1.5em)[
    #text(size: 9pt, font: "Courier New")[
      #align(left)[
        ```
        Generation I:           ■ ═══ ○
                               I-1   I-2
                                 │
                    ┌────────────┼────────────┐
                    │            │            │
        Generation II:        ■ ═══ ○        ○          □
                             II-1   II-2    II-3      II-4
                               │
                           ┌───┴───┐
        Generation III:   ●       □ ═══ ○
                         III-1   III-2   III-3
                                   │
        Generation IV:            □?
                                 IV-1
        ```
      ]
    ]
  ]
]

#v(1em)

*Notering:* Individ IV-1 är ännu inte född. Frågetecknet indikerar att vi vill beräkna sannolikheter för detta barn.

#v(1em)

== Frågor (13 poäng)

*a)* Vilket nedärvningsmönster visar detta stamträd? Motivera med observationer från stamträdet. *(2p)*

#v(3cm)

*b)* Bestäm genotyperna för alla individer i generation I och II. Använd *H* för Huntingtons allel och *h* för frisk allel. Förklara särskilt varför individ II-1 måste vara heterozygot (Hh). *(5p)*

#v(6cm)

*c)* Individ III-1 är drabbad. Vilken genotyp har hon? Kan hon vara homozygot (HH)? Förklara varför eller varför inte. *(2p)*

#v(3cm)

*d)* Beräkna sannolikheten att det ofödda barnet (IV-1) kommer att utveckla Huntingtons sjukdom. Visa alla steg i din beräkning med korsningsschema. *(4p)*

#v(6cm)

#pagebreak()

= Bedömningsmatris

#table(
  columns: (1.5fr, 3fr, 3fr, 3fr),
  align: (left, left, left, left),
  stroke: 0.5pt,
  [*Kriterium*], [*E (godkänt)*], [*C (väl godkänt)*], [*A (mycket väl godkänt)*],
  
  [*Identifiera nedärvningsmönster*\ (7p)],
  [Identifierar korrekt mönster för minst 2 av 3 stamträd med enkel motivering.],
  [Identifierar korrekt mönster för alla 3 stamträd med utvecklad motivering och flera observationer.],
  [Identifierar korrekt mönster för alla 3 stamträd med välutvecklad motivering, flera observationer och resonemang om alternativa tolkningar.],
  
  [*Bestämma genotyper*\ (13p)],
  [Bestämmer korrekt genotyp för majoriteten av individerna i minst 2 stamträd. Enkla förklaringar.],
  [Bestämmer korrekt genotyp för alla eller nästan alla individer i alla stamträd. Utvecklade förklaringar för resonemang.],
  [Bestämmer korrekt genotyp för alla individer i alla stamträd. Välutvecklade förklaringar med tydligt logiskt resonemang.],
  
  [*Sannolikhetsberäkningar*\ (8p)],
  [Använder korsningsschema korrekt i minst 2 uppgifter. Räknar ut sannolikheter med mindre fel.],
  [Använder korsningsschema korrekt i alla uppgifter. Räknar ut sannolikheter korrekt med tydliga beräkningar.],
  [Använder korsningsschema korrekt i alla uppgifter. Räknar ut sannolikheter korrekt med mycket tydliga och välstrukturerade beräkningar.],
  
  [*Resonemang och förklaringar*\ (7p)],
  [För enkla resonemang om ärftlighet och kan förklara grundläggande samband.],
  [För utvecklade resonemang om ärftlighet och kan förklara komplexa samband mellan genotyp och fenotyp.],
  [För välutvecklade och nyanserade resonemang om ärftlighet med kopplingar mellan olika begrepp och koncept.],
)

#v(1em)

*Totalt: 35 poäng*

#table(
  columns: (1fr, 1fr),
  stroke: 0.5pt,
  [*Betyg*], [*Poäng*],
  [E], [18-24 poäng],
  [C], [25-30 poäng],
  [A], [31-35 poäng],
)

#v(2em)

*Lycka till!*
