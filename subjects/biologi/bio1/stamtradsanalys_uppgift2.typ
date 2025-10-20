#import "@preview/cetz:0.3.1": canvas, draw

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
  footer: [
    #set text(size: 9pt, fill: gray)
    #align(center)[
      #link("https://summor.se")[summor.se]
    ]
  ],
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
)

#set par(justify: true)

#align(center)[
  #text(size: 18pt, weight: "bold")[Uppgift: Stamträdsanalys 2]

  #v(0.5em)

  #text(size: 12pt)[Biologi 1 - Klassisk genetik]

  #v(0.5em)

  #grid(
    columns: (1fr, 1fr),
    gutter: 2em,
    [Namn: #line(length: 100%)], [Datum: #line(length: 100%)],
  )
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

#v(0.5em)

*Symbolförklaring:*
- ○ = Frisk kvinna
- □ = Frisk man
- ● = Drabbad kvinna
- ■ = Drabbad man
- ◐ = Anlagsbärande kvinna
- Horisontell linje mellan symboler = Par
- Vertikal linje = Förälder-barn relation

#v(1em)

#pagebreak()

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

#v(1.5cm)

*b)* Bestäm genotyperna för alla individer i stamträdet. Ange alla möjliga genotyper för varje individ. Förklara ditt resonemang för minst två individer. _(4p)_

#v(2cm)

*c)* Paret II-3 och II-4 planerar att få ytterligare ett barn. Beräkna sannolikheten att detta barn kommer att drabbas av sjukdomen. Visa dina beräkningar med ett korsningsschema. _(3p)_

#v(2cm)

*d) Begreppsfåga:* Förklara vad en anlagsbärare är och ge ett exempel från detta stamträd. _(1p)_

#v(1.5cm)

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

#v(1.5cm)

*b)* Bestäm genotyperna för individ II-3 och II-4. Förklara ditt resonemang. _(3p)_

#v(2cm)

*c)* Kan en kvinna drabbas av denna sjukdom? Om ja, vilka genotyper måste hennes föräldrar ha? Om nej, förklara varför inte. _(2p)_

#v(1.5cm)

*d) Begreppsfåga:* Vad är skillnaden mellan genotyp och fenotyp? Ge ett exempel från vardagen. _(1p)_

#v(1.5cm)

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

#v(1.5cm)

*b)* Bestäm genotyperna för individ II-3 och II-4. Förklara ditt resonemang. _(4p)_

#v(2cm)

*c)* Beräkna sannolikheten att parets nästa barn (III-2) kommer att drabbas av sjukdomen. Förklara ditt svar. _(3p)_

#v(2cm)

*d) Begreppsfåga:* Förklara skillnaden mellan homozygot och heterozygot. Ge exempel från detta stamträd. _(1p)_

#v(1.5cm)

#pagebreak()

= Bedömningsmatris

#table(
  columns: (1.5fr, 3fr, 3fr, 3fr),
  align: (left, left, left, left),
  stroke: 0.5pt,
  [*Kriterium*], [*E (godkänt)*], [*C (väl godkänt)*], [*A (mycket väl godkänt)*],

  [*Identifiera nedärvningsmönster*\ (8p)],
  [Identifierar korrekt mönster för minst 2 av 3 stamträd med enkel motivering.],
  [Identifierar korrekt mönster för alla 3 stamträd med utvecklad motivering och flera observationer.],
  [Identifierar korrekt mönster för alla 3 stamträd med välutvecklad motivering, flera observationer och resonemang om alternativa tolkningar.],

  [*Bestämma genotyper*\ (11p)],
  [Bestämmer korrekt genotyp för majoriteten av individerna i minst 2 fall. Enkla förklaringar.],
  [Bestämmer korrekt genotyp för alla eller nästan alla individer i alla fall. Utvecklade förklaringar för resonemang.],
  [Bestämmer korrekt genotyp för alla individer i alla fall. Välutvecklade förklaringar med tydligt logiskt resonemang.],

  [*Sannolikhetsberäkningar*\ (8p)],
  [Använder korsningsschema korrekt i minst 2 fall. Räknar ut sannolikheter med mindre fel.],
  [Använder korsningsschema korrekt i alla fall. Räknar ut sannolikheter korrekt med tydliga beräkningar.],
  [Använder korsningsschema korrekt i alla fall. Räknar ut sannolikheter korrekt med mycket tydliga och välstrukturerade beräkningar.],

  [*Begrepp och förklaringar*\ (3p)],
  [Förklarar minst 2 av 3 begrepp korrekt med enkla definitioner.],
  [Förklarar alla 3 begrepp korrekt med utvecklade definitioner och exempel.],
  [Förklarar alla 3 begrepp korrekt med välutvecklade definitioner, tydliga exempel och kopplingar till stamträden.],
)

#v(1em)

*Totalt: 30 poäng*

#table(
  columns: (1fr, 1fr),
  stroke: 0.5pt,
  [*Betyg*], [*Poäng*],
  [E], [15-20 poäng],
  [C], [21-25 poäng],
  [A], [26-30 poäng],
)

#v(2em)

#align(center)[
  #text(size: 14pt, weight: "bold")[Lycka till!]
]
