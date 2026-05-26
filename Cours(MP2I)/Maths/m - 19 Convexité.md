
<big><u>Intro</u></big>
<u>Déf</u>$\to$  
 >Une partie $E$ est dite convexe si :
 >	$\forall A,B\in E,\underbrace{ [A,B] }_{ \text{segment} }\subset E$
 
```avatar
image: Random images/Convexe 1.png
description: Exemple de parties convexes et non convexes
```

<u><b>Rappel</b></u> Les <u>parties convexes</u> de $\mathbb{R}$ sont les <u>intervalles </u>
$I\subset \mathbb{R}$ est un intervalle ssi :
$\boxed{\begin{align}\forall (x,y)&\in I^{2} \text{ avec }x\leqslant y, \\& [x,y]\subset I\end{align}}$

Paramétrisation du segment

Soit $x\leqslant y$
$\begin{align}[x,y]&=\{ (1-t)x+ty\text{ }|\text{ }t\in[0,1] \} \\ &=\{ x+t(y-x)\text{ }|\text{ }t\in[0,1] \}\end{align}$

```avatar
image: Random images/Convexe 2.png
description: |-
  [[Convexe 2.png]]

  $\begin{align}[x,y]&=\{ (1-t)x+ty\text{ }|\text{ }t\in[0,1] \} \\ &=\{ \lambda_{1}x+\lambda_{2}y\text{ }|\text{ }\lambda_{1},\lambda_{2}\in[0,1]\text{ telles que }\lambda_{1}+\lambda_{2}=1 \}\end{align}$
```


```avatar
image: Random images/Convexe 3.png
description: |-
  [[Convexe 3.png]]

  Soit $f:I\to \mathbb{R}$ une fonction
  Soient $x,y\in I$ avec $x\leqslant y$

  - Le <u>segment</u> qui relie $(x,f(x))$ et $(y,f(y))$
  	s'appelle <u>une corde</u>

  - La droite passant par $(x,f(x))$ et $(y,f(y))$ 
  	est appelée <u>sécante</u>

  - $B$ a pour coordonnées
  	$((1-t)x+ty,f((1-t)x+ty))$

  - $A$ a pour coordonnées 
  	$((1-t)x+ty,(1-t)f(x)+tf(y))$
```


```avatar
image: Random images/Convexe 4.png
description: Exemple visuel du graphe d'une fonction convexe
```


# I - Convexité

## 1 - Définitions

<u>Déf</u>$\to$  
 >Soit $I$ un intervalle de $\mathbb{R}$ et $f:I\to \mathbb{R}.$
 >On dit que $f$ est <u>convexe sur </u>$I$ si 
 ><u>la courbe de la fonction</u> $f$ est <u>en dessous de ses cordes</u> :
 >$\forall(x,y)\in I^{2},\boxed{ \forall t\in[0,1]}$,
 >	$f((1-t)x+ty)\leqslant(1-t)f(x)+tf(y)$
 
<u>Déf</u>$\to$  
 >$f$ est concave sur $I$
 >	si $-f$ est convexe sur $I$.
 >Ainsi la courbe de $f$ sera au dessus de ses cordes.
 >$\forall(x,y)\in I^{2},\forall t\in[0,1]$,
 >	$f((1-t)x+ty)\geqslant (1-t)f(x)+tf(y)$
 


```functionplot
---
title: Convexe et concave
xLabel: 
yLabel: 
bounds: [-10,10,-10,10]
disableZoom: true
grid: true
---
f (x) = (x+5) ^2 - 3
g(x) = -(x-5) ^2 +3
```

<span style="color:turquoise">Exemple </span> 
<u>La valeur absolue</u> est <u>convexe</u> sur $\mathbb{R}$
Soient $(x,y)\in \mathbb{R}^{2}$ et $t\in[0,1]$
$\begin{align}|(1-t)x+ty|&\underset{ i.t. }{ \leqslant }|(1-t)x|+|ty| \\ &\leqslant (1-t)\times |x|+t |y|\end{align}$ 
$\begin{cases}t\geqslant 0 \\ (1-t)\geqslant 0\end{cases}$
d'où la convexité de $|\cdot|$


```functionplot
---
title: 
xLabel: 
yLabel: 
bounds: [-5,5,0,5]
disableZoom: true
grid: true
---
f(x) = abs(x)
g(x) = 2
h(x) = -x/2 +2
```

## 2 - Position de la sécante

```avatar
description: |
  [[Convexe 5.png]]


  Soit $f:I\to \mathbb{R}$ convexe sur $I$ et $x<y$ deux points de $I$.
  Le graphe de $f$ est :
  $\begin{cases}\text{sous la corde dans }[x,y]  \\ \text{au dessus de la sécante dans }I\setminus[x,y]\end{cases}$
image: Random images/Convexe 5.png
```

<u><span style="color:gold"> Preuve </span></u> 
Soit $x < y$ dans $I$ et $z\in I\cap[y,+\infty[$         <small>avec z à l'extérieur à droite de [x,y]</small>

L'équation de la sécante est :
	$t\mapsto f(y)+(t-y) \frac{f(y)-f(x)}{y-x}$

Il reste à montrer :
$f(z)\geqslant f(y)+(z-y) \dfrac{f(y)-f(x)}{y-x}$

$\underset{ (y-x> 0) }{ \iff }(y-x)f(z)\geqslant(y-x)f(y)+(z-y)(f(y)(f(x)\text{ })\text{ })$

$\iff(y-x)f(z)+(z-y)f(x)\geqslant \underset{ > 0 }{ (z-x) }f(y)$
$\iff f(y)\leqslant \underset{ =\alpha }{ \boxed{\frac{y-x}{z-x}} }f(z)+\underset{ =\beta }{ \boxed{\frac{z-y}{z-x}} }f(x)$

$\alpha+\beta=\frac{z-x}{z-x}=1$
$\alpha\geqslant0$ et $\beta \geqslant 0$

et $\begin{align}\alpha z+\beta x&= \dfrac{(y-x)z+(z-y)x}{z-x} \\ &=\frac{y(z-x)}{z-x}=\boxed{y}\end{align}$ 

Or $f$ est convexe sur $I$
	Donc sur $[x,z]$
	Donc $\boxed{f(\alpha z+\beta x)\leqslant\alpha f(z)+\beta f(x)}$ est <b>vrai</b> !
	avec ici $f(\alpha z+\beta x)=f(y)$ et $\beta=1-x$
	
---

<span style="color:turquoise">Exemple </span> 
Soit $f:\mathbb{R}\to \mathbb{R}$ convexe telle que $\exists\text{ }a<b$ et $f(a)<f(b)$ 
	Montrer que $\lim\limits_{ x \to +\infty }f(x)=+\infty$

```avatar
description: |-
  [[Convexe 6.png]]

  Schéma+preuve
image: Random images/Convexe 6.png
```

## 3 - Croissance des pentes

$\boxed{Théorème}$
>Soit $f:I\to \mathbb{R}$
>(i) $f$ est convexe sur $I$
>$\iff$
>$(ii)$ Pour tout $a\in I,$
>$\text{ }$$\text{ }$$\text{ }$	$\text{ }$$\text{ }$la fonction $\tau_{a}:x\mapsto \dfrac{f(x)-f(a)}{x-a}$ est croissante sur $I\setminus \{ a \}$

<u>Corollaire</u> (3 pentes)

```avatar
description: |-
  [[Convexe 7.png]]

  Si $f:I\to \mathbb{R}$ est convexe
  et si $a<b<c$ sont dans $I$
  $\frac{f(b)-f(a)}{b-a}\leqslant\frac{f(c)-f(a)}{c-a}\leqslant\frac{f(c)-f(b)}{c-b}$
  $\tau_{a}(b)\leqslant \tau_{a}(c)$ et $\tau_{c}(a)\leqslant \tau_{c}(b)$ car $\tau_{a}$ et $\tau_{c}$ croissantes
image: Random images/Convexe 7.png
```

<span style="color:turquoise">Exemple </span> 
Soit $f:\mathbb{R}\to \mathbb{R}$ convexe telle que
$\exists\text{ }a<b$ avec $f(a)\leqslant f(b)$
Montrer que $f$ est croissante sur $[b,+\infty[$

```avatar
description: |-
  [[Convexe 8.png]]


  Soient $y>x>b$
  Les 3 pentes donnent :
  $0\leqslant\frac{f(b)-f(a)}{b-a}\leqslant\frac{f(x)-f(b)}{x-b}\leqslant\frac{f(y)-f(x)}{y-x}$
  Ainsi 
  $\forall y>x>b$,
  	$f(y)\geqslant f(x)$
  Donc $f$ est croissante sur $]b,+\infty[$
image: Random images/Convexe 8.png
```

```functionplot
---
title: 
xLabel: 
yLabel: 
bounds: [-0.5,5,-0.5,5]
disableZoom: true
grid: false
---
f ( x ) = x ^2
```


<u><span style="color:gold"> Preuve </span></u> ($Théorème$)
$\boxed{\text{(i)}\implies\text{(ii)}}$
Supposons $f$ convexe sur $I$
Soit $a\in I$
Soit $x<y$ avec $x,y\in I\setminus \{ a \}$

On veut montrer $\tau_{a}(x)\leqslant \tau_{a}(y)$

$\frac{f(x)-f(a)}{x-a}\leqslant \frac{f(y)-f(a)}{y-a}$ ?

Regardons la droite sécante passant par $(x,f(x))$ et $(a,f(a))$
	Elle a pour équation $\boxed{t\mapsto f(a)+(t-a)\times \frac{f(x)-f(a)}{x-a}}$

1$^{e}$ cas : Si $a>y$. 
	Ainsi $x<y<a$. $y\in[x,a]$
	Par convexité de $f$ :
	$f(y)\leqslant f(a)+(y-a)\frac{f(x)-f(a)}{x-a}$
	$f(y)-f(a)\leqslant (y-a)\times \frac{f(x)-f(a)}{x-a}$     Or $\boxed{y-a< 0}$
	donc $\boxed{\tau_{a}(y)\geqslant \tau_{a}(x)}$ $\checkmark$

2$^{e}$ cas : Si $a< y$
	On a $x<y$, donc $y$ est à l'extérieur de $[x,a]$ ou $[a,x]$
	Donc $f(y)$ est au dessous de la sécante.
	$f(y)\geqslant f(a)+(y-a) \frac{f(x)-f(a)}{x-a}$   Or $\boxed{y-a> 0}$
	donc $\boxed{\tau_{a}(y)\geqslant \tau_{a}(x)}$ $\checkmark$


$\boxed{\text{(ii)}\implies\text{(i)}}$
Soit $x,y\in I$ et $t\in[0,1]$
On va poser 
	$a=(1-t)x+ty$
$I$ est un intervalle donc $a\in I$.
Utilisons la croissance de $\tau_{a}$ sur $I \setminus \{ a \}$

On peut supposer que $x <y$ (quitte à échanger les rôles)
et $t\in]0,1[$

On a donc $x<a<y$
donc $\tau_{a}(x)\leqslant \tau_{a}(y)$
$\frac{f(x)-f(a)}{x-a}\leqslant \frac{f(y)-f(a)}{y-a}$

Or $\boxed{\begin{align}(x-a)< 0 \\ (y-a)> 0\end{align}}$    donc

$(y-a)(f(x)-f(a))\geqslant (x-a)(f(y)-f(a))$
$(y-a)f(x)+(a-x)f(y)\geqslant (y-x)f(a)$   Or $\boxed{y-x > 0}$ donc 

$\boxed{\begin{align}\frac{y-a}{y-x}f(x)+\frac{a-x}{y-x}f(y)\geqslant f(a)\end{align}}$

Or $\frac{a-x}{y-x}=\frac{(1-t)x+ty-x}{y-x}=\frac{t(y-x)}{y-x}=\boxed{t}$
	$\frac{y-a}{y-x}=[\dots]=\boxed{(1-t)}$

<u>d'où la convexité</u> de $f$
$\boxed{(1-t)f(x)+tf(y)\geqslant f((1-t)x+ty)}$

## 4 - Convexité et fonctions dérivables
$\boxed{Théorème}$
>Soit $f:I\to \mathbb{R}$ dérivable sur $I$
>(i) $f$ est convexe sur $I$
>$\iff$
>(ii) $f'$ est croissante sur $I$
>$\iff$
>(iii) le graphe de $f$ est au dessus de ses tangentes.

<u><span style="color:gold"> Preuve </span></u> 
- (i) $\implies$ (ii)
	On a $f$ convexe sur $I$
	Soient $x < y$ dans $I$ et $t\in]x,y[$
	```avatar
image: Random images/Convexe 9.png
	```
	Les 3 pentes donnent :
	$\dfrac{f(t)-f(x)}{t-x}\leqslant \underset{ fixe }{ \boxed{\frac{f(y)-f(x)}{y-x}} }\leqslant \dfrac{f(y)-f(t)}{y-t}$
	Quand $t\to x^{+}$, par dérivabilité de $f$ en $x$
	$f'(x)\leqslant \frac{f(y)-f(x)}{y-x}$
	De même si $t\to y^{-}$, comme $f$ est dérivable en $y$ :
	$\frac{f(y)-f(x)}{y-x}\leqslant f'(y)$
	<u>Bilan :</u> $f'(x)\leqslant f'(y)$ : $\boxed{f'\text{ est donc croissante sur }I}$

- (ii) vers (iii)
	Soit $a\in I$
	Posons $\varphi :\overset{ \large{I \to \mathbb{R}} }{ t\mapsto f(t)-[f(a)+f'(a)\times(t-a)] }$
	$\varphi$ est ici dérivable sur $I$ et 
	$\forall t\in I,\varphi'(t)=f'(t)-f'(a)$
	Or, on sait que $f$ est croissante sur $I$
	```avatar
description: $\varphi$ admet un minimum en $a$ et $\varphi(a)=0$
image: Random images/Convexe 10.png
	```
	Ainsi : $\boxed{\forall t\in I,\varphi(t)\geqslant 0}$
	$\boxed{\forall t\in I,f(t)\geqslant f(a)+f'(a)(t-a)}$
	$f$ est au dessus de sa tangente en $a$ (Pour tout $a$ dans $I$)

- (iii) $\implies$ (i)
	On veut montrer que $f$ est convexe sur $I$.
	Soient $x<y\in I$
	et $\lambda \in[0,1]$
	On va poser $a=(1-\lambda)x+\lambda y$
		$a\in I$(car $I$ intervalle)
	On sait que $f$ est au dessus de se tangente en $a$
	$\forall t\in I,f(t)\geqslant f(a)+f'(a)\times(t-a)$
	Ainsi en $x$ et en $y$: $(*_{1})\quad f(x)\geqslant f(a)+f'(a)(x-a)$ et $(*_{2})\quad f(y)\geqslant f(a)+f'(a)(y-a)$
	$(1-\lambda)(*_{1})+\lambda(*_{2})$
	$(1-\lambda)f(x)+\lambda f(y)\geqslant f(a)\cancelto{ 0 }{ +f'(a)\left[ (1-\lambda)(x-a)+\lambda(y-a) \right] }$
	Finalement, $(1-\lambda)f(x)+\lambda f(y)\geqslant f(a)=f((1-\lambda)x+\lambda y)$ donc $f$ est convexe sur $I$


<u>Rappel</u>
$f$ dérivable de $I$ dans $\mathbb{R}$ où $I$ intervalle
$f$ convexe sur $I \iff f'$  croissante sur $I$

<u>Corollaire</u>
>Soit $f:I\to \mathbb{R}$ <u>deux fois dérivable</u> sur $II$
>(i) $f$ convexe sur $I$
>$\iff$
>(ii) $f''\geqslant 0$ sur $I$

<big><u>Inégalités usuelles</u></big>
- $\exp$ est <u>convexe</u> sur $\mathbb{R}$ et $y=x+1$ est sa tangente en $0$
	donc $\boxed{\forall x\in \mathbb{R},e^{ x }\geqslant 1+x}$

```functionplot
---
title: 
xLabel: 
yLabel: 
bounds: [-2,2,0,5]
disableZoom: true
grid: false
---
f(x)=exp(x)
g(x)=x+1
```

- $\ln$ est $\boxed{\text{concave}}$ sur $]0,+\infty[$ et la tangente en $1$ a pour équation $\begin{align}y&=\ln(1)+\ln'(1)(x-1) \\ &=x-1\end{align}$
	donc $\boxed{\forall x>0,\ln(x)\leqslant x-1}$

```functionplot
---
title: 
xLabel: 
yLabel: 
bounds: [0,4,-4,2]
disableZoom: true
grid: false
---
f(x)=log(x)
g(x)=x-1
```
Ainsi $\boxed{\forall x\in]-1,+\infty[\text{ },\text{ }\ln(1+x)\leqslant x}$

- $\sin$ sur $\left[ 0, \frac{\pi}{2} \right]$ est concave car $\sin''=-\sin\leqslant 0$ sur $\left[ 0, \frac{\pi}{2} \right]$

```functionplot
---
title: 
xLabel: 
yLabel: 
bounds: [0,1.6,-1,2]
disableZoom: true
grid: false
---
f(x)=sin(x)
g(x)=x
```
$\forall x\in\left[ 0, \frac{\pi}{2} \right], \frac{2}{\pi}x\leqslant \sin x\leqslant x$

<u><span style="color:turquoise">Exemple </span> 
 </u>
$\ln$ concave sur $\mathbb{R}^{*}_{+}$, avec $t=\frac{1}{2}$,$1-t=\frac{1}{2}$,
$\ln\left( \frac{1}{2}x+\frac{1}{2}y \right)\geqslant \frac{1}{2}\ln(x)+\frac{1}{2}\ln(y)$
Ainsi $\ln\left( \frac{x+y}{2} \right)\geqslant \frac{\ln(x)+\ln(y)}{2}=\ln(\sqrt[]{ xy })$
Donc $\boxed{\sqrt[]{ xy }\leqslant \frac{x+y}{2}}$ 

<u>Déf</u>$\to$  
 >Si $f:I\to \mathbb{R}$ et $a\in I$ (à l'intérieur de $I$)
 >S'il existe une voisinage $\mathcal V$ tel que 
 >$f_{|\mathcal V\cap I\cap ]a,+\infty[}$ et $f_{|\mathcal V\cap I\cap ]-\infty,a[}$ sont de convexité différente
 >On dit que $\boxed{a\text{ est un point d'inflexion}}$
 >De plus, si $f$ est $2$ fois dérivable : 
 >$a$ est un point d'inflexion ssi $f''(a)=0$ et change de signe au voisinage de $a$
 

```functionplot
---
title: 
xLabel: 
yLabel: 
bounds: [0,2,1,5]
disableZoom: true
grid: false
---
f(x)=sin(3.14x) + 3
g(x)=-3.14x +6.14
```
Au point d'inflexion $a$, $\mathscr C_{f}$ traverse sa tangente

```avatar
description: |-
  [[Convexe 11.png]] 

  Autre exemple
image: Random images/Convexe 11.png
```

<span style="color:turquoise">Exemple </span> 
Soit $f:I\to \mathbb{R}$ convexe avec $I$ un intervalle ouvert
	Alors $f$ est continue sur $I$

Soit $a\in I$, $I$ ouvert donc $a$ est <u>un point d'intérieur</u>
Comme $f$ est convexe, $\boxed{\tau_{a}\text{ est croissante sur }I\setminus \{ a \}}$

$\tau_{a}$ est <u>monotone</u> donc
	$\tau_{a}$ admet une limite à gauche et à droite en $a$
	et $\lim\limits_{ x \to a^{-} }\tau_{a}(x)\leqslant\lim\limits_{ x \to a^{+} }\tau_{a}(x)$
	et $\exists\text{ }\eta>0$ tq $\begin{cases}a-\eta \in I \\ a+\eta \in I\end{cases}$   et 
	$\underbrace{ \tau_{a}(a-\eta) }_{ \text{fini} }\leqslant \underbrace{ \lim\limits_{ a^{-} }\tau_{a}\leqslant \lim\limits_{ a^{+} }\tau_{a} }_{ \text{existent} }\leqslant\underbrace{ \tau_{a}(a+\eta) }_{ \text{fini} }$
	dans $\mathbb{R}$ (finies !)
	Ainsi $\forall x\in I\setminus \{ a \}$,
	$f(x)=\underset{ \tau_{a}(x) }{ \boxed{\frac{f(x)-f(a)}{x-a}} }(x-a)+f(a)$
	$\forall x\neq a,f(x)=f(a)+\tau_{a}(x)\times(x-a)$
	Donc $\boxed{\lim\limits_{ x \to a }f(x)=f(a)}$, donc $\boxed{f\text{ continue en }a}$

<span style="color:red">Contre-Exemple </span> 
Si $f$ est convexe sur le segment $[a,b]$
	alors $f$ est continue sur $]a,b[$
	
## 5 - Inégalité de Jensen

$\boxed{Théorème}$
>Soit $f:I\to \mathbb{R}$ convexe sur l'intervalle $I$
>Soient $(x_{1},\dots,x_{n})\in I^{n}$ et $\begin{cases}(\lambda_{1},\dots,\lambda_{n})\in[0,1]^{n} \\ \text{telle que }{\color{red}\boxed{{\color{white}\sum\limits_{i=1}^{n}\lambda_{i}=1}}}\end{cases}$    ⚠ hypothèse forte !
>$f\left( \sum\limits_{i=1}^{n}\lambda_{i}x_{i} \right)\leqslant \sum\limits_{i=1}^{n}\lambda_{i}f(x_{i})$

<span style="color:violet">Remarque </span> 
- Si $n=2$ $\lambda_{1},\lambda_{2}\in[0,1]$ tq $\lambda_{1}+\lambda_{2}=1$
	<u>Par convexité de</u> $f$ : $f(\lambda_{1}x_{1}+(1-\lambda_{1})x_{2})\leqslant \lambda_{1}f(x_{1})+(1-\lambda_{1})f(x_{2})$
	(par déf d'une fonction convexe)
<u><span style="color:gold"> Preuve </span></u> 
On pose $H_{n}:$ $\left[ \forall(x_{1},\dots,x_{n})\in I^{n},\forall(\lambda_{1},\dots\lambda_{n})\in[0,1]^{ n},\sum\limits_{i=1}^{n}\lambda_{i}=1 \implies f\left( \sum\limits_{i=1}^{n}\lambda_{i}x_{i} \right)\leqslant\sum\limits_{i=1}^{n}\lambda_{i}f(x_{i}) \right]$

<u>Init</u>
$n=2$ $\checkmark$ ($n=1$ $\checkmark$)

<u>Hérédité</u>
Soit $n\geqslant 2$ tel que $H_{n}$ est vraie
$\underline{\text{Montrons }H_{n+1}}$ 
Soient $(x_{1},\dots,x_{n+1})\in I^{n+1}$ et $(\lambda_{1},\dots,\lambda_{n+1})\in[0,1]^{n+1}$
tq $\boxed{\sum\limits_{i=1}^{n}\lambda_{i}=1}$

$\underbrace{ \left( \sum\limits_{i=1}^{n}\lambda_{i} \right) }_{ \large s }+\lambda_{n+1}=1$

<u>1er cas</u>  :  Si $s=0$ 
Or $\lambda_{i}\in[0,1]$ donc $\forall i\in\textlbrackdbl 1,n \textrbrackdbl,\lambda_{i}=0$
Donc $\lambda_{n+1}=1$ donc 
$f\left( \sum\limits_{i=1}^{n+1}\lambda_{i}x_{i} \right)=f(x_{n+1})\leqslant 1f(x_{n+1})=\sum\limits_{i=1}^{n+1}\lambda_{i}f(x_{i})$
$\checkmark$

<u>2ème cas</u>  :  Si $s\neq 0$ ($s\in\text{ }]0,1]$)
$\boxed{s+\lambda_{n+1}}=1$
$\begin{align}f\left( \sum\limits_{i=1}^{n+1}\lambda_{i}x_{i} \right)&=f\left( \sum\limits_{i=1}^{n}\lambda_{i}x_{i} +\lambda_{n+1}x_{n+1}\right) \\ &=f\left( s\times \frac{1}{s}\sum\limits_{i=1}^{n}\lambda_{i}x_{i} +\lambda_{n+1}x_{n+1}\right) \\ &\leqslant sf\left( \frac{1}{s}\sum\limits_{i=1}^{n}\lambda_{i}x_{i} \right)+\lambda_{n+1}f(x_{n+1})\end{align}$

Or, $\dfrac{1}{s}\sum\limits_{i=1}^{n}\lambda_{i}x_{i}=\sum\limits_{i=1}^{n}\left( \frac{\lambda_{i}}{s} \right)x_{i}$
Or, $\sum\limits_{i=1}^{n}\frac{\lambda_{i}}{s}=\frac{1}{s}\sum\limits_{i=1}^{n}\lambda_{i}=\frac{1}{s}s=1$
On applique alors $H_{n}$:
$f\left( \sum\limits_{i=1}^{n} \frac{\lambda_{i}}{s}x_{i} \right)\leqslant\sum\limits_{i=1}^{n} \frac{\lambda_{i}}{s}f(x_{i})$
Bilan: $f\left( \sum\limits_{i=1}^{n+1}\lambda_{i}x_{i} \right)\leqslant s\left[ \sum\limits_{i=1}^{n} \frac{\lambda_{i}}{s}x_{i} \right]+\lambda_{n+1}f(x_{n+1})\leqslant \sum\limits_{i=1}^{n+1}\lambda_{i}f(x_{i})$

<b><u>Cas particulier</u></b> de l'inégalité de Jensen
Si $\lambda_{1}=\lambda_{2}=\dots=\lambda_{n}=\frac{1}{n}$
Pour $f$ convexe sur $I$
$\forall(x_{1},\dots,x_{n})\in I^{n},f\left( \frac{1}{n}\sum\limits_{i=1}^{n}x_{i} \right)\leqslant \frac{1}{n}\sum\limits_{i=1}^{n}f(x_{i})$

