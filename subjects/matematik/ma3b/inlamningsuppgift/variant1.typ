// Matematik 3b – Inlämningsuppgift: Hållbar produktion
// Viktor Arohlén

#let primary-font = ("New Computer Modern", "Latin Modern Roman", "serif")
#let sans-font = ("New Computer Modern Sans", "Latin Modern Sans", "sans-serif")
#let math-font = ("New Computer Modern Math", "Latin Modern Math")

#set page(
  paper: "a4",
  margin: (top: 2.8cm, bottom: 2.8cm, left: 2.8cm, right: 2.8cm),
  header: [
    #set text(font: sans-font, size: 9pt, fill: rgb("1e40af"))
    #grid(
      columns: (1fr, auto, 1fr),
      align: (left, center, right),
      [Matematik 3b], [Inlämningsuppgift: Hållbar produktion], context [Sida #counter(page).display()],
    )
    #v(0.2cm)
    #line(length: 100%, stroke: 1pt + rgb("3b82f6"))
  ],
  footer: [
    #set text(size: 9pt, fill: gray)
    #line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
    #v(0.3cm)
    #align(center)[
      Viktor Arohlén · #link("https://summor.se")[summor.se]
    ]
  ],
)

#set text(font: primary-font, size: 11pt, lang: "sv")
#set par(justify: true, leading: 0.85em, spacing: 1.2em)
#set math.equation(numbering: none)
#show math.equation: set text(font: math-font)

#set heading(
  numbering: none,
)

#show heading.where(level: 1): it => [
  #set text(font: sans-font, size: 20pt, weight: "bold", fill: rgb("1e3a8a"))
  #block(above: 1.8em, below: 0.9em)[
    #it.body
    #v(0.3em)
    #line(length: 100%, stroke: 2pt + rgb("3b82f6"))
  ]
]

#show heading.where(level: 2): it => [
  #set text(font: sans-font, size: 15pt, weight: "bold", fill: rgb("1e40af"))
  #block(above: 1.5em, below: 0.7em)[#it.body]
]

#show heading.where(level: 3): it => [
  #set text(font: sans-font, size: 13pt, weight: "semibold", fill: rgb("1f2937"))
  #block(above: 1.2em, below: 0.6em)[#it.body]
]

#align(center)[
  #text(font: sans-font, size: 24pt, weight: "bold", fill: rgb("1e3a8a"))[
    Inlämningsuppgift: Hållbar produktion
  ]
  #v(0.4cm)
  #text(font: sans-font, size: 16pt, weight: "medium", fill: rgb("3b82f6"))[
    Matematik 3b
  ]
  #v(0.3cm)
  #text(font: primary-font, size: 11pt, fill: rgb("6b7280"))[
    Viktor Arohlén
  ]
]

#v(1cm)

== Översikt

#box(
  width: 100%,
  fill: rgb("eff6ff"),
  inset: (x: 0.8cm, y: 0.7cm),
  stroke: 1.5pt + rgb("3b82f6"),
  radius: 8pt,
  [
    #set text(font: primary-font)
    #set par(leading: 0.9em)

    #text(weight: "bold", fill: rgb("1e40af"))[Arbetsform:] Individuellt

    #v(0.4em)
    #text(weight: "bold", fill: rgb("1e40af"))[Tidsram:] Två lektionspass + hemarbete

    #v(0.4em)
    #text(weight: "bold", fill: rgb("1e40af"))[Inlämning:] Handskrivna lösningar (skanna/fotografera om du lämnar in digital)

    #v(0.4em)
    #text(weight: "bold", fill: rgb("1e40af"))[Digitalt verktyg:] Endast GeoGebra för kontroll
  ],
)

== Genomförande

#set par(leading: 0.9em)

#box(
  width: 100%,
  fill: rgb("fef3c7"),
  inset: (x: 0.8cm, y: 0.6cm),
  stroke: 1pt + rgb("f59e0b"),
  radius: 6pt,
  [
    #set text(font: primary-font)

    • Lös alla deluppgifter på papper med tydlig struktur.

    #v(0.3em)
    • Använd GeoGebra endast för kontroll av grafer, derivator och optimering. Notera i lösningen när och hur verktyget användes.

    #v(0.3em)
    • Visa alla beräkningssteg, motiveringar och slutsatser.

    #v(0.3em)
    • Lämna in: (1) Handskriven lösning (2) Skannad/fotograferad lösning
  ],
)

#pagebreak();

== Del A – Produktionsmodell med linjära begränsningar

#figure(
  image("produkter.png", width: 40%),
  caption: [Produkterna som tillverkas],
)

*Situation:* Ett företag producerar energidryck ($x$) och proteinbars ($y$).

Produktionen begränsas av:
- Tillgänglig arbetstid (max 50 timmar)
- Tillgängligt förpackningsmaterial (max 40 kg)
- Avtal med kunder kräver minst 5 enheter av varje produkt

Detta ger följande system av olikheter:

$ 2x + y & <= 50 quad "(Arbetstid i timmar)" $
$ x + 2y & <= 40 quad "(Förpackningsmaterial i kg)" $
$ x & >= 5, quad y >= 5 quad "(Minimiproduktion enligt avtal)" $

=== 1. Modellering

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

• Skriv upp vad $x$ och $y$ betyder.

• Förklara vad olikheterna betyder.

• Rita det tillåtna området i ett koordinatsystem.

• Skriv upp målet: maximera vinsten $V = 25x + 30y$.

#v(0.8em);

=== 2. Analys

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

• Beräkna alla hörnpunkter. Visa uträkningarna.

• Vilken hörnpunkt ger högst vinst? Hur mycket blir vinsten?

• Kontrollera ditt svar i GeoGebra.

#pagebreak();

=== 3. Reflektion

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

• Beskriv två nya situationer (t.ex. mer arbetstid eller annat avtal).

• Hur ändras olikheterna? Vad händer med det tillåtna området?

#pagebreak();

== Del B – Från sekant till tangent

#v(0.5em);

Efterfrågekurvan beskriver priset:

$ P(x) = -0.2x^2 + 6x + 10 $

där $P$ är priset i kronor och $x$ är antalet sålda enheter (i hundratal).

=== 1. Sekant mellan två punkter

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

• Beräkna $P(5)$ och $P(6)$.

• Beräkna sekantens lutning mellan $x = 5$ och $x = 6$.

• Skissa grafen och markera sekanten mellan punkterna.

#v(0.8em);

=== 2. Närmare tangenten

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

Nu ska vi undersöka vad som händer när punkterna kommer närmare varandra.

• Beräkna lutningen mellan $x = 5$ och $x = 5 + h$ för:
- $h = 1$
- $h = 0.5$
- $h = 0.1$

• Använd formeln: $k = (P(5 + h) - P(5))/h$.

• Skriv resultaten i en tabell med kolumnerna: $h$, $P(5+h)$, och $k$.

• Vad händer med lutningen när $h$ blir mindre?

#v(0.8em);

=== 3. Derivatans definition

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

• Skriv upp derivatans definition: $P'(5) = lim_(h arrow 0) (P(5 + h) - P(5))/h$.

• Sätt in $P(x) = -0.2x^2 + 6x + 10$ och förenkla uttrycket.

• Beräkna gränsvärdet. Visa alla steg.

• Kontrollera ditt svar i GeoGebra

#v(0.8em);

=== 4. Tolkning

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

• Vad betyder värdet på $P'(5)$ i det här sammanhanget?

• Är priset stigande eller fallande när $x = 5$? Hur vet du det?

#pagebreak();

== Del C – Villkor för deriverbarhet

#v(0.5em);

#box(
  width: 100%,
  fill: rgb("fef2f2"),
  inset: (x: 0.8cm, y: 0.6cm),
  stroke: 1.5pt + rgb("dc2626"),
  radius: 6pt,
  [
    #set text(font: sans-font, weight: "bold", fill: rgb("991b1b"))
    ⚠️ OBSERVERA: Denna del är enbart för elever som siktar på högre betyg (C-A).

    #v(0.3em)
    #set text(font: primary-font, weight: "regular", fill: rgb("7f1d1d"))
    Om du siktar på E-nivå kan du hoppa över Del C och fortsätta direkt till Del D.
  ],
)

#v(0.8em);

Företaget har en produktionseffektivitetsfunktion som beskriver kvaliteten $Q$ beroende på produktionstid $x$ (i timmar):

$
  Q(x) = cases(
    -0.5x^2 + 6x - 1 quad & "om" x < 4,
    2x + 7 quad & "om" x >= 4
  )
$

Funktionen är styckvis definierad eftersom produktionsprocessen ändras efter 4 timmar (t.ex. byte av skift eller maskin).

Vi ska undersöka om funktionen är kontinuerlig och deriverbar i punkten $x = 4$, vilket är viktigt för att förstå om produktionen kan övergå smidigt eller om det sker ett abrupt skifte.

=== 1. Kontinuitet

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

• Beräkna funktionsvärdet $Q(4)$ med den högra delen av funktionen.

• Beräkna gränsvärdet när $x$ närmar sig 4 från vänster: $lim_(x arrow 4^-) Q(x)$.

• Beräkna gränsvärdet när $x$ närmar sig 4 från höger: $lim_(x arrow 4^+) Q(x)$.

• Jämför de tre värdena. Är funktionen kontinuerlig i $x = 4$? Motivera.

#v(0.8em);

=== 2. Deriverbarhet

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

För att funktionen ska vara deriverbar måste derivatan från vänster och höger vara lika.

• Derivera den vänstra delen: $Q(x) = -0.5x^2 + 6x - 1$ för $x < 4$.

• Beräkna $Q'(4^-)$ (derivatan från vänster).

• Derivera den högra delen: $Q(x) = 2x + 7$ för $x >= 4$.

• Beräkna $Q'(4^+)$ (derivatan från höger).

• Jämför värdena. Är funktionen deriverbar i $x = 4$? Motivera.

• Rita en skiss av funktionen och markera punkten $x = 4$.

#pagebreak();

=== 3. Exempel och resonemang

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

• Ge ett exempel på en funktion som är kontinuerlig men inte deriverbar (t.ex. absolutbeloppsfunktionen).

• Förklara varför din funktion inte är deriverbar i en viss punkt.

• Vad skulle det betyda i produktionssammanhang om en funktion är kontinuerlig men inte deriverbar? (T.ex. plötslig förändring i produktionshastighet)

#pagebreak();

== Del D – Marginalintäkter med GeoGebra

#v(0.5em);

Företaget från Del A har också en intäktsfunktion för sin totala försäljning:

$ R(x) = -0.25x^3 + 3x^2 + 12x $

där $R$ är intäkten i tusen kronor (tkr) och $x$ är antalet sålda enheter (i hundratal).

Marginalintäkten $R'(x)$ visar hur mycket intäkten ökar när man säljer en enhet till.

=== 1. Digital kontroll

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

• Rita funktionen $R(x)$ i GeoGebra.

• Använd GeoGebra för att hitta derivatan $R'(x)$.

• Rita även $R'(x)$ i samma koordinatsystem.

• Skriv ner vilka kommandon du använde.

#v(0.8em);

=== 2. Analys på papper

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

• Derivera $R(x)$ för hand och skriv upp $R'(x)$.

• Lös ekvationen $R'(x) = 0$. Visa alla steg.

• Vilka $x$-värden är rimliga i produktionssammanhanget? (Tänk på att $x >= 0$.)

• Vid vilket $x$-värde är marginalintäkten som störst? Använd GeoGebra-grafen och förklara.

#v(0.8em);

=== 3. Koppling till Del A

#v(0.5em);
#line(length: 100%, stroke: 0.5pt + rgb("e5e7eb"))
#v(0.5em);

• I Del A optimerade du vinsten $V = 25x + 30y$. Hur skiljer sig det från att optimera intäkten $R(x)$?

• Varför kan det vara viktigt att känna till marginalintäkten när man planerar produktion?

• Hur skulle du kunna använda både linjär optimering (Del A) och derivata (Del D) tillsammans för att fatta smarta produktionsbeslut?

#pagebreak();

== Sammanställning och inlämning

• Kontrollera att varje del har rubrik, beräkningar och slutsatser.

• Skriv en sammanfattning (5–6 meningar) med de viktigaste insikterna.

• Lämna in enligt lärarens instruktioner.
