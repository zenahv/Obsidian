---
tags:
  - Math
---
## I) ensembles
1) Introduction
Définition: Un ensemble est une collection d'objets appelé éléments
On note $x \in E$ pour signifier que l'ensemble $E$ contient l'élément $x$, et l'élément $x$ appartient à l'ensemble $E$

Définition: L'ensemble ne contenant aucun élément est appelé l'ensemble vide et est noté $\emptyset$

Représentation usuelle:
- Par extension (explicite):
  On énumère les éléments de l'ensemble
  $E=\{ 0,1,2,3 \}$
- Par compréhension (implicite):
  On décrit l'ensemble via une propriété caractérisant les éléments de l'ensemble
  $F=\{ x \in E|P(x) \}$

Exemple: Soit $P$ l'ensemble des entiers relatifs pairs$P=\{ n\in Z|n\text{ est pair} \}=\left\{  n\in \mathbb{Z}| \frac{n}{2}\in \mathbb{Z}  \right\}=\{ n\in \mathbb{Z}|\exists k\in \mathbb{Z},n=2k \}=\{ 2k|k\in \mathbb{Z} \}=2\mathbb{Z}$
Exemples:
- Ensembles de nombres 
  $\mathbb{N}$: ensemble des entiers naturels
  $\mathbb{Z}$: ensemble des entiers relatifs ($\mathbb{Z}=\mathbb{N}\cup(-\mathbb{N})$)
  $\mathbb{D}$: ensemble des nombres décimaux $D=\left\{  \frac{m}{10^{d}}|m\in \mathbb{Z},d\in \mathbb{N}  \right\}$
  $\mathbb{Q}$: ensemble des rationnels $\mathbb{Q}=\left\{  \frac{a}{b}|a\in \mathbb{Z},b\in \mathbb{N}^{*}  \right\}$
  $\mathbb{R}$: ensemble des réels
  $\mathbb{C}$: ensemble des complexes $\mathbb{C}=\{ a+ib|(a,b)\in \mathbb{R},i^{2}=-1 \}$

Soient $(a,b)\in \mathbb{R}$ avec $a\leq b$, on définit le segment $[a,b]$ par $[a,b]=\{ x \in \mathbb{R}|a\leq x\leq b \}$
Soient $(a,b)\in \mathbb{Z},a\leq b$
On définit $\textlbrackdbl a,b \textrbrackdbl=\{ n\in \mathbb{Z}|a\leq n\leq b \}$

Définition: Soient $E,F$ deux ensembles. On dit $E\subset F$ lorsque $\forall x \in E, x \in F$
On dit que $E$ est un sous-ensemble de $F$. On dit aussi $E$ est une partie de $F$

Exemple: Pour tout ensemble $E$, on a:
- $E\subset E$ 
- $\emptyset \subset E$

- $\mathbb{N}\subset \mathbb{Z}\subset \mathbb{D}\subset \mathbb{Q}\subset \mathbb{R}\subset \mathbb{C}\subset \mathbb{H}\subset \mathbb{O}\subset \mathbb{S}$

Pour montrer $E\not\subset F$
on doit montrer $\exists x \in E,x\not\in F$
Il faut trouver un contre-exemple

Définition: Deux ensembles $E$ et $F$ sont dits égaux si $E\subset F\land F\subset E$. On note $E=F$ dans ce cas

Méthode: On procède par double-inclusion pour prouver $E=F$

Propriété: $E\subset F$ et $F\subset G$, alors $E\subset G$
Preuve: Supposons $E\subset F$ et $F\subset G$
On veut montrer $E\subset G$.
Soit $x \in E$
Or, $E\subset F\implies x \in F$
Or, $F\subset G\implies x \in G$

Ainsi, $\forall x \in E,x \in G$

Remarque: $x \in E\iff \{ x \}\subset E$

2) Opérations ensemblistes
Définition: Soient $E,F$ deux ensembles,
- L'union des ensembles $E$ et $F est notée $E\cup F$ et est défini par $x \in E\cup F\iff(x \in E\lor x \in F)$
- L'intersection des ensembles $E$ et $F$ est noté $E\cap F$ et est définie par $x \in E\cap F\iff(x \in E\land x \in F)$
- La différence ensembliste $E\setminus F$ est définie par $x \in E\setminus F\iff (x \in E\land x \not\in F)$

Remarque: $E=(E\setminus F)\cup(E\cap F)$

- Soit $A\subset E$, on définit le complémentaire de $A$ par $E\setminus A$
  Si il n'y a pas d’ambiguïté sur $E$, on peut noter plus simplement $\bar{A}$

Remarque: $\forall A\subset E,A\cup \bar{A}=E\land A\cap \bar{A}=\emptyset$

Propriété: Pour tout $A\subset E$, $A\cap E=A$

Propriété: $\forall A\subset E,\bar{\bar{A}}=A$

3) Ensemble des parties
Définition: Soit $E$ un ensemble. L'ensemble de toutes les parties de $E$ est noté $\mathcal{P}(E)$. $\mathcal P(E)$ vérifie $\forall A\subset E,A\in\mathcal P(E)$

Exemple: $\emptyset \in\mathcal P(E)\land E\in\mathcal P(E)$

Exemple: $\mathcal P(\{ 0,1,2 \})=\{ \emptyset,\{ 0 \},\{ 1 \},\{ 2 \},\{ 0,1 \},\{ 0,2 \},\{ 1,2 \},\{ 0,1,2 \} \}$

4) Ensemble et quantificateurs
Remarque: $\cap$ et $\cup$ sont associatives et commutatives

Définition: Soit $(A_{i})_{i\in I}$ une famille de parties de $E$
On note $\bigcup\limits_{i\in I}A_{i}$ la réunion de tous les $A_{i}$
Ainsi, $\forall x \in E,x \in\bigcup\limits_{i\in I}A_{i}\iff \exists i_{0}\in I,x \in A_{i_{0}}$

On note $\bigcap\limits_{i\in I}A_{i}$ l'intersection de tous les $A_{i}$
Ainsi, $\forall x \in E,x \in\bigcap\limits_{i\in I}A_{i}\iff \forall i\in I,x \in A_{i}$

## II - Applications

Objectif: abstraire les fonctions usuelles $f:A\to \mathbb{R}$ où $A\subset \mathbb{R}$ en transformations $f:E\to F$ où $E,F$ sont des ensembles quelconques

1) Définition
a) Vocabulaire
Définition: Une application d'un ensemble $E$ dans un ensemble $F$ est une correspondance entre $E$ et $F$ telle que à tout élément $x \in E$, on lui associe un unique élément $y\in F$
$E$ est appelé ensemble de départ et $F$ ensemble d'arrivée.

Comme on a la propriété suivante: $\forall x\in E,\exists!y\in F,x\mapsto y$
on appelle pour chaque $x \in E$, $y$ est l'image de $x$ par l'application. En notant $f:E\to F$ cette application on écrit $y=f(x)$ l'unique image de $x$

Définition: Soit $f:E\to F$ une application de $E$ dans $F$, son graphe est
$\Gamma_{f}=\{ (x,y)\in E\times F|y=f(x) \}$
Cas particulier: si $E=[a,b]$ et $F=\mathbb{R}$ et $f:[a,b]\to \mathbb{R}$, on retrouve la définition de la courbe représentative de $f$

L'ensemble de toutes les applications de $E$ dans $F$ est noté $\mathcal{F}(E,F)$ ou $F^E$

ATTENTION: Une application $f$ n'est pas juste la donnée de "$f(x)$", mais se définit par:
- Son ensemble de départ
- Son ensemble d'arrivée
- La façon de transformer tout $x \in E$ en $f(x)\in F$

Définition: Soient $f,g\in F^E$
On dira que $f=g\iff \forall x \in E,f(x)=g(x)$

Exemples:
- Application identité de $E$:
  $id_{E}:\begin{cases}E\to E\\x\mapsto x\end{cases}$
- $f:\begin{cases}\mathbb{R}\to \mathbb{R}\\x\mapsto \sqrt{ x^{2}-x+1 }\end{cases}$
- Soit $E$ un ensemble et $A\subset E$
  $g:\begin{cases}\mathcal{P}(E)\to\mathcal P(E)\\X\mapsto X\cap A\end{cases}$

Définition: Soit $E$ un ensemble quelconque et $A\subset E$ 
On définit $\mathbb{1}_{A}:\begin{cases}E\to \{ 0,1 \}\\x\mapsto \begin{cases}1\iff x \in A\\0\iff x\not\in A\end{cases}\end{cases}$

Exemple: Les suites réelles sont les applications de $\mathbb{N}$ dans $\mathbb{R}$
$u:\begin{cases}\mathbb{N}\to \mathbb{R}\\n\mapsto u_{n}\end{cases}$
La suite $u$ est notée $(u_{n})_{n\in \mathbb{N}}\in \mathbb{R}^{\mathbb{N}}$

L'ensemble des suites à valeurs dans $E$ est $E^{\mathbb{N}}$

Exemple: Famille indexée par un ensemble d'indices $I$. Une famille d'éléments de $E$ indexée par $I$ est une application de $I$ dans $E$
$I\to E$
$i\mapsto x_{i}$

b) Restriction et prolongement
Définition: Soit $f:E\to F$ et $A\subset E$
La restriction de $f$ à $A$ est l'application $g:\begin{cases}A\to F\\x\mapsto f(x)\end{cases}$
On note souvent $g=f_{|_{A}}$

Définition: Soit $f:E\to F$ et un ensemble $E'$ tel que $E'\supset E$
on dira que $\tilde{f}:E'\to F$ est un prolongement de $f$ sur $E'$ si $\forall x \in E,\tilde{f}(x)=f(x)$

2) Injectivité, surjectivité et bijectivité
a) Injectivité
Définition: Soit $f:E\to F$ une application.
On dit que $f$ est injective si: $\forall (a,b)\in E^{2},f(a)=f(b)\implies a=b$

b) Surjectivité
Définition: Soit $f:E\to F$ une application.
On dit que $f$ est injective si: $\forall y\in F,\exists x\in E,f(x)=y$

c) Bijectivité
Définition: Soit $f:E\to F$ une application.
On dit que $f$ est bijective si; $\forall y\in F,\exists!x \in E,f(x)=y$

Exemple: Bijection entre $\mathbb{N}$ et $\mathbb{Z}$
On pose $\varphi:\begin{cases}\mathbb{N}\to \mathbb{Z}\\n\mapsto \begin{cases} \frac{n}{2} & \iff \exists k\in \mathbb{N},n=2k\\-\frac{n+1}{2}&\iff \exists k\in \mathbb{N},n=2k+1\end{cases}\end{cases}$
Vérifions que $\varphi$ est bijective
- Injectivité ?
  Soient $(a,b)\in \mathbb{N}^{2}$ tels que $\varphi(a)=\varphi(b)$
  Remarquons: $\forall x \in \mathbb{N},\begin{cases}\varphi(x)\geq 0\iff \exists k\in \mathbb{N},x=2k\\ \varphi(x)<0\iff \exists k\in \mathbb{N},x=2k+1\end{cases}$
  Or, $\varphi(a)=\varphi(b)$ dont de même signe, donc $a$ et $b$ sont de même parité
    - Si $a$ et $b$ pairs: $\frac{a}{2}=\frac{b}{2}\implies a=b$
    - Si $a$ et $b$ impairs: $-\frac{a+1}{2}=-\frac{b+1}{2}\implies a=b$
  $\varphi$ est donc bien injective
- Surjectivité ?
  Soit $y\in \mathbb{Z}$
	- Si $y\geq 0$ alors $2y\in \mathbb{N}$ pair donc $\varphi(2y)=\frac{2y}{2}=y$
	  Donc $2y$ est un antécédent dans $\mathbb{N}$ de $y$
	- Si $y<0$, cherchons $x \in \mathbb{N}$ tel que $y=\varphi(x)$. Or, $y<0$ donc il faut chercher $x$ impair
	  $y=\varphi(x)\implies y=-\frac{x+1}{2}\implies-2y=x+1\implies x=-2y-1$
	  Or $y\in \mathbb{Z},y<0$ donc $-2y>0$ et $-2y\geq 1$ donc $-2y-1\geq 0$
	  Donc $-2y-1\in \mathbb{N}$ est un antécédent de $y$
- Donc $\forall y\in \mathbb{Z},\exists! x \in \mathbb{N},y=\varphi(x)$ donc $\varphi$ est une bijection entre $\mathbb{N}$ et $\mathbb{Z}$

3) Composition de fonctions
Définition: Soit $f:E\to F$ et $g:F\to G$. On définit la composée de $g$ par $f$, notée $g \circ f$, l'application $g \circ f:\begin{cases}E\to G\\x\mapsto g(f(x))\end{cases}$

Ainsi, $\forall x \in E,(g\circ f)(x)=g(f(x))$

ATTENTION: $\circ$ est une loi non-commutative. $f\circ g$ peut ne pas être défini.

Exemple: Même si $g\circ f$ et $f\circ g$ ont du sens, ils sont généralement différents
SI $f:E\to F$ et $g:F\to E$
alors $g\circ f:E\to E$ et $f\circ g:F\to F$
Ici, $g\circ f$ et $f\circ g$ ne sont pas comparables

Si $f:E\to E$ et $g:E\to E$, alors $(f\circ g),(g\circ f)\in E^E$
Exemple: $f:\begin{cases}\mathbb{R}\to \mathbb{R}\\x\mapsto x^{2}\end{cases}$ et $g:\begin{cases}\mathbb{R}\to \mathbb{R}\\x\mapsto x+1\end{cases}$
Alors $g\circ f:\begin{cases}\mathbb{R}\to \mathbb{R}\\x\mapsto x^{2}+1\end{cases}$ et $f\circ g:\begin{cases}\mathbb{R}\to \mathbb{R}\\x\mapsto(x+1)^{2}\end{cases}$

Propriété: Soit $f:E\to F$, $g:F\to G$ et $h:G\to H$
$(h\circ g)\circ f=h\circ(g\circ f)$
Ainsi, on écrira $h\circ g \circ f$ sans ambiguïté
Preuve: $h\circ g:F\to H$ et $f:E\to F$ donc $(h\circ g)\circ f:E\to H$
$g\circ f:E\to G$ et $h:G\to H$ donc $h\circ(g\circ f):E\to H$
De plus, $\forall x\in E,((h\circ g)\circ f)(x)=(h\circ g)(f(x))=h(g(f(x)))=h((g\circ f)(x))=(h\circ(g\circ f))(x)$Donc $(h\circ g)\circ f=h\circ(g\circ f)$

Neutre à gauche/à Droite
Soit $f:E\to F$
$f\circ id_{E}=f$ et $id_{F}\circ f=f$


Théorèmes: 
- La composée d'applications injectives est injective
- La composée d'applications surjectives est surjective
- La composée d'applications bijectives est bijective

Preuves: Soient $f:E\to F$ et $g:F\to G$
- Supposons $f$ et $g$ injectives
  Montrons que $g\circ f$ est injective
  Soient $a,b\in E$ tels que $(g\circ f)(a)=(g\circ f)(b)$
  On a donc $g(f(a))=g(f(b))$
  Comme $g$ est injective, $f(a)=f(b)$
  Comme $f$ est injective, $a=b$
  Conclusion: $\forall(a,b)\in E^{2},\left[ (g\circ f)(a)=(g\circ f)(b)\implies a=b \right]$
- Supposons $f$ et $g$ surjectives
  Montrons que $g\circ f$ est surjective
  Or, $g\circ f:E\to G$
  Soit $z\in G$
  Comme $g:F\to G$ est surjective, $\exists y\in F,z=g(y)$
  Comme $f:E\to F$ est surjective, $\exists x \in E,y=f(x)$
  Donc $z=g(f(x))=(g\circ f)(x)$
  Conclusion: $\forall z\in G,\exists x \in E,(g\circ f)(x)=z$
- Surjectivité et injectivité Q.E.D.

Théorèmes: Soient $f:E\to F$ et $g:F\to G$
- Si $g\circ f$ est injective, alors $f$ est injective
- SI $g\circ f$ est surjective, alors $g$ est surjective

Preuves:
- Si $g\circ f$ est injective
  Montrons $f$ injective
  Soient $a,b\in E,f(a)=f(b)$
  Alors $g(f(a))=g(f(b))$
  Donc $(g\circ f)(a)=(g\circ f)(b)$
  Par injectivité de $g\circ f,a=b$
- Si $g\circ f$ est surjective
  Montrons $g$ surjective
  Soit $z\in G$
  Par surjectivité de $g\circ f:E\to G,\exists x\in E,(g\circ f)(x)=z$, alors $g(f(x))=z$
  Or $f(x)\in F$
  $f(x)$ est bien un antécédent de $z$ par $g$

4) Application réciproque
Définition: Soit $f:E\to F$ bijective. Ainsi, on peut définir l'application réciproque $f^{-1}:F\to E$ qui à tout élément $y\in F$ lui associe son unique antécédent $x\in E$ par $f$
$\forall x\in E,\forall y\in F,y=f(x)\iff f^{-1}(y)=x$

Théorème: Soit $f:E\to F$ bijective, alors $f^{-1}:F\to E$ est bijective et $f\circ f^{-1}=id_{F}$, $f^{-1}\circ f=id_{E}$, et $(f^{-1})^{-1}=f$

Preuves: $f:E\to F$ bijective et $f^{-1}:F\to E$, or $\forall x \in E,\forall y\in F,y=f(x)\iff f^{-1}(y)=x$ ainsi 
$\forall y\in F,f(f^{-1}(y))$: $\forall y\in F,(f\circ f^{-1})(y)=id_{F}(y)$
$\forall x \in E,f^{-1}(f(x))=x$: $\forall x \in E,(f^{-1}\circ f)(x)=id_{E}(x)$
$f^{-1}(y)=x\implies f(x)=(f^{-1})^{-1}(y)$

Propriété: Soient $f:E\to F$ et $g:F\to E$
Si $f\circ g=id_{F}$ et $g\circ f=id_{E}$, alors $f$ et $g$ sont toutes les deux bijectives et réciproques l'une de l'autre

Preuve: $id$ est bijective donc $f\circ g$ est bijective donc surjective donc $f$ est surjective or $g\circ f=id$ est donc bijective donc injective donc $f$ est injective
Ainsi $f$ est bijective. Introduisons sa réciproque $f^{-1}$. Comme $f\circ g=id_{F}$, alors $f^{-1}\circ f \circ g=f^{-1}\circ id_{F}$
$id_{E}\circ g=f^{-1}$ donc $g=f^{-1}$

Corollaire: Si $f:E\to F$ et $g:F\to G$ sont deux bijections, alors $g\circ f$ est bijective et $(g\circ f)^{-1}=f^{-1}\circ g^{-1}$

Exemple de bijection
Définition: $f:E\to E$ est une involution si $f\circ f=id_{E}$
Propriété: SI $f$ est une involution, $f$ est bijective et $f^{-1}=f$

5) Image directe et image réciproque
Définition: Soit $f:E\to F$ une application
Soit $A\subset E$ une partie de $E$
L'ensemble image directe de $A$ par $f$ est $f(A)\overset{ \text{def} }{ = }\{ f(a)|a\in A \}$

Caractérisation de la surjectivité: $f:E\to F$ est surjective si et seulement si $f(E)=F$

On a toujours $f(E)\subset F$

Remarque: Si $f:E\to F$ est une application quelconque
alors $\hat{f}:\begin{cases}E\to f(E)\\x\mapsto f(x)\end{cases}$ est surjective

Question: Comment décrire un ensemble d'antécédents
Soit $y\in F$ et $f:E\to F$
on veut décrire les antécédents de $y:\{ x\in E|f(x)=y \}=\{ x \in E|f(x)\in \{ y \} \}\underset{ \text{not.} }{ = } f^{-1}(\{ y \})$
Ainsi, $f(x)\in \{ y \}\iff x \in f^{-1}(\{ y \})$

Définition: Soit $f:E\to F$ et $B\subset F$
On définit l'image réciproque de $B$ par $f$ comme l'ensemble des antécédents des éléments de $B$ par $f$
$f^{-1}(B)\overset{ \text{déf.} }{ = }\{ x \in E|f(x)\in B \}$
Ainsi on écrira $f(x)\in B\iff x \in f^{-1}(B)$

6) Fonction indicatrice
Définition: Soit $E$ un ensemble et $A\subset E$
On appelle fonction indicatrice de $A$ nommée $\mathbb{1}_{A}$ l'application $\mathbb{1}_{A}:x\mapsto \begin{cases}1\iff x\in A\\0\iff x\not\in A\end{cases}$
Ainsi, $\forall x \in E,x\in A\iff\mathbb{1}_{A}(x)=1$

Propriétés: Soient $A,B\subset E$
- $A=B\iff\mathbb{1}_{A}=\mathbb{1}_{B}$
- $\mathbb{1}_{A\cap B}=\mathbb{1}_{A}\times\mathbb{1}_{B}$
- $\mathbb{1}_{E\setminus A}=1-\mathbb{1}_{A}$

Remarque: $\mathbb{1}_{A}$ représente parfaitement $A$
