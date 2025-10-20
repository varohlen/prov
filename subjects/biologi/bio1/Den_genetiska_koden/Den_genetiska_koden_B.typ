// Biologi 1 – Prov: Den genetiska koden (Version B)
// Viktor Arohlén

#set page(
  paper: "a4",
  margin: 2.5cm,
  footer: [
    #set text(size: 9pt, fill: gray, font: ("Excalifont", "Comic Sans MS"))
    #align(center)[
      #box(baseline: 20%, image("../../../matematik/ma3b/prov1-bas/logo.png", height: 1.2em)) #link(
        "https://summor.se",
      )[summor.se]
    ]
  ],
)
#set text(font: "New Computer Modern", size: 12pt, lang: "sv")
#set par(justify: false, leading: 0.65em)

// Title
#align(center)[
  #text(size: 18pt, weight: "bold")[Prov: Den genetiska koden (Version B)] \
  #text(size: 14pt)[Biologi 1] \
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

    - Inga hjälpmedel är tillåtna
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

= Del 1: Flervalsfrågor

_Välj det alternativ som bäst besvarar frågan. Markera ditt svar genom att kryssa i rutan._

#v(0.8cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*1.* En *nukleotid* består av: *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Kvävebas, sockermolekyl (ribos eller deoxiribos) och fosfatgrupp(er)],
  [☐], [B) Aminosyra, kvävebas och deoxiribos],
  [☐], [C) Deoxiribos, ribos och fosfatgrupper(er)],
  [☐], [D) Kvävebas, ribos och en fosfatgrupp],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*2.* Vad är den huvudsakliga skillnaden mellan DNA och RNA när det gäller deras struktur? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) DNA är kortare än RNA],
  [☐], [B) DNA innehåller deoxiribos medan RNA innehåller ribos],
  [☐], [C) DNA är enkelsträngat medan RNA är dubbelsträngat],
  [☐], [D) DNA innehåller uracil medan RNA innehåller tymin],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*3.* Vilken av följande processer sker i *cellkärnan*? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Aminosyraaktivering],
  [☐], [B) Proteinsyntes],
  [☐], [C) Transkription],
  [☐], [D) Translation],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*4.* Vilken är den huvudsakliga funktionen av *tRNA* under proteinsyntesen? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Att binda samman nukleotider],
  [☐], [B) Att öppna upp DNA-spiralen],
  [☐], [C) Att transportera aminosyror till ribosomen],
  [☐], [D) Att fungera som mall för proteinet],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

#pagebreak()

*5.* Vilka av följande är kvävebaspar i *DNA*? _(Flera alternativ kan vara korrekta)_ *(2 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Guanin - Cytosin],
  [☐], [B) Tymin - Cytosin],
  [☐], [C) Adenin - Uracil],
  [☐], [D) Cytosin - Uracil],
  [☐], [E) Adenin - Tymin],
  [☐], [F) Uracil - Adenin],
  [☐], [G) Guanin - Tymin],
  [☐], [H) Adenin - Cytosin],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*6.* Hur *binder* aminosyror till varandra? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Kemisk bindning],
  [☐], [B) Peptidbindning],
  [☐], [C) Jonbindning],
  [☐], [D) Vätebindningar],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*7.* Ett DNA-virus måste ta sig in i cellkärnan för att föröka sig. Vilken process kapar viruset där? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Celldifferentiering],
  [☐], [B) Transkription],
  [☐], [C) Translation],
  [☐], [D) Replikation],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*8.* Ett proteins funktion och egenskaper avgörs av dess struktur. *Primärstruktur* syftar till: *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) hur proteinet binder till andra proteiner],
  [☐], [B) vilken form proteinet har],
  [☐], [C) vilka aminosyror som ingår och i vilken ordning de är bundna],
  [☐], [D) vilka aminosyror som ingår],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*9.* Vad kallas processen där *intron* klipps bort från pre-mRNA? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Replikation],
  [☐], [B) Splicing],
  [☐], [C) Translation],
  [☐], [D) Transkription],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*10.* Hur många kvävebaser bildar ett *kodon* som kodar för en aminosyra? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Fyra kvävebaser],
  [☐], [B) Tre kvävebaser],
  [☐], [C) Två kvävebaser],
  [☐], [D) En kvävebas],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*11.* Vad kallas det när ett virus DNA integreras i värdcellens DNA och replikeras tillsammans med det? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Transkription],
  [☐], [B) Viral mutation],
  [☐], [C) Lysogen infektion],
  [☐], [D) Lytisk infektion],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)



*12.* *RNA-polymeras* är ett enzym som är viktigt vid transkriptionen. Vad är dess funktion? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Bygger proteiner från aminosyror],
  [☐], [B) Transporterar mRNA ut ur cellkärnan],
  [☐], [C) Skapar mRNA från DNA som mall],
  [☐], [D) Klipper bort intron från mRNA],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*13.* I vilken organell sker *translationen*? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Cellkärna],
  [☐], [B) Mitokondrie],
  [☐], [C) Endoplasmatiskt retikulum],
  [☐], [D) Ribosom],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*14.* Vad kallas processen där genetisk information i en gen aktiveras eller inaktiveras? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Replikation],
  [☐], [B) Translation],
  [☐], [C) Genreglering],
  [☐], [D) Mutation],
)

#pagebreak()

*15.* Vilken av följande beskriver bäst vad ett *enzym* gör? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Bygger upp cellmembran],
  [☐], [B) Katalyserar (påskyndar) kemiska reaktioner],
  [☐], [C) Transporterar syre i blodet],
  [☐], [D) Lagrar genetisk information],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*16.* Ett *protein* är *120 aminosyror* långt. Hur många kvävebaser krävs för att lagra informationen om proteinets uppbyggnad? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) 480],
  [☐], [B) 360],
  [☐], [C) 240],
  [☐], [D) 120],
)

#pagebreak()

= Del 2: Kortsvarsfrågor

_Svara kortfattat på frågorna. Skriv 2-4 meningar per fråga._

#v(0.8cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*17.* Ett proteins funktion avgörs av dess struktur. Förklara vad som menas med *primärstruktur* och *sekundärstruktur* hos ett protein. *(2 poäng)*

#v(5cm)

#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*18.* Förklara skillnaden mellan *exon* och *intron* i en gen. Vad händer med intronerna under proteinsyntesen? *(2 poäng)*

#v(5cm)

#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*19.* Förklara varför alla celler i din kropp har samma DNA men ändå kan ha helt olika funktioner (t.ex. en muskelcell jämfört med en nervecell). Använd begreppen *genreglering* och *epigenetik* i ditt svar. *(3 poäng)*

#v(6cm)

#pagebreak()

= Del 3: Utförliga svar

_Svara utförligt på frågan. Använd hela din kunskap och ge konkreta exempel._

#v(0.8cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*20.* Virus kan inte föröka sig på egen hand utan måste kapa värdcellens mekanismer.

Jämför och analysera hur DNA-virus och RNA-virus utnyttjar värdcellen:
- Hur kapar de värdcellens processer för att föröka sig?
- Vilka skillnader finns mellan DNA-virus och RNA-virus när det gäller effektivitet?
- Hur kan virusets strategi jämföras med cellens egna system för genreglering?

Använd relevanta begrepp från kursen i ditt svar.

*(6 poäng)*

#v(12cm)

#pagebreak()

#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*21. BONUSFRÅGA:* Skriv om något relevant ämne från kursen som inte behandlats i provet men som du vill visa att du kan. Det kan till exempel handla om:
- Retrovirus och omvänt transkriptas
- Lytisk vs lysogen cykel
- Profag och dess betydelse
- Kapsid och virusets uppbyggnad
- RNA-typer (mRNA, rRNA, tRNA) och deras skillnader
- Peptider vs proteiner
- Cytosin/uracil-problematiken
- Eller något annat relevant ämne

*(2 poäng)*

#v(10cm)
