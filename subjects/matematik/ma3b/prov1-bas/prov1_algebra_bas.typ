// Matematik 3b – Prov: Algebra och Funktioner
// Viktor Arohlén

#set page(
  paper: "a4",
  margin: 2.5cm,
  footer: [
    #set text(size: 9pt, fill: gray, font: ("Excalifont", "Comic Sans MS"))
    #align(center)[
      #box(baseline: 20%, image("logo.png", height: 1.2em)) #link("https://summor.se")[summor.se]
    ]
  ],
)
#set text(font: "New Computer Modern", size: 12pt, lang: "sv")
#set par(justify: false, leading: 0.65em)

// Title
#align(center)[
  #text(size: 18pt, weight: "bold")[Prov: Algebraiska uttryck] \
  #text(size: 14pt)[Matematik 3b] \
  #v(0.3cm)
  #text(size: 11pt)[Viktor Arohlén] \
  #text(size: 10pt)[2025-10-13]
]

#v(0.5cm)

// Rules box
#rect(
  width: 100%,
  stroke: 1pt + black,
  inset: 12pt,
  [
    *Viktiga regler för provet:*

    - *Tillåtna hjälpmedel:* Miniräknare och formelblad
    - Skriv tydliga lösningar och motivera alla steg
    - Skriv alla lösningar på separat papper
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
#pagebreak()
// Questions
#set enum(numbering: n => [*#n.*], indent: 0pt, body-indent: 8pt)

#enum(
  [Vilka av följande uttryck är polynom? *(1p)*
    #v(0.5em)
    #enum(
      numbering: n => [#numbering("a)", n)],
      spacing: 0.8em,
      [$f(x) = 2x + 1$],
      [$g(x) = x^4 + 3x^2 - 7$],
      [$h(x) = x^3 - 5/x + 1$],
      [$k(x) = 4x^5 - 2x^2 + x - 9$],
      [$m(x) = x^(-1/2) + 5x$],
    )
    #v(3em)
  ],

  [Givet polynomet $p(x) = 3x^4 - 2x^3 + 5x - 7$: *(2p)*
    #v(0.5em)
    #enum(
      numbering: n => [#numbering("a)", n)],
      spacing: 1.5em,
      [Bestäm graden och konstanttermen för polynomet.],
      [Beräkna $p(2)$.],
    )
    #v(3em)
  ],
  [Bestäm gränsvärde: *(3p)*
    #v(1em)
    #enum(
      numbering: n => [#numbering("a)", n)],
      spacing: 2em,
      [$display(limits(lim)_(x -> 3) (x^2-5))$],
      [$display(limits(lim)_(x -> infinity) 2/(x + 3))$],
      [$display(limits(lim)_(x -> 3) (x^2 - 9)/(x - 3))$],
    )
    #v(3em)
  ],

  [Beräkna: *(3p)*
    #v(1em)
    #enum(
      numbering: n => [#numbering("a)", n)],
      spacing: 2em,
      [$ display(2/(x + 1) + 5/(x-1)) $],
      [$display((x^2 - 4)/(x + 2))$ / $display((x - 2)/(x + 1))$],
    )
    #v(3em)
  ],

  [För vilka värden på $x$ är uttrycket $display((2x + 5)/(x^2 - 5x + 6))$ inte definierat? *(2p)*
    #v(3em)
  ],

  [Lös ekvationen $x^4 - 10x^2 + 9 = 0$ *(2p)*
  ],
)

#pagebreak()

// Continue enumeration
#set enum(numbering: n => [*#n.*], indent: 0pt, body-indent: 8pt)

#enum(
  start: 7,
  [Funktionen $f(x)$ är definierad som: *(3p)*

    $
      f(x) = cases(
        x^2 + 1 "om" x < 2,
        5 "om" x = 2,
        3x "om" x > 2
      )
    $

    #v(1em)
    #enum(
      numbering: n => [#numbering("a)", n)],
      spacing: 1.5em,
      [Bestäm vänstergränsvärdet $display(limits(lim)_(x -> 2^-) f(x))$ och högergränsvärdet $display(limits(lim)_(x -> 2^+) f(x))$.],
      [Existerar $display(limits(lim)_(x -> 2) f(x))$? Motivera ditt svar.],
      [Är funktionen kontinuerlig i $x = 2$? Motivera ditt svar.],
    )
    #v(3em)
  ],

  [Ett polynom $p(x)$ av tredje graden har följande graf: *(4p)*

    #figure(
      image("polynomial_q14.png", width: 80%),
    )

    #v(0.5em)
    #enum(
      numbering: n => [#numbering("a)", n)],
      spacing: 1.5em,
      [Bestäm funktionens nollställen.],
      [Skriv polynomet på faktoriserad form.],
      [Bestäm polynomet på standardform.],
    )
    #v(3em)
  ],
)

#pagebreak()

// Continue enumeration
#set enum(numbering: n => [*#n.*], indent: 0pt, body-indent: 8pt)

#enum(
  start: 9,
  [I ett naturområde finns 200 örnar år 2020. Varje år planteras $A$ nya örnar ut för att rädda arten. Antalet örnar efter $x$ år beskrivs av: *(4p)*

    #figure(
      image("kungsorn.png", width: 25%),
    )

    $ N(x) = 200 dot 0.9^x + (A(1 - 0.9^x))/(1 - 0.9) $

    #v(1em)
    #enum(
      numbering: n => [#numbering("a)", n)],
      spacing: 1.5em,
      [Förenkla uttrycket för $N(x)$.],
      [Hur många örnar finns det efter 5 år om man planterar ut 30 örnar per år? (Avrunda till heltal)],
      [Bestäm $display(limits(lim)_(x -> infinity) N(x))$ och uttryck svaret med hjälp av $A$. Förklara vad detta betyder i praktiken.],
      [Bestäm hur många örnar som ska planteras ut varje år för att antalet med tiden ska närma sig 400 örnar.],
    )
  ],
)
