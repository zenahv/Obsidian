---
tags:
  - Math
---
## Partie A: Relations binaires
### I) Définitions
Définition: Soit $E$ une ensemble. On appelle relation binaire $\mathcal{R}$ sur $E$ tout sous-ensemble de $E\times E$
Si le couple $(x,y)\in E\times E$ fait partie de ce sous-ensemble on écrira $x\mathcal R y$ et on lira $x$ est en relation avec $y$

Définition: Soit $\mathcal R$ une relation binaire sur $E$
(1) $\mathcal R$ est dite réflexive si $\forall x\in E,x\mathcal Rx$
(2) $\mathcal R$ est dite transitive si $\forall (x,y,z)\in E^{3},(x\mathcal Ry\land y\mathcal Rz)\implies x\mathcal Rz$
(3) $\mathcal R$ est dite symétrique si $\forall(x,y)\in E^{2},x\mathcal Ry\implies y\mathcal Rx$
(4) $\mathcal R$ est dite antisymétrique si $\forall(x,y)\in E^{2},(x\mathcal Ry\land y\mathcal Rx)\implies x=y$

### II) Relations d'équivalence
Définition: $\mathcal R$ est une relation d'équivalence sur $E$ si elle vérifie (1), (2), et (3)

Définition: Soit $\mathcal R$ une relation d'équivalence sur $E$. Soit $x \in E$.
On définit la classe d'équivalence de $x$ par $\dot{x}=\{ y\in E,x\mathcal Ry \}$
$x$ est un représentant de sa classe

Théorème: Soit $\mathcal R$ une relation d'équivalence sur $E$
Les classes d'équivalence forment une partition de $E$, elles sont toutes non-vides, deux à deux disjointes, et leur union donne $E$

### III) Relation d'ordre
1) Définition
Définition: Soit $\mathcal R$ une relation binaire sur un ensemble $E$. $\mathcal R$ est une relation d'ordre si elle vérifie (1), (2), et (4)
Le couple $(E,\mathcal R)$ est appelé ensemble ordonné

Relation d'ordre pour les applications
Soit $E$ l'ensemble des fonctions de $\mathbb{R}^X$ où $X$ est un ensemble quelconque.
On a $(\mathbb{R}, \leqslant)$ est ordonné.
On définit $\leqslant_{E}$ la relation $\forall(f,g)\in E^{2},f\leqslant_{E}g \iff (\forall x \in X,f(x)\leqslant g(x))$
Alors $(E, \leqslant_{E})$ est bien ordonné

Généralisation: Soit $(Y, \leqslant_{Y})$ un ensemble ordonné quelconque. Soit $X$ un ensemble quelconque.
On définit l'ordre induit sur $E=Y^X$ noté $\leqslant_{E}$
$\forall(f,g)\in E^{2},f\leqslant_{E}g \iff (\forall x \in X, f(x)\leqslant_{Y}g(x))$

2) Ordre total, ordre partiel
Définition: Soit $(E, \leqslant_{E})$ un ensemble ordonné quelconque.
On dit que l'ordre est total si tous les éléments sont comparables: $\forall(x,y)\in E^{2},(x\leqslant_{E}y \lor y\leqslant_{E}x)$

Si cette phrase est fausse, on parle d'ordre partiel: $\exists(x,y)\in E^{2},(\neg(x\leqslant_{E}y) \land \neg(y\leqslant_{E}x))$

Comment définir un ordre sur $E^{2}$?
Soit $(E, \leqslant)$ un ensemble totalement ordonné. On veut créer un ordre sur $E\times E$
- L'ordre produit: $\leqslant_{\times}$ est défini par $\forall((a,b),(c,d))\in (E^{2})^{2},(a,b)\leqslant_{\times}(c,d)\iff((a\leqslant c)\land( b\leqslant d))$
- L'ordre lexicographique: $\leqslant_{\text{lex}}$ est défini par $\forall((a,b),(c,d))\in (E^{2})^{2},(a,b)\leqslant_{\text{lex}}(c,d)\iff((a<c)\lor((a=c)\land(b\leqslant d)))$

3) Plus grand ou plus petit élément
Définition: Soit $(E,\leqslant_{E})$ un ensemble ordonné quelconque
Soit $A \subset E$, soit $a\in A$
On dit que $a$ est un plus petit élément de $A$ si $\forall x \in A,a\leqslant_{E}x$
Si $a$ existe alors il est unique et on note $a=\min A$

4) Majorants, minorants
Définition: Soit $(E,\leqslant)$ un ensemble ordonné
Soit $A \subset E$ et $a \in E$
- $a$ est un majorant de $A$ si $\forall x \in A, x\leqslant a$
- $a$ est un minorant de $A$ si $\forall x \in A, a\leqslant x$

Remarques:
- S'il existe, le plus petit élément de $A$ est un minorant de $A$ qui est dans $A$
- S'il existe, le plus grand élément de $A$ est un majorant de $A$ qui est dans $A$

Définition: Soit $A \subset E$
- $A$ est majorée s'il existe un majorant
- $A$ est minorée s'il existe un minorant
- $A$ est bornée si $A$ est majorée et minorée

5) Borne inférieure, borne supérieure
Définition:
Soit $(E, \leqslant)$ un ensemble ordonné, $A \subset E$, et $a \in E$
On dit que $a$ est borne supérieure de $A$ si $a$ est un majorant de $A$ et est le plus petit des majorants de $A$
Dans ce cas, $a$ est unique et on note $a=\sup A$
- $\forall x \in A,x\leqslant a$
- $\forall b\in E,(\forall x\in E,x\leqslant b)\implies a\leqslant b$

On dit que $a$ est borne inférieure de $A$ si $a$ est un minorant de $A$ et est le plus grand des minorants de $A$
Dans ce cas, $a$ est unique et on note $a=\inf A$
- $\forall x \in A,a\leqslant x$
- $\forall b\in E,(\forall x\in E,b\leqslant x)\implies b\leqslant a$

Remarque: Si $\inf$ et $\sup$ existent, $\forall x \in A,\inf A\leqslant x\leqslant\sup A$

Remarques:
- Si $\sup A$ existe, et si $\sup A\in A,\sup A=\max A$
- Si $\sup A \not\in A$, alors $A$ n'a pas de maximum

Borne supérieure dans $\mathbb{R}$

Théorème: Soit $A \subset \mathbb{R}$ une partie non vide et majorée. Soit $b\in \mathbb{R}$
$b=\sup A\iff \begin{cases}b\text{ est un majorant de }A \\ b\text{ est le plus petit des majorants de }A\end{cases}\iff \begin{cases}\forall x \in A,x\leqslant b \\ \forall\varepsilon>0,\exists x \in A,b-\varepsilon<x\end{cases}$
$\iff \begin{cases}b\text{ est un majorant de }A \\ \text{Il existe une suite }(x_{n})_{n\in \mathbb{N}}\text{ à valeurs dans }A\text{ qui converge vers }b\end{cases}$






3) Droite numérique achevée
Définition: On appelle droite réelle achevée l'ensemble $\bar{\mathbb{R}}=\mathbb{R} \cup \{ -\infty,+\infty \}$

On prolonge l'ordre total usuel en un ordre total sur $\bar{\mathbb{R}}$: $\forall x \in \mathbb{R},\begin{cases}x\leqslant+\infty \\ -\infty\leqslant x \\ -\infty\leqslant+\infty\end{cases}$

On prolonge l'addition de façon partielle

|        $+$         | $-\infty$ | $y\in \mathbb{R}$ | $+\infty$ |
| :----------------: | :-------: | :---------------: | :-------: |
|     $-\infty$      | $-\infty$ |     $-\infty$     |           |
| $x \in \mathbb{R}$ | $-\infty$ |       $x+y$       | $+\infty$ |
|     $+\infty$      |           |     $+\infty$     | $+\infty$ |

On prolonge la multiplication dans $\bar{\mathbb{R}}$

| $\times$  | $-\infty$ |   $y<0$   | $0$ |   $x>0$   | $+\infty$ |
| :-------: | :-------: | :-------: | :-: | :-------: | :-------: |
| $-\infty$ | $+\infty$ | $+\infty$ |     | $-\infty$ | $-\infty$ |
|   $x<0$   | $+\infty$ |   $xy$    | $0$ |   $xy$    | $-\infty$ |
|    $0$    |           |    $0$    | $0$ |    $0$    |           |
|   $x>0$   | $-\infty$ |   $xy$    | $0$ |   $xy$    | $+\infty$ |
| $+\infty$ | $-\infty$ | $-\infty$ |     | $+\infty$ | $+\infty$ |

Ainsi,
- si $A$ est une partie non vide et non majorée de $\mathbb{R}$, on peut écrire $\sup A=+\infty$
- si $A$ est une partie non vide et non minorée de $\mathbb{R}$, on peut écrire $\inf A=-\infty$

Remarque: Toute partie non vide de $\mathbb{R}$ admet un $\inf$ et un $\sup$ dans $\bar{\mathbb{R}}$

4) Valeur absolue
Définition: $\forall x \in \mathbb{R},|x|=\begin{cases}x & \text{si }x\geqslant 0 \\ -x & \text{si }x< 0\end{cases}$
Ainsi, $\forall x \in \mathbb{R},|x|\geqslant 0$

Propriété: $\forall(x,y)\in \mathbb{R}^{2},|xy|=|x|\times |y|$

Remarques:
- Partie positive: $x\mapsto \max(x,0)\underset{ \text{not.} }{ = }x^{+}$
- partie négative: $x\mapsto\max(-x,0)\underset{ \text{not.} }{ = }x^{-}$

Ainsi, $\forall x \in \mathbb{R}, \begin{cases}|x|=x^{+}+x^{-} \\ x=x^{+}-x^{-}\end{cases}$

Distance entre deux réels $x,y$: $|x-y|$

Approximation d'un réel $x$ par un réel $a$ à $\varepsilon$ près
$a-\varepsilon\leqslant x\leqslant a+\varepsilon \iff |x-a|\leqslant\varepsilon$


Inégalités et valeur absolue
Soit $A\in \mathbb{R}^{+}$
- $|x|\leqslant A\iff-A\leqslant x\leqslant A$
- $|x|\geqslant A\iff(x\geqslant A \lor x\leqslant-A)$

Inégalité triangulaire: $|x+y|\leqslant|x|+|y|$ et $||x|-|y||\leqslant|x-y|\leqslant|x|+|y|$

5) Inégalité de Cauchy-Schwarz
Propriété: Soient $x_{1},\dots x_{n},y_{1},\dots,y_{n}\in \mathbb{R}$
Alors $|\sum\limits_{i=1}^{n}x_{i}y_{i}|\leqslant \sqrt{ \sum\limits_{i=1}^{n}x_{i}^{2} }\times \sqrt{ \sum\limits_{i=1}^{n}y_{i}^{2} }$

6) Partie entière
Propriété: $\mathbb{R}$ est archimédien: $\forall(x,y)\in \mathbb{R}^{2},0<x<y\implies(\exists n\in \mathbb{N},nx\geqslant y)$

Définition/Propriété:
$\forall x\in \mathbb{R},\exists!n\in \mathbb{Z},n\leqslant x< n+1$
cet entier $n$ est appelé la partie entière de $x$ et on note $n=\lfloor x \rfloor$
Ainsi, $\forall x \in \mathbb{R},\lfloor x \rfloor\leqslant x<\lfloor x+1 \rfloor$

Propriété: $x\mapsto \lfloor x \rfloor$ est croissante sur $\mathbb{R}$ et vérifie $\forall x\in \mathbb{R},\forall p \in\mathbb{Z},\lfloor x+p \rfloor=\lfloor x \rfloor+p$

### IV) Approximation et densité
1) Approximation d'un réel par un décimal.
Soit $x \in \mathbb{R}$ et $n \in \mathbb{N}$.
$\lfloor 10^{n}x \rfloor\leqslant 10^{n}x<\lfloor 10^{n}x \rfloor+1$
Donc $d_{n}\leqslant x<d_{n}+10^{-n}$ avec $d_{n}=\frac{\lfloor 10^{n}x \rfloor}{10^{n}}$
$d_{n}$ est un nombre décimal
$\forall n\in \mathbb{N},0\leqslant x-d_{n}<10^{-n}$ donc $|x-d_{n}|<10^{-n}$
Donc la suite $(d_{n})_{n\geqslant 0}$ converge vers $x$
De plus, $(d_{n})_{n}$ est croissante, et $\left( d_{n}+\frac{1}{10^{n}} \right)_{n}$ est décroissante.

Ainsi, tout réel $x$ est limite d'une suite de décimaux

2) Densité
Définition: Soit $A \subset \mathbb{R}$ une partie de $\mathbb{R}$. On dit que $A$ est dense dans $\mathbb{R}$ si:
(i) Entre toute paire de réels se trouve un élément de $A$
(ii) $\forall x \in \mathbb{R},\forall\varepsilon>0,\exists a\in A,|x-a|\leqslant\varepsilon$
(iii) Pour tout réel $x \in \mathbb{R}$, il existe une suite $(a_{n})_{n}$ de $A$ qui converge vers $x$
(iii) $\iff$ (ii) $\iff$ (i)

### V) Intervalles de $\mathbb{R}$
Définition: Soient $a,b \in \mathbb{R},a\leqslant b$
On appelle intervalle de $\mathbb{R}$ l'un des $9$ ensembles suivants:
- $\left[ a,b \right]=\{ x \in \mathbb{R}|a\leqslant x\leqslant b \}$
- $\left[ a,b \right[, \left] a,b \right],$ ou $\left] a,b \right[$
- $\left[ a,+\infty \right[=\{ x \in \mathbb{R}|x\geqslant a \}$
- $\left] a,+\infty \right[=\{ x \in \mathbb{R}|x>a \}$
- $\left] -\infty,b \right]=\{ x \in \mathbb{R}|x\leqslant b \}$
- $\left] -\infty,b \right[=\{ x \in \mathbb{R}|x<b \}$
- $\left] -\infty,+\infty \right[=\mathbb{R}$

Remarque: $\emptyset=\left] a,a \right[$ et $\{ a \}=\left[ a,a \right]$ sont de intervalles.

Définition: Soit $I$ un intervalle de $\mathbb{R}$, l'intérieur de $I$ est l'intervalle $I$ privé de ses deux extrémités

L'intérieur de $\left] a,b \right[$ est $\left] a,b \right[$ avec $a,b \in \bar{\mathbb{R}}$

Les extrémités d'un intervalle de $\mathbb{R}$ sont des éléments de $\bar{\mathbb{R}}$

Définition: Soit $A\subset \mathbb{R}$, on dit que la partie $A$ est convexe si $\forall(x,y)\in A^{2},x\leqslant y,\left[ x,y \right]\subset A$

Théorème: Les parties convexes de $\mathbb{R}$ sont exactement les intervalles de $\mathbb{R}$
