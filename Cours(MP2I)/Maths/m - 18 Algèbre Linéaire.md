$\mathbb{K}$ est un corps ($\mathbb{R}$ ou $\mathbb{C}$)

# I - Espace vectoriel
## 1 - Définition

>Soit $E$ un ensemble muni:
> - D'une loi de composition interne $+$
> - D'une loi de composition externe $\cdot:\mathbb{K}\times E\to E,(\lambda,u)\mapsto\lambda\cdot u$
>On dit que $(E,+,\cdot)$ est un $\mathbb{K}$-espace vectoriel si:
> - $(E,+)$ est un groupe abélien, dont le neutre est noté $0_{E}$                    (1)
> - $\forall(\lambda,\mu )\in \mathbb{K}^{2},\forall(u,v)\in E^{2}$:                                                                       (2)
  > 	- $(\lambda+\mu)\cdot u=\lambda\cdot u+\mu\cdot u$                                                           a
  > 	- $\lambda\cdot(u+v)=\lambda\cdot u+\lambda\cdot v$                                                          <small> </small> b
  > 	- $\lambda\cdot(\mu\cdot u)=(\lambda \mu)\cdot u$                                                           <small> </small>        c
  > 	- $1\cdot u=u$                                                                                     <small> </small>d

$\to$ Notation/Vocabulaire :
	Si $\lambda \in \mathbb{K}$ et $u\in E$
$$

\underset{ \text{scalaire} }{ \lambda }\cdot \underset{ \text{vecteur} }{ u }\in E
$$

- $0\in \mathbb{K}$ : le réel nul
- $0_{E}\in E$ : le vecteur nul

<big><span style="color:crimson"> ⚠ </span></big> Calculs
Dans un  $\mathbb{K}$-espace vectoriel, on peut:
- Additionner/soustraire :
	$u+v$, $u-v=u+(-v)=u+(-1)\cdot v$
- Multiplier un vecteur par un scalaire :
	$\lambda u$ ou si $\lambda \neq 0, \frac{1}{\lambda}u$
<b><span style="color:grey"> JAMAIS </span></b>on ne multiplie/divise des vecteurs entre eux

## 2 - Exemples
### a - Le corps $(\mathbb{K},+,\times)$ est bien un $\mathbb{K}$-e.v.
En particulier :
	$(\mathbb{R},+,\times)$ est un $\mathbb{R}$-e.v.
	$(\mathbb{C},+,\times)$ est un $\mathbb{C}$-e.v.

<span style="color:violet">Remarque </span> 
$\begin{align}\mathbb{R} & =\{ x\text{ }|\text{ }x\in \mathbb{R} \} \\  & =\{ x\cdot 1 \text{ }|\text{ } x\in \mathbb{R} \}\end{align}$
$\begin{align}\mathbb{C} & =\{ z\text{ }|\text{ }z\in \mathbb{C} \} \\  & =\{ z\cdot 1 \text{ }|\text{ } z\in \mathbb{C} \}\end{align}$

⚠ On peut aussi voir $\mathbb{C}$ comme un $\mathbb{R}$-e.v.
$\cdot :\overset{ \large{\mathbb{R},\mathbb{C} \to \mathbb{C}} }{ (\lambda,z)\mapsto \lambda z }$
$\begin{align}\mathbb{C}&=\{ z\text{ }|\text{ }z\in \mathbb{C} \} \\  & =\{ a+ib\text{ }|\text{ } (a,b)\in \mathbb{R}^{2}\} \\ &=\{ a\cdot 1+b \cdot i\text{ }|\text{ }(a,b)\in \mathbb{R}^{2} \}\end{align}$
avec $1$ et $i\in \mathbb{C}$ 
$\mathbb{C}=\mathbb{R}1+\mathbb{R}i$

### b - Le plan $\mathbb{R}^{2}$
$\begin{align}+&:\mathbb{R}^{2}\times \mathbb{R}^{2}\to \mathbb{R}^{2} \\ &\text{ }(x,y),(x',y')\mapsto(x+x',y+y')\end{align}$

$\begin{align}\cdot&:\mathbb{R}^{2}\times \mathbb{R}^{2}\to \mathbb{R}^{2} \\ &\text{ }\lambda,(x,y)\mapsto(\lambda x,\lambda y)\end{align}$

Si $\vec{u}=(x,y)$ et $\vec{v}=(x',y')$
	alors $\vec{u}+\vec{v}=(x,y)+(x',y')=(x+x'),(y+y')$
$(\mathbb{R}^{2},+,\cdot)$ est un $\mathbb{R}$-e.v.

### c - L'espace vectoriel $\mathbb{K}^{n}$ avec $n\in \mathbb{N}^{*}$
$\to$ Lois : 
$\begin{align}+&:\mathbb{K}^{n}\times \mathbb{K}^{n}\to \mathbb{K}^{n} \\ &(\vec{u},\vec{v})\mapsto \vec{u}+\vec{v}\end{align}$

De plus, si : $\begin{cases}\vec{u}:(x_{1},x_{2},\dots,x_{n})\in \mathbb{K}^{n} \\ \vec{v}:(y_{1},y_{2},\dots,y_{n})\in \mathbb{K}^{n}\end{cases}$
Alors  $\vec{u}+\vec{v}=(x_{1}+y_{1},x_{2}+y_{2},\dots,x_{n}+y_{n})\in\mathbb{K}^{n}$

<span style="color:violet">Remarque </span> 
C'est comme l'addition matrices colonnes de $\mathcal M_{n,1}(\mathbb{K})$

$\begin{align}\cdot&:\mathbb{K}\times \mathbb{K}^{n}\to \mathbb{K}^{n} \\ &\text{ }\text{ }\text{ }\text{ }(\lambda,\vec{u})\mapsto\lambda \vec{u}\end{align}$

Si : $\vec{u}=(x_{1},x_{2},\dots,x_{n})\in \mathbb{K}^{n}$
	$\lambda \vec{u}=(\lambda x_{1},\lambda x_{2},\dots,\lambda x_{n})\in \mathbb{K}^{n}$
Alors on montre que $(\mathbb{K}^{n},+,\cdot)$ est un $\mathbb{K}$-e.v.
	<small>(on montre (1),(2) a,b,c,d) </small>

Le vecteur nul est $(0,0,\dots,0)\in \mathbb{K}^{n}$

<span style="color:turquoise">Exemple </span> 
$\begin{align}\mathbb{R}^{3}&=\{ (x,y,z)\text{ }|\text{ }x,y,z\in \mathbb{R} \} \\ &=\{ x(1,0,0)+y(0,1,0)+z(0,0,1) \text{ }|\text{ } x,y,z \in \mathbb{R}\} \\ &\vec{e_{x}} \text{ }\vec{e_{y}} \text{ }\vec{e_{z}} \\ &\vec{e_{1}}\text{ }\vec{ e_{2}}\text{ }\vec{e_{3}} \\ &=\mathbb{R}\vec{e_{1}}+\mathbb{R}\vec{e_{2}}+\mathbb{R}\vec{e_{3}}\end{align}$

En généralisant à $\mathbb{K}^{n}$
pour $i\in\textlbrackdbl 1;n \textrbrackdbl$
	$\vec{e_{i}}=(0,0,\dots,1_{\uparrow i},0,\dots,0)\in \mathbb{K}^{n}$
	$\vec{e_{i}}=(\delta_{i,j})_{1 \leqslant j \leqslant n}$

$\begin{align}\mathbb{K}^{n}&=\{ (x_{1},\dots,x_{n})\text{ }|\text{ }x_{1},\dots ,x_{n} \in \mathbb{K}\} \\ &=\{ x_{1}\vec{e_{1}}+x_{2}\vec{e_{2}}+\dots+x_{n}\vec{e_{n}}\text{ }|\text{ } x_{1},\dots,x_{n}\in \mathbb{K} \}\end{align}$

$\begin{align}\mathbb{K}^{n}&=\left\{  \sum\limits_{i=1}^{n}x_{i}\vec{e_{i}}\text{ }|\text{ }x_{1},x_{2},\dots ,x_{n}\in \mathbb{K}  \right\} \\ &=\mathbb{K}\vec{e_{1}}+\mathbb{K}\vec{e_{2}}+\dots+\mathbb{K}\vec{e_{n}}=\sum\limits_{i=1}^{n}\mathbb{K}\vec{e_{i}}\end{align}$
<small><span style="color:red">⚠ </span>somme d'espaces vectoriels</small>

### d - Polynômes

$(\mathbb{K}[X],+,\cdot)$ est un $\mathbb{K}$-e.v.

Soit $n\in \mathbb{N}$
$(\mathbb{K}_{n}[X],+,\cdot)$ est également un $\mathbb{K}$-e.v.

### e - Matrices

$(\mathcal M_{n},A(\mathbb{K}),+,\cdot)$ est un $\mathbb{K}$-e.v.

### f - 
Soit $(E,+,\cdot)$ un $\mathbb{K}$-e.v.
	$\mathcal F(X,E)$ où $X$ est un ensemble quelconque
	On va construire $+$ et $\cdot$ afin d'obtenir $(\mathcal F(X,E),+,\cdot)$ est un $\mathbb{K}$-e.v.














## 4 - Sous-espace vectoriel
Définition:
> Soit $E$ un $\mathbb{K}$-espace vectoriel et $F\subseteq E$ non vide
> $F$ est un sous-espace vectoriel de $E$ si:
> - $\forall(u,v)\in F^{2},u+v\in F$
> - $\forall u\in F,\forall\lambda \in \mathbb{K},\lambda u\in F$

Propriété: Soit $E$ un $\mathbb{K}$-espace vectoriel. $F$ est un sous-espace vectoriel de $E$ si $F\subseteq E,0_{E}\in F,\forall(u,v)\in F^{2},\forall(\lambda,\mu)\in \mathbb{K}^{2},\lambda u+\mu v\in F$

Remarque: Si $F\neq \emptyset$ et $\forall u\in F,\forall\lambda \in \mathbb{K},\lambda u\in F$.
Notons $u\in F$, donc $0\in \mathbb{K}$ donne $0u\in F$ donc $0_{E}\in F$


# II - Applications linéaires

Soient $E,F,G$ des $\mathbb{K}$-espaces vectoriels

## 1 - Définitions
<u>Déf</u>$\to$  
 >Une application $f:E\to F$ est <u>linéaire</u> (ou $\mathbb{K}$-linéaire)
 >si c'est un morphisme d'espaces vectoriels
 >$\forall (u,v) da,s E^{2}, \forall(\lambda,\mu)\in \mathbb{K}^{2},f(\lambda u+\mu v)=\lambda f(u)+\mu f(v)$

Cette déf est équivalente à 
>$\forall\lambda \in \mathbb{K},\forall(u,v)\in E^{2}$,
>$f(u+v)=f(u)+f(v)$
>$f(\lambda u)=\lambda f(u)$

<span style="color:violet">Remarque </span> 
L'image d'une combinaison linéaire par $f$ est la combinaison linéaire des images

