---
tags:
  - Math
---
Soit $I$ un intervalle de $\mathbb{R}$ d'intérieur non vide et $\mathbb{K}=\mathbb{R}$ ou $\mathbb{K}=\mathbb{C}$
Définition:
> Une équation différentielle d'ordre $n(n\in \mathbb{Z}^{*})$ d'inconnue une fonction $y:I\to \mathbb{K}$ est une égalité utilisant les fonctions $y,y',\dots,y^{(n)}$

Définition:
> Une solution d'une équation différentielle d'ordre $n$ est une fonction $f:I\to \mathbb{K}$ qui
> - Est $n$ fois dérivable
> - Vérifie l'égalité pour tout réel $x \in I$

Exemple: Soit $(E)$ l'équation différentielle:
$(E)\,\,\,\,xy'=y(y+1)+x^{2}$
$(E)$ est une équation différentielle d'ordre 1 d'inconnue $y:x\mapsto y(x)$
La fonction $\mathrm{id}\times\tan$ est solution de $E$ sur l'intervalle $I=\left] -\frac{\pi}{2},\frac{\pi}{2} \right[$
Posons $y:\left] -\frac{\pi}{2},\frac{\pi}{2} \right[\to \mathbb{R}$ $y:x\mapsto x \times\tan x$
On a $y=\tan x+x \times(1+\tan ^{2}x)$
D'une part $y(x)\times(y(x)+1)+x^{2}=y^{2}(x)+y(x)+x^{2}=x^{2}\tan ^{2}(x)+x\tan x+x^{2}$
$=x\left[ x\tan ^{2}(x)+\tan x+x \right]=xy'(x)$
D'autre part, $y$ est bien dérivable sur $\left] -\frac{\pi}{2},\frac{\pi}{2} \right[$

Dans toute la suite on se restreindra aux équations différentielles linéaires, de la forme:
$(E)\,\,\,\,a_{n(x)}y^{(n)}(x)+a_{n-1}(x)y^{(n-1)}+\dots+a_{1}(x)y'(x)+a_{0}(x)y(x)=b(x)$
où $b,a_{0},\dots,a_{n}$ sont des fonctions connues

## I - Résolutions des équations différentielles linéaires d'ordre 1
1) Définition
Soient $\alpha,\beta,\gamma \in\mathcal C(I,\mathbb{K})$
Une EDL d'ordre 1 est
$(E):\alpha y'+\beta y=\gamma$
Si $\alpha$ ne s'annule pas sur $I$, alors on peut normaliser l'équation:
$(E_{\text{normalisée}}):y'+\frac{\beta}{\alpha}y=\frac{\gamma}{\alpha}$
Dans la suite on s'intéresse à l'équation $y'+ay=b$ avec $a$ et $b$ deux fonctions continues sur $I$.
$b$ est appelée les second membre
Si $b=0$, on appelle équation homogène $(H):y'+ay=0$
On cherche les solutions de $y'+ay=b$: les fonctions $f$ dérivables sur $I$ telles que $\forall x \in I,f'(x)+a(x)f(x)=b(x)$

2) Structure des solutions
Soit $(E):y'+a(x)y=b(x)$ et l'équation homogène associé $(H)=y'+a(x)y=0$
Théorème:
> L'ensemble $S_{H}$ des solutions de $(H)$ vérifie:
> - $\tilde{0}\in S_{H}$
> - $S_{H}$ est stable par combinaison linéaire: $\forall(f_{1},f_{2})\in S_{H}^{2},\forall(\lambda,\mu)\in \mathbb{K}^{2},\lambda f_{1}+\mu f_{2}\in S_{H}$

Preuves:
- $\tilde{0}$ vérifie $(H)$
- Soient $f_{1},f_{2}\in S_{H}$ et $\lambda,\mu \in \mathbb{K}$
  Alors $\lambda f_{1}+\mu f_{2}$ est dérivable sur $I$ car $f_{1}$ et $f_{2}$ le sont et de plus $(\lambda f_{1}+\mu f_{2})'+a(x)(\lambda f_{1}+\mu f_{2})=\lambda f_{1}'+\mu f_{2}'+a(x)\lambda f_{1}+a(x)f_{2}=$
  $\lambda(f_{1}'+a(x)f_{1}+\mu(f_{2}'+a(x)f_{2}))=0$
  Donc $\lambda f_{1}+\mu f_{2}\in S_{H}$

Théorème:
> Soit $f_{p}\in S_{E}$ alors $S_{E}=(f_{p}+h|h\in S_{H})$
> $S_{E}=f_{p}+S_{H}$

Preuve:
- inclusion $\supset$
  Soit $h\in S_{H}$
  Montrons que $f_{p}+h\in S_{E}$. Or, $(f_{p}+h)'+a(f_{p}+h)=f_{p}'+h'+af_{p}+ah=\cancelto{ b }{ \left[ f_{p}'+af_{p} \right] }+\cancelto{ \tilde{0} }{ \left[ h'+ah \right] }=b$
  Donc $f_{p}+h\in S_{E}$
- inclusion $\subset$
  Soit $f\in S_{E}$
  Regardons $f-f_{p}$
  $(f-f_{p})'+a(f-f_{p})=f'+af-f_{p}'+af_{p}=\cancelto{ \tilde{0} }{ b-b }=0$
  Donc $f-f_{p}\in S_{H}$
Donc $f=f_{p}+\underbrace{ f-f_{p} }_{ \in S_{H} }$

3) Résolution de $(H)y'+ay=0$
Théorème:
> Soit $a\in\mathcal{C}(I,\mathbb{K})$
> $S_{H}=\{ I\to \mathbb{K},x\mapsto\lambda \exp(-A(x))|\lambda \in \mathbb{K} \}$
> où $A$ est une primitive de $a$
Remarque: par exemple $A:x\mapsto \int_{x_{0}}^{x} a(t) \, dt$
Remarque: Fixons $x_{0}\in I$ et posons $h_{0}:I\to \mathbb{K},h_{0}:x\mapsto \exp\left( -\int_{x_{0}}^{x} a(t) \, dt \right)$. Alors $S_{H}=\{ \lambda h_{0},\lambda \in \mathbb{K} \}$. $S_{H}=\mathbb{K}h_{0}$

Preuve:
Soit $A$ une primitive de $a$ sur $I$ et $h_{0}:x\mapsto \exp(-A(x))$
$h_{0}$ est dérivable car $\exp$ l'est et $A$ aussi avec $A'=a$
Ainsi, $h_{0}'=-ah_{0}$ donc $h_{0}'+ah_{0}=0$ donc $h_{0}\in S_{H}$
Par théorème de structure, $\forall\lambda \in\mathbb{K},\lambda h_{0}\in S_{H}$
Ainsi on a l'inclusion $\{ \lambda h_{0},\lambda \in \mathbb{K} \}\subset S_{H}$

Soit $h\in S_{H}$
On pose $\varphi:x\mapsto \frac{h(x)}{h_{0}(x)}=h(x)\exp(A(x))$
$\varphi$ est dérivable sur $I$ et $\forall x \in I$, $\varphi'=h'(x)e^{ A(x) }+h(x)A'(x)e^{ A(x) }=\cancelto{ 0 }{ \left[ h'(x)+a(x)h(x) \right] }e^{ A(x) }$
$\varphi$ est donc constante sur l'intervalle $I$ et donc $\exists\lambda \in \mathbb{K},\varphi:x\mapsto\lambda$ et donc $h=\frac{h}{h_{0}}h_{0}=\varphi h_{0}=\lambda h_{0}$

Remarque: $h_{0}$ ne s'annule jamais sur $I$

Exemples:
- $(H):y'=\frac{\alpha}{x}y$ avec $\alpha \in \mathbb{R}$
  $(H):y'-\frac{\alpha}{x}y=0$
  On trouve une primitive sur $I$ de $a:x\mapsto-\frac{\alpha}{x}$
  $\int a(x)\,\mathrm{d}x=\int-\frac{\alpha}{x}\,\mathrm{d}x=-\alpha \int \frac{1}{x}\,\mathrm{d}x=-\alpha \ln |x|$
  Donc $S_{H}=\{ x\mapsto\lambda \exp(-(-\alpha \ln |x|)),\lambda \in\mathbb{K} \}=\{ x\mapsto\lambda |x|^{\alpha},\lambda \in \mathbb{K} \}$
Si on veut les solutions sur $\mathbb{R}^{*}$, $x\mapsto \begin{cases}\lambda_{1} x^{\alpha} & \text{si }x>0 \\ \lambda_{2}(-x)^{\alpha} & \text{si }x<0\end{cases}$ avec $\lambda_{1},\lambda_{2}\in \mathbb{K}$ quelconques

4) Recherche d'une solution particulière de $(E)$
On revient à $(E):y'+ay=b$
Méthode 1: Deviner une solution évidente
- Si le second membre est constant:
  $R \frac{dq}{dt}+\frac{q}{C}=U$
  $\frac{dq}{dt}+\frac{1}{RC}q=\frac{U}{R}$
  Solution évidente constante $q_{p}: t\mapsto CU$
  $(H):\frac{dq}{dt}+\frac{1}{\tau}q=0$
  $S_{H}=\{ t\mapsto\lambda e^{ -t/\tau },\lambda \in \mathbb{R} \}$
  Donc $S_{E}=q_{p}+S_{H}=\{ t\mapsto\lambda e^{ -t/\tau }+CU,\lambda \in \mathbb{R} \}$

Exemple: $(E):(\sin t)y'(t)-(\cos t)y(t)=1$
On devine $y_{p}: t\mapsto-\cos t$
Les solutions sur $I=\left] 0,\pi \right[$ sont $S_{E}=\{ t\mapsto\lambda \sin t-\cos t,\lambda \in \mathbb{R} \}$

Méthode 2: Variation de la constante
S'il n'y a pas de solution évidente à l'équation $(E)$, on va chercher une solution particulière de $(E)$ sous la forme $f_{p}:x\mapsto\lambda(x)h_{0}(x)$ où $h_{0}:x\mapsto \exp(-A(x))$ et $\lambda$ est ici une fonction dérivable
$f_{p}$ est alors dérivable sur $I$ et $\forall x \in I,f_{p}'(x)=\lambda'(x)h_{0}(x)+\lambda(x)h_{0}'(x)$
Ainsi, $f_{p}$ est solution de $(E)$
$\iff \forall x \in I, f_{p}'(x)+a(x)f_{p}(x)=b(x)$
$\forall x \in I,\lambda'(x)h_{0}(x)+\lambda(x)h_{0}'(x)+a(x)\lambda(x)h_{0}(x)$
$=b(x)=\lambda(x)(h_{0}'(x)+a(x)h_{0}(x))=0$ car $h_{0}\in S_{H}$
$\iff \forall x \in I, \lambda'(x)h_{0}(x)=b(x)$
$\iff \forall x \in I,\lambda'(x)=\frac{b(x)}{h_{0}(x)}$
Or, $b$ est continue sur $I$ et $\frac{1}{h_{0}}=\exp\circ A$ est même de classe $\mathcal C^{1}$ sur $I$
Donc $\frac{b}{h_{0}}$ est continue sur $I$ et admet donc des primitives sur $I$
On pose $\lambda:x\mapsto \int_{}^{x} \frac{b(t)}{h_{0}(t)} \, dt$

Bilan: $f_{p}:x\mapsto\lambda(x)h_{0}(x)$ est bien solution de $(E)$

Bilan final: Si $(E):y'+a(x)y=b(x)$ avec $a,b$ continus sur $I$
Alors
$$S_{E}=\left\{ x\mapsto \left[ \left( \int_{}^{x} b(t)e^{ A(t) } \, dt \right) +\lambda\right] e^{ -A(x) },\lambda \in \mathbb{K}\right\}$$

Exemples:
Résoudre $(E):y'-2xy=e^{ x }e^{ x^{2} }$
On se place sur $I=\mathbb{R}$
- Résolution de $(H):y'-2xy=0$
  Par le cours, $S_{H}=\{ x\mapsto\lambda e^{ x^{2} };\lambda \in \mathbb{R} \}$
- Trouver une solution particulière à $(E)$
  Par variation de la constante on cherche $f_{p}$ sous la forme $f_{p}(x)=\lambda(x)e^{ x^{2} }$ avec une fonction inconnue $\lambda$ dérivable sur $\mathbb{R}$
  Alors $f_{p}'(x)=\lambda'(x)e^{ x^{2} }+2x\lambda(x)e^{ x^{2} }$
  Finalement $f_{p}$ est solution de $(E)$
  $\iff \forall x \in \mathbb{R},f_{p}'(x)-2xf_{p}(x)=e^{ x }e^{ x^{2} }$
  $\iff \forall x \in \mathbb{R},\lambda'(x)e^{ x^{2} }+\cancel{ 2x\lambda(x)e^{ x^{2} } }-\cancel{ 2x\lambda(x)e^{ x^{2} } }=e^{ x }e^{ x^{2} }$
  $\iff \forall x \in \mathbb{R},\lambda'(x)e^{ x^{2} }=e^{ x }e^{ x^{2} }$
  $\iff \forall x \in \mathbb{R},\lambda'(x)=e^{ x }$
  Il suffit de prendre $\lambda(x)=e^{ x }$
  La solution particulière trouvée est $f_{p}(x)=e^{ x }e^{ x^{2} }$
Conclusion: $S_{E}=f_{p}+S_{H}=\{ x\mapsto e^{ x }e^{ x^{2} }+\lambda e^{ x^{2} },\lambda \in \mathbb{R} \}$

Résoudre $(E):y'+\frac{1}{x}y=\frac{x}{x-1}$ sur $I=\left] 1,+\infty \right[$
- On résout $(H):y'+\frac{1}{x}y=0$
  Or $\int \frac{1}{x}\mathrm{d}x=\ln |x|=\ln x$
  Donc $S_{H}=\{ x\mapsto\lambda e^{ -\ln(x) } ,\lambda \in \mathbb{R}\}=\left\{  x\mapsto \frac{\lambda}{x},\lambda \in \mathbb{R}  \right\}$
- Solution particulière de $(E)$
  Par variation de la constante on cherche $f_{p}$ sous la forme $\frac{\lambda(x)}{x}$ avec $\lambda$ dérivable sur $I$
  Alors, $\forall x \in I,f_{p}'(x)=\frac{x\lambda'(x)-\lambda(x)}{x^{2}}$
  $f_{p}$ est solution de $(E)$
  $\iff \forall x \in I, f_{p}'(x)+\frac{1}{x}f_{p}(x)=\frac{x}{x-1}$
  $\iff \forall x \in I,\frac{\lambda'(x)}{x}-\cancel{ \frac{\lambda(x)}{x^{2}} }+\cancel{ \frac{1}{x} \frac{\lambda(x)}{x} }=\frac{x}{x-1}$
  $\iff \forall x \in I,\lambda'(x)=\frac{x^{2}}{x-1}$
  Or $\frac{x^{2}}{x-1}=\frac{x^{2}-1+1}{x-1}=\frac{(x-1)(x+1)+1}{x-1}=(x+1)+\frac{1}{x-1}$
  Ainsi, $\int \frac{x^{2}}{x-1}\mathrm{d}x=\frac{x^{2}}{2}+x+\ln |x-1|$
  On peut choisir $\lambda=\frac{x^{2}}{2}+x\ln(x-1)$ et donc $f_{p}:x\mapsto \frac{x}{2}+1+\frac{\ln(x-1)}{x}$
Conclusion: $S_{E}=f_{p}+S_{H}=\left\{  x\mapsto \frac{\lambda}{x}+\frac{x}{2}+1+\frac{\ln(x-1)}{x},\lambda \in \mathbb{R}  \right\}$

Méthode 3: Principe de superposition des solutions
Propriété:
Si $f_{1}$ est solution de l'équation $y'+ay=b_{1}$ et si $f_{2}$ est solution de l'équation $y'+ay=b_{2}$, alors, pour $(\alpha,\beta)\in \mathbb{K}^{2}$, $\alpha f_{1}+\beta f_{2}$ est solution de l'équation $y'+ay=\alpha b_{1}+\beta b_{2}$

Preuve: $(\alpha f_{1}+\beta f_{2})'+a(\alpha f_{1}+\beta f_{2})$
$=\alpha f_{1}'+\beta f_{2}'+\alpha af_{1}+\beta af_{2}$
$=\alpha(f_{1}'+af_{1})+\beta(f_{2}'+af_{2})$
$=\alpha b_{1}+\beta b_{2}$

A utiliser lorsque le second membre s'écrit comme une somme

Méthode 4: (INFORMELLE) Si $a$ est constante, on peut chercher une solution particulière qui o"ressemble" à $b(x)$
- polynomiale si $b$ est polynomiale
- exponentielle si $b$ est exponentielle
- trigonométrique si $b$ est trigonométrique

Exemple: Résoudre $(E):y'+y=e^{ 2t }-t^{2}+2t+5$
- $(H):y'+y=0$ donc $S_{H}=\{t\mapsto \lambda e^{ -t },\lambda \in \mathbb{R}\}$
- Solution partielle de $(E)$
  $(E_{1}):y'+y=e^{ 2t }$
  $(E_{2}):y'+y=-t^{2}+2t+5$
  On fait une superposition des solutions
  - On devine une solution pour $(E_{1})$
  $f_{1}: t\mapsto \frac{1}{3}e^{ 2t }$
  - On cherche une solution pour $(E_{2})$
  $f_{2}: t\mapsto-t^{2}+4t+1$
Bilan: $f_{1}+f_{2}$ est solution particulière de $(E)$

Exemple: $y'+ay=\cos(\omega t)$ avec $a$ constant
On peut deviner une solution particulière $f_{p}$ sous la forme $f_{p}: t\mapsto\alpha \cos(\omega t)+\beta \sin(\omega t)$
Alors $f_{p}': t\mapsto-\alpha \omega \sin(\omega t)+\beta\omega \cos(\omega t)$
$f_{p}$ est solution de $(E)$
$\iff \forall t\in \mathbb{R},(-\alpha\omega+a\beta)\sin(\omega t)+(\beta\omega+a\alpha)\cos(\omega t)=\cos(\omega t)$
$\iff \beta\omega+a\alpha=1$ et $-\alpha \omega+a\beta=0$
On trouve $\alpha$ et $\beta$ en fonction de $a$ et $\omega$

5) Problème de Cauchy
Proposition:
Soient $a,b\in\mathcal{C}(I,\mathbb{K})$
Soit $(x_{0},y_{0})\in I\times \mathbb{K}$
Le problème de Cauchy $(C)\begin{cases}y'+ax=b \\ y(x_{0})=y_{0}\end{cases}$ admet une unique solution

Preuve: Si $(E):y'+ay=b$ alors $S_{H}=\{ \lambda h_{0},\lambda \in \mathbb{K} \}$ avec $h_{0}:x\mapsto \exp(-A(x))$ où $A$ est une primitive de $a$
De plus, par variation de la constante, $(E)$ possède une solution particulière $f_{p}$ Ainsi, $S_{E}=\{ f_{p}+\lambda h_{0},\lambda \in \mathbb{K} \}$

De plus, si $y$ vérifie $(C)\begin{cases}(E) \\ y(x_{0})=y_{0}\end{cases}$
Alors $\exists\lambda \in \mathbb{K},\forall x \in I,y(x)=f_{p}(x)+\lambda h_{0}(x)$ et $y(x)y_{0}\iff f_{p}(x_{0})+\lambda h_{0}(x_{0})=y_{0}\iff \lambda=\frac{y_{0}-f_{p}(x_{0})}{h_{0}(x_{0})}$

6) Équation différentielle non normalisée
On se donne l'équation $(E):\alpha y'+\beta y=\gamma$ avec$\alpha,\beta,\gamma \in\mathcal{C}(I,\mathbb{K})$

Si la fonction $\alpha$ d'annule en un point $x_{0}\in I$
On va résoudre d'abord sur les deux intervalles de $I\setminus\{ x_{0} \}$
Sur chacun de ces intervalles, on résout l'équation normalisée:
$(E'):y'+\frac{\beta}{\alpha}y=\frac{\gamma}{\alpha}$

Il reste à résoudre le problème initial
Analyse: Si $f$ est solution de $(E)$ sur l'intervalle $I$, alors $f$ est continue sur $I$, dérivable sur $I$, et $\forall x \in I,\alpha(x)f'(x)+\beta(x)f(x)=\gamma(x)$

Alors $f$ est solution sur $I_{1}$, sur $I_{2}$ $f$ est continue et dérivable en $x_{0}$

Exemple
Résoudre sur $\mathbb{R}$ l'équation différentielle $(E)(1-x)y'-y=x$
On veut trouver sur $I=\mathbb{R}$
Il faut d'abord normaliser l'équation
$(E')=y'-\frac{1}{1-x}y=\frac{x}{1-x}$
Alors $(H):y'-\frac{1}{1-x}y=0$
On cherche $\int -\frac{1}{1-x}\mathrm{d}x=\ln |1-x|$
Ainsi, $S_{H}=\{ x\mapsto \exp(-\ln |1-x|),\lambda \in \mathbb{R} \}=\left\{  \frac{\lambda}{|1-x|},\lambda \in \mathbb{R}\right\}=\left\{\frac{1}{1-x},\lambda \in \mathbb{R} \right\}$

Solution particulière de $(E')$
Variation de la constante
On cherche $f_{p}:x\mapsto\frac{\lambda(x)}{1-x}$ avec $\lambda$ dérivable
Alors $f_{p}'=\frac{\lambda'(x)(1-x)+\lambda (x)}{(1-x)^{2}}$
$f_{p}$ est solution de $(E')\iff \forall x\in I_{1,2}, \frac{\lambda'(x)}{1-x}+0=\frac{x}{1-x}\iff \forall x \in I_{1,2},\lambda'(x)=x$
Prenons par exemple $\lambda:x\mapsto \frac{1}{2}x^{2}$ et donc $f_{p}:x\mapsto \frac{1}{2} \frac{x^{2}}{1-x}$
Alors on sait résoudre $(E')$ sur $I_{1}$ ou sur $I_{2}$
$S_{(E')}=\left\{ x\mapsto \frac{1}{2} \frac{x^{2}}{1-x}+\frac{\lambda}{1-x},\lambda \in \mathbb{R} \right\}$

Cherchons des solutions de $(E)$ sur $\mathbb{R}$
Analyse: Si $f$ est solution sur $I_{1}$, sur $I_{2}$ et $f$ est continue et dérivable sur $\mathbb{R}$ donc en $1$
Alors $\exists\lambda_{1},\lambda_{2}\in \mathbb{R}$, $f(x)=\begin{cases}x\mapsto \frac{1}{2} \frac{x^{2}}{1-x}+\frac{\lambda}{1-x} & x<1 \\ x\mapsto \frac{1}{2} \frac{x^{2}}{1-x}+\frac{\lambda}{1-x} & x>1\end{cases}$

## II - Équation différentielle linéaire d'ordre 2 à coefficient constants

1) Définition
> Soit $c\in\mathcal C(I,\mathbb{K})$ et $(a,b)\in \mathbb{K}^{2}$
> On se donne l'équation $(E):y''+ay'+by=c$
> Une solution de $(E)$ sera une fonction $f$ deux fois dérivable sur $I$ telle que $\forall x \in I,f''(x)+af'(x)+bf(x)=c(x)$

Remarque: si $f$ est solution de $(E)$, alors $f$ est de classe $\mathcal C^{2}$ sur $I$
En effet, $\forall x \in I,f''(x)=\underbrace{ -af'(x)-b f(x) }_{ \text{continues} }+\underbrace{ c(x) }_{ \text{continue} }$
Donc par somme, $f''(x)$ est continue, et donc $f$ est $\mathcal C^{2}$
L'équation homogène associée est $(H):y''+ay'+by=0$
L'équation caractéristique est $(EC):r^{2}+ar+b=0$

2) Structure des solutions
Propriété: $S_{H}$ contient la fonction nulle et est stable par combinaison linéaire
$\tilde{0}\in S_{H}$ et $\forall(f_{1},f_{2})\in S_{H}^{2},\forall(\lambda,\mu)\in \mathbb{K}^{2},\lambda f_{1}+\mu f_{2}\in S_{H}$
Propriété: Si $f_{p}\in S_{E}$ alors $S_{E}=f_{p}+S_{H}$

3) L'ensemble $S_{H}$ pour l'ordre 2
Lemme: Soit $r\in \mathbb{C}$, la fonction $\varphi_{r}:x\mapsto e^{ rx }$ est solution de $(H)$ si et seulement si $r$ est racine de l'équation caractéristique si et seulement si $r^{2}+ar+b=0$

Preuve: $\varphi_{r}\in S_{H}\iff \varphi_{r}''+a\varphi_{r}'+b\varphi_{r}=0\iff \forall x \in \mathbb{R},r^{2}e^{ rx }+are^{ rx }+be^{ rx }=0\iff \forall x \in \mathbb{R},(r^{2}+ar+b)e^{ rx }=0\iff r^{2}+ar+b=0$
a - Cas complexe où $\mathbb{K}=\mathbb{C}$
Posons le discriminant $\Delta=a^{2}-4b$
Théorème:
Si $\Delta\neq 0$, l'$(EC)$ admet deux racines complexes distinctes $r_{1},r_{2}$ et $S_{H}=\{ x\mapsto\lambda e^{ r_{1}x }+\mu e^{ r_{2}x }|(\lambda,\mu)\in \mathbb{C}^{2} \}$
Si $\Delta=0$, l'$(EC)$ admet une unique racine double $r_{0}$ et $S_{H}=\{ x\mapsto(\lambda+\mu x)e^{ r_{0}x }|(\lambda,\mu)\in \mathbb{C}^{2} \}$

Remarque, si $\Delta\neq 0$, $S_{H}=\{ \lambda \varphi_{r_{1}}+\mu \varphi_{r_{2}}|(\lambda,\mu)\in \mathbb{C}^{2} \}$
si $\Delta=0$, $S_{H}=\{ \lambda \varphi_{r_{0}}+\mu(\mathrm{id}\times \varphi_{r_{0}}) \}$

Preuve:Prenons $r$ une racine de l'$(EC)$
Posons $g:x\mapsto f(x)e^{ -rx }$
Ainsi $f(x)=g(x)e^{ rx }$
$f'(x)=g'(x)e^{ rx }+rg(x)e^{ rx }$
$f''(x)=g''(x)e^{ rx }+2rg'(x)e^{ rx }+r^{2}g(x)e^{ rx }$
$f$ est solution de $(H)$
$\iff \forall x \in \mathbb{R},f''(x)+af'(x)+bf(x)=0$
$\iff \forall x \in \mathbb{R},e^{ rx }\times \left[ g''(x)+(2r+a)g'(x)+\underbrace{ (r^{2}+ar+b) }_{ 0 }g(x) \right]=0$
$\iff \forall x \in \mathbb{R},g''(x)+(2r+a)g'(x)=0$
$\iff g'$ est solution de l'EDL d'ordre 1 $y'+(2r+a)y=0$

Si $\Delta=0,r$ est racine double de $r^{2}+ar+b=0$ donc $r=-\frac{a}{2}$ donc $2r+a=0$
Dans ce cas: $f\in S_{H}\iff g''=0\iff \exists\lambda,\mu \in \mathbb{C}^{2},g(x)=\lambda+\mu x$

Si $\Delta \neq 0$, l'équation $y'+(2r+a)y=0$ a pour solutions $x\mapsto\lambda e^{ -(2r+a)x }$ avec $\lambda \in \mathbb{C}$
Ainsi $g'(x)=\lambda e^{ -(2r+a)x }$
donc $g(x)=\frac{\lambda}{-2r+a}e^{ -(2r+a)x }$
Donc $f(x)=g(x)e^{ rx }=\lambda_{1}e^{ -(r+a)x }+\mu e^{ rx }$
Si $\Delta \neq 0$ on a deux racines $r_{1}$ et $r_{2}$ avec $r_{1}+r_{2}=-a$ donc $r_{2}=-a-r_{1}$

b - Cas réel $\mathbb{K}=\mathbb{R}$
Théorème: Soient $(a,b)\in \mathbb{R}^{2}$. $(H):y''+ay'+by=0$ et $(EC):r^{2}+ar+b=0$
Si $\Delta > 0$, notons $r_{1},r_{2}$ les racines réelles distinctes. $S_{H}=\{ x\mapsto\lambda e^{ r_{1}x }+\mu e^{ r_{2}x }|(\lambda,\mu)\in \mathbb{R}^{2} \}$
Si $\Delta=0$, notons $r_{0}$ l'unique racine double. $S_{H}=\{ x\mapsto(\lambda+\mu x)e^{ r_{0}x }|(\lambda,\mu)\in \mathbb{R}^{2} \}$
Si $\Delta < 0$, notons $z_{1,2}=\alpha\pm i\beta$ les deux racines complexes conjuguées.  $S_{H}=\{ x\mapsto e^{ \alpha x }\times\left[ \lambda \cos(\beta x)+\mu \sin(\beta x) \right]|(\lambda,\mu)\in \mathbb{R}^{2} \}$

Remarque: dans les trois cas on a toujours une structure $S_{H}=\mathbb{R}\cdot \varphi+\mathbb{R}\cdot \psi$

Preuve: Pour $\Delta >0$ et $\Delta=0$, il suffit d'appliquer le théorème avec $\mathbb{K}=\mathbb{C}$ en prenant $\lambda,\mu \in \mathbb{R}$
Pour $\Delta<0$ les solutions complexes sont $x\mapsto Ae^{ \alpha+i\beta x }+Be^{ \alpha-i\beta x }$ avec $A,B\in \mathbb{C}$
En prenant la partie réelle uniquement
$e^{ \alpha x }\times \left[ \lambda \cos(\beta x)+\mu \sin(\beta x) \right]$ avec $\lambda, \mu \in \mathbb{R}$

4) Solution particulière de $(E)$
a - Deviner une solution évidente, par exemple avec un second membre constant
b - Si le second membre est polynomial, on cherche une solution polynomiale
$(E):y''+ay'+by=P(x)$ où $P$ est polynomial de degré $n$
- Si $b\neq 0$, on cherche un polynôme $Q$ de degré $n$
- Si $b=0$ et $a\neq 0$ on cherche une solution sous la forme $x\mapsto xQ(x)$ où $x$ est de degré $n$
- Si $a=b=0$ on cherche une solution sous la forme $x\mapsto x^{2}Q(x)$ où $Q$ est de degré $n$

c - Si le second membre est exponentiel
$(E):y''+ay'+by=e^{ mx }$
$(EC):r^{2}+ar+b=0$
- Si $m$ n'est pas racine de l'$(EC)$, on cherche $f_{p}:x\mapsto Ce^{ mx }$
- si $m$ est racine simple de l'$(EC)$, on cherche $f_{p}:x\mapsto Cxe^{ mx }$
- si $m$ est racine double de l'$(EC)$, on cherche $f_{p}:x\mapsto Cx^{2}e^{ mx }$

Preuve:
- Si $m^{2}+am+b\neq 0$
  En posant $f_{p}:x\mapsto Ce^{ mx }$
  Alors $(f_p''+af_{p}'+b_{f_{p}})(x)=(Cm^{2}+Cma+Cb)e^{ mx }$
  $f_{p}$ est solution
  $\iff \forall x \in \mathbb{R},C(m^{2}+am+b)=e^{ mx }$
  $\iff C=\frac{1}{m^{2}+am+b}$
- Si $m$ est racine simple
  On cherche $f_{p}$ sous la forme $f_{p}:x\mapsto Cxe^{ mx }$
  $f_{p}':x\mapsto Ce^{ mx }+Cmxe^{ mx }$
  $f_{p}''=2Cme^{ mx }+Cm^{2}xe^{ mx }$
  $f_{p}$ est solution
  $\iff Ce^{ mx }[(m^{2}+am+b)x+(2m+a)]=e^{ mx }$
  $\iff C=\frac{1}{2m+a}$
- Si $m$ est racine double
  On cherche $f_{p}:x\mapsto Cx^{2}e^{ mx }$
  $f'_{p}:x\mapsto_{2}Cxe^{ mx }+Cmx^{2}e^{ mx }$
  $f''_{p}:x\mapsto 2Ce^{ mx }+2Cme^{ mx }+2Cmxe^{ mx }+Cm^{2}xse^{ mx }$
  
  $f_{p}$ est solution 
  $\iff \forall x \in \mathbb{R},(f_{p}''+af_{p}'+b f_{p})(x)=e^{ mx }$
  $\iff \forall x \in \mathbb{R},Ce^{ mx }\left[ (m^{2}+am+b)x^{2}+(4m+2a)x+(2) \right]=e^{ mx }$
  $\iff C=\frac{1}{2}$

Conséquence: cela s'applique pour un second membre trigonométrique.
$\cos(\omega x)=\mathrm{Re}(e^{ i\omega x })$
$\sin(\omega x)=\mathrm{Im}(e^{ i\omega x })$

On résout dans ce cas $(E'):y''+ay'+by=e^{ i\omega x }$
Puis on prend la partie réelle ou imaginaire

Quelques ajouts:
- Principe de superposition:
  Si $f_{1}$ est solution de $y''+ay'+by=c_{1}(x)$
  Si $f_{2}$ est solution de $y''+ay'+by=c_{2}(x)$
  Alors $(\lambda f_{1}+\mu f_{2})$ est solution de $y''+ay'+by=\lambda c_{1}(x)+\mu c_{2}(x)$
- Si le second membre est en polynôme $\times$ exponentielle ou bien sin ou cos, on cherche une solution en $x^{\{ 0,1,2 \}}P(x)e^{ mx }$

Exemples:
Résoudre sur $\mathbb{R}$ $(E):y''-2y'+y=(x-1)\cosh(x)$
- homogène $(H):y''-2y+y=0$
  $(EC):r^{2}-2r+1=0=(r-1)^{2}$ donc $r=1$
  Alors $S_{H}=\{ x\mapsto(\lambda+\mu x)e^{ x }|(\lambda,\mu)\in \mathbb{R}^{2} \}$
- Solution particulière
  $(x-1)\cosh(x)=(x-1) \frac{e^{ x }+e^{ -x }}{2}=\frac{1}{2}\underbrace{ (x-1)e^{ x } }_{ g_{1} }+\frac{1}{2}\underbrace{ (x-1)e^{ -x } }_{ g2 }$
  On fait une superposition:
  - $(E_{1}):y''-2y+y=(x-1)e^{ x }$
  - $(E_{2}):y''-2y'+y=(x-1)e^{ -x }$
  Pour $(E_{1})$: $m=1$ est racine double de l'$(EC)$. On fait $f_{p}:x\mapsto(ax+b)x^{2}e^{ x }$
  $f_{p}(x)=(ax^{3}+bx^{2})e^{ x }$
  $f_{p}'(x)=(3ax^{2}+2bx)e^{ x }+(ax^{3}+bx^{2})e^{ x }=(ax^{3}+(3a+b)x^{2}+2bx)e^{ x }$
  $f_{p}''(x)=(3ax^{2}+2(3a+b)x+2b)e^{ x }+(ax^{3}+(3a+b)x^{2}+2bx)e^{ x }$
  $f_{p}$ est solution de $(E_{1})$
  $\iff \left[ (a-2a+a)x^{3}+(6a+b-6a-2b+b)x^{2}+(6a+4b-4b)x+(2b) \right]e^{ x }=(x-1)e^{ x }$
  $\iff \forall x \in \mathbb{R},(6ax+2b)e^{ x }=(x-1)e^{ x }$
  $\iff \begin{cases}6a=1  &  & a=\frac{1}{6}\\ & \iff \\  2b=-1 &  & b=-\frac{1}{2}\end{cases}$
  $x\mapsto \left( \frac{1}{6}x-\frac{1}{2}x^{2}e^{ x } \right)$ est solution de $(E_{1})$
  
  Pour $(E_{2})$
  On cherche $f_{p}:x\mapsto(ax+b)e^{ x }$
  $f_{p}'(x)=(-ax+(a-b))e^{ -x }$
  $f''_{p}(x)=(ax+b-2a)e^{ -x }$
  $f_{p}$ est solution de $(E_{2})$
  $\iff \forall x \in \mathbb{R},\left[ (a-(-2a)+a)x+(b-2a-2(a-b)+b) \right]e^{ -x }=(x-1)e^{ -x }$
  $\iff \forall x \in \mathbb{R},(4ax-4a+4b)e^{ -x }=(x-1)e^{ -x }$
  $\iff \begin{cases}4a=1 \\ 4(b-a)=-1\end{cases}\iff \begin{cases}a=\frac{1}{4} \\ b=-\frac{1}{4}+a=0\end{cases}$
- Conclusion: $f_{p}:x\mapsto \frac{1}{4}xe^{ -x }$ est solution de $(E_{2})$
  Bilan: les solutions de $(E)$ sont $\left\{  x\mapsto (\lambda+\mu x)e^{ x }+\frac{1}{2}\left( \left( \frac{1}{6}x-\frac{1}{2} \right)x^{2}e^{ x }+\frac{1}{4}xe^{ -x } \right)|(\lambda,\mu)\in \mathbb{R}  \right\}$

Théorème:
Soient $(a,b)\in \mathbb{R}^{2},C\in\mathcal{C}(I,\mathbb{K})$
$x_{0}\in I$ et $(y_{0},y_{1})\in \mathbb{K}^{2}$
$(C):\begin{cases}(E):y''+ay'+by=C(x) \\ y(x_{0})=y_{0} \\ y'(x_{0})=y_{1}\end{cases}$
Le problème de Cauchy $(C)$ admet une unique solution sur $I$
Remarque: graphiquement, il existe une unique courbe représentative de $f$ qui passe par le point $(x_{0},y_{0})$ avec une pente $y_{1}$ en ce point

