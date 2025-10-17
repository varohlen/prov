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
  #text(size: 18pt, weight: "bold")[Facit: Stamträdsanalys]
  
  #v(0.5em)
  
  #text(size: 12pt)[Biologi 1 - Klassisk genetik]
]

#v(1em)

#line(length: 100%, stroke: 0.5pt)

#v(1em)

= Uppgift 1: Cystisk fibros (Autosomalt recessiv)

== a) Nedärvningsmönster (2p)

*Svar:* Autosomalt recessiv nedärvning.

*Motivering:*
- Sjukdomen "dyker upp" i generation III trots att föräldrarna (II-3 och II-4) är friska → typiskt för recessiv nedärvning där båda föräldrarna är anlagsbärare
- Drabbad individ (III-1) är kvinna, vilket visar att det inte är könsbundet (vid X-bunden recessiv skulle främst män drabbas)
- Sjukdomen hoppar över generation II → kännetecken för recessiv nedärvning

*Poängbedömning:*
- 2p: Korrekt mönster + minst två välmotiverade observationer
- 1p: Korrekt mönster + en observation ELLER fel mönster men logisk motivering
- 0p: Fel mönster utan motivering

---

== b) Genotyper (4p)

*Svar:*

*Generation I:*
- I-1: Ff (anlagsbärare)
- I-2: Ff (anlagsbärare)

*Generation II:*
- II-1: FF eller Ff (frisk, men kan vara anlagsbärare)
- II-2: FF eller Ff (frisk, men kan vara anlagsbärare)
- II-3: Ff (måste vara anlagsbärare eftersom hon har drabbat barn)
- II-4: Ff (måste vara anlagsbärare eftersom han har drabbat barn)

*Generation III:*
- III-1: ff (drabbad, homozygot recessiv)
- III-2: FF eller Ff (frisk)

*Resonemang (exempel):*
- *II-3 och II-4:* Båda måste vara Ff eftersom de är friska själva men har ett barn (III-1) som är ff. För att få ff måste barnet ha fått en f-allel från vardera föräldern.
- *I-1 och I-2:* Minst en av dem måste vara anlagsbärare (Ff) för att II-3 ska kunna vara Ff. Eftersom II-3 är Ff och fick en f-allel från en av sina föräldrar, måste minst en av I-1 eller I-2 vara Ff. Mest troligt är att båda är Ff.

*Poängbedömning:*
- 4p: Alla genotyper korrekta + välutvecklat resonemang för minst två individer
- 3p: Alla eller nästan alla genotyper korrekta + utvecklat resonemang
- 2p: Majoriteten av genotyperna korrekta + enkelt resonemang
- 1p: Några genotyper korrekta
- 0p: Inga eller mycket få korrekta genotyper

---

== c) Sannolikhet för nästa barn (3p)

*Svar:* 25% sannolikhet att barnet blir drabbat.

*Beräkning:*

Korsning: II-3 (Ff) × II-4 (Ff)

#table(
  columns: (1fr, 1fr, 1fr),
  align: center,
  stroke: 0.5pt,
  [♀/♂], [*F*], [*f*],
  [*F*], [FF], [Ff],
  [*f*], [Ff], [ff],
)

*Resultat:*
- 25% FF (friskt)
- 50% Ff (friskt, anlagsbärare)
- 25% ff (drabbat)

*Svar:* Sannolikheten är 25% eller 1/4.

*Poängbedömning:*
- 3p: Korrekt korsningsschema + korrekt beräkning + korrekt svar
- 2p: Korrekt korsningsschema + mindre fel i beräkning
- 1p: Försök till korsningsschema men med fel
- 0p: Inget korsningsschema eller helt fel metod

---

== d) Kan II-1 vara anlagsbärare? (1p)

*Svar:* Ja, II-1 kan vara anlagsbärare (Ff).

*Förklaring:* Eftersom II-1 är frisk kan hon vara antingen FF eller Ff. Vi har ingen information om hennes barn, så vi kan inte avgöra om hon är anlagsbärare eller inte. Båda genotyperna är möjliga.

*Poängbedömning:*
- 1p: Ja + korrekt förklaring
- 0p: Nej eller ja utan förklaring

---

#pagebreak()

= Uppgift 2: Färgblindhet (X-bunden recessiv)

== a) Nedärvningsmönster (3p)

*Svar:* X-bunden recessiv nedärvning.

*Kännetecken:*
1. Främst män drabbas (II-1 och III-1 är män)
2. Drabbade män har ofta friska föräldrar där modern är anlagsbärare (I-2 är anlagsbärare, II-1 är drabbad)
3. Sjukdomen kan "hoppa över" generationer via anlagsbärande kvinnor (I-2 → II-3 → III-1)
4. Drabbade män kan inte överföra sjukdomen till sina söner (I-1 är frisk, inte drabbad av sin fars färgblindhet om den fanns)

*Poängbedömning:*
- 3p: Korrekt mönster + tre eller fler välmotiverade kännetecken
- 2p: Korrekt mönster + två kännetecken
- 1p: Korrekt mönster + ett kännetecken
- 0p: Fel mönster

---

== b) Genotyper (4p)

*Svar:*

*Generation I:*
- I-1: X#super[F]Y (frisk man)
- I-2: X#super[F]X#super[f] (anlagsbärande kvinna)

*Generation II:*
- II-1: X#super[f]Y (färgblind man)
- II-2: X#super[F]Y (frisk man)
- II-3: X#super[F]X#super[f] (anlagsbärande kvinna)
- II-4: X#super[F]Y (frisk man)

*Generation III:*
- III-1: X#super[f]Y (färgblind man)
- III-2: X#super[F]X#super[F] eller X#super[F]X#super[f] (frisk kvinna, kan vara anlagsbärare)

*Poängbedömning:*
- 4p: Alla genotyper korrekta inklusive Y-kromosomer
- 3p: Nästan alla korrekta, eventuellt glömt Y
- 2p: Majoriteten korrekta
- 1p: Några korrekta
- 0p: Inga eller mycket få korrekta

---

== c) Varför är II-1 färgblind men inte II-2? (2p)

*Svar:* 

Modern (I-2) är anlagsbärare med genotyp X#super[F]X#super[f]. Hon kan ge antingen X#super[F] eller X#super[f] till sina barn.

- II-1 fick X#super[f] från modern och Y från fadern → X#super[f]Y → färgblind
- II-2 fick X#super[F] från modern och Y från fadern → X#super[F]Y → frisk

Eftersom män bara har en X-kromosom, räcker det med en recessiv allel (X#super[f]) för att bli färgblind. II-1 hade "otur" och fick den sjuka allelen medan II-2 fick den friska.

*Poängbedömning:*
- 2p: Fullständig förklaring med genotyper och resonemang om slumpen
- 1p: Delvis förklaring eller korrekt resonemang utan genotyper
- 0p: Ingen eller felaktig förklaring

---

== d) Sannolikheter för III-2:s barn (3p)

*Förutsättning:* Vi måste först avgöra III-2:s genotyp.

III-2:s föräldrar är II-3 (X#super[F]X#super[f]) och II-4 (X#super[F]Y).

Möjliga genotyper för III-2:
- X#super[F]X#super[F] (50% chans)
- X#super[F]X#super[f] (50% chans)

*Fall 1: Om III-2 är X#super[F]X#super[F]*

Korsning: X#super[F]X#super[F] × X#super[f]Y

#table(
  columns: (1fr, 1fr, 1fr),
  align: center,
  stroke: 0.5pt,
  [♀/♂], [*X#super[f]*], [*Y*],
  [*X#super[F]*], [X#super[F]X#super[f]], [X#super[F]Y],
  [*X#super[F]*], [X#super[F]X#super[f]], [X#super[F]Y],
)

Resultat:
- Söner: 0% färgblinda (alla X#super[F]Y)
- Döttrar: 0% färgblinda (alla X#super[F]X#super[f], anlagsbärare)

*Fall 2: Om III-2 är X#super[F]X#super[f]*

Korsning: X#super[F]X#super[f] × X#super[f]Y

#table(
  columns: (1fr, 1fr, 1fr),
  align: center,
  stroke: 0.5pt,
  [♀/♂], [*X#super[f]*], [*Y*],
  [*X#super[F]*], [X#super[F]X#super[f]], [X#super[F]Y],
  [*X#super[f]*], [X#super[f]X#super[f]], [X#super[f]Y],
)

Resultat:
- Söner: 50% färgblinda (X#super[f]Y)
- Döttrar: 50% färgblinda (X#super[f]X#super[f])

*Totalt svar (med båda fallen):*
- *Son färgblind:* 0% (om III-2 är X#super[F]X#super[F]) eller 50% (om III-2 är X#super[F]X#super[f])
  - Genomsnittlig sannolikhet: 25%
- *Dotter färgblind:* 0% (om III-2 är X#super[F]X#super[F]) eller 50% (om III-2 är X#super[F]X#super[f])
  - Genomsnittlig sannolikhet: 25%

*Alternativt acceptabelt svar:* Om eleven antar att III-2 är anlagsbärare (X#super[F]X#super[f]) och räknar utifrån det:
- Son färgblind: 50%
- Dotter färgblind: 50%

*Poängbedömning:*
- 3p: Båda fallen beräknade ELLER korrekt antagande + korrekta beräkningar
- 2p: Ett fall korrekt beräknat eller båda med mindre fel
- 1p: Försök till beräkning men med fel
- 0p: Ingen beräkning

---

#pagebreak()

= Uppgift 3: Huntingtons sjukdom (Autosomalt dominant)

== a) Nedärvningsmönster (2p)

*Svar:* Autosomalt dominant nedärvning.

*Observationer:*
- Sjukdomen förekommer i varje generation (I → II → III) → typiskt för dominant nedärvning
- Drabbade individer har minst en drabbad förälder (II-1 har drabbad far I-1, III-1 har drabbad far II-1)
- Både män och kvinnor drabbas (I-1 och II-1 är män, III-1 är kvinna)
- Sjukdomen "hoppar inte över" generationer

*Poängbedömning:*
- 2p: Korrekt mönster + minst två välmotiverade observationer
- 1p: Korrekt mönster + en observation
- 0p: Fel mönster

---

== b) Genotyper generation I och II (5p)

*Svar:*

*Generation I:*
- I-1: Hh (drabbad, heterozygot)
- I-2: hh (frisk)

*Generation II:*
- II-1: Hh (drabbad, heterozygot)
- II-2: hh (frisk)
- II-3: hh (frisk)
- II-4: hh (frisk)

*Förklaring varför II-1 måste vara Hh:*

II-1 är drabbad, så han har minst en H-allel. Han kan vara antingen HH eller Hh.

Han har en frisk mor (I-2) som är hh. Modern kan bara ge h-allelen till sina barn.

Därför måste II-1 ha fått:
- H från sin drabbade far (I-1)
- h från sin friska mor (I-2)

→ II-1 måste vara Hh (heterozygot)

II-1 kan INTE vara HH eftersom det skulle kräva två H-alleler, men modern (I-2) har bara h-alleler att ge.

*Samma resonemang gäller för I-1:*
I-1 har friska barn (II-3 och II-4). Om I-1 vore HH skulle alla hans barn vara drabbade (eftersom de alla skulle få H från honom). Eftersom han har friska barn måste han vara Hh.

*Poängbedömning:*
- 5p: Alla genotyper korrekta + välutvecklat resonemang för II-1
- 4p: Alla genotyper korrekta + utvecklat resonemang
- 3p: Nästan alla genotyper korrekta + resonemang
- 2p: Majoriteten korrekta + enkelt resonemang
- 1p: Några korrekta
- 0p: Inga eller mycket få korrekta

---

== c) Genotyp för III-1 (2p)

*Svar:* III-1 har genotyp Hh.

*Kan hon vara HH?* Nej.

*Förklaring:*

III-1:s mor (II-2) är frisk och har genotyp hh. Modern kan bara ge h-allelen till sina barn.

Därför måste III-1 ha fått:
- H från sin drabbade far (II-1)
- h från sin friska mor (II-2)

→ III-1 måste vara Hh

Hon kan INTE vara HH eftersom det skulle kräva två H-alleler, men modern bara har h-alleler.

*Poängbedömning:*
- 2p: Korrekt genotyp + fullständig förklaring varför inte HH
- 1p: Korrekt genotyp + delvis förklaring ELLER fel genotyp men logiskt resonemang
- 0p: Fel genotyp utan resonemang

---

== d) Sannolikhet för IV-1 (4p)

*Förutsättningar:*
- III-2 (far): hh (frisk)
- III-3 (mor): hh (frisk)

*Korsning:* hh × hh

#table(
  columns: (1fr, 1fr, 1fr),
  align: center,
  stroke: 0.5pt,
  [♀/♂], [*h*], [*h*],
  [*h*], [hh], [hh],
  [*h*], [hh], [hh],
)

*Resultat:*
- 100% hh (friska)
- 0% drabbade

*Svar:* Sannolikheten att IV-1 utvecklar Huntingtons sjukdom är 0% (eller 0/4).

*Förklaring:* Eftersom båda föräldrarna är friska (hh) kan de bara ge h-alleler till sina barn. Barnet kommer därför att vara hh och inte utveckla sjukdomen.

*Poängbedömning:*
- 4p: Korrekt korsningsschema + korrekt beräkning + korrekt svar med förklaring
- 3p: Korrekt korsningsschema + korrekt svar
- 2p: Korrekt metod men mindre fel
- 1p: Försök till korsningsschema
- 0p: Ingen beräkning eller helt fel metod

---

#pagebreak()

= Sammanfattning av poängfördelning

#table(
  columns: (2fr, 1fr),
  align: (left, center),
  stroke: 0.5pt,
  [*Uppgift*], [*Max poäng*],
  [Uppgift 1a - Nedärvningsmönster], [2],
  [Uppgift 1b - Genotyper], [4],
  [Uppgift 1c - Sannolikhet], [3],
  [Uppgift 1d - Anlagsbärare], [1],
  [*Uppgift 1 totalt*], [*10*],
  [],[]
  [Uppgift 2a - Nedärvningsmönster], [3],
  [Uppgift 2b - Genotyper], [4],
  [Uppgift 2c - Förklaring], [2],
  [Uppgift 2d - Sannolikheter], [3],
  [*Uppgift 2 totalt*], [*12*],
  [],[]
  [Uppgift 3a - Nedärvningsmönster], [2],
  [Uppgift 3b - Genotyper], [5],
  [Uppgift 3c - III-1 genotyp], [2],
  [Uppgift 3d - Sannolikhet IV-1], [4],
  [*Uppgift 3 totalt*], [*13*],
  [],[]
  [*TOTALT*], [*35*],
)

#v(2em)

= Betygsgränser

#table(
  columns: (1fr, 1fr, 2fr),
  stroke: 0.5pt,
  [*Betyg*], [*Poäng*], [*Procent*],
  [E], [18-24], [51-69%],
  [C], [25-30], [71-86%],
  [A], [31-35], [89-100%],
)
