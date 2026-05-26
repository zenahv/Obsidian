---
tags:
  - Math
---

# I - Logarithme , exponentielle et puissance

1) Logarithme népérien
Définition: Le logarithme népérien ($\ln$) est l'unique primitive sur $\mathbb{R}^{*}_{+}$ de la fonction inverse qui s'annule en $1$.
$\forall x \in \mathbb{R}^{*}_{+}, \ln x=\int_{1}^{x} \frac{dt}{t}$

Remarque: $t\mapsto \frac{1}{t}$ est continue sur $\mathbb{R}^{*}_{+}$ donc elle admet des primitives sur $\mathbb{R}^{*}_{+}$ (Théorème fondamental de l'analyse)

Rappel: Soit $I$ un intervalle et $f$ une fonction continue sur $I$. Soit $a \in I$. Alors la fonction $x\mapsto \int_{a}^{x} f(t) \, dt$ est l'unique primitive de $f$ s'annulant en $a$

Conséquence immédiate: 
- $\ln(1)=0$
- $\ln$ est dérivable sur $\mathbb{R}^{*}_{+}$ et $\forall x \in \mathbb{R}^{*}_{+}, \ln'(x)=\frac{1}{x}$
- $\ln'$ est stricte positive sur $\mathbb{R}^{*}_{+}$ donc $\ln$ est strictement croissante sur $\mathbb{R}^{*}_{+}$

Théorème: $\forall (x,y)\in(\mathbb{R}^{*}_{+})^{2},\ln(xy)=\ln x+\ln y$

Preuve: fixons $y\in\mathbb{R}^{*}_{+}$, et $g:x\mapsto \ln xy-\ln y$
$g$ est dérivable sur $\mathbb{R}^{*}_{+}$ et $\forall x >0,g'(x)=\frac{y}{xy}-0=\frac{1}{x}$
Ainsi, $g$ est une primitive sur $\mathbb{R}^{*}_{+}$ de $x\mapsto \frac{1}{x}$
Or, $g(1)=\ln y-\ln y=0$,n donc $g$ s'annule en $1$, donc $g=\ln$

Corollaire:
- $\forall x>0,\ln\left( \frac{1}{x} \right)=-\ln x$
- $\forall n\in \mathbb{Z}, \ln(x^{n})=n\ln x$

En effet:
$\ln x+\ln \frac{1}{x}=\ln\left( \frac{x}{x} \right)=\ln 1=0$
Bonus: $\ln\left( \frac{x}{y} \right)=\ln\left( x \times \frac{1}{y} \right)=\ln x+\ln \frac{1}{y}=\ln x-\ln y$

Pour $n \in \mathbb{N}$:
- $x^{0}=1$ donc $\ln(x^{0})=0=0\ln(x)$
- Si $n\in \mathbb{N}$ tel que $\ln(x^{n})=n\ln x$, alors $\ln(x^{n+1})=\ln(x^{n}\times x)=\ln(x^{n})+ \ln x=n\ln x+\ln x=(n+1)\ln x$
Pour $n\in \mathbb{Z},n<0$, alors $(-n)\in \mathbb{N}$
$\ln (x^{n})=\ln\left( \frac{1}{x^{-n}} \right)=-\ln(x^{-n})=-(-n)\ln(x)=n\ln x$

Propriété: $\ln$ continue et strictement croissante sur $\mathbb{R}^{*}_{+}$ donc $\ln$ est une bijection de $\mathbb{R}^{*}_{+}$ dans $\ln(\mathbb{R}^{*}_{+})$ avec $ln(\mathbb{R}^{*}_{+})=\mathbb{R}$

$\ln$ croissante,donc le théorème de la limite monotone affirme que $\lim\limits_{ x \to +\infty }\ln(x)$ existe dans $\bar{\mathbb{R}}$. Notons $l=\lim\limits_{ x \to +\infty }\ln(x)$ avec $l\in \mathbb{R}\cup \{ +\infty \}$

Or, $\lim\limits_{ n \to +\infty }2^{n}=+\infty$ donc $\lim\limits_{ n \to +\infty }\ln(2^{n})=l$
Or, $\ln(2^{n})=n\ln 2 \underset{ n\to +\infty }{ \to }+\infty$
Donc l'unicité de la limite donne $l=+\infty$
En $0^{+}$? $\ln(x)=-\ln\left( \frac{1}{x} \right)$
$\lim\limits_{ x \to 0^{+} } \frac{1}{x}=+\infty$ donc $\lim\limits_{ x \to 0^{+} }-\ln\left( \frac{1}{x} \right)=-\infty$

Ainsi, $\ln(\mathbb{R}^{*}_{+})=\left]-\infty ,+\infty \right[$

Ainsi, la réciproque de $\ln$ est notée $\exp$, $\exp:\mathbb{R}\mapsto\mathbb{R}^{*}_{+}$ est une bijection strictement croissante. Or, $\ln'$ ne s'annule pas sur $\mathbb{R}^{*}_{+}$ donc $\exp$ est dérivable sur $\mathbb{R}$ et $\exp'=\frac{1}{\ln'\circ\exp}=\frac{1}{\frac{1}{\exp}}=\exp$
Enfin, $\ln(1)=0$ donc $\exp(0)=1$

Pour $a,b\in \mathbb{R}$, $\exp(a+b)=\exp(a)\times \exp(b)$
car $\ln(\exp(a)\times \exp(b))=\ln (\exp(a))+\ln(\exp(b))=a+b$

Pour $n\in \mathbb{Z}$, $\exp(nx)=(\exp (x))^{n}$
car $\ln((\exp(x))^{n})=n\ln(\exp(x))=nx$
En particulier, $\exp(n)=\exp(1\times n)=(\exp(1))^{n}$

En notant $e=\exp(1)$ on obtient $\forall n\in \mathbb{Z},\exp(n)=e^{ n }$

2) Log et exp en base a
Soit $a\in\mathbb{R}^{*}_{+},a\neq 1$
Définition: On appelle logarithme en base $a$ la fonction $\log_{a}:\mathbb{R}^{*}_{+}\to \mathbb{R}$, $\log_{a}:x\mapsto \frac{\ln x}{\ln a}$
$\log_{e}=\ln$
$\log_{10}=\text{"}\log\text{"}$
$\log_{2}$
$\log_{a}(a)=1$
$\forall n\in \mathbb{Z},\log_{a}(a^{n})=n$
$\forall x,y>0,\log_{a}(xy)=\log_{a}(x)+\log_{a}(y)$
$\log_{a}(1)=0$

Pour $a\in\mathbb{R}^{*}_{+}\setminus\{ 1 \}$, la fonction $\log_{a}$ est une bijection de $\mathbb{R}^{*}_{+}$ dan $\mathbb{R}$
- strictement croissante si $a>1$
- strictement décroissante si $a\in \left] 0,1 \right[$
Elle admet une réciproque, notée $\exp_{a}$
$\forall y\in\mathbb{R}^{*}_{+},\forall x \in \mathbb{R},y=\exp_{a}(x)\iff \log_{a}(y)=x \iff \frac{\ln y}{\ln a}=x \iff \ln y=x\ln a \iff y=\exp(x\ln a)$La réciproque de $\log_{a}$ est $x\mapsto \exp(x\ln a)$

Notation: Pour $a\in\mathbb{R}^{*}_{+}$ et $x \in \mathbb{R}$, on note $a^{x}=\exp(x\ln a)$

Remarque: pour $a=1$, $\exp(x\ln1)=\exp(0)=1$ et $\forall x \in \mathbb{R},1^{x}=1$
pour $a=e=\exp(1)$, $\exp(x)=e^{ x }$

$\ln(a^{x})=\ln(\exp(x\ln a))=x\ln a$ pour $x \in R$ et $a \in \mathbb{R}^{*}_{+}$
$\log_{a}(a^{x})=x$

Théorème: $\forall(a,b)\in\mathbb{R}^{*}_{+},\forall(x,y)\in \mathbb{R},$
- $a^{0}=1,1^{x}=1$
- $a^{x}\times a^{y}=a^{x+y}$
- $\frac{1}{a^{x}}=a^{-x}$
- $(a^{x})^{y}=a^{xy}$
- $a^{x}\times b^{x}=(ab)^{x}$
- $\frac{a^{x}}{b^{x}}=\left( \frac{a}{b} \right)^{x}$

Preuves:
$a^{x}\times a^{y}=\exp(x\ln a)\times \exp(y\ln a)=\exp(x\ln a+y\ln a)=\exp((x+y)\ln a)=a^{x+y}$
$(a^{x})^{y}=\exp(y\ln(a^{x}))=\exp (y\ln(\exp(x\ln a)))=\exp(xy\ln a)=a^{xy}$

Bilan: Que signifie $x^{y}$?
- Si $y\in \mathbb{R}$ et $x \in\mathbb{R}^{*}_{+}$, $x^{y}=\exp(y\ln x)$
- $\forall x \in \mathbb{R},x^{0}=1$
- Si $y\in \mathbb{N}^{*}$ et $x \in \mathbb{R}$, $x=\prod\limits_{i=1}^{y}x$
- Si $y \in \mathbb{Z},y<0$ et $x \in\mathbb{R}^{*}_{+}, x\neq 0$, alors $x^{y}=\left( \frac{1}{x} \right)^{-y}$

3) Fonction puissance
Soit $\alpha \in \mathbb{R}$ quelconque.
Soit $f_{\alpha}:\mathbb{R}^{*}_{+}\to \mathbb{R},f_{\alpha}:x\mapsto x^{\alpha}$

Exemples: $f_{0}:x\mapsto x$, $f_{1}=\mathrm{id}$
Si $\alpha \in \mathbb{N}$, $f_{\alpha}$ est la restriction à $\mathbb{R}^{*}_{+}$ de $\mathbb{R}\to \mathbb{R},x\mapsto x^{\alpha}$
Si $\alpha \in \mathbb{Z}\setminus\mathbb{N}$, $f_{\alpha}$ est la restriction à $\mathbb{R}^{*}_{+}$ de $\mathbb{R}^{*}_{+}\to \mathbb{R},x\mapsto x^{\alpha}$

Propriétés: $x\mapsto x^{\alpha}$ est dérivable sur $\mathbb{R}^{*}_{+}$ de dérivée $\alpha x^{\alpha-1}$
SI $\alpha>0$, $f_{\alpha}$ est une bijection strictement croissante de $\mathbb{R}^{*}_{+}$ dans $\mathbb{R}^{*}_{+}$
Si $\alpha<0$, $f_{\alpha}$ est une bijection strictement décroissante de $\mathbb{R}^{*}_{+}$ dans $\mathbb{R}^{*}_{+}$

Preuve:
- $f_{\alpha}(x)=\exp(\alpha \ln x)$. $f_{\alpha}$ est dérivable par composition
  $\forall x>0$, $f_{\alpha}'(x)=\alpha \times x^{-1} \times x^{\alpha}=\alpha x^{\alpha-1}$

Dérivabilité en $0$ pour $f_{\alpha}$ dans le case $\alpha>0$. On a vu que $f_{\alpha}$ est continue ne $0$ en posant que $f_{\alpha}(0)=0$. $\forall x >0, \frac{f_{\alpha}(x)-f_{\alpha}(0)}{x}=\frac{x^{\alpha}}{x}=x^{\alpha-1}$

Or, $\lim\limits_{ x \to 0 }x^{a-1}=\begin{cases}0 & \text{si }\alpha-1>0\\1&\text{si }\alpha-1=0\\+\infty & \text{si }a-1<0\end{cases}$

Position entre $x^{\alpha}$ et $x^{\beta}$
Soient $0<\alpha<\beta$
Si $x\geqslant 1,x^{\beta}\geqslant x^{\alpha}$
Si $x\leqslant1, x^{\beta}\leqslant x^{\alpha}$
Les courbes se croisent en $1$

# II - Fonctions trigonométriques réciproques
1) Arcsinus
Définition / Propriétés:
La fonction $\sin:\left[ -\frac{\pi}{2}, \frac{\pi}{2} \right]\to \left[ -1,1 \right]$ est bijective, continue, strictement croissante. On note $\arcsin$ sa bijection réciproque. $\arcsin:\left[ -1,1 \right]\to \left[ -\frac{\pi}{2}, \frac{\pi}{2} \right]$
$\arcsin$ est bijective, continue, et strictement croissante

Remarque: $\forall x \in \left[ -1,1 \right],\forall y\in \left[ -\frac{\pi}{2}, \frac{\pi}{2} \right],y=\arcsin(x)\iff \sin(y)=x$

Propriété: $\arcsin$ est impair et dérivable sur $\left] -1,1 \right[$. $\forall x \in \left] -1,1 \right[, \arcsin'(x)=\frac{1}{\sqrt{ 1-x^{2} }}$

2) Arccosinus
Définition:
$\cos$ est bijectif de $\left[ 0,\pi \right]$ dans $[-1,1]$
(décroissant et continu)
Sa réciproque est appelée $\arccos:\left[ -1,1 \right]\to \left[ 0,\pi \right]$

$\arccos$ est strictement décroissante sur $\left[ -1,1 \right]$, dérivable sur $\left] -1,1 \right[$ et $\arccos'(x)=-\frac{1}{\sqrt{ 1-x^{2} }}$

3) Arctangente
Définition: $\tan:\left] -\frac{\pi}{2}, \frac{\pi}{2} \right[\to \mathbb{R}$ est bijective, continue, strictement croissante
On note $\arctan$ sa réciproque $\arctan:\mathbb{R}\to \left] -\frac{\pi}{2}, \frac{\pi}{2} \right[$

Propriétés: $\arctan$ est impaire, dérivable sur $\mathbb{R}$ et $\forall x \in \mathbb{R},\arctan'(x)=\frac{1}{1+x^{2}}$

$\cos(\arctan(x))=\frac{1}{\sqrt{ 1+x^{2} }}$ et $\sin(\arctan(x))=\frac{x}{\sqrt{ 1+x^{2} }}$

$\sin(2\arctan(x))=\frac{2x}{1+x^{2}}$
$\cos(2\arctan(x))=\frac{1-x^{2}}{1+x^{2}}$
$\tan(2\arctan(x))=\frac{2x}{1-x^{2}}$

# III - Fonctions hyperboliques
1) Sinus et Cosinus hyperboliques
Définition: $\cosh:x\mapsto \frac{e^{ x }+e^{ -x }}{2}$ et $\sinh:x\mapsto \frac{e^{ x }-e^{ -x }}{2}$

Propriétés: $\cosh$ est paire et $\sinh$ est impaire, sont dérivables sur $\mathbb{R}$ et $\cosh'=\sinh$ et $\sinh'=\cosh$

$\forall x \in \mathbb{R},\cosh(x) > \frac{e^{ x }}{2} > \sinh(x)$

Formules de trigonométrie hyperbolique: $\cosh+\sinh=\exp$ et $\cosh ^{2}-\sinh ^{2}=1$

2) Tangente hyperbolique
$\forall x \in \mathbb{R}, \tanh(x)=\frac{\sinh(x)}{\cosh(x)}=\frac{e^{ 2x }-1}{e^{ 2x }+1}$
 $\cosh(x)=\sum\limits_{k=0}^{+\infty} \frac{x^{k}+(-x)^{k}}{2k!}$
 $\sinh(x)=\sum\limits_{k=0}^{+\infty} \frac{x^{k}-(-x)^{k}}{2k!}$
 $\tanh(x)=\frac{\sum\limits_{k=0}^{+\infty} \frac{x^{k}-(-x)^{k}}{k!}}{\sum\limits_{k=0}^{+\infty} \frac{x^{k}+(-x)^{k}}{k!}}$
# IV - Fonctions de la variable réelle à valeurs complexes
Définition: Soit $I$ un intervalle de $\mathbb{R}$. Soit $f:I\to \mathbb{C}$
on définit les applications suivantes: 
- $\mathrm{Re}(f):x\mapsto \mathrm{Re}(f(x))$
- $\mathrm{Im}(f):x\mapsto \mathrm{Im}(f(x))$
- $\bar{f}:x\mapsto\overline{f(x)}$
- $|f|:x\mapsto |f(x)|$

Ainsi on peut écrire: 
- $f=\mathrm{Re}(f)+i\mathrm{Im}(f)$
- $|f|=f\bar{f}$

Définition: Soit $f:I\to \mathbb{C}$
- On dit que $f$ est continue sur $I$ si $\mathrm{Re}(f)$ et $\mathrm{Im}(f)$ sont continues sur $I$
- On dit que $f$ est dérivable sur $I$ si $\mathrm{Re}(f)$ et $\mathrm{Im}(f)$ sont dérivables sur $I$
  Dans ce cas, on définit $f'$ comme $f'=(\mathrm{Re}(f))'+i(\mathrm{Im}(f))'$
