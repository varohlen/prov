// Biologi 1 – Prov: Den genetiska koden
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
  #text(size: 18pt, weight: "bold")[Prov: Den genetiska koden] \
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

*1.* Vad är den huvudsakliga skillnaden mellan DNA och RNA när det gäller deras struktur? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) DNA innehåller uracil medan RNA innehåller tymin],
  [☐], [B) DNA är enkelsträngat medan RNA är dubbelsträngat],
  [☐], [C) DNA innehåller deoxiribos medan RNA innehåller ribos],
  [☐], [D) DNA är kortare än RNA],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*2.* En *nukleotid* består av: *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Aminosyra, kvävebas och deoxiribos],
  [☐], [B) Kvävebas, ribos och en fosfatgrupp],
  [☐], [C) Deoxiribos, ribos och fosfatgrupper(er)],
  [☐], [D) Kvävebas, sockermolekyl (ribos eller deoxiribos) och fosfatgrupp(er)],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*3.* Vilken är den huvudsakliga funktionen av *tRNA* under proteinsyntesen? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Att fungera som mall för proteinet],
  [☐], [B) Att transportera aminosyror till ribosomen],
  [☐], [C) Att öppna upp DNA-spiralen],
  [☐], [D) Att binda samman nukleotider],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*4.* Vilken av följande processer sker i *cellkärnan*? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Translation],
  [☐], [B) Transkription],
  [☐], [C) Proteinsyntes],
  [☐], [D) Aminosyraaktivering],
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
  [☐], [A) Adenin - Tymin],
  [☐], [B) Adenin - Cytosin],
  [☐], [C) Guanin - Tymin],
  [☐], [D) Uracil - Adenin],
  [☐], [E) Cytosin - Uracil],
  [☐], [F) Guanin - Cytosin],
  [☐], [G) Adenin - Uracil],
  [☐], [H) Tymin - Cytosin],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*6.* Ett DNA-virus måste ta sig in i cellkärnan för att föröka sig. Vilken process kapar viruset där? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Replikation],
  [☐], [B) Translation],
  [☐], [C) Transkription],
  [☐], [D) Celldifferentiering],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*7.* Hur *binder* aminosyror till varandra? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Vätebindningar],
  [☐], [B) Jonbindning],
  [☐], [C) Peptidbindning],
  [☐], [D) Kemisk bindning],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*8.* Vad kallas processen där *intron* klipps bort från pre-mRNA? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Transkription],
  [☐], [B) Translation],
  [☐], [C) Splicing],
  [☐], [D) Replikation],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*9.* Ett proteins funktion och egenskaper avgörs av dess struktur. *Primärstruktur* syftar till: *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) vilken form proteinet har],
  [☐], [B) vilka aminosyror som ingår],
  [☐], [C) vilka aminosyror som ingår och i vilken ordning de är bundna],
  [☐], [D) hur proteinet binder till andra proteiner],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*10.* Vad kallas det när ett virus DNA integreras i värdcellens DNA och replikeras tillsammans med det? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Lytisk infektion],
  [☐], [B) Lysogen infektion],
  [☐], [C) Viral mutation],
  [☐], [D) Transkription],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*11.* Hur många kvävebaser bildar ett *kodon* som kodar för en aminosyra? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) En kvävebas],
  [☐], [B) Två kvävebaser],
  [☐], [C) Tre kvävebaser],
  [☐], [D) Fyra kvävebaser],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)



*12.* I vilken organell sker *translationen*? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Ribosom],
  [☐], [B) Endoplasmatiskt retikulum],
  [☐], [C) Mitokondrie],
  [☐], [D) Cellkärna],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*13.* *RNA-polymeras* är ett enzym som är viktigt vid transkriptionen. Vad är dess funktion? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Klipper bort intron från mRNA],
  [☐], [B) Skapar mRNA från DNA som mall],
  [☐], [C) Transporterar mRNA ut ur cellkärnan],
  [☐], [D) Bygger proteiner från aminosyror],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*14.* Vilken av följande beskriver bäst vad ett *enzym* gör? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Lagrar genetisk information],
  [☐], [B) Transporterar syre i blodet],
  [☐], [C) Katalyserar (påskyndar) kemiska reaktioner],
  [☐], [D) Bygger upp cellmembran],
)

#pagebreak()

*15.* Vad kallas processen där genetisk information i en gen aktiveras eller inaktiveras? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Mutation],
  [☐], [B) Genreglering],
  [☐], [C) Translation],
  [☐], [D) Replikation],
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
  [☐], [A) 120],
  [☐], [B) 240],
  [☐], [C) 360],
  [☐], [D) 480],
)

#pagebreak()

= Del 2: Kortsvarsfrågor

_Svara kortfattat på frågorna. Skriv 2-4 meningar per fråga._

#v(0.8cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*17.* Förklara skillnaden mellan *exon* och *intron* i en gen. Vad händer med intronerna under proteinsyntesen? *(2 poäng)*

#v(5cm)

#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*18.* Ett proteins funktion avgörs av dess struktur. Förklara vad som menas med *primärstruktur* och *sekundärstruktur* hos ett protein. *(2 poäng)*

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
