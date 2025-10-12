---
title: "Facit: Övningsprov Algebra och Funktioner"
description: "Komplett facit med ledtrådar och lösningar för övningsprov i Matematik 3b"
subject: "Matematik 3b"
tags: ["polynom", "rationella-uttryck", "gränsvärden", "facit"]
draft: false
---

# Facit: Övningsprov Algebra och Funktioner

Komplett facit med ledtrådar och fullständiga lösningar för alla 27 uppgifter.

---

## Uppgift 1

>[!TIP] Ledtråd
>Graden är den högsta exponenten. Koefficienten är talet framför den termen.

**Lösning:** Polynomet har termen $3x^4$ som högsta gradterm.

**Svar:** Graden är 4 och koefficienten för högsta gradtermen är 3.

---

## Uppgift 2

>[!TIP] Ledtråd
>Ett polynom har endast heltalspotenser av $x$ och inga $x$ i nämnare eller under rot.

**Lösning:**
- a) $f(x) = 2x^3 - 5x + 7$ ✓ (polynom)
- b) $g(x) = \frac{1}{x} + x^2 = x^{-1} + x^2$ ✗ (negativ exponent)
- c) $h(x) = \sqrt{x} + 3 = x^{1/2} + 3$ ✗ (bråkexponent)
- d) $k(x) = 4x^5 - 2x^3 + x - 9$ ✓ (polynom)
- e) $m(x) = x^{-2} + 5x$ ✗ (negativ exponent)

**Svar:** a) och d) är polynom.

---

## Uppgift 3

>[!TIP] Ledtråd
>Tänk på sambandet mellan polynomets grad och antalet nollställen.

**Lösning:** Ett polynom av grad $n$ kan ha högst $n$ nollställen.

**Svar:** Maximalt 5 nollställen.

---

## Uppgift 4

>[!TIP] Ledtråd
>- a) Sätt in $x = 2$ i polynomet
>- b) Ett nollställe innebär att $p(x) = 0$

**Lösning:**

a) $p(2) = 2^3 - 4 \cdot 2^2 + 2 + 6 = 8 - 16 + 2 + 6 = 0$

b) Eftersom $p(2) = 0$ är $x = 2$ ett nollställe.

**Svar:** a) $p(2) = 0$ • b) Ja, $x = 2$ är ett nollställe.

---

## Uppgift 5

>[!TIP] Ledtråd
>Nollställena fås när varje faktor är lika med noll.

**Lösning:**

$$
\begin{align}
x - 2 = 0 &\Rightarrow x = 2 \\
x + 3 = 0 &\Rightarrow x = -3 \\
x - 5 = 0 &\Rightarrow x = 5
\end{align}
$$

**Svar:** $x = 2$, $x = -3$, $x = 5$

---

## Uppgift 6

>[!TIP] Ledtråd
>Faktorisera täljaren med konjugatregeln: $a^2 - b^2 = (a-b)(a+b)$

**Lösning:**

$$
\frac{x^2 - 16}{x + 4} = \frac{(x-4)(x+4)}{x+4} = x - 4
$$

**Svar:** $x - 4$

---

## Uppgift 7

>[!TIP] Ledtråd
>Ett rationellt uttryck är inte definierat när nämnaren är noll.

**Lösning:** Nämnaren är $x - 3$. Sätt $x - 3 = 0 \Rightarrow x = 3$

**Svar:** $x = 3$

---

## Uppgift 8

>[!TIP] Ledtråd
>Bryt ut gemensamma faktorer i täljare och nämnare.

**Lösning:**

$$
\frac{3x + 6}{x^2 + 2x} = \frac{3(x+2)}{x(x+2)} = \frac{3}{x}
$$

**Svar:** $\frac{3}{x}$

---

## Uppgift 9

>[!TIP] Ledtråd
>För kontinuerliga funktioner: sätt in värdet direkt.

**Lösning:**

$$
\lim_{x \to 3} (2x + 5) = 2 \cdot 3 + 5 = 11
$$

**Svar:** $11$

---

## Uppgift 10

>[!TIP] Ledtråd
>Faktorisera täljaren och förkorta innan du sätter in värdet.

**Lösning:**

$$
\lim_{x \to 2} \frac{x^2 - 4}{x - 2} = \lim_{x \to 2} \frac{(x-2)(x+2)}{x-2} = \lim_{x \to 2} (x+2) = 4
$$

**Svar:** $4$

---

## Uppgift 11

>[!TIP] Ledtråd
>Använd variabelsubstitution $t = x^2$ för att få en andragradsekvation.

**Lösning:** Låt $t = x^2$:

$$
\begin{align}
t^2 - 5t + 4 &= 0 \\
(t-1)(t-4) &= 0 \\
t = 1 \text{ eller } t &= 4
\end{align}
$$

Återsubstitution:
- $x^2 = 1 \Rightarrow x = \pm 1$
- $x^2 = 4 \Rightarrow x = \pm 2$

**Svar:** $x = \pm 1, \pm 2$

---

## Uppgift 12

>[!TIP] Ledtråd
>Hitta gemensam nämnare och addera.

**Lösning:**

$$
\begin{align}
\frac{2}{x+1} + \frac{3}{x-2} &= \frac{2(x-2) + 3(x+1)}{(x+1)(x-2)} \\
&= \frac{2x - 4 + 3x + 3}{(x+1)(x-2)} \\
&= \frac{5x - 1}{(x+1)(x-2)}
\end{align}
$$

**Svar:** $\frac{5x - 1}{(x+1)(x-2)}$

---

## Uppgift 13

>[!TIP] Ledtråd
>Division av bråk: multiplicera med inverterade bråket.

**Lösning:**

$$
\begin{align}
\frac{x^2-9}{x+3} : \frac{x-3}{x+1} &= \frac{x^2-9}{x+3} \cdot \frac{x+1}{x-3} \\
&= \frac{(x-3)(x+3)}{x+3} \cdot \frac{x+1}{x-3} \\
&= x + 1
\end{align}
$$

**Svar:** $x + 1$

---

## Uppgift 14

>[!TIP] Ledtråd
>- a) Använd nollställena för att skriva faktorerna
>- b) Multiplicera ut steg för steg

**Lösning:**

a) $p(x) = a(x+2)(x-1)(x-3)$

Använd $p(0) = 12$:
$$
a(2)(-1)(-3) = 6a = 12 \Rightarrow a = 2
$$

Svar: $p(x) = 2(x+2)(x-1)(x-3)$

b) Multiplicera ut:
$$
\begin{align}
p(x) &= 2(x+2)(x^2-4x+3) \\
&= 2(x^3 - 2x^2 - 5x + 6) \\
&= 2x^3 - 4x^2 - 10x + 12
\end{align}
$$

**Svar:** a) $p(x) = 2(x+2)(x-1)(x-3)$ • b) $p(x) = 2x^3 - 4x^2 - 10x + 12$

---

## Uppgift 15

>[!TIP] Ledtråd
>Bryt ut $2x^2$ först, sedan faktorisera $x^2 - 4$.

**Lösning:**

$$
\begin{align}
2x^4 - 8x^2 &= 0 \\
2x^2(x^2 - 4) &= 0 \\
2x^2(x-2)(x+2) &= 0
\end{align}
$$

**Svar:** $x = 0$ (dubbelrot), $x = \pm 2$

---

## Uppgift 16

>[!TIP] Ledtråd
>Faktorisera alla uttryck innan förenkling.

**Lösning:**

$$
\begin{align}
\frac{x^2-4}{x^2+4x+4} \cdot \frac{x+2}{x-2} &= \frac{(x-2)(x+2)}{(x+2)^2} \cdot \frac{x+2}{x-2} \\
&= 1
\end{align}
$$

**Svar:** $1$

---

## Uppgift 17

>[!TIP] Ledtråd
>Korsmultiplicera och lös den linjära ekvationen.

**Lösning:**

$$
\begin{align}
\frac{3}{x-1} &= \frac{2}{x+2} \\
3(x+2) &= 2(x-1) \\
3x + 6 &= 2x - 2 \\
x &= -8
\end{align}
$$

**Svar:** $x = -8$

---

## Uppgift 18

>[!TIP] Ledtråd
>Faktorisera täljaren och förkorta.

**Lösning:**

$$
\begin{align}
\lim_{x \to -1} \frac{x^2+3x+2}{x+1} &= \lim_{x \to -1} \frac{(x+1)(x+2)}{x+1} \\
&= \lim_{x \to -1} (x+2) = 1
\end{align}
$$

**Svar:** $1$

---

## Uppgift 19

>[!TIP] Ledtråd
>Bryt ut högsta potensen av $x$ i täljare och nämnare.

**Lösning:**

$$
\begin{align}
\lim_{x \to \infty} \frac{3x^2-5x+1}{x^2+2} &= \lim_{x \to \infty} \frac{x^2(3-\frac{5}{x}+\frac{1}{x^2})}{x^2(1+\frac{2}{x^2})} \\
&= \lim_{x \to \infty} \frac{3-\frac{5}{x}+\frac{1}{x^2}}{1+\frac{2}{x^2}} = \frac{3}{1} = 3
\end{align}
$$

**Svar:** $3$

---

## Uppgift 20

>[!TIP] Ledtråd
>- Nollställen är där grafen skär/tangerar x-axeln
>- Dubbel rot: grafen tangerar (vänder vid) x-axeln
>- Enkel rot: grafen skär x-axeln

**Lösning:** Från grafen kan vi se att polynomet har nollställen vid $x \approx 2$ och $x \approx 3.5$ (enkla rötter där grafen skär x-axeln) samt vid $x = 5$ (dubbel rot där grafen tangerar x-axeln).

**Svar:** 
- a) Nollställen: $x \approx 2$, $x \approx 3.5$, $x = 5$ 
- b) Vid $x = 5$ är det en dubbel rot (tangerar), övriga är enkla rötter (skär)

---

## Uppgift 21

>[!TIP] Ledtråd
>- Vänstergränsvärde: använd formeln för $x < 2$
>- Högergränsvärde: använd formeln för $x > 2$
>- Kontinuitet: gränsvärdet måste existera och vara lika med funktionsvärdet

**Lösning:**

a) $\lim_{x \to 2^-} f(x) = 2^2 + 1 = 5$ och $\lim_{x \to 2^+} f(x) = 3 \cdot 2 - 1 = 5$

b) Ja, $\lim_{x \to 2} f(x) = 5$ eftersom vänster- och högergränsvärdet är lika.

c) Ja, funktionen är kontinuerlig eftersom $\lim_{x \to 2} f(x) = f(2) = 5$.

**Svar:** 
- a) Båda gränsvärdena = 5 
- b) Ja, gränsvärdet existerar 
- c) Ja, kontinuerlig

---

## Uppgift 22

>[!TIP] Ledtråd
>- a) Total kostnad = fasta kostnader + rörliga kostnader
>- b) Kostnad per mugg = total kostnad delat med antal
>- c) När $x \to \infty$, vad händer med $\frac{5000}{x}$?

**Lösning:**

a) $K(x) = 5000 + 15x$

b) $k(x) = \frac{5000 + 15x}{x} = \frac{5000}{x} + 15$

c) $\lim_{x \to \infty} k(x) = \lim_{x \to \infty} \left(\frac{5000}{x} + 15\right) = 0 + 15 = 15$ kr/mugg

**Praktisk betydelse:** När man tillverkar många muggar närmar sig kostnaden per mugg 15 kr (den rörliga kostnaden). De fasta kostnaderna fördelas på fler muggar och blir därför mindre per styck.

**Svar:** 
- a) $K(x) = 5000 + 15x$ 
- b) $k(x) = \frac{5000}{x} + 15$ 
- c) 15 kr/mugg

---

## Uppgift 23

>[!TIP] Ledtråd
>Använd partialbråksuppdelning. Sätt lämpliga värden på $x$ för att eliminera en variabel i taget.

**Lösning:**

$$
\frac{5x-1}{(x-2)(x+2)} = \frac{A(x+2) + B(x-2)}{(x-2)(x+2)}
$$

Därmed: $5x - 1 = A(x+2) + B(x-2)$

Sätt $x = 2$: $9 = 4A \Rightarrow A = \frac{9}{4}$

Sätt $x = -2$: $-11 = -4B \Rightarrow B = \frac{11}{4}$

**Svar:** $A = \frac{9}{4}$, $B = \frac{11}{4}$

---

## Uppgift 24

>[!TIP] Ledtråd
>Skriv om vänsterledet med gemensam nämnare, sedan multiplicera bort nämnarna.

**Lösning:**

$$
\begin{align}
\frac{x+1}{x-1} - \frac{x-1}{x+1} &= \frac{8}{x^2-1} \\
\frac{(x+1)^2 - (x-1)^2}{(x-1)(x+1)} &= \frac{8}{(x-1)(x+1)} \\
(x+1)^2 - (x-1)^2 &= 8 \\
x^2 + 2x + 1 - (x^2 - 2x + 1) &= 8 \\
4x &= 8 \\
x &= 2
\end{align}
$$

**Svar:** $x = 2$

---

## Uppgift 25

>[!TIP] Ledtråd
>Multiplicera ut $(x+h)^2$ och förenkla. Bryt sedan ut $h$ från täljaren.

**Lösning:**

$$
\begin{align}
\lim_{h \to 0} \frac{(x+h)^2 - x^2}{h} &= \lim_{h \to 0} \frac{x^2 + 2xh + h^2 - x^2}{h} \\
&= \lim_{h \to 0} \frac{2xh + h^2}{h} \\
&= \lim_{h \to 0} (2x + h) = 2x
\end{align}
$$

>[!NOTE] Notering
>Detta är derivatan av $x^2$.

**Svar:** $2x$

---

## Uppgift 26

>[!TIP] Ledtråd
>- a) Dubbel rot betyder faktorn ska vara upphöjd till 2
>- b) Multiplicera ut systematiskt, två faktorer i taget

**Lösning:**

a) $p(x) = a(x+1)^2(x-2)(x-4)$

Använd $p(0) = 8$:
$$
a(1)^2(-2)(-4) = 8a = 8 \Rightarrow a = 1
$$

Svar: $p(x) = (x+1)^2(x-2)(x-4)$

b) Multiplicera ut:
$$
\begin{align}
p(x) &= (x+1)^2(x-2)(x-4) \\
&= (x^2+2x+1)(x^2-6x+8) \\
&= x^4 - 3x^3 - 6x^2 + 8x + 8
\end{align}
$$

**Svar:** 
- a) $p(x) = (x+1)^2(x-2)(x-4)$ 
- b) $p(x) = x^4 - 3x^3 - 6x^2 + 8x + 8$

---

## Uppgift 27

>[!TIP] Ledtråd
>- a) Omkrets = $2 \cdot \text{bredd} + 2 \cdot \text{längd}$
>- b) Area = bredd $\times$ längd
>- c) Vad händer när bredden blir mycket liten eller mycket stor?
>- d) Analysera funktionen $A(x) = 50x - x^2$ när $x$ blir stor

**Lösning:**

a) Från $2x + 2l = 100$ får vi $l = 50 - x$

b) $A(x) = x \cdot l = x(50-x) = 50x - x^2$

c) $\lim_{x \to 0^+} A(x) = 0$ och $\lim_{x \to 50^-} A(x) = 0$

**Praktisk betydelse:** När bredden går mot 0 eller 50 meter blir arean noll (trädgården blir en linje).

d) Arean kan inte bli oändligt stor eftersom $A(x) = 50x - x^2$. När $x$ ökar mycket blir $-x^2$-termen dominerande och arean minskar. Funktionen har ett maximum (vid $x = 25$ ger $A = 625$ m²).

**Svar:** 
- a) $l = 50 - x$ 
- b) $A(x) = 50x - x^2$ 
- c) Båda gränsvärdena = 0 (trädgården blir en linje) 
- d) Arean begränsas av $-x^2$-termen som dominerar för stora $x$

---

## Sammanfattning

Detta facit innehåller fullständiga lösningar för alla 27 uppgifter i övningsprovet. Varje uppgift har:
- 💡 **Ledtråd** för att komma igång
- 📝 **Fullständig lösning** med alla steg
- ✅ **Tydligt svar**

För frågor eller förtydliganden, kontakta din lärare.
