---
tags:
  - Math
---

# I - Lois de Composition Interne (LCI)

1) Définition
Déf $\to$
>Soit $E$ un ensemble
>Une LCI sur $E$ est une application de $E\times E$ dans $\underline{\underline{E}}$

$\underline{\text{Notation :}}$ Si $f:\underset{ (x,y)\mapsto f(x,y) }{ E\times E\to E }$ est une notation préfixe
Ici, $f$ est une LCI, mais on préfère une notation infixe $\underbrace{ x }_{ \in E }$ $\underbrace{ f }_{ \text{op} }$ $\underbrace{ y }_{ \in E }$
On préférera avoir un symbole pour désigner la LCI : $+,\times,*,\circ,\oplus,\lor,\land,...$

$\underline{\text{Remarque :}}$ Prenons $E$ muni d'une LCI $*$
Soient $x,y,z\in E$
/!\ l'écriture $x*y*z$ est ambiguë
Il faut la parenthéser : $(x*y)*z$ ou $x*(y*z)$ 

$\underline{\text{Exemple :}}$ Comment parenthéser $a*b*c*d$ ?

Déf $\to$ (Associativité)
>Soit $*$ une LCI sur un ensemble $E$
>$*$ est $\underline{\text{associative}}$ si : $\forall(x,y,z)\in E^{3},(x*y)*z=x*(y*z)$

Si $*$ est associative, alors les parenthèses sont inutiles et on écrira $x*y*z$ (ou encore $xyz$)

Déf $\to$ (Commutativité)
> -  Soient $x,y\in E$. On dit que $x$ et $y$ commutent si $x*y=y*x$
> -  La LCI $*$ est commutative si : $\forall(x,y)\in E^{2},x*y=y*x$

2) Exemples

- $\underline{\text{La somme}}$

L'addition $+$ dans $\mathbb{N},\mathbb{Z},\mathbb{Q},\mathbb{R},\mathbb{C}$
	est une LCI associative et commutative
$2\mathbb{N}=\{2k|k\in \mathbb{N}\}$, $+$ est une LCI dans $2\mathbb{N}$
$(2\mathbb{N}+1)=\{2k+1|k\in \mathbb{N}\}$, $+$ n'est pas une LCI dans $(2\mathbb{N}+1)$

- $\underline{\text{Le produit}}$

La multiplication $\times$ dans $\mathbb{N},\mathbb{Z},\mathbb{Q},\mathbb{R},\mathbb{C}$
	est une LCI associative et commutative
Dans $2\mathbb{N},\times$ est une LCI
$(2\mathbb{N}+1),\times$ est une LCI

- $\underline{\text{La différence}}$

La soustraction $-$ dans $\mathbb{Z},\mathbb{Q},\mathbb{R},\mathbb{C}$
	est une LCI $\underline{\text{ni associative, ni commutative}}$
$(2-3)-5\neq{2}-(3-5)$
$(2-3)\neq 3-2$
$-$ n'est pas une LCI dans $\mathbb{N}$ : $2-3\not\in \mathbb{N}$ 

- $\underline{\text{Composition des applications}}$

Soit $\mathcal F(E)=\mathcal F (E,E)=E^{E}$ l'ensemble ds applications de $E\text{ dans }E$
Soient $f,g\in\mathcal F(E)$ alors $g\circ f:E \to E$ donc $g \circ f\in\mathcal F(E)$
Ainsi $\underline{\text{la composition }\circ\text{ est une LCI dans }\mathcal F(E)}$ 
	$\underline{\circ\text{ est associative}}$
	$\circ$ est en général non commutative 
		$f \circ g \neq g \circ f$ en général$\dots$

- $\underline{\text{Loi sur }\mathcal P(E)}$ (ensembles)

$\cap,\cup,\setminus$ 
	sont des LCI dans $\mathcal P(E)$
$\cup,\cap$ sont associatives et commutatives 
$\setminus$ n'est ni assoiative, ni commutative
$\Delta:$ différence symétrique
$A\Delta B=(A\cup B)\setminus(A\cap B)=(A\setminus B)\cup(B\setminus A)$
Exemple : $\Delta$ est associative et commutative (comme le $\underline{\text{ou exclusif}}$)

- $\underset{ (\land) }{ PGCD }$ et $\underset{ (\lor) }{ PPCM }$ sont des LCI assoc. et comm. dans $\mathbb{N}$

- $\underline{\text{Addition et multiplication modulo n}}$, avec $n\in \mathbb{N}^{*},n\geqslant 2$
On note $\mathbb{Z}/n\mathbb{Z}=\{0,1,2,\dots,n-1\}$ (l'ens. des classes d'équivalences de la relation $.\equiv.[n]$)

$+:\underset{ (a,b) \mapsto(a+b)mod\text{ }n }{ \mathbb{Z}/n\mathbb{Z}\times \mathbb{Z}/n\mathbb{Z}\to \mathbb{Z}/n\mathbb{Z} }$

$\times:\underset{ (a,b) \mapsto(a\times b)mod\text{ }n }{ \mathbb{Z}/n\mathbb{Z}\times \mathbb{Z}/n\mathbb{Z}\to \mathbb{Z}/n\mathbb{Z} }$

$\underline{\text{Exemple : }}$ Tables d'addition et multiplication 
- $\underline{n=2}$

| $\times$ | 0   | 1   |
| -------- | --- | --- |
| 0        | 0   | 0   |
| 1        | 0   | 1   |
modulo 2

| $+$ | 0   | 1   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 1   | 1   | 0   |

- $\underline{n=5}$


| $\times$ | 0   | 1   | 2   | 3   | 4   |
| -------- | --- | --- | --- | --- | --- |
| 0        | 0   | 0   | 0   | 0   | 0   |
| 1        | 0   | 1   | 2   | 3   | 4   |
| 2        | 0   | 2   | 4   | 1   | 3   |
| 3        | 0   | 3   | 1   | 4   | 2   |
| 4        | 0   | 4   | 3   | 2   | 1   |
modulo 5

| $+$ | 0   | 1   | 2   | 3   | 4   |
| --- | --- | --- | --- | --- | --- |
| 0   | 0   | 1   | 2   | 3   | 4   |
| 1   | 1   | 2   | 3   | 4   | 0   |
| 2   | 2   | 3   | 4   | 0   | 1   |
| 3   | 3   | 4   | 0   | 1   | 2   |
| 4   | 4   | 0   | 1   | 2   | 3   |

- $\underline{n=6}$

| $\times$ | 1   | 2   | 3   | 4   | 5   |
| -------- | --- | --- | --- | --- | --- |
| 1        | 1   | 2   | 3   | 4   | 5   |
| 2        | 2   | 4   | 0   | 2   | 4   |
| 3        | 3   | 0   | 3   | 0   | 3   |
| 4        | 4   | 2   | 0   | 4   | 2   |
| 5        | 5   | 4   | 3   | 2   | 1   |

3) Elément neutre et inversibilité

Déf $\to$
> Soit $*$ une LCI sur $E$ et $e\in E$
> $e$ est un élément neutre pour $*$ si :
> 	$\forall x \in E,x*e=e*x=x$

$\underline{Prop :}$ (Si $e$ est neutre, alors il est unique)

$\underline{Preuve} :$

Si $e\text{ et }e'$ sont neutres 
	alors $e'*e=e'$ car $e$ est neutre
	et $e'*e=e$ car $e'$ est neutre
	donc $e=e'$

Déf $\to$ (Elément inversible pour $*$)
> Soit $*$ une LCI associative sur $E$ et de neutre $e \in E$
> Soit $x \in E$
> On dit que $x$ est inversible pour $*$ si :
> 	$\exists y\in E,x*y=y*x=e$
> Enfin, s'il existe, cet élément $y$ est unique et on l'appelle l'inverse de $x$ pour $*$ et on le note $x^{-1}$

$\underline{\text{Preuve}}\text{ (unicité)}$
Supposons $y$ et $y' \in E$ tels que
	$\begin{cases}x*y=y*x=e \\ x*y'=y'*x=e\end{cases}$
Regardons $(y*x)*y'\underset{ \text{assoc.} }{ = }y*(x*y')$
	Alors $e*y'=y*e$
	$e$ neutre donc $y'=y$

#### ⚠ $\underline{\text{Choix des notations}}$

$\underline{\text{Contexte abstrait}}$ $(E,*):x*x^{-1}=x^{-1}*x=e$
$\begin{cases}x^{-1}:\text{l'inverse de }x\text{ pour }* \\ e\text{ le neutre pour }*\end{cases}$

$\underline{\text{Contexte additif}}$ : Si la LCI s'appelle $+$
On notera 0 le neutre pour +
On notera $-x$ $\underline{\text{l'inverse de }x\text{ pour }+}$ que l'on renomme $\underline{\text{l'opposé}}$
$x+(-x)=(-x)+x=0$

$\underline{\text{Propriété}}$
>Soit $*$ une LCI associative de neutre $e$
  Soient $(x,y)\in E$ deux éléments inversbles
  Alors $x*y$ est inversible et $(x*y)^{-1}=y^{-1}*x^{-1}$

$\underline{\text{Preuve}} :$
- $(x*y)*(y^{-1}*x^{-1})\underset{ assoc. }{ = }x*(y*y^{-1})*x^{-1}$
$=x*e*x^{-1}$
$\underset{ assoc. }{ = }(x*e)*x^{-1}$
$=x*x^{-1}$
$=e$

- De même,
$(y^{-1}*x^{-1})*(x*y)=y^{-1}*(x^{-1}*x)*y$
$=y^{-1}*e*y$
$=y^{-1}*y=e$

donc $x*y$ est inversible et son inverse vaut $\underline{y^{-1}*x^{-1}}$

$\underline{\text{Remarque}} :$ Avec les notations additives
$-(x+y)=(-y)+(-x)$

$\underline{\text{Remarque}}$ si $x$ est inversible
$x*x^{-1}=x^{-1}*x=e$
donc $x^{-1}$ est inversible et $(x^{-1})^{-1}=x$

$\underline{\text{Remarque}}$ le neutre est toujours inversible
son inverse est $e^{-1}=e$ car $e*e=e$

$\underline{\text{Exemples}}$
- Dans $\mathbb{N},\mathbb{Z},\mathbb{Q},\mathbb{R},\mathbb{C},$ on a $\begin{cases}0:\text{neutre pour +} \\ 1:\text{neutre pour }\times\end{cases}$ 
- Dans $(\mathbb{N},+)$, les "inversibles pour +" sont $\{0\}$
- Dans $\mathbb{Z},\mathbb{Q},\mathbb{R},\mathbb{C},$ tout élément $x$ admet un opposé $-x$
- Dans $(\mathbb{N},\times)$, les inversibles sont $\{1\}$         $n\times\dots=1$
- Dans $(\mathbb{Z},\times)$, les inversibles sont $\{\pm 1\}$
- Dans $\mathbb{Q},\mathbb{R},\mathbb{C}$ muni de $\times$, tout élément non nul est inversible.
	Les inversibles dans $(\mathbb{Q},\times)$ sont $\mathbb{Q} \setminus \{0\}=\mathbb{Q}^{*}$
	Les inversibles dans $(\mathbb{R},\times)$ sont $\mathbb{R} \setminus \{0\}=\mathbb{R}^{*}$
	Les inversibles dans $(\mathbb{C},\times)$ sont $\mathbb{C} \setminus \{0\} = \mathbb{C}^{*}$

- Dans $(\mathcal F(E), \circ)$
	le neutre est $id_{E}:\underset{ x\text{ }\mapsto\text{ }x }{ E \to E }$
	Les inversibles de $\mathcal F(E)$ sont exactement les $\underline{\text{bijections de }E}$
	On note souvent $S(E)$ ou $\mathfrak S(E)$
		l'ensemble des bijections de $E$ dans $E$
/!\ $\mathcal F(\mathbb{R}):$ l'ens des applications de $\mathbb{R}$ dans $\mathbb{R}$
	$+$ a comme neutre $\underset{ x\text{ }\mapsto\text{ }0 }{ \mathbb{R} \to \mathbb{R} }$ la fonction nulle $\tilde{0}$
	$\times$ a comme neutre $\underset{ x\text{ }\mapsto\text{ }1 }{ \mathbb{R} \to \mathbb{R} }$ la fonction constante $\tilde{1}$
	$\circ$ a comme neutre $\underset{ x\text{ }\mapsto\text{ }x }{ \mathbb{R}\to \mathbb{R} }=id_{\mathbb{R}}$

- Toute fonction $f:\mathbb{R} \to \mathbb{R}$ admet un opposé $-f$ et $f+(-f)=(-f)+f=\tilde{0}$

- Toute fonction $f:\mathbb{R}\to \mathbb{R}$ telle que $\forall x \in\mathbb{R},f(x)\neq0$
	sera inversible pour $\times$ et son inverse sera $\frac{1}{f}:\underset{ x\text{ }\mapsto\text{ } \frac{1}{f(x)} }{ \mathbb{R}\to \mathbb{R} }$
	$f\times \frac{1}{f}= \frac{1}{f}\times f= \tilde{1}$

- Toute bijection de $\mathbb{R} \to \mathbb{R}$ est inversible pour $\circ$
	$f \circ f^{-1}=f^{-1}\circ f=id_{\mathbb{R}}$
		où $f^{-1}$ est la réciproque de $f$

4) Partie stable par une loi
Déf $\to$
>Soit $E$ muni d'une LCI $*$
>Soit $F\in E$ une partie de $E$
> $\underline{F\text{ est stable par }*}$ si $\forall(x,y)\in F^{2},x*y\in F$

$\underline{\text{Remarque :}}$
Ainsi, si $F$ est stable par $*$
	on peut écrire $* : F\times F \to F$
	donc $*$ sera une LCI dans $F$

$\underline{\text{Exemple}} :$ $(\mathbb{C},\times)$
- $\mathbb{R}^{+} \subset \mathbb{C}$ est stable pour $\times$
	donc $\times$ est une LCI dans $\mathbb{R}^{+}$
 - $[-1,1]\subset \mathbb{C}$ est encore stable pour $\times$
	 si $|x|\leqslant 1$ et $|y|\leqslant 1$
	 alors $|xy|=|x|\times|y|\leqslant 1$

- $B_{f}(0,1)=\{z\in \mathbb{C}\text{ tq }|z|\leqslant 1\}$ est stable pour $\times$

- $\mathbb{U}=\{z\in \mathbb{C}\text{ tq }|z|=1\}$ est stable pour $\times$

Soit $n\in \mathbb{N}^{*}$
$\mathbb{U}_{n}=\{z\in \mathbb{C}\text{ tq }z^{n}=1\}$ est encore stable pour $\times$

# II - Structure de groupe 

1) Définition 

Déf $\to$
> Soit $G$ un ensemble muni d'une LCI $*$
> On dit qu $(G,*)$ est un groupe si :
> 	 -   $*$ est associative 
> 	 -   $*$ possède un neutre $e_{G}\in G$
> 	 -   tout élément de $G$ est inversible $(\underline{\underline{\text{dans G}}})$

Si $\underline{\text{de plus}}$, $*$ est commutative 
	on dit que $(G,*)$ est $\begin{cases}\text{groupe commutatif} \\ \text{groupe abélien}\end{cases}$

$\underline{\text{Remarque}} :$ Un groupe n'est jamais vide car contient au moins $\underline{\underline{\underline{\text{le neutre}}}}$

$\underline{\text{Notation}} :$
- Additive $(G,+)$ de neutre $0_{G}$
	et l'opposé de $x \in G$ sera $-x \in G$

- Multiplicative $(G,\times)$ de neutre $1_{G}$ (ou $e_{G}$)
	l'inverse de $x \in G$ sera $x^{-1}\in G$

$\underline{\text{Exemples}}$
$\begin{cases}(\mathbb{Z},+) \\ (\mathbb{Q},+) \\ (\mathbb{R},+) \\ (\mathbb{C},+)\end{cases}\}$ groupes abéliens 

$(\mathbb{N},+)$ n'est pas un groupe car $1$ n'a pas d'opposé dans $\mathbb{N}$ 

$(\mathbb{Z}/n\mathbb{Z})$ est un groupe abélien :
Soit $k \in \mathbb{Z}/n\mathbb{Z}$ avec $k \in \textlbrackdbl 0,n-1 \textrbrackdbl$
	on prend $k'=n-k\in \textlbrackdbl 1,n \textrbrackdbl$
	Alors $k+k'\equiv 0[n]$
$\underline{\text{si }k=0}$ : $0+0\equiv0[n]$ donc $0$ est l'opposé de $0$
si $k\neq 0,$ $k+(n-k)\equiv 0[n]$ donc $n-k\in \textlbrackdbl 0,n-1 \textrbrackdbl$ est l'opposé de $k$

$\underline{\text{Exemples }}$
$(\mathbb{Z},\times)$ n'est pas un groupe car $0$ n'est pas inversible
$(\mathbb{Z}\setminus \{0\},\times)$ n'est pas un groupe car $2$ n'est pas inversible
$(\{ \pm 1 \},\times)$ est un groupe abélien
$(\mathbb{Q}\setminus \{0\},\times)$ est un groupe abélien
$(\mathbb{R}\setminus \{0\},\times)$ et $(\mathbb{C} \setminus \{0\},\times)$ sont des groupes abéliens

---

$(\mathbb{U},\times)$ est un groupe abélien
	car $\forall z,z'\in \mathbb{U},|z\times x'|=|z|\times |z'|=1\times1=1$ et $| \frac{1}{z}|= \frac{1}{|z|}=1$

Soit $n \in \mathbb{N}^{*}$ et $(\mathbb{U}_{n},\times)$ est encore un groupe abélien

---

Soit $E$ un ensemble et $\mathfrak S(E)$ l'ens. des bijections de $E \to E$
$(\mathfrak S(E),\circ)$ est un groupe (non commutatif dès que $E$ admet au moins 3 éléments)

$\underline{\text{Exemple}}$ : $E=\{a,b\}$ avec $a \neq b$
$\mathfrak S(E)=\{id,\tau \}$ $id.$ $a \mapsto a$ et $\tau. a\mapsto b$
	           $\text{ }\text{ }\text{ }b\mapsto b$         $b \mapsto a$

| $\circ$ | $id$   | $\tau$ |
| ------- | ------ | ------ |
| $id$    | $id$   | $\tau$ |
| $\tau$  | $\tau$ | $id$   |
$\circ$ est commutative $\dots$

$\underline{\text{Calculs dans un groupe}}$
Soit $(G,*)$ un groupe de neutre $e_{G}$
Soit $x\in G$
On peut définir les itérés de $x$ par 
	$x^{0}=e_{G}$
	$\forall n\in \mathbb{N},x^{n+1}=x^{n}*x$
Ainsi $\underbrace{ x^{n}=x*x*\dots*x }_{ n\text{ fois} }$

Ainsi $\forall n\in\mathbb{N},x^{n}\in G$
$\underline{\text{De même}}:$ $\forall n\in\mathbb{Z}$ avec $n<0$,
	$x^{n}=(x ^{-1})^{-n}=\underbrace{ x ^{-1}*x ^{-1}*\dots* x ^{-1} }_{ |n|\text{ fois} }$

Ici, $\forall n\in \mathbb{Z},x^{n}\in G$

$\underline{\text{Remarque}}$

$\underline{\text{Notation additive }}$
- Si $(G,+)$ est un groupe de neutre $0_{G}$
	et $x \in G$
Les itérés de $x$ $n$ fois (avec $n\in \mathbb{Z}$) seront notés $\underset{ \in \mathbb{Z} }{ n }\text{ }\underset{ \in G }{ x }\in G$

>$\underline{\text{Théorème}}$
$(G,*)$ groupe et $x\in G$
$\forall(n,m)\in \mathbb{Z}^{2}$, $x^{n}*x^{m}=x^{n+m}$
$(x^{n})^{m}=x^{nm}$

En notations additives 
	$nx+mx=(n+m)x$
	$m(nx)=(nm)x$

--- 

$(G,*)$ groupe : 
- $*$ LCI : $G\times G \to G$
- $*$ associative
- $*$ possède un neutre $e_{G}\in G$
- tout élément de $G$ admet un inverse dans G

- abélien : commutatif

2) Sous-groupe
Déf $\to$
> Soit $(G,*)$ un groupe 
> Soit $H\subset G$ une partie de $G$
> $H \text{ est un }\underline{\text{sous-groupe de }G}\text{ si :}$
> $\begin{cases}H \neq \varnothing  \\ H\text{ est stable pour }* \\ H\text{ est stable par passage à l'inverse}\end{cases}$

$\underline{\text{Prop :}}$
Si $H$ est un sous groupe de $(G,*)$
alors $(H,*)$ est un groupe 

$\underline{\text{Preuve}}:$
- Comme $H$ est stable par $*$, la loi $*$ induit une LCI sur $H$
	$* : H\times H \to H$

- $*$ est associative dans $G$ or $H \subset G$ donc $*$ associative dans $H$

- Tout élément de $H$ admet un inverse dans $H$

- $H \neq \varnothing$ donc $\exists a\in H$
	alors $a^{-1}$ existe et $a^{-1}\in H$
	Donc $a*a^{-1}\in H$ donc $e_{G}\in H$

>$\underline{\text{Théorème}}:$ (Caractérisation des sous-groupes)
Soit $(G,*)$ un groupe
$H$ est un sous-groupe de $G$
ssi $\begin{cases}H \subset G \\ e_{G} \in H \\ \forall(x,y)\in H^{2},x*y^{-1}\in H\end{cases}$

$\underline{\text{Preuve}}$
$(\implies)$ OK 
$(\impliedby)$ 
- $e_{G}\in H$ donc $H\neq \varnothing$

- Soit $y \in H$ et $x = e_{G}\in H$
	donc $e_{G}*y^{-1}\in H$
	donc $y^{-1}\in H$

- Soit $x,y \in H$ 
	Alors $y^{-1}\in H$
	donc $x * (y^{-1})^{-1}\in H$
	donc $x*y\in H$ 

$\underline{\text{Exemple}}:$
- Si $(G,*)$ est un groupe 
	alors $\begin{cases}G\text{ est un sous groupe de }G \\ \{e_{G}\}\text{ est un sous-groupe de G}\end{cases}$

- $(\mathbb{Z},+)$ sous-groupe de $(\mathbb{Q},+)$, sous-groupe de $(\mathbb{R},+)$, sous groupe de $(\mathbb{C},+)$
- $(2\mathbb{Z},+)$ est un sous-groupe de $\mathbb{Z}$ car $\begin{cases}2\mathbb{Z}\subset \mathbb{Z} \\ 0\in 2\mathbb{Z} \\ \forall x,y\in 2\mathbb{Z}, x+(-y)\in {2} \mathbb{Z}\end{cases}$

/!\ ce n'est pas le cas des impairs dans $\mathbb{Z}$  /!\

---

- $(\mathbb{Q},\times)$ sous-groupe de $(\mathbb{R}^{*},\times)$, sous-groupe de $(\mathbb{C}^{*},\times)$

- $(\mathbb{U}_{n},\times)$ sous-groupe de $(\mathbb{U},\times)$, sous groupe de $(\mathbb{C}^{*},\times)$

- $\mathcal D=\{ 2^{n}|n \in \mathbb{Z} \}$
$\begin{cases}\mathcal D \subset \mathbb{Q}^{*} \\ 1= 2^{0}\in \mathcal D \\ \text{Soient }(n,m)\in \mathbb{Z}^{2},2^{n}\times(2^{m})^{-1}=2^{n-m}\in \mathcal D\end{cases}$

$\mathcal D$ est un sous-groupe de $(\mathbb{Q}^{*},\times)$

>$\underline{\text{Propriété}} :$
L'intersection de quelconque sous-groupes est un sous-groupe

$\underline{\text{Preuve}}$
Soit $(G,*)$ un groupe
Soit $(H_{i})_{i \in I}$ une famille de sous-groupes de G
Posons $H=\underset{ i \in I }{ \bigcap }H_{i}$
Montrons que $H$ est un sous groupe de $G$

- $\forall i \in I, H_{i}\subset G$ donc $\left( \underset{ i \in I }{ \bigcap }H_{i} \right)\subset G$
- $\forall i \in I, e_{G}\in H_{i}$ donc $e_{G}\in\left( \underset{ i \in I }{ \bigcap } H_{i} \right)$ 
- Soient $x,y \in H$
	Alors $\forall i\in I,\text{ }x,y\in H_{i}$
	$x*y^{-1}\in H_{i}$
	donc $x*y^{-1}\in \underset{ i \in I }{ \bigcap }H_{i}$

/!\ L'union de sous-groupes n'est pas en général un sous-groupe

$\underline{\text{Exemple}} :$
$G_{1}:(2\mathbb{Z},+)$
$G_{2} : (3\mathbb{Z},+)$
$G_{1} \cup G_{2}= 2\mathbb{Z} \cup 3\mathbb{Z}$
$2+3 \not\in 2\mathbb{Z} \cup 3\mathbb{Z}$  non stable par la loi $+$

$\underline{\text{Exercice}} :$ 
$$
\text{Soit }(G,*)\text{ un groupe }
\text{et }H,K\text{ deux sous-groupes de }G 
\text{. On montre :} H \cup K\text{ est un sous-groupe }\iff [H \subset K\text{ ou }K \subset H]
$$
$(\impliedby)$ 
- Si $H \subset K$, alors $H \cup K=K$ et $K$ est un sous-groupe
- Si $K \subset H$, alors $K \cup H=H$ et $H$ est un sous-groupe

$(\implies)$
On suppose que $H\cup K$ est un sous-groupe de $G$
$\underline{\text{1er cas}}$: si $H \subset K,$ on a gagné !
$\underline{\text{2e cas}}:$ si $H \cancel{ \subset } K,$ il faut montrer $K \subset H\dots$

Alors il existe $\begin{cases}h \in H \\ \text{et }h \not\in K\end{cases}$
Soit $x\in K$
$\begin{cases}x\in K\cup H \\ h\in K\cup H\end{cases}$  donc $x*h\in K\cup H$
Or, si $x*h\in K$
Comme $x \in K, x^{-1}\in K$
Donc $x ^{-1}*x*h\in K,$ donc $h\in K$. Absurde

Bilan $x*h\in H$
or $h\in H,$ donc $h^{-1}\in H$
donc $(x*h)*h^{-1}\in H$
donc $x \in H$
Bilan $K \subset H$

$\underline{\mathcal P\text{roduit cartésien de deux groupes}}$
Soient $(G,*)\text{ et }(H,\otimes)$ deux groupes.
On peut créer une loi afin d'obtenir une structure de groupe pour $G\times H$
$G\times H=\{ (a,b)\text{ }|\text{ }a\in G\text{ et }b\in H \}$
Posons $\cdot$ la loi suivante :
	$(G\times H)\times(G\times H)\to$
	$(a,b),(a',b')\mapsto (\underbrace{ a*a' }_{ \in G },\underbrace{ b \otimes b' }_{ \in H })$ 
	$\cdot$ est une LCI sur $G\times H$
	On pose $e=(e_{G},e_{H})\in G\times H$ et on vérifie :
	$\forall(a,b)\in G\times H$,          
	$e\cdot(a,b)=(e_{G}*a,e_{H}\otimes b)$
	$=(a,b)$
	$=(a*e_{G},b \otimes e_{H})$
	$=(a,b)\cdot e$

$e$ est le neutre pour $\cdot$

$\underline{\text{Inverse}}$
Soit $(a,b)\in G\times H$ on sait $a^{-1}\in G$ et $b^{-1}\in H$
$(a,b)\cdot(a^{-1},b^{-1})=(a*a^{-1},b\otimes b^{-1})$
$=(e_{G},e_{H})=e$
et $(a^{-1},b^{-1})\cdot(a,b)=e$ aussi (de même)
Donc tout élément de $G\times H$ admet un inverse dans $G\times H$
$((a,b))^{-1}=(a^{-1},b^{-1})$

$\underline{\text{Associativité de }\cdot}$
Soit $(a,b),(a',b'),(a'',b'')\in G\times H$
$((a,b)\cdot(a',b'))\cdot(a'',b'')$
$=(a*a',b\otimes b')\cdot(a'',b'')$
$=(\text{ }(a*a')*a'',(b\otimes b')\otimes b'')$
$=(a*(a'*a''),b\otimes (b' \otimes b''))$
$=[\dots]$
$(a,b)\cdot(\text{ }(a',b')\cdot(a'',b'')\text{ })$

$\underline{\text{Exemple}}$ 
Soit $n \in \mathbb{N}^{*}$
$G=(\mathbb{R}^{n},+)$ est un groupe abélien de neutre $(\underbrace{ 0,0,\dots,0 }_{ n\text{ fois} })=0^{n}$
$(G^{P},+)$ est un groupe abélien de neutre $(\underbrace{ 0_{n},0_{n}\dots 0_{n} }_{ p\text{ fois} })$
On retrouve les matrices de taille $(n,p)$ à coeff. réels que l'on note $\mathcal M_{n,p}(\mathbb{R})$
	 $(\mathcal M_{n,p}(\mathbb{R}),+)$ est un groupe abélien de neutre $0_{n,p}=\left(\begin{matrix}0\text{ ... }0 \\ \vdots \text{ }\text{ }\text{ }\text{ }\text{ }\text{ }\vdots \\  0\text{ ... }0\end{matrix}\right)$

>$\underline{\text{Théorème}} :$ (Sous groupes de $(\mathbb{Z},+)$) [[Colle 11]]
Les sous-groupes de $(\mathbb{Z},+)$ sont les $n\mathbb{Z}$ avec $n \in \mathbb{N}$
où $n\mathbb{Z}=\{ kn \text{ }|\text{ }k\in \mathbb{Z} \}$ multiples de n

$\underline{\text{Preuve}}$ :
* Les $n\mathbb{Z}$ sont des sous-groupes de $\mathbb{Z}$
$\begin{cases}\cdot\text{ }n\mathbb{Z}\subset \mathbb{Z} \\\cdot\text{ }0=0n\in n\mathbb{Z} \\ \cdot\text{ }\forall(k,k')\in \mathbb{Z}^{2},nk-nk'=n(k-k')\in n\mathbb{Z}\end{cases}$

- Ce sont les seuls$\dots$ \*sad music\*
Soit $H$ un sous-groupe de $(\mathbb{Z},+)$
si $H=\{ 0 \}$ alors $H=0\mathbb{Z}$ 
sinon, $\exists x\in H$ tel que $x\neq 0$
	Alors $-x \in H$ donc $|x|\in H$
Posons min$(\mathbb{N}^{*}\cap H)=n$
avec $(\mathbb{N}^{*}\cap H)$ non vide car il contient $|x|$

Montrons que $H=n\mathbb{Z}$
Par double inclusion on sait que $n \in H$
alors $\underline{\text{tous les itérés de }n\text{ sont dans }H}$
donc $\forall k \in \mathbb{Z},kn \in H$
donc $n\mathbb{Z} \subset H$

Montrons $H \subset n\mathbb{Z}$
Soit $h \in H$
Par division euclidienne de $h$ par $n$
$\exists(q,r)\in \mathbb{Z}^{2}$ tq
$h = nq+r$ avec $0\leqslant r \leqslant n-1$
Or, $r=\underset{ \in H }{ h } -\underset{ \in\text{ }n\mathbb{Z}\text{ }\subset\text{ } H }{ nq }$
comme $H$ est un sous-groupe donc $\begin{cases}r \in H \\ r\geqslant 0\end{cases}$
donc $r \in H \cap \mathbb{N}$
et $r < n=$ min$(H\cap \mathbb{N}^{*})$
DONC $r=0$ : $h=nq\in n\mathbb{Z}$

---

$\underline{\text{Rappel :}}$
$(G,*)$ groupe si $\begin{cases} *\text{ est une LCI} (*:G\times G\to G) \\ *\text{ associative} \\ e_{G}\text{ est neutre pour }* \\ \text{tout élément de }G\text{ possède un inverse dans }G\end{cases}$

$\underline{\text{Morphisme de groupes}}$
Exemple
	morphisme de groupe de $(\mathbb{R},+)$ dans $(\mathbb{R}^{*}_{+})$ ???
	$\exp:\mathbb{R}\to \mathbb{R}_{+}^{*}$
	$\exp(a+b)=\exp(a)\times \exp(b)$
	$\exp(0)=1$
	$\exp(-a)=[\exp(a)]^{-1}=\frac{1}{\exp(a)}$

$\underline{\text{Déf}}:$
Soient $(G,*)$ et $(H,\otimes)$ deux groupes
Soit $f:G\to H$
On dit que $f$ est un <u>morphisme de groupes</u>  si :
$\forall(x,y)\in G^{2}$, $f(x*y)=f(x)\otimes f(y)$  

$\boxed{\text{Prop}}:$
>Si $f:(G,*)\to(H,\otimes)$ est un morphisme de groupes et si $e_{G}\text{ et }e_{H}$ sont les éléments neutres, alors :
	$(i)$ $f(e_{G})=e_{H}$
	$(ii)$ $\forall x\in G,f(\underset{ \text{du groupe }G }{ x^{-1} })=\underset{ \text{du groupe }H }{ f(x)^{-1} }$

$\underline{\text{Preuve}}:$
$(i)$ $\underbrace{ f(e_{G}*e_{G}) }_{  }=f(e_{G})\otimes f(e_{G})$
donc   $f(e_{G})=f(e_{G})\otimes f(e_{G})$
Or $f(e_{G})\in H$ donc $f(e_{G})$ possède un inverse $f(e_{G})^{-1}$
Ainsi $f(e_{G})^{-1}\otimes f(e_{G})=f(e_{G})$
donc $e_{H}=f(e_{G})$

$(ii)$ Soit $x\in G$ et on pose $y=x^{-1}\in G$
Alors $x*x ^{-1}=e_{G}$
Donc $f(x * x ^{-1})=f(e_{G})$
Par morphisme et par $(i)$, 
	$\underbrace{ f(x) }_{ \in H } \otimes \underbrace{ f(x ^{-1}) }_{ \in H }=e_{H}$
on compose à gauche pour $f(x)^{-1}$
$\underbrace{ f(x)^{-1} \otimes f(x) }_{ =e_{H} }\otimes f(x ^{-1})=f(x) ^{-1} \otimes e_{H}$
donc $f(x ^{-1})=f(x) ^{-1}$

<u> Vocabulaire </u>
	Soit $f:(G,*)\to (H, \otimes)$ un morphisme de groupes
- Si $(H,\otimes)=(G,*),$ on dit que $f$ est un <u> endormorphisme </u>
- Si $f$ est bijective, on dit que $f$ est un <u> isomorphisme </u>
- Si $f$ est un <u> morphisme bijectif </u> et de $\underline{G\text{ dans }G}$
	On dit que $f$ est un <u> automorphisme </u>

<u>Exemple :</u>
$id_{G}:\underset{ x \mapsto x }{ (G,*) \to(G,*) }$
$id_{G}$ es un <u>morphisme</u>
$\to$ $\forall(x,y)\in G^{2}, id_{G}(x*y)=x*y$
	$=id_{G}(x)*id_{G}(y)$
$\to$ $id_{G}$ est bijective
	<u>Conclusion</u> : $\underline{id_{G}\text{ est un automorphisme de }G}$

- $\exp:(\mathbb{R},+)\to(\mathbb{R}_{+}^{*},\times)$
  est un isomorphisme de groupes
- $\ln:(\mathbb{R}_{+}^{*},\times)\to(\mathbb{R},+)$
  est un isomorphisme de groupes
- $\varphi:\underset{ \theta \mapsto e^{ i \theta }}{ \mathbb{R} \to \mathbb{U}}$
$\forall(\theta_{1}, \theta_{2})\in \mathbb{R}^{2},$
$\varphi(\theta_{1}+\theta_{2})=e^{ i(\theta_{1}+\theta_{2}) }$
$=e^{ i\theta_{1} }\times e^{ i\theta_{2} }$
$=\varphi(\theta_{1})\times \varphi(\theta_{2})$
$\varphi$ est un morphisme de $(\mathbb{R},+)$ dans $(\mathbb{U},\times)$
$\varphi$ n'est pas bijective car $\varphi$ n'est pas injective 
	car $\varphi(0)=\varphi(2\pi)=1$
$\varphi$ est surjective car $\varphi(\mathbb{R})=\{ e^{ i\theta  } |\theta \in \mathbb{R} \}=\mathbb{U}$

<u>Exemple :</u> Soit $n\in \mathbb{N}^{*}$ fixé
	<u>Rappel</u> $\mathbb{Z} /n\mathbb{Z}=\{ \dot{0},\dot{1},\dot{2},\dots,\dot{(n-1)} \}$
		où $\dot{k}= \{ x\in \mathbb{Z} |x\equiv k[n] \text{ }\}$
$(\mathbb{Z} /n\mathbb{Z},+)$ est un groupe 
Soit $\Psi:(\mathbb{Z} /n\mathbb{Z},+) \to (\mathbb{U}_{n}, \times)$
     		$k \mapsto e^{ 2ik\pi/n }$
en notant $\omega=e^{ 2ik\pi/n }$
$\Psi(\dot{0})=\omega^{0}=1$
$\Psi(\dot{1})=\omega^{1}=\omega$
$\Psi(\dot{2})=\omega^{2}$
$\forall k \in \textlbrackdbl 0,n-1 \textrbrackdbl$, $\Psi(\dot{k})=\omega^{k}$
	$\Psi(\dot{n})=\Psi(\dot{0})=\omega^{0}=1$

$\mathbb{Z} /n\mathbb{Z}$ devient $\mathbb{U}_{n}$ par $\Psi$

$\underline{\Psi\text{ est un isomorphisme de groupe}}$

$\boxed{\text{Prop}}$ : La réciproque d'un isomorphisme est un isomorphisme [[Colle 11]]

<u>Preuve</u> : Soit $f :(G,*) \to (H,\otimes)$ un morphisme de groupes <u>bijectif</u>
On a accès à la réciproque $f^{-1}:H \to G$ et on sait que $f ^{-1}$ est bijective
Soient $h_{1},h_{2}\in H$
on veut calculer $f^{-1}(h_{1} \otimes h_{2})$ et faire le lien avec $f^{-1}(h_{1})$ et $f^{-1}(h_{2})$
Posons $g_{1}=f ^{-1}(h_{1})$ et $g_{2}=f^{-1}(h_{2})$
Comme $f$ est un morphisme :
$f(g_{1} * g_{2})=f(g_{1})\otimes f(g_{2})$
Ainsi $f(g_{1}*g_{2})=h_{1} \otimes h_{2}$
On compose par $f^{-1}:$
$g_{1}*g_{2}=f^{-1}(h_{1} \otimes h_{2})$
donc $f^{-1}(h_{1})* f^{-1}(h_{2})= f^{-1}(h_{1} \otimes h_{2})$
donc $f^{-1}$ est bien un morphisme

$\boxed{\text{Prop}}$ : La composition d'un morphisme de groupes est un morphisme de groupes [[Colle 11]]

<u>Preuve</u> : Soient $f :(G,*_{G}) \to (H,*_{H})$, $g:(H,*_{H}) \to (K,*_{K})$
	deux morphismes de groupes
Posons $h=g \circ f$
on a bien $h : G \to K$
Montrons que $h$ est un morphisme, 
Soient $(x,y)\in G^{2}$
$h(x *_{G} y)=(g \circ f)(x *_{G} y)$
$= g(f(x*_{G} y))$
$=g(f(x) *_{H} f(y))$
$=g(f(x))*_{K} g(f(y))$
$=h(x)*_{K} h(y)$

<u>Remarque</u>: Soit $(G,*)$ un groupe. 
Soit $End(G)$ l'ensemble des endomorphismes de $G$
$End(G)= \{ f:G\to G |f\text{ est un morphisme} \}$
On vient de montrer que $\forall(f,g)\in End(G)^{2}$, $g \circ f \in End(G)$
donc la loi $\circ$ est une LCI dans $End(G)$
$\circ$ est associative ;  $\circ$ possède un neutre : $id_{G} \in End(G)$
Mais tout endomorphisme de $G$ n'est pas toujours bijectif$\dots$
Posons $Aut(G)=\{ f: G\to G|f\text{ est un }\underline{\text{automorphisme}} \}$
Ainsi $(Aut(G),\circ)$ est un groupe
	(C'est un sous-groupe de $\underline{( \mathfrak S(G),\circ)}$). avec $\mathfrak S(G),\circ$ le groupe des bij. de $G$ dans $G$
	
<u>Théorème</u> : Lien entre morphisme et sous-groupes [[Colle 11]]
> (1) L'image d'un sous groupe par morphisme est un sous groupe
> (2) L'image réciproque d'un sous groupe par morphisme est un sous groupe

$\exp(\mathbb{C},+) \to (\mathbb{C}^{*},\times)$
$\exp(z+z')=e^{ z }\times e^{ z' }$

<u>Preuve</u> :
Soit $f:(G,*)\to(H, \otimes)$ un morphisme entre deux groupes
(1) Soit $G'$ un sous groupe de $G$
	On pose $H'=f(G')= \{ f(x)\text{ }|\text{ }x \in G' \}$
	Montrons que $H'$ est un sous-groupe de $H$
-  $H' \subset H$ car $G' \subset G$ et $f(G) \subset H$
- <u>Neutre ?</u> $G'$ est un sous-groupe de $G$ donc $\underline{e_{G} \in G'}$
	donc $f(e_{G})\in f(G')$
	$f$ morphisme donc $e_{H} \in H'$ $(H'\text{ contient le neutre})$
- Stabilité des opérations
	Soient $h_{1},h_{2}\in H'$
	Ainsi, il existe $x,y \in G'$ tels que $\begin{cases}h_{1}=f(x) \\ h_{2}=f(y)\end{cases}$ 
	$h_{1} \otimes h_{2}\text{}^{-1}=f(x)\otimes f(y)^{-1}$
	$\underset{ f\text{ morph.} }{ = }$ $f(x)\otimes f(y^{-1})$
	$\underset{ f\text{ morph.} }{ = }$ $f(x* y^{-1})$ or $G'$ est un sous-groupe donc $x*y^{-1} \in G'$
	donc $f(x*y^{-1})\in f(G')=H'$

(2) on a toujours $f :G \to H$ morphisme
	Soit $H'$ un sous-groupe de $H$.
	L'<u>ensemble image réciproque</u> est $G'=f^{-1}(H')=\{ x\in G |f(x) \in H' \}$
		(tous les antécédents des éléments de $H$)
	Montrons que $G'$ est un sous-groupe de $G$.
- on a $G' \subset G$
- $e_{H} \in H'$ car $H'$ sous-groupe de $H$ et $f$ est un morphisme donc $f(e_{G})=e_{H}$
		donc $f(e_{G}) \in H'$
		donc $e_{G} \in f^{-1}(H')$  ￼￼
￼￼         ￼￼
		donc $e_{G} \in G'$
- Soient $x,y\in G'$
	Donc $f(x) \in H'$
	et $f(y) \in H'$
	$H'$ est un sous-groupe donc $f(x) \otimes f(y)^{-1} \in H'$
	$f$ est un morphisme donc
	$f(x) \otimes f(y)^{-1}=f(x \times y^{-1})$
	donc $f(x * y^{-1}) \in H'$
	donc $x*y^{-1} \in f^{-1}(H')$
	donc $x *y^{-1} \in G'$

	Par caractérisation, $G'$ est bien un sous-groupe

<u>Rappel</u>
Soit $f:(G,*)\to(H,\otimes)$  un morphisme de groupes

(1) Si $G'$ est un sous-groupe de $G$, alors $f(G')$ est un sous-groupe de $H$

(2) Si $H'$ est un sous-groupe de $H$ alors l'image réciproque $f^{-1}(H')$ est un sous-groupe de $G$

Où 
$f(G')=\{ f(x)\text{ }|\text{ } x \in G' \}$
$f^{-1}(H')= \{ x \in G\text{ }| \text{ }f(x)\in H'\}$

Déf $\to$ [[Colle 11]] 
> Soit $f:G\to H$ un morphisme de groupes.
> - On définit l'image de $f$ par $\mathrm{Im}(f)=f(G)=\{ f(x)|x\in G \}$. C'est un sous-groupe de $H$
> - On appelle le noyau de $f$ par $\mathrm{Ker}(f)=f^{-1}(\{ e_{H} \})=\{ x \in G|f(x)=e_{H} \}$

$\{ e_{H} \}$ est un sous-groupe de $H$, ainsi, $\mathrm{Ker}(f)$ est un sous-groupe de $G$

Théorème: Soit $f:G\to H$ un morphisme de groupes
1) $f$ est surjective $\iff$ $\mathrm{Im}(f)=H$
2) $f$ est injective $\iff$ $\mathrm{Ker}(f)=\{ e_{G} \}$

Preuves:
1) On a toujours $\mathrm{Im}(f)\subseteq H$
   De plus, $H\subseteq \mathrm{Im}(f)\iff \forall y\in H,y\in \mathrm{Im}(f)\iff \forall y\in H,\exists x \in G,y=f(x)\iff f$ est surjective
2) $\boxed{\Longrightarrow}$ Supposons $f$ injective. Comme $f$ est un morphisme, $f(e_{G})=e_{H}$ donc $e_{G}\in \mathrm{Ker}(f)$
   Soit $x \in \mathrm{Ker}(f)$, alors $f(x)=e_{H}=f(e_{G})$, donc par injectivité, $x=e_{G}$
   Donc $\mathrm{Ker}(f)=\{ e_{G} \}$
   $\boxed{\Longleftarrow}$ Supposons $\mathrm{Ker}(f)=\{ e_{G} \}$. Montrons que $f$ est injective. Soient $x,y\in G$ tels que $f(x)=f(y)$. Ici $f(y)\in H$ qui est un groupe donc $(f(y))^{-1}\in H$.
   Ainsi, $f(x)\otimes f(y)^{-1}=e_{H}$. Par morphisme, $f(x*y^{-1})=e_{H}$ donc $x*y^{-1}\in \mathrm{Ker}(f)$ donc $x*y^{-1}=e_{G}$ donc $x=y$ donc $f$ est injective

# III - Structures d'anneau
1) Définitions
Déf $\to$
> Soit $A$ un ensemble muni de deux lois de composition interne, notées $+$ et $\times$
> On dit que $(A,+,\times)$ est un anneau si:
> - $(A,+)$ est un groupe commutatif de neutre noté $0_{A}$
> - $\times$ est associative et possède un neutre noté $1_{A}$
> - $\times$ est distributive sur $+$

ATTENTION: $\times$ n'est pas forcément commutative. Si de plus $\times$ est commutative, on dira que $(A,+,\times)$ est un anneau commutatif

Notations: Si $a\in A$ et $n\in \mathbb{N}$
les itérés additifs de $a$ sont notés $na=\underbrace{ a+a+\dots+a }_{ n\text{ fois} }$ et $0a=0_{A}$
Les itérés multiplicatifs de $a$ sont notés $a^{n}=\underbrace{ a\times a\times\dots \times a }_{ n\text{ fois} }$ et $a^{0}=1_{A}$. En particulier $0_{A}^{0}=1_{A}$

Exemples:
$(\mathbb{Z},+,\times)$ est un anneau commutatif
$(\mathbb{Q},+,\times)$, $(\mathbb{R},+,\times)$, $(\mathbb{C},+,\times)$ sont des anneaux commutatifs
$(\mathbb{R}[X],+,\times)$ est un anneau commutatif
$(\mathcal{F}(X,\mathbb{R}),+,\times)$ est un anneau commutatif où $X$ est un ensemble quelconque
Ainsi $(\mathbb{R}^{\mathbb{N}},+,\times)$ est un anneau commutatif
$(\mathscr{C}^{n}(I,\mathbb{R}),+,\times)$ et $(\mathscr{C}^{\infty}(I,\mathbb{R}),+,\times)$ aussi
$(\mathscr{M}_{n}(\mathbb{R}),+,\times)$ est un anneau non commutatif

ATTENTION: $(\mathbb{R}^{\mathbb{R}},+,\circ)$ n'est pas un anneau car $(f+g)\circ h=f\circ h + g\circ h$ mais $f\circ(g+h)\neq f\circ g+ f\circ h$

2) Calculs dans un anneau
$\forall(a,b,c)\in A^{3},$
- $a\times 0_{A}=0_{A}\times a=0_{A}$
- $(-a)\times b=a\times(-b)=-(a\times b)$
- $(-a)\times(-b)=a\times b$
- $a\times(b-c)=a\times b-a\times c$
- $(a-b)\times c=a\times c-b\times c$

Remarque: Si on suppose que $1_{A}=0_{A}$, alors tous les éléments sont égaux car $\forall a\in A,a=a\times 1_{A}=a\times 0_{A}=0_{A}$

Preuves:
- $a\times 0_{A}=a\times(0_{A}+0_{A})=a\times 0_{A}+a\times 0_{A}$ on ajoute $-(a\times 0_{A})$, donc $0_{A}=a\times 0_{A}$. De même pour $0_{A}\times a$
- $(-a)\times b+a\times b=(-a+a)\times b=0_{A}\times b=0_{A}$, on ajoute $-(a\times b)$, donc $(-a)\times b=-(a\times b)$

Comme $+$ et $\times$ sont des lois associatives on peut définir pour $(a_{i})_{n\leqslant i\leqslant p}$ des éléments de $A$:
- leur somme $a_{n}+a_{n+1}+\dots+a_{p}=\sum\limits_{k=n}^{p}a_{k}$
- leur produit $a_{n}\times a_{n+1}\times\dots \times a_{p}=\prod\limits_{k=n}^{p}a_{k}$
avec la convention $0_{A}$ pour une somme vide et $1_{A}$ pour un produit vide

on a la distributivité de $\times$ sur $+$ donc:
- $b\times \sum\limits_{k=n}^{p}a_{k}=\sum\limits_{k=n}^{p}b\times a_{k}$
- $\left( \sum\limits_{k=n}^{p}a_{k} \right)\times c=\sum\limits_{k=n}^{p}(a_{k}\times c)$
- $\left( \sum\limits_{k=n}^{p}a_{k} \right)\times\left( \sum\limits_{k=m}^{q}b_{k} \right)=\sum\limits_{i=n}^{p}\sum\limits_{j=m}^{q}(a_{i}\times b_{j})$

###### ⚠ 
$\begin{align}(a+b)^{2}=(a+b)\times(a+b) \\ =a^{2}+ba+ab+b^{2}\end{align}$
Dans un anneau quelconque : 
###### ⚠ ⚠ 
$(a\times b)^{2}=(ab)(ab)$
$=abab$
###### ⚠ ⚠ ⚠
$(a+b)\times(a-b)=a^{2}+ba-ab -b^{2}$

$\boxed{Théorème}$
>Soit $(A,+,\times)$ un anneau et soient $(a,b)\in A^{2}$ qui commutent entre eux,
Alors :
$\begin{align} \forall \text{ }n\in \mathbb{N}, & (a\times b)^{n}=a^{n}b^{n}  \\  & (a+b)^{n}=\sum\limits_{k=0}^{n}\binom{n}{k}a^{k}b^{n-k} \\  & a^{n+1}-b^{n+1}=(a-b)\times \sum\limits_{k=0}^{n}a^{k}b^{n-k}=\left( \sum\limits_{k=0}^{n}a^{k}b^{n-k} \right) \times (a-b)\end{align}$

<u>Déf</u> $\to$
>Un anneau est dit $\boxed{\text{intègre}}$ si :
>	$\forall(a,b)\in A^{2}$, $ab=0_{A} \implies (a=0_{A}\text{ ou }b=0_{A})$

<u>Exemple</u>
- $\mathbb{Z},\mathbb{Q},\mathbb{R},\mathbb{C}$ sont des anneaux intègres
- Les polynomes $\mathbb{R}[X]$ sont aussi intègres
- $(\mathcal F(\mathbb{R},\mathbb{R}),+,\times)$ n'est pas intègre 
- $(\mathbb{Z}/6\mathbb{Z},+,\times)$ n'est pas intègre 
- $(\mathscr M_{2}(\mathbb{R}),+,\times)$ n'est pas intègre


3) Inversibles d'un anneau

$\boxed{Prop}$ L'ensemble des éléments inversibles $(\text{par la loi }\times)$ d'un anneau $(A,+,\times)$ forme un groupe pour la loi $\times$

<u>Notation</u> : Cet ensemble des inversibles est noté $A^{*}$ ou $\mathcal U(A)$

<u>Preuve</u> : $\begin{align}& \times \text{associative} \\  & \times\text{possède un neutre }1_{A}\text{ et }\boxed{1_{1}\text{ est inversible}}:1_{A}\times{1}_{A}=1_{A} \\  & \text{Le produit de deux inversibles est inversible car }(x \times y)^{-1}=y^{-1}\times x^{-1}\text{ donc }\times\text{ est une LCI dans}A^{*}\end{align}$
- Si $x$ est inversible, $x ^{-1}\in A$ et $(x ^{-1})^{-1}=x$ donc $x$ est inversible $x ^{-1} \in A^{*}$

<u>Exemples</u> Le groupe des inversibles de l'anneau :
- $(\mathbb{Z},+,\times)$ est $(\{ \pm1 \},\times)$
- $(\mathbb{Q},+,\times)$ est $(\mathbb{Q} \setminus\{ 0 \},\times)$
- $(\mathbb{R},+,\times)$ est $(\mathbb{R} \setminus\{ 0 \},\times)$
- $(\mathbb{C},+,\times)$ est $(\mathbb{C} \setminus\{ 0 \},\times)$
- $(\mathbb{Z}/6\mathbb{Z},+,\times)$ est $(\{ \dot{1},\dot{5} \},\times)=(\{ \dot{1},\dot{(-1)} \},\times)$ 
---
- $(\mathbb{Z} / 5\mathbb{Z},+,\times)$ est $(\{ \dot{1},\dot{2},\dot{3},\dot{4} \},\times)=( \mathbb{Z} / 5\mathbb{Z} \setminus \{ \dot{0} \},\times)$
- $(\mathbb{R}[X],+,\times)$     (polynômes)    . Les inversibles sont $\mathbb{R}^{*}=\mathbb{R} \setminus \{ 0 \}$ (les poly. constants et non nuls)
- $(\mathscr M_{n}(\mathbb{R}),+,\times)$ le groupe des inversibles est l'ensemble des matrices inversibles, noté $GL_{n}(\mathbb{R})$ 
	de neutre $I_{n}:$ matrice identité $\begin{pmatrix}1 & \dots &  \dots& 0 \\ 0 & 1 &  \dots  & 0 \\ \vdots &  & &  \vdots \\ 0 & \dots &\dots &  1\end{pmatrix}$

4) Sous-anneau

Soit $(A,+,\times)$ un anneau.
L'ensemble $B$ est un $\underline{\text{sous-anneau de }A}$ si
	$B \subset A$
	$1_{A}\in B$
	$\forall(a,b)\in B^{2}$ $\begin{cases}a-b\in B \\ et \\ a\times b\in B\end{cases}$

<span style="color:yellow"> Remarque</span> : <u>Un sous-anneau est un anneau</u>
	$\begin{align}\text{car, } & +:B\times B\to B \\  & \times:B\times B\to B\end{align}$
	sont bien des LCI
	
$(B,+)$ est un sous-anneau de $(A,+)$
$1_{A}\in B$ (neutre)
$\times$ associative, et distributive sur $+$

<u>Exemple</u> : 
- $\mathbb{Z}$ est un sous-anneau de $\mathbb{R}$
- On pose $\mathbb{Z}[\sqrt{ 2 }]=\{ a+b\sqrt{ 2 } \text{ }|\text{ } (a,b)\in\mathbb{Z}^{2}\}$
	On montre que $(\mathbb{Z}[\sqrt{ 2 }],+,\times)$ est un anneau
		$*$ $\mathbb{Z}[\sqrt{ 2 }]\subset \mathbb{R}$
		$*$ $1=1+0\sqrt{ 2 }\in \mathbb{Z}[\sqrt{ 2 }]$
		$*$ Soient $x,y \in \mathbb{Z}[\sqrt{ 2 }]$.
		 Il existe $(a,b,c,d)\in \mathbb{Z}^{4}$ tel que $\begin{cases}x=a+b\sqrt{ 2 } \\ y=c+d \sqrt{ 2 }\end{cases}$
		 Alors $x-y= \underbrace{ (a-c) }_{ \in Z } + \sqrt{ 2 }\times \underbrace{ (b-d) }_{ \in Z }$ donc $\boxed{x-y\in \mathbb{Z}[\sqrt{ 2 }]}$
		 $\begin{align}\text{De plus, }x \times y & = (a+b \sqrt{ 2 })\times(c+d \sqrt{ 2 }) \\  & =\underbrace{ (ac+2bd) }_{ \in \mathbb{Z} }+\sqrt{ 2 }\underbrace{ (bc+ad) }_{ \in \mathbb{Z} }\end{align}$
		donc $\boxed{xy \in \mathbb{Z}[\sqrt{ 2 }]}$

$\underline{\text{Inversibles de }\mathbb{Z}(\sqrt{ 2 })}$ ??
$(a+b \sqrt{ 2 })\times\text{ }?=1$
Or, $(a+b \sqrt{ 2 })\times(a - b \sqrt{ 2 })=a^{2}+2b ^{2}$
$(a+b \sqrt{  2 })\times\left(  \underbrace{ \frac{a}{a^{2}-2b ^{2}} }_{ \in \mathbb{Q} }-\underbrace{ \frac{b}{a^{2}-2b ^{2}} }_{ \in \mathbb{Q} } \sqrt{ 2 }\right)=1$

<u>Exemple</u> $3 \pm 2 \sqrt{ 2 }$ sont inversibles car $3^{2}=2(\pm 2)^{2}=1$
$\frac{1}{3+2\sqrt{ 2 }}= \frac{3-2\sqrt{ 2 }}{1}= 3-2\sqrt{ 2 }$

Soit $(a,b)\in \mathbb{Z}^{2}.$ Si $a^{2}-2b ^{2}= \pm1$
	Alors $(a+b \sqrt{ 2 })\times(a-b \sqrt{ 2 })= \pm 1$
	donc $a+b \sqrt{ 2 }$ est inversible dans $\mathbb{Z}[\sqrt{ 2 }]$ et son inverse vaut $\pm (a-b \sqrt{ 2 })$

si $a^{2} - 2b ^{2}=1$ alors $\frac{1}{a+b \sqrt{ 2 }}=a-b \sqrt{ 2 }\in \mathbb{Z}[\sqrt{ 2 }]$
si $a^{2} - 2b ^{2}=-1$ alors $\frac{1}{a+b \sqrt{ 2 }}=-a+b \sqrt{ 2 }\in \mathbb{Z}[\sqrt{ 2 }]$

---

Si $x=(a+b \sqrt{ 2 })$ est inversible dans $\mathbb{Z}[\sqrt{ 2 }]$,
alors, il existe $y \in \mathbb{Z}[\sqrt{ 2 }]$ tq $xy = 1$
	<u>Astuce</u> On pose $\begin{align}N: & \text{ }\text{ }\mathbb{Z}[\sqrt{ 2 }]\to \mathbb{Z} \\  & a+b \sqrt{ 2 } \mapsto a^{2}-2 b ^{2}\end{align}$

 $\begin{align}\text{On introduit }c: & \text{ }\mathbb{Z}[\sqrt{ 2 }]\to \mathbb{Z}[\sqrt{ 2 }] \\  & a+b \sqrt{ 2 }\mapsto a-b \sqrt{ 2 }\end{align}$
 On a $\forall x \in \mathbb{Z}[\sqrt{ 2 }]$, $c(c(x))=x$ donc $c \circ c=id$
	 c'est une involution donc une bijection

De plus, si $\begin{cases}x=a+b\sqrt{ 2 } \\ y=c+d \sqrt{ 2 }\end{cases}$
$\begin{align}c(x+y) & =c((a+c)+\sqrt{ 2 }(b+d)) \\  & =a+c-\sqrt{ 2 }(b+d) \\  & =c(x)+c(y)\end{align}$

$c$ est aussi un morphisme de groupes $(\mathbb{Z}[\sqrt{ 2 }],+)$

$\begin{align}\text{De même, }c(x+y) & =c(ac +2bd+\sqrt{ 2 }(ad+bc)) \\  & =ac+2bd-\sqrt{ 2 }(ad+bc)\end{align}$

$\begin{align}\text{ De plus, } c(x)\times c(y) & =(a-b \sqrt{ 2 })\times (c-d \sqrt{ 2 }) \\  & =ac+2bd- \sqrt{ 2 }(bc+ad) \\  & \text{donc }c(xy)=c(x)c(y)\end{align}$
et $c(1)=1$
$c$ est ainsi un automorphisme de l'anneau $\mathbb{Z}[\sqrt{ 2 }]$
Revenons à $\begin{align}N: & \text{ }\text{ }\mathbb{Z}[\sqrt{ 2 }]\to \mathbb{Z} \\  & a+b \sqrt{ 2 } \mapsto a^{2}-2 b ^{2}\end{align}$
$\forall x \in\mathbb{Z}[\sqrt{ 2 }],N(x)=x \times c(x)$
$\forall(x,y)\in \mathbb{Z}[\sqrt{ 2 }]^{2}, \boxed{N(xy)}=xy \times c (xy)$
$=xy c(x) c(y)$
$=xc(x) \times yc(y)=\boxed{N(x)N(y)}$

$N$ morphisme de $\underset{ U(\mathbb{Z}[\sqrt{ 2 }]) }{ \underline{\text{groupe des inversibles de }\mathbb{Z}[\sqrt{ 2 }]} }$
dans $(\mathbb{Z} \setminus \{ 0 \},\times)$

Le groupe des inversibles de $\mathbb{Z}[\sqrt{ 2 }]$ est 
	$\{ a+b\sqrt{ 2 } \text{ }|\text{ }(a,b)\in \mathbb{Z}^{2}\text{ et }a^{2}-2b^{2}= \pm1 \}$

<u>Déf</u> $\to$
>Soit $(A,+_{A},\times_{A})$ et $(B,+_{B},\times_{B})$ deux anneaux
>$f$ est un morphisme d'anneaux entre $A\text{ et }B$ si :
>$\begin{cases}f:A\to B \\ f(1_A)=1_{B} \\ \forall(x,y)\in A^{2}, & f(x +_{A}\text{ }y)=f(x)+_{B}\text{ }f(y) \\ & f(x \times_{A}\text{ }y)=f(x) \times_{B}\text{ }f(y)  \end{cases}$

Comme $0_{A}+0_{A}=0_{A}$,
$f(0_{A})=f(0_{A}+0_{A})=f(0_{A})+f(0_{A})$ et $f(0_{A})$ admet un opposé, 
donc $\boxed{0_{B}=f(0_{A})}$

---

# IV - Corps

<u>Déf</u> $\to$
>Un <u>corps</u> $(K,+,\times)$ est un anneau commutatif où
>tout élément non nul (différent de $0_{K}$) est inversible (pour la loi $\times$)

<span style="color:yellow"> Remarque </span> : Un anneau $(A,+,\times)$ avec $\times$<u> commutative</u> est un corps si le groupe des inversibles est $A \setminus \{ 0_{A} \}$
 
<u>Exemples</u> $\mathbb{Q},\mathbb{R},\mathbb{C}$ sont des <u>corps</u>
$\mathbb{Z} /p\mathbb{Z}$ est un corps <u>si</u> $p$ est premier

<u>Exemple</u> 
$\mathbb{Q}[\sqrt{ 2 }]= \{ a+b \sqrt{ 2 } \text{ }|\text{ }a,b \in \mathbb{Q} \}$
$\mathbb{Q}[\sqrt{ 2 }]$ est un sous-corps de $\mathbb{R}$
- $0,1 \in \mathbb{Q}[\sqrt{ 2 }]$
- Si $x=a+b\sqrt{ 2 }\text{ et }y=c+d\sqrt{ 2 }\in \mathbb{Q}[\sqrt{ 2 }]$ 
	alors $x-y=\underbrace{ (a-c) }_{ \in \mathbb{Q} }+\sqrt{ 2 }\underbrace{ (b+d) }_{ \in \mathbb{Q} }$
	donc $\boxed{x-y\in \mathbb{Q}[\sqrt{ 2 }]}$

<u>Si de plus,</u> $x\neq 0$
	$\frac{x}{y}=(a+b\sqrt{ 2 })\times \frac{1}{c+d\sqrt{ 2 }}= \frac{(a+b\sqrt{ 2 })\times(c-d\sqrt{ 2 })}{c^{2}-2d^{2}}$
	$=\underset{ \in \mathbb{Q} }{ \boxed{\frac{ac-2bd}{c^{2}-2d^{2}}} }\text{ }+\sqrt{ 2 } \underset{ \in \mathbb{Q} }{ \boxed{\frac{bc-ad}{c^{2}-2d^{2}}} }$
	donc $\boxed{\frac{x}{y}\in \mathbb{Q}[\sqrt{ 2 }]}$

<span style="color:yellow"> Remarque </span>: $c^{2}-2d^{2}=0$
$\iff c^{2}=2d^{2}$
$\iff \begin{cases}d=c=0 \\ ou \\ \frac{c}{d}=\pm \sqrt{ 2 }\end{cases}$
$\iff c=d=0$
