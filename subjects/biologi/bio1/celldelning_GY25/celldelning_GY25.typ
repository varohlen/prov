// Biologi 1 – Prov: Celldelning och mutationer (GY25)
// Viktor Arohlén

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
  #text(size: 18pt, weight: "bold")[Prov: Celldelning och mutationer] \
  #v(0.3cm)
  #text(size: 14pt)[Biologi Nivå 1] \
  #v(0.3cm)
  #text(size: 11pt)[Viktor Arohlén] \
  #text(size: 10pt)[2025-12-09]
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

#set text(size: 11pt)

= Del 1: Flervalsfrågor

_Välj det alternativ som bäst besvarar frågan. Markera ditt svar genom att kryssa i rutan._

#v(0.8cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*1.* I vilken fas av cellcykeln kopieras DNA inför celldelningen? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) G1-fasen],
  [☐], [B) S-fasen],
  [☐], [C) Metafas],
  [☐], [D) Cytokines],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*2.* Vilket enzym separerar DNA-dubbelhelixen vid replikationen? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) DNA-ligas],
  [☐], [B) Helikas],
  [☐], [C) RNA-polymeras],
  [☐], [D) Ribosom],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*3.* Vad är den viktigaste skillnaden mellan en genmutation i en hudcell och en i en könscell? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Hudcellens mutation går i arv till nästa generation],
  [☐], [B) Mutationer i könsceller kan föras vidare till avkomman],
  [☐], [C) Hudceller saknar reparationsmekanismer],
  [☐], [D) Mutationer i könsceller påverkar bara den drabbade individen],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*4.* Under vilken fas i mitosen ligger systerkromatiderna uppradade i cellens mittplan? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Profas],
  [☐], [B) Metafas],
  [☐], [C) Anafas],
  [☐], [D) Telofas],
)

#pagebreak()

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)



*5.* Vad beskriver *överkorsning* i meios I? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Systerkromatider dras åt varsin cellpol],
  [☐], [B) Homologa kromosompar byter segment med varandra],
  [☐], [C) Cytokines inleds och cellmembranet snörs av],
  [☐], [D) DNA kopieras i interfas],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*6.* Vilket påstående beskriver en *haploid* cell? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Den innehåller 46 kromosomer],
  [☐], [B) Den har en enkel kromosomuppsättning (n)],
  [☐], [C) Den finns bara hos växter],
  [☐], [D) Den har en extra kromosom],
)


#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*7.* Vad innebär att DNA-replikationen är *semikonservativ*? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Att båda kedjorna i varje ny DNA-molekyl är helt nybildade],
  [☐], [B) Att varje ny DNA-molekyl består av en gammal och en ny kedja],
  [☐], [C) Att endast hälften av genomet kopieras vid varje celldelning],
  [☐], [D) Att bara den ena nukleotidkedjan kopieras medan den andra bryts ned],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*8.* Vilket av följande är ett exempel på en *kromosommutation*? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) En enstaka bas byts ut i hemoglobin-genen],
  [☐], [B) En extra kopia av kromosom 21 finns i varje cell],
  [☐], [C) Ett enzym tar bort en felaktig kvävebas],
  [☐], [D) En bas byts ut men kodar för samma aminosyra],
)

#pagebreak()

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*9.* Vad kännetecknar en *malign* tumör? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Den växer långsamt och sprider sig inte],
  [☐], [B) Den består av fullt differentierade celler],
  [☐], [C) Den kan invadera andra vävnader och bilda metastaser],
  [☐], [D) Den uppstår bara i könsceller],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*10.* Vilken funktion har proteinet *p53* i cellcykeln? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.4em,
  column-gutter: 0.5em,
  [☐], [A) Startar DNA-replikationen],
  [☐], [B) Signalerar cellcykelstopp eller apoptos vid DNA-skador],
  [☐], [C) Bygger upp den mitotiska spolen],
  [☐], [D) Fördubblar kromosomantalet],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*11.* Utgå från DNA-sekvensen `ATGGCTGAA`, som kodar för aminosyrorna Met–Ala–Glu. Den muteras till `ATGCTGAA`. Vilken beskrivning stämmer bäst? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.8em,
  column-gutter: 0.5em,
  [☐], [A) En insertion har skett, men läsramen är oförändrad och proteinet blir likadant],
  [☐], [B) En deletion har skett som förskjuter läsramen så att aminosyrasekvensen ändras från och med andra kodonet],
  [☐], [C) En substitution har skett som byter ut en aminosyra men lämnar resten av proteinet oförändrat],
  [☐], [D) En tyst mutation har skett, vilket innebär att aminosyrasekvensen inte påverkas],
)

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt)
#v(0.5cm)

*12.* Vilket av följande påståenden om *könskromosomavvikelser* hos människa stämmer bäst? *(1 poäng)*

#v(0.3cm)

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.8em,
  column-gutter: 0.5em,
  [☐], [A) Turners syndrom (X0) innebär alltid att individen har manligt kön],
  [☐], [B) Klinefelters syndrom (XXY) drabbar biologiska män och kan ge låg fertilitet och hormonella avvikelser],
  [☐], [C) Jacobs syndrom (XYY) innebär alltid svår fysisk funktionsnedsättning och är inte förenligt med vuxen ålder],
  [☐], [D) Triple-X syndrom (XXX) innebär att individen saknar en X-kromosom],
)

#pagebreak()

= Del 2: Kortsvarsfrågor

_Svara kortfattat med hela meningar. Använd relevanta begrepp och figurer där det passar._

#v(0.8cm)

*14.* Beskriv hur DNA packas från histoner till synliga kromosomer och varför packningen förändras mellan interfas och mitos. *(2 poäng)*

#v(5cm)

#v(0.8cm)

*15.* Beskriv hur DNA-replikationen går till och nämn vilka enzymer som är viktigast för processen. *(2 poäng)*

#v(5cm)

#v(0.8cm)

*16.* Förklara kort vad som menas med en trisomi hos människa och ge ett exempel på en trisomi som är förenlig med liv. *(2 poäng)*

#v(5cm)

#pagebreak()

#v(0.8cm)

*17.* Förklara vad som kontrolleras i checkpointsen G1/S, G2/M och metafas/spindel, och varför dessa kontroller är viktiga för att undvika sjukdomar som cancer. *(3 poäng)*

#v(8cm)



#v(0.8cm)

*18.* I laborationen med vitlöksrot färgade ni rotspetsar och studerade celler i mitos i mikroskop. Besvara deluppgifterna nedan. *(3 poäng)*

#v(0.4cm)

*a)* Förklara varför rotspetsen är särskilt lämplig att undersöka om man vill se många celler i celldelning. \
*b)* Beskriv minst två möjliga felkällor i laborationen och hur den kan påverka resultatet. \

#v(6cm)

#pagebreak()

= Del 3: Resonemangsfrågor

_Resonera utförligt och strukturera dina svar. Använd begrepp och exempel från kursens alla moment._

#v(0.8cm)

*19.* I genomgångarna har du sett schematiska bilder som visar mitos och meios uppdelade i tydliga faser (profas, metafas, anafas, telofas osv). Resonera kring:

*a)* Hur fungerar sådana bilder som modeller för vad som faktiskt händer i cellerna? \
#v(0.1cm)
*b)* På vilka sätt förenklar modellerna eller stämmer de inte helt med verkligheten i en vävnad? \
#v(0.1cm)
*c)* Ge minst ett exempel på hur mitos och meios skiljer sig åt och hur det syns i modellerna. \
#v(0.1cm)
*d)* Varför är det viktigt att använda naturvetenskapligt språk (rätta begrepp) när vi beskriver mitos och meios med hjälp av modeller?

*(6 poäng)*

#pagebreak()

*20.* Nedan är ett utdrag ur ett blogginlägg om en alternativ behandling mot cancer:

#v(0.3cm)

#rect(
  width: 100%,
  stroke: 0.5pt + gray,
  inset: 10pt,
  [
    #text(weight: "bold")[Blogginlägg: "Naturlig väg till läkning"] \
    #text(size: 9pt, fill: gray)[Publicerad 2025-03-14 på bloggen *Holistisk hälsa nu*]

    #v(0.3cm)

    #quote[
      När jag fick min cancerdiagnos bestämde jag mig direkt: \
      *inga cellgifter och ingen strålning*. Istället valde jag att lita på \
      kroppens fantastiska förmåga att läka sig själv.

      Läkarna pratar bara om mutationer och gener, men de förstår inte att \
      cancer i grunden handlar om *gifter* och *dåligt immunförsvar*. Genom \
      att rensa kroppen med juicefasta, örter och kosttillskott kan man ta \
      bort toxinerna som orsakar cancer. Samtidigt stärker man immunförsvaret \
      så att det själv kan hitta och döda cancercellerna.

      Jag har läst många vittnesmål från människor som blivit friska utan \
      "skolmedicin". Vetenskapen ligger långt efter, men jag tror att \
      framtidens cancerbehandling kommer vara naturlig och fri från \
      läkemedelsindustrins intressen.
    ]
  ],
)

#v(0.6cm)

\ *a)* Analysera påståendena i blogginlägget utifrån dina kunskaper om mutationer, cellcykelns checkpoints, reparationssystem och p53. Vilka delar kan vara rimliga, och vilka saknar vetenskaplig grund?
#v(0.1cm)
\ *b)* Vilken typ av vetenskaplig evidens skulle du vilja se för att ta behandlingen på allvar? Ge något exempel på hur en studie skulle kunna vara upplagd.
#v(0.1cm)
\ *c)* Förklara kort skillnaden mellan ett vetenskapligt underbyggt påstående och ett icke-vetenskapligt påstående i det här sammanhanget.

*(6 poäng)*

#pagebreak()

= Bonusfråga

_Frivillig bonusfråga: besvaras endast om du har tid över._

#v(0.8cm)

*21. BONUS:* Skriv om något du kan från området celldelning, mutationer, cellcykel eller cancer som inte har tagits upp i provet. \
Ge en kort förklaring med naturvetenskapligt språk och relevanta begrepp. *(upp till 2 bonuspoäng)*

#v(8cm)
