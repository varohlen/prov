# Lösningar: Prov Algebraiska uttryck
**Matematik 3b - Basprov**

---

## Uppgift 1 (1p)

**Uppgift:** Vilka av följande uttryck är polynom?
- a) $f(x) = 2x + 1$
- b) $g(x) = x^4 + 3x^2 - 7$
- c) $h(x) = x^3 - \frac{5}{x} + 1$
- d) $k(x) = 4x^5 - 2x^2 + x - 9$
- e) $m(x) = x^{-1/2} + 5x$

### Lösning

Ett polynom får endast innehålla heltalspotenser av $x$ (0, 1, 2, 3, ...) och inga $x$ i nämnare eller under rot.

- a) $f(x) = 2x + 1$ ✓ **Polynom** (grad 1)
- b) $g(x) = x^4 + 3x^2 - 7$ ✓ **Polynom** (grad 4)
- c) $h(x) = x^3 - \frac{5}{x} + 1 = x^3 - 5x^{-1} + 1$ ✗ **Ej polynom** (negativ exponent)
- d) $k(x) = 4x^5 - 2x^2 + x - 9$ ✓ **Polynom** (grad 5)
- e) $m(x) = x^{-1/2} + 5x$ ✗ **Ej polynom** (negativ bråkexponent)

**Svar:** a), b) och d) är polynom.

### Bedömningsanvisningar (1p)

- **1p:** Alla fem alternativ korrekt bedömda (a, b, d är polynom; c, e är ej polynom)
- **0p:** Ett eller flera fel

**Kommentar:** Enkel identifieringsuppgift på E-nivå. Kräver grundläggande förståelse för polynombegreppet.

---

## Uppgift 2 (2p)

**Uppgift:** Givet polynomet $p(x) = 3x^4 - 2x^3 + 5x - 7$:
- a) Bestäm graden och konstanttermen för polynomet.
- b) Beräkna $p(2)$.

### Lösning

**a)** 
- **Grad:** Högsta exponenten är 4, så graden är **4**
- **Konstantterm:** Termen utan $x$ är **-7**

**b)** Sätt in $x = 2$:
$$
\begin{align*}
p(2) &= 3 \cdot 2^4 - 2 \cdot 2^3 + 5 \cdot 2 - 7 \\
&= 3 \cdot 16 - 2 \cdot 8 + 10 - 7 \\
&= 48 - 16 + 10 - 7 \\
&= 35
\end{align*}
$$

**Svar:** a) Grad: 4, Konstantterm: -7 • b) $p(2) = 35$

### Bedömningsanvisningar (2p)

**Deluppgift a) - 1p:**
- **1p:** Både grad (4) och konstantterm (-7) korrekt angivna
- **0.5p:** Endast ett av värdena korrekt
- **0p:** Båda fel

**Deluppgift b) - 1p:**
- **1p:** Korrekt beräkning med svar 35
- **0.5p:** Rätt metod men räknefel
- **0p:** Fel metod eller inget svar

**Kommentar:** E-nivå. Testar grundläggande polynombegrepp och funktionsvärdesberäkning.

---

## Uppgift 3 (3p)

**Uppgift:** Bestäm gränsvärde:
- a) $\displaystyle\lim_{x \to 3} (x^2-5)$
- b) $\displaystyle\lim_{x \to \infty} \frac{2}{x + 3}$
- c) $\displaystyle\lim_{x \to 3} \frac{x^2 - 9}{x - 3}$

### Lösning

**a)** Direkt insättning (kontinuerlig funktion):
$$
\lim_{x \to 3} (x^2-5) = 3^2 - 5 = 9 - 5 = 4
$$

**b)** När $x \to \infty$ blir nämnaren oändligt stor:
$$
\lim_{x \to \infty} \frac{2}{x + 3} = \frac{2}{\infty} = 0
$$

**c)** Faktorisera täljaren (annars får vi $\frac{0}{0}$):
$$
\begin{align*}
\lim_{x \to 3} \frac{x^2 - 9}{x - 3} &= \lim_{x \to 3} \frac{(x-3)(x+3)}{x - 3} \\
&= \lim_{x \to 3} (x+3) \\
&= 3 + 3 = 6
\end{align*}
$$

**Svar:** a) 4 • b) 0 • c) 6

### Bedömningsanvisningar (3p)

**Deluppgift a) - 1p:**
- **1p:** Korrekt svar 4
- **0p:** Fel svar

**Deluppgift b) - 1p:**
- **1p:** Korrekt svar 0 med förklaring
- **0.5p:** Korrekt svar utan förklaring
- **0p:** Fel svar

**Deluppgift c) - 1p:**
- **1p:** Korrekt faktorisering och svar 6
- **0.5p:** Rätt metod men räknefel
- **0p:** Ingen faktorisering eller fel metod

**Kommentar:** E-nivå (a, b) och C-nivå (c). Uppgift c kräver algebraisk färdighet med faktorisering.

---

## Uppgift 4 (3p)

**Uppgift:** Beräkna:
- a) $\displaystyle\frac{2}{x + 1} + \frac{5}{x-1}$
- b) $\displaystyle\frac{x^2 - 4}{x + 2}$ / $\displaystyle\frac{x - 2}{x + 1}$

### Lösning

**a)** Gemensam nämnare: $(x+1)(x-1)$
$$
\begin{align*}
\frac{2}{x + 1} + \frac{5}{x-1} &= \frac{2(x-1) + 5(x+1)}{(x+1)(x-1)} \\
&= \frac{2x - 2 + 5x + 5}{(x+1)(x-1)} \\
&= \frac{7x + 3}{(x+1)(x-1)}
\end{align*}
$$

**b)** Division av bråk = multiplicera med inverterade:
$$
\begin{align*}
\frac{x^2 - 4}{x + 2} \div \frac{x - 2}{x + 1} &= \frac{x^2 - 4}{x + 2} \cdot \frac{x + 1}{x - 2} \\
&= \frac{(x-2)(x+2)}{x + 2} \cdot \frac{x + 1}{x - 2} \\
&= \frac{(x-2)(x+2)(x+1)}{(x+2)(x-2)} \\
&= x + 1
\end{align*}
$$

**Svar:** a) $\displaystyle\frac{7x + 3}{(x+1)(x-1)}$ • b) $x + 1$

### Bedömningsanvisningar (3p)

**Deluppgift a) - 1.5p:**
- **1.5p:** Korrekt gemensam nämnare, förlängning och förenkling
- **1p:** Rätt gemensam nämnare och förlängning men räknefel i täljaren
- **0.5p:** Ansats med gemensam nämnare men större fel
- **0p:** Fel metod eller inget svar

**Deluppgift b) - 1.5p:**
- **1.5p:** Korrekt omvandling till multiplikation, faktorisering och förenkling
- **1p:** Rätt metod (division → multiplikation, faktorisering) men räknefel
- **0.5p:** Ansats med division → multiplikation men ej faktorisering
- **0p:** Fel metod (t.ex. adderar istället för dividerar)

**Kommentar:** E-nivå (a) och C-nivå (b). Uppgift b kräver både förståelse för bråkdivision och faktorisering. Med 3p kan man ge delpoäng för ansats och metod.

---

## Uppgift 5 (2p)

**Uppgift:** För vilka värden på $x$ är uttrycket $\displaystyle\frac{2x + 5}{x^2 - 5x + 6}$ inte definierat?

### Lösning

Ett rationellt uttryck är inte definierat när nämnaren är noll.

Sätt nämnaren = 0:
$$
x^2 - 5x + 6 = 0
$$

Faktorisera (eller använd pq-formeln):
$$
x^2 - 5x + 6 = (x-2)(x-3) = 0
$$

Detta ger:
$$
x = 2 \text{ eller } x = 3
$$

**Svar:** Uttrycket är inte definierat för $x = 2$ och $x = 3$.

### Bedömningsanvisningar (2p)

- **2p:** Båda värdena ($x = 2$ och $x = 3$) korrekt angivna med faktorisering eller pq-formel
- **1p:** Ett värde korrekt, eller båda värden men utan uträkning
- **0.5p:** Rätt metod (sätt nämnare = 0) men räknefel
- **0p:** Fel metod eller inget svar

**Kommentar:** E-nivå. Grundläggande förståelse för definitionsmängd och faktorisering.

---

## Uppgift 6 (2p)

**Uppgift:** Lös ekvationen $x^4 - 10x^2 + 9 = 0$

### Lösning

Använd substitution: Låt $u = x^2$

Ekvationen blir:
$$
u^2 - 10u + 9 = 0
$$

Faktorisera:
$$
(u - 1)(u - 9) = 0
$$

Detta ger:
$$
u = 1 \text{ eller } u = 9
$$

Återsubstitution ($u = x^2$):
- $x^2 = 1 \Rightarrow x = \pm 1$
- $x^2 = 9 \Rightarrow x = \pm 3$

**Svar:** $x = -3, -1, 1, 3$

### Bedömningsanvisningar (2p)

- **2p:** Alla fyra lösningar korrekt angivna med tydlig substitution
- **1.5p:** Alla fyra lösningar men utan tydlig metod
- **1p:** Två lösningar (glömt $\pm$) eller rätt metod men räknefel
- **0.5p:** Substitution påbörjad men ej genomförd
- **0p:** Fel metod eller inget svar

**Kommentar:** C-nivå. Kräver förståelse för substitutionsmetoden och att $x^2 = a$ ger två lösningar.

---

## Uppgift 7 (3p)

**Uppgift:** Funktionen $f(x)$ är definierad som:
$$
f(x) = \begin{cases}
x^2 + 1 & \text{om } x < 2 \\
5 & \text{om } x = 2 \\
3x & \text{om } x > 2
\end{cases}
$$

- a) Bestäm vänstergränsvärdet $\displaystyle\lim_{x \to 2^-} f(x)$ och högergränsvärdet $\displaystyle\lim_{x \to 2^+} f(x)$.
- b) Existerar $\displaystyle\lim_{x \to 2} f(x)$? Motivera ditt svar.
- c) Är funktionen kontinuerlig i $x = 2$? Motivera ditt svar.

### Lösning

**a)** 
- **Vänstergränsvärde** (använd formeln för $x < 2$):
$$
\lim_{x \to 2^-} f(x) = 2^2 + 1 = 5
$$

- **Högergränsvärde** (använd formeln för $x > 2$):
$$
\lim_{x \to 2^+} f(x) = 3 \cdot 2 = 6
$$

**b)** Nej, gränsvärdet existerar **inte** eftersom vänster- och högergränsvärdet är olika:
$$
\lim_{x \to 2^-} f(x) = 5 \neq 6 = \lim_{x \to 2^+} f(x)
$$

**c)** Nej, funktionen är **inte kontinuerlig** i $x = 2$ eftersom gränsvärdet inte existerar.

**OBS:** Även om $f(2) = 5 = \lim_{x \to 2^-} f(x)$, så måste båda gränsvärdena vara lika för att funktionen ska vara kontinuerlig.

**Svar:** a) Vänster: 5, Höger: 6 • b) Nej • c) Nej

### Bedömningsanvisningar (3p)

**Deluppgift a) - 1p:**
- **1p:** Båda gränsvärdena korrekt beräknade (5 och 6)
- **0.5p:** Ett gränsvärde korrekt
- **0p:** Båda fel

**Deluppgift b) - 1p:**
- **1p:** Korrekt svar (Nej) med motivering att gränsvärdena är olika
- **0.5p:** Korrekt svar utan motivering
- **0p:** Fel svar

**Deluppgift c) - 1p:**
- **1p:** Korrekt svar (Nej) med motivering kopplad till gränsvärdet
- **0.5p:** Korrekt svar men otydlig motivering
- **0p:** Fel svar eller ingen motivering

**Kommentar:** C-D nivå (a, b) och A-nivå (c). Kräver förståelse för gränsvärden och kontinuitet.

---

## Uppgift 8 (4p)

**Uppgift:** Ett polynom $p(x)$ av tredje graden har följande graf:

![Polynomgraf](polynomial_q14.png)

- a) Bestäm funktionens nollställen.
- b) Skriv polynomet på faktoriserad form.
- c) Bestäm polynomet på standardform.

### Lösning

**a)** Från grafen kan vi avläsa att polynomet skär x-axeln vid:
$$
x = -2, \quad x = 1, \quad x = 3
$$

**b)** Med nollställena kan vi skriva:
$$
p(x) = a(x+2)(x-1)(x-3)
$$

För att bestämma $a$, använd att grafen går genom $(0, 10)$:
$$
p(0) = a(0+2)(0-1)(0-3) = a \cdot 2 \cdot (-1) \cdot (-3) = 6a = 10
$$
$$
a = \frac{10}{6} = \frac{5}{3}
$$

**Svar:** $p(x) = \frac{5}{3}(x+2)(x-1)(x-3)$

**c)** Multiplicera ut steg för steg:
$$
\begin{align*}
p(x) &= \frac{5}{3}(x+2)(x-1)(x-3) \\
&= \frac{5}{3}(x+2)(x^2 - 4x + 3) \\
&= \frac{5}{3}(x^3 - 4x^2 + 3x + 2x^2 - 8x + 6) \\
&= \frac{5}{3}(x^3 - 2x^2 - 5x + 6) \\
&= \frac{5}{3}x^3 - \frac{10}{3}x^2 - \frac{25}{3}x + 10
\end{align*}
$$

**Svar:** a) $x = -2, 1, 3$ • b) $p(x) = \frac{5}{3}(x+2)(x-1)(x-3)$ • c) $p(x) = \frac{5}{3}x^3 - \frac{10}{3}x^2 - \frac{25}{3}x + 10$

### Bedömningsanvisningar (4p)

**Deluppgift a) - 1p:**
- **1p:** Alla tre nollställen korrekt avlästa (-2, 1, 3)
- **0.5p:** Två nollställen korrekt
- **0p:** Färre än två korrekt

**Deluppgift b) - 1p:**
- **1p:** Korrekt faktoriserad form med rätt koefficient $a = \frac{5}{3}$
- **0.5p:** Rätt struktur men fel koefficient
- **0p:** Fel form eller inget svar

**Deluppgift c) - 2p:**
- **2p:** Korrekt standardform med alla termer rätt (inklusive bråkkoefficienter)
- **1.5p:** Rätt metod och struktur men ett räknefel i koefficient
- **1p:** Rätt metod (utmultiplikation steg för steg) men flera räknefel
- **0.5p:** Ansats med utmultiplikation men stora fel
- **0p:** Fel metod eller inget svar

**Kommentar:** C-D nivå (a, b) och A-nivå (c). Uppgift c kräver noggrann algebraisk hantering med bråkkoefficienter, vilket motiverar 2p.

---

## Uppgift 9 (4p)

**Uppgift:** I ett naturområde finns 200 örnar år 2020. Varje år planteras $A$ nya örnar ut för att rädda arten. Antalet örnar efter $x$ år beskrivs av:
$$
N(x) = 200 \cdot 0.9^x + \frac{A(1 - 0.9^x)}{1 - 0.9}
$$

- a) Förenkla uttrycket för $N(x)$.
- b) Hur många örnar finns det efter 5 år om man planterar ut 30 örnar per år? (Avrunda till heltal)
- c) Bestäm $\displaystyle\lim_{x \to \infty} N(x)$ och uttryck svaret med hjälp av $A$. Förklara vad detta betyder i praktiken.
- d) Bestäm hur många örnar som ska planteras ut varje år för att antalet med tiden ska närma sig 400 örnar.

### Lösning

**a)** Förenkla nämnaren:
$$
\begin{align*}
N(x) &= 200 \cdot 0.9^x + \frac{A(1 - 0.9^x)}{0.1} \\
&= 200 \cdot 0.9^x + 10A(1 - 0.9^x) \\
&= 200 \cdot 0.9^x + 10A - 10A \cdot 0.9^x \\
&= 10A + (200 - 10A) \cdot 0.9^x
\end{align*}
$$

**b)** Sätt in $A = 30$ och $x = 5$:
$$
\begin{align*}
N(5) &= 200 \cdot 0.9^5 + 10 \cdot 30(1 - 0.9^5) \\
&= 200 \cdot 0.59049 + 300(1 - 0.59049) \\
&= 118.098 + 300 \cdot 0.40951 \\
&= 118.098 + 122.853 \\
&\approx 241 \text{ örnar}
\end{align*}
$$

**c)** Beräkna gränsvärdet:
$$
\lim_{x \to \infty} N(x) = \lim_{x \to \infty} \left(10A + (200 - 10A) \cdot 0.9^x\right) = 10A + 0 = 10A
$$

**Praktisk betydelse:** På lång sikt stabiliseras populationen vid $10A$ örnar. Den ursprungliga populationen dör ut (eftersom $0.9^x \to 0$), och endast de utplanterade örnarna och deras avkomma överlever.

**d)** Sätt gränsvärdet = 400:
$$
10A = 400 \Rightarrow A = 40 \text{ örnar per år}
$$

**Svar:** a) $N(x) = 10A + (200 - 10A) \cdot 0.9^x$ • b) 241 örnar • c) $10A$ • d) 40 örnar per år

### Bedömningsanvisningar (4p)

**Deluppgift a) - 1p:**
- **1p:** Korrekt förenkling till $10A + (200 - 10A) \cdot 0.9^x$ eller likvärdig form
- **0.5p:** Delvis förenkling (t.ex. $200 \cdot 0.9^x + 10A - 10A \cdot 0.9^x$)
- **0p:** Ingen förenkling eller fel

**Deluppgift b) - 1p:**
- **1p:** Korrekt beräkning med svar 241 (eller 240-242 beroende på avrundning)
- **0.5p:** Rätt metod men räknefel
- **0p:** Fel metod

**Deluppgift c) - 1p:**
- **1p:** Korrekt gränsvärde ($10A$) med praktisk förklaring
- **0.5p:** Korrekt gränsvärde utan förklaring
- **0p:** Fel gränsvärde

**Deluppgift d) - 1p:**
- **1p:** Korrekt lösning ($A = 40$)
- **0.5p:** Rätt ekvation men räknefel
- **0p:** Fel metod

**Kommentar:** A-nivå. Kräver algebraisk färdighet, gränsvärdesförståelse och förmåga att tolka resultat i kontext.

**Poängbedömning:** Denna uppgift är väl avvägd på 4p.

---

## Sammanfattning av bedömning

### Poängfördelning per nivå:

| Nivå | Uppgifter | Poäng | Procent |
|------|-----------|-------|---------|
| **E** | 1, 2, 3a-b, 4a, 5 | 9p | 35% |
| **C-D** | 3c, 4b, 6, 7a-b, 8a-b | 10p | 38% |
| **A** | 7c, 8c, 9 | 7p | 27% |
| **TOTALT** | | **26p** | **100%** |

### Rekommenderade betygsgränser:

- **E:** 9-11p (35-42%)
- **D:** 12-14p (46-54%)
- **C:** 15-18p (58-69%)
- **B:** 19-22p (73-85%)
- **A:** 23-26p (88-100%)

### Ändringar från ursprungligt förslag:

**Uppgift 4 (Rationella uttryck):**
- **Ändrat:** 2p → **3p** (1.5p + 1.5p)
- **Motivering:** Flera steg i båda deluppgifterna. Möjlighet att ge delpoäng för ansats och metod även vid räknefel.

**Uppgift 8 (Polynomgraf):**
- **Ändrat:** 3p → **4p** (1p + 1p + 2p)
- **Motivering:** Deluppgift c) kräver omfattande algebraisk utmultiplikation med bråkkoefficienter, vilket är mer krävande än 1p.

### Övergripande bedömning:

Provet är **väl balanserat** med en bra progression från E till A-nivå. Med 26 poäng totalt ger det:
- ✅ Bra marginal för betygsgränser
- ✅ Möjlighet att ge delpoäng för ansats och metod
- ✅ Rättvis bedömning av svårighetsgrad
- ✅ Tydlig progression mellan betygsnivåer

**E-gränsen på 9p (35%)** är rimlig eftersom endast 35% av poängen är ren E-nivå, och eleven behöver visa viss förståelse även för C-D material för att nå E.
