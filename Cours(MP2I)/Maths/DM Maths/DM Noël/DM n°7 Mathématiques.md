---
tags:
  - DM_Math
---
##### Luna FREMONTIER-MURPHY MP2I

## Exercice : Suites implicites

1 - 
Soit $n \in \mathbb{N}^{*}$ et $x \in \mathbb{R}_{+}^{*}$
$e^{ x }=x^{n} \iff x=n\ln x$
$\iff \frac{x}{\ln x}=n$
$\iff$ $\underline{\frac{\ln x}{x}=\frac{1}{n}}$

Donc $(E_{n})\iff(F_{n})$ pour $n \in \mathbb{N}^{*}$ et $x \in \mathbb{R}_{+}^{*}$

2 - 
```functionplot
---
title: f(x)
xLabel: x
yLabel: y
bounds: [0,20,-5,5]
disableZoom: false
grid: true
---
f(x) = log(x)/x 
```
$\underline{\text{Asymptotes :}}$
- Verticale en $0$
- 0 en $+\infty$
$\underline{\text{Tangeantes}} :$
- $T :y=x-1$ en 1

la fonction $f$ s'annule en 1 
$f'(x)= \frac{a'b-ab'}{b^{2}}=\frac{1-\ln x}{x^{2}}$
$f'(x)=0\iff x=e$

$\underline{\text{Tableau de variations}}$

| $x$                           | 0         |            | $e$      |            | $+\infty$ |
| ----------------------------- | --------- | ---------- | -------- | ---------- | --------- |
| $f(x):\frac{\ln x}{x}$        | $-\infty$ | $\nearrow$ | $e^{-1}$ | $\searrow$ | $0$       |
| $f'(x):\frac{1-\ln x}{x^{2}}$ | $+\infty$ | +          | 0        | -          | $0$       |
<br><br><br>



3 - 
On souhaite démontrer que :
$\forall n\geqslant 3$, $(F_{n})$ admet exactement deux solutions réelles, $u_{n}\text{ et }v_{n}$ telles que : 

$$
1 < u_{n} < e < v_{n}
$$
Pour $n=3$ :
$(F_{3}):$ $\frac{\ln x}{x}=\frac{1}{3}$
Comme $e^{-1}> \frac{1}{3}$, par le théorème des valeurs intermédiaires, $f$ atteindra $\frac{1}{3}$
1 seule fois entre 0 et $e$ et $1$ seule fois entre $e$ et $+\infty$, donc $1<u_{3} <e <v_{3}$

Comme $\forall n>3 , \frac{1}{n}<e^{ -1 }$$,$ alors de même par TVI, 
$$
1 < u_{n} < e <v_{n}
$$

4 - 
```functionplot
---
title: f(x)
xLabel: x
yLabel: y
bounds: [0,20,-1,1]
disableZoom: false
grid: true
---
f(x) = log(x)/x 
```
##### **Note : mettre les points lors de l'impression**
$u_{3}\simeq 1,85718$
$u_{4} \simeq 1,42961$

5 - 
On souhaite étudier la monotonie de la suite $(u_{n})_{n\geqslant 3}$
Comme $(\frac{1}{n})_{n\geqslant 3}$ est strict. décroissante, et que $f$ strict. croissante sur $[1;e]$, 
par croissance de $f$, $\frac{\ln(u_{n})}{u_{n}} > \frac{\ln(u_{n+1})}{u_{n+1}}$. Donc par croissance de $\ln$, $u_{n+1} < u_{n}$ donc $u$ est strict. décroissante.

6 -
Comme $u$ est minorée par 1, par le théorème des limites monotones, comme 
$u$ est décroissante et minorée, alors elle converge vers $\ell \geqslant 1$
$\lim\limits_{ n \to \infty } \frac{\ln(u_{n})}{u_{n}}=\lim\limits_{ n \to \infty } \frac{1}{n}=0$
Donc $\lim\limits_{ n \to \infty } \frac{\ln(u_{n})}{u_{n}}=0$
Donc $\frac{\ln(\ell)}{\ell}=0$
Donc $\ln(\ell)=0$
Donc $\ell=1$  

7 -
Posons $\ell \in [e, +\infty]$ tel que $\lim\limits_{ n \to +\infty }v_{n}=\ell$
Comme $\frac{\ln v_{n}}{v_{n}}= \frac{1}{n}$ alors $\lim\limits_{ n \to +\infty }\frac{\ln v_{n}}{v_{n}}=\lim\limits_{ n \to +\infty } \frac{1}{n}=0$ donc $\frac{\ln \ell}{\ell}=0$ donc $\frac{1}{\ell}=0$ donc $\ell=+\infty$
Alors $\lim\limits_{ n \to \infty }v_{n}=+\infty$

8 -
a -
Comme $\lim\limits_{ n \to +\infty }u_{n}=1$, on note $u_{n}-1=\varepsilon_{n} \iff u_{n}=1+ \varepsilon_{n}$ 
avec $(\varepsilon_{n})$ une suite qui tend vers 0 quand n tend vers $+\infty$
Comme $\frac{\ln(1+\varepsilon_{n})}{u_{n}}=\frac{1}{n}$ et que $\ln(1+\varepsilon _{n}) \sim\varepsilon_{n}$ ainsi que $u_{n} \sim 1$ 
Alors $\varepsilon_{n}\sim \frac{1}{n}$, donc $u_{n}=1+\frac{1}{n}+ o\left( \frac{1}{n} \right)$

b - 
$DL$ de $\ln(1+x)$ au voisinage de 0 :
$$
\ln(1+x)= \sum\limits_{k=0}^{n} \left[ \frac{(-1)^{k-1}x^{k}}{k} \right]+o(x^{n})
$$
c -
Soit $y_{n}=u_{n}-1-\frac{1}{n}$ 