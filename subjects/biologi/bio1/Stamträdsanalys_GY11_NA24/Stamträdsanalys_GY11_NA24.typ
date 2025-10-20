// Biologi 1 – Prov: Stamträdsanalys
// Viktor Arohlén

#import "@preview/cetz:0.3.1": canvas, draw

#set page(
  paper: "a4",
  margin: 2.5cm,
  footer: [
    #set text(size: 9pt, fill: gray, font: ("Excalifont", "Comic Sans MS"))
    #align(center)[
      #box(baseline: 20%, image("logo.png", height: 1.2em)) #link(
        "https://summor.se",
      )[summor.se]
    ]
  ],
)
#set text(font: "New Computer Modern", size: 12pt, lang: "sv")
#set par(justify: false, leading: 0.65em)

// Title
#align(center)[
  #text(size: 18pt, weight: "bold")[Prov: Stamträdsanalys] \
  #text(size: 14pt)[Biologi 1 – Klassisk genetik] \
  #v(0.3cm)
  #text(size: 11pt)[Viktor Arohlén] \
  #text(size: 10pt)[2025-10-20]
]

#v(0.5cm)

// Rules box
#rect(
  width: 100%,
  stroke: 1pt + black,
  inset: 12pt,
  [
    *Viktiga regler för provet:*

    - Tillåtna hjälpmedel: Dina egna anteckningar och kursmaterial från summor.se/bio1/5
    - Svara direkt i provet med penna
    - Skriv tydligt och läsbart
    - Motivera dina svar där det efterfrågas
    - Mobiltelefoner och kommunikation är ej tillåtet
    - Misstänkt fusk leder till att provet ej kan bedömas
  ],
)

#v(1cm)

// Signature box
#rect(
  width: 100%,
  stroke: 1pt + black,
  inset: 10pt,
  [
    Jag skriver under på att jag tagit del av reglerna ovan och följer dem:

    #v(0.2cm)
    *Namn:* #line(length: 50%, stroke: 0.5pt) #h(1cm) \
    *Klass:* #line(length: 20%, stroke: 0.5pt)
  ],
)

#pagebreak()

// Questions section
#set text(size: 11pt)

= Fall 1: Familjen Andersson (11 poäng)
#v(0.5em)
En ärftlig sjukdom har upptäckts hos barnet III-1 i familjen Andersson. Föräldrarna (II-3 och II-4) är båda friska och vill förstå hur sjukdomen har ärvts och vilken risk det finns för framtida barn. Nedan visas familjens stamträd där endast drabbade individer är markerade.
#v(1em)

// Pedigree för Familj Andersson (Autosomalt recessiv - okänd sjukdom)
#align(center)[
  #canvas(length: 1cm, {
    import draw: *

    // Generation I
    let gen1_y = 0
    circle((0, gen1_y), radius: 0.3, name: "I1")
    circle((2, gen1_y), radius: 0.3, name: "I2")
    line("I1.east", "I2.west")
    content((0, gen1_y - 0.7), [I-1])
    content((2, gen1_y - 0.7), [I-2])

    // Connection line down
    line((1, gen1_y - 0.3), (1, gen1_y - 1.2))

    // Generation II
    let gen2_y = -2
    line((0, gen2_y + 0.3), (4, gen2_y + 0.3))

    circle((0, gen2_y), radius: 0.3, name: "II1")
    rect((1.7, gen2_y - 0.3), (2.3, gen2_y + 0.3), name: "II2")
    circle((4, gen2_y), radius: 0.3, name: "II3")
    rect((5.7, gen2_y - 0.3), (6.3, gen2_y + 0.3), name: "II4")

    // Partnership line II-3 and II-4
    line("II3.east", "II4.west")

    content((0, gen2_y - 0.7), [II-1])
    content((2, gen2_y - 0.7), [II-2])
    content((4, gen2_y - 0.7), [II-3])
    content((6, gen2_y - 0.7), [II-4])

    // Connection line down from II-3/II-4
    line((5, gen2_y - 0.3), (5, gen2_y - 1.2))

    // Generation III
    let gen3_y = -4
    line((4, gen3_y + 0.3), (6, gen3_y + 0.3))

    circle((4, gen3_y), radius: 0.3, fill: black, name: "III1")
    rect((5.7, gen3_y - 0.3), (6.3, gen3_y + 0.3), name: "III2")

    content((4, gen3_y - 0.7), [III-1])
    content((6, gen3_y - 0.7), [III-2])

    // Labels
    content((-2.2, gen1_y), [Generation I:])
    content((-2.2, gen2_y), [Generation II:])
    content((-2.2, gen3_y), [Generation III:])
  })
]

#v(2em)

== Frågor

*a)* Analysera stamträdet och bestäm vilket nedärvningsmönster sjukdomen följer. Motivera ditt svar med minst tre observationer från stamträdet. _(3p)_

#v(0.8cm)

*b)* Bestäm genotyperna för alla individer i stamträdet. Ange alla möjliga genotyper för varje individ. Förklara ditt resonemang för minst två individer. _(4p)_

#v(1cm)

*c)* Paret II-3 och II-4 planerar att få ytterligare ett barn. Beräkna sannolikheten att detta barn kommer att drabbas av sjukdomen. Visa dina beräkningar med ett korsningsschema. _(3p)_

#v(1cm)

*d) Begreppsfåga:* Förklara vad en anlagsbärare är och ge ett exempel från detta stamträd. _(1p)_

#v(0.8cm)

#pagebreak()

// Blank page for Fall 1

#pagebreak()

= Fall 2: Familjen Bergström (8 poäng)
#v(0.5em)
En ärftlig sjukdom har upptäckts hos barnet III-1 i familjen Bergström. Föräldrarna (II-3 och II-4) är båda friska och vill förstå hur sjukdomen har ärvts och vilken risk det finns för framtida barn. Nedan visas familjens stamträd där endast drabbade individer är markerade.
#v(1em)

// Pedigree för Hemofili (X-bunden recessiv)
#align(center)[
  #canvas(length: 1cm, {
    import draw: *

    // Generation I
    let gen1_y = 0
    rect((-0.3, gen1_y - 0.3), (0.3, gen1_y + 0.3), name: "I1")
    circle((2, gen1_y), radius: 0.3, name: "I2")
    // Half-filled circle for carrier
    circle((2, gen1_y), radius: 0.3)
    circle((2, gen1_y), radius: 0.15, fill: black)

    line("I1.east", "I2.west")
    content((0, gen1_y - 0.7), [I-1])
    content((2, gen1_y - 0.7), [I-2])

    // Connection line down
    line((1, gen1_y - 0.3), (1, gen1_y - 1.2))

    // Generation II
    let gen2_y = -2
    line((-1, gen2_y + 0.3), (5, gen2_y + 0.3))

    rect((-1.3, gen2_y - 0.3), (-0.7, gen2_y + 0.3), fill: black, name: "II1")
    rect((0.7, gen2_y - 0.3), (1.3, gen2_y + 0.3), name: "II2")
    circle((3, gen2_y), radius: 0.3, name: "II3")
    circle((3, gen2_y), radius: 0.3)
    circle((3, gen2_y), radius: 0.15, fill: black)
    rect((4.7, gen2_y - 0.3), (5.3, gen2_y + 0.3), name: "II4")

    // Partnership line II-3 and II-4
    line("II3.east", "II4.west")

    content((-1, gen2_y - 0.7), [II-1])
    content((1, gen2_y - 0.7), [II-2])
    content((3, gen2_y - 0.7), [II-3])
    content((5, gen2_y - 0.7), [II-4])

    // Connection line down from II-3/II-4
    line((4, gen2_y - 0.3), (4, gen2_y - 1.2))

    // Generation III
    let gen3_y = -4
    line((3, gen3_y + 0.3), (5, gen3_y + 0.3))

    rect((2.7, gen3_y - 0.3), (3.3, gen3_y + 0.3), fill: black, name: "III1")
    circle((5, gen3_y), radius: 0.3, name: "III2")

    content((3, gen3_y - 0.7), [III-1])
    content((5, gen3_y - 0.7), [III-2])

    // Labels
    content((-3.2, gen1_y), [Generation I:])
    content((-3.2, gen2_y), [Generation II:])
    content((-3.2, gen3_y), [Generation III:])
  })
]

#v(2em)

== Frågor

*a)* Analysera stamträdet och bestäm vilket nedärvningsmönster sjukdomen följer. Motivera ditt svar. _(2p)_

#v(0.8cm)

*b)* Bestäm genotyperna för individ II-3 och II-4. Förklara ditt resonemang. _(3p)_

#v(1cm)

*c)* Kan en kvinna drabbas av denna sjukdom? Om ja, vilka genotyper måste hennes föräldrar ha? Om nej, förklara varför inte. _(2p)_

#v(0.8cm)

*d) Begreppsfåga:* Vad är skillnaden mellan genotyp och fenotyp? Ge ett exempel från vardagen. _(1p)_

#v(0.8cm)

#pagebreak()

// Blank page for Fall 2

#pagebreak()

= Fall 3: Familjen Carlsson (11 poäng)
#v(0.5em)
Paret II-3 och II-4 har fått sitt första barn (III-1) som är friskt. Båda föräldrarna är friska, men II-3 har två syskon (II-1 och II-2) som är drabbade av en ärftlig sjukdom. En av syskonen (II-1) har även fått ett drabbat barn. Paret planerar att få ytterligare ett barn och söker genetisk rådgivning för att förstå risken. Nedan visas familjens stamträd där endast drabbade individer är markerade.
#v(1em)

// Pedigree för Fall 3 (Autosomalt dominant - friskt par med sjuka syskon)
#align(center)[
  #canvas(length: 1cm, {
    import draw: *

    // Generation I
    let gen1_y = 0
    rect((-0.3, gen1_y - 0.3), (0.3, gen1_y + 0.3), fill: black, name: "I1")
    circle((2, gen1_y), radius: 0.3, name: "I2")
    line("I1.east", "I2.west")
    content((0, gen1_y - 0.7), [I-1])
    content((2, gen1_y - 0.7), [I-2])

    // Connection line down
    line((1, gen1_y - 0.3), (1, gen1_y - 1.2))

    // Generation II
    let gen2_y = -2
    line((-2, gen2_y + 0.3), (6, gen2_y + 0.3))

    // II-1 (drabbad) med partner II-5
    rect((-2.3, gen2_y - 0.3), (-1.7, gen2_y + 0.3), fill: black, name: "II1")
    circle((-0.5, gen2_y), radius: 0.3, name: "II5")
    line("II1.east", "II5.west")

    // II-2 (drabbad)
    rect((1.7, gen2_y - 0.3), (2.3, gen2_y + 0.3), fill: black, name: "II2")

    // II-3 (frisk) med partner II-4
    circle((4, gen2_y), radius: 0.3, name: "II3")
    rect((5.7, gen2_y - 0.3), (6.3, gen2_y + 0.3), name: "II4")
    line("II3.east", "II4.west")

    content((-2, gen2_y - 0.7), [II-1])
    content((-0.5, gen2_y - 0.7), [II-5])
    content((2, gen2_y - 0.7), [II-2])
    content((4, gen2_y - 0.7), [II-3])
    content((6, gen2_y - 0.7), [II-4])

    // Connection lines down
    line((-1.25, gen2_y - 0.3), (-1.25, gen2_y - 1.2))
    line((5, gen2_y - 0.3), (5, gen2_y - 1.2))

    // Generation III
    let gen3_y = -4
    line((-2, gen3_y + 0.3), (-0.5, gen3_y + 0.3))
    line((4, gen3_y + 0.3), (6, gen3_y + 0.3))

    // Barn till II-1 och II-5
    rect((-2.3, gen3_y - 0.3), (-1.7, gen3_y + 0.3), fill: black, name: "III_A")
    circle((-0.5, gen3_y), radius: 0.3, name: "III_B")

    content((-2, gen3_y - 0.7), [III-A])
    content((-0.5, gen3_y - 0.7), [III-B])

    // Barn till II-3 och II-4
    circle((4, gen3_y), radius: 0.3, name: "III1")
    rect((5.7, gen3_y - 0.3), (6.3, gen3_y + 0.3), name: "III2")
    content((6, gen3_y), [?])

    content((4, gen3_y - 0.7), [III-1])
    content((6, gen3_y - 0.7), [III-2])

    // Labels
    content((-4.0, gen1_y), [Generation I:])
    content((-4.0, gen2_y), [Generation II:])
    content((-4.0, gen3_y), [Generation III:])
  })
]

#v(1em)

*Notering:* Individ III-2 är ännu inte född. Frågetecknet indikerar att paret vill veta risken för detta barn.

#v(1em)

== Frågor

*a)* Analysera stamträdet och bestäm vilket nedärvningsmönster sjukdomen följer. Motivera ditt svar. _(3p)_

#v(0.8cm)

*b)* Bestäm genotyperna för individ II-3 och II-4. Förklara ditt resonemang. _(4p)_

#v(1cm)

*c)* Beräkna sannolikheten att parets nästa barn (III-2) kommer att drabbas av sjukdomen. Förklara ditt svar. _(3p)_

#v(1cm)

*d) Begreppsfåga:* Förklara skillnaden mellan homozygot och heterozygot. Ge exempel från detta stamträd. _(1p)_

#v(0.8cm)

#pagebreak()

// Blank page for Fall 3

#pagebreak()

= Bedömningsmall och facit

== Fall 1: Familjen Andersson (11 poäng)

*a) Nedärvningsmönster (3p)*

**Svar:** Autosomalt recessiv nedärvning

**Motivering (minst 3 observationer):**
- Sjukdomen hoppar över generationer (I och II friska, III drabbad) _(1p)_
- Två friska föräldrar (II-3 och II-4) får ett drabbat barn (III-1) _(1p)_
- Drabbad kvinna (III-1) visar att det inte är X-bundet _(1p)_

*b) Genotyper (4p)*

**Genotyper:**
- I-1: Aa eller AA
- I-2: Aa eller AA
- II-1: AA eller Aa
- II-2: AA eller Aa
- II-3: **Aa** (måste vara anlagsbärare) _(1p)_
- II-4: **Aa** (måste vara anlagsbärare) _(1p)_
- III-1: **aa** (drabbad) _(1p)_
- III-2: AA eller Aa

**Resonemang (minst 2 individer):** _(1p)_
- III-1 är aa eftersom hen är drabbad
- II-3 och II-4 måste båda vara Aa eftersom de är friska men har drabbat barn

*c) Sannolikhetsberäkning (3p)*

**Korsningsschema:** Aa × Aa _(1p)_

| ♀/♂ | A | a |
|-----|---|---|
| A   | AA| Aa|
| a   | Aa| aa|

**Svar:** 25% eller 1/4 sannolikhet att barnet blir drabbat _(2p)_

*d) Begreppsfråga (1p)*

**Anlagsbärare:** En individ som är heterozygot för en recessiv allel (Aa) och därför är frisk men kan föra sjukdomen vidare. Exempel: II-3 och II-4 är anlagsbärare.

---

== Fall 2: Familjen Bergström (8 poäng)

*a) Nedärvningsmönster (2p)*

**Svar:** X-bunden recessiv nedärvning

**Motivering:**
- Endast män drabbas (II-1, III-1)
- Friska föräldrar får drabbade söner
- Modern måste vara anlagsbärare

*b) Genotyper (3p)*

**Genotyper:**
- II-3: X^F X^f (anlagsbärare) _(1.5p)_
- II-4: X^F Y (frisk) _(1.5p)_

**Resonemang:** Modern måste ha en sjuk allel (X^f) för att sonen III-1 ska vara drabbad (X^f Y).

*c) Kan kvinna drabbas? (2p)*

**Svar:** Ja, men det är mycket sällsynt _(1p)_

**Genotyper föräldrar:** Modern måste vara X^f X^f och fadern måste vara X^f Y (drabbad) _(1p)_

*d) Begreppsfråga (1p)*

**Genotyp:** Arvsanlag/genetisk sammansättning (t.ex. Aa, X^F X^f)
**Fenotyp:** Hur egenskapen uttrycks/syns (t.ex. frisk, drabbad, blå ögon)
**Exempel:** Genotyp Aa kan ge fenotyp "frisk" om A är dominant.

---

== Fall 3: Familjen Carlsson (11 poäng)

*a) Nedärvningsmönster (3p)*

**Svar:** Autosomalt dominant nedärvning

**Motivering:**
- Sjukdomen förekommer i varje generation (I, II, III)
- Drabbad förälder (I-1) har drabbade barn (II-1, II-2)
- Både män och kvinnor drabbas

*b) Genotyper (4p)*

**Genotyper:**
- II-3: **aa** (frisk, homozygot recessiv) _(2p)_
- II-4: **aa** (frisk, homozygot recessiv) _(2p)_

**Resonemang:** Eftersom II-3 är frisk trots att hen har drabbade syskon, måste hen ha två friska alleler (aa). Vid dominant nedärvning kan man inte vara anlagsbärare och frisk samtidigt.

*c) Sannolikhetsberäkning (3p)*

**Korsningsschema:** aa × aa _(1p)_

| ♀/♂ | a | a |
|-----|---|---|
| a   | aa| aa|
| a   | aa| aa|

**Svar:** 0% sannolikhet - barnet kan inte drabbas _(2p)_

**Förklaring:** Båda föräldrarna är aa och kan bara ge friska alleler.

*d) Begreppsfråga (1p)*

**Homozygot:** Två lika alleler (AA eller aa). Exempel: II-3 och II-4 är aa.
**Heterozygot:** Två olika alleler (Aa). Exempel: I-1 är Aa (drabbad men har friska barn).

---

== Poängfördelning

*Totalt: 30 poäng*

**Betygsgränser:**
- E: 15-20 poäng (50-67%)
- C: 21-25 poäng (70-83%)
- A: 26-30 poäng (87-100%)
