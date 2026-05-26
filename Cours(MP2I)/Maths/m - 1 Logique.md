---
tags:
  - Math
---

## I) Proposition logique

1) Assertion
Définition : Une assertion est une phrase mathématique à laquelle on peut donner une valeur de vérité: vrai ou faux

Remarque: Une phrase mathématique est construite à partir de plusieurs objets de base:
- des constantes ($2$, $\pi$, $i$, ...)
- des variables ($x$, $y$, $a$, $b$, ...)
- des ensembles ($\mathbb{R}$, $\mathbb{C}$, $E$, $F$, ...)
- des fonctions (opérations, $\sin$, $\cos$, $f$, $g$, ...)
- des relations ($\leq$, $=$, $\subset$, ...)
- connecteurs logiques ($\land$, $\lor$, $\neg$, $\implies$, ...)
- des quantificateurs ($\forall$, $\exists$)

Exemple: "$x$ est un carré" n'est pas une assertion car elle dépend de $x$
Posons $A(x):\text{"}x\text{ est un carré"}$
Précisons l'ensemble dans lequel la variable $x$ est quantifiée
$A_{1}:\forall x\in \mathbb{R},x\text{ est un carré}$
$A_{2}:\forall x\in \mathbb{N},x\text{ est un carré}$
$A_{3}:\forall x\in \mathbb{C},x\text{ est un carré}$

Ambiguïté de la définition de "être un carré"

Précisons les choses
$A_{1}':\forall x \in \mathbb{R},\exists a\in \mathbb{R},x=a^{2}$
$A_{2}':\forall x \in \mathbb{N},\exists a\in \mathbb{N},x=a^{2}$
$A_{3}':\forall x \in \mathbb{C},\exists a\in \mathbb{C},x=a^{2}$

$A_{1}'$ et $A_{2}'$ sont fausses: 
- $-1\in \mathbb{R}$ et l'équation $a^{2}=-1$ n'a pas de solution avec $a\in \mathbb{R}$ donc $A_{1}'$ est fausse
- $3\in \mathbb{N}$ et $a^{2}=3$ n'a pas de solution avec $a\in \mathbb{N}$ donc $A_{2}'$ est fausse

$A_{3}'$ est vraie
Soit $z\in \mathbb{C}$. Résolvons $a^{2}=z$ avec $a\in \mathbb{C}$ 
Pour $z\neq 0$ posons $z=re^{ i\theta }$ où $r=|z|$ et $\theta=\arg(z)$
Posons alors $a=\sqrt{ r }e^{ i\theta/2 }$
Ainsi $a^{2}=(\sqrt{ r })^{2}(e^{ i\theta/2 })^{2}=re^{ i\theta }=z$
Cas dégénéré si $z=0=0^{2}$

Exemple: Montrons que $\sqrt{ 2 }$ est irrationnel ($\sqrt{ 2 }\in \mathbb{R}\setminus\mathbb{Q}$)
Raisonnement par l'absurde en supposant $\sqrt{ 2 }\in \mathbb{Q}$
Ainsi, il existe $p \in \mathbb{Z}$ et $q \in \mathbb{N}^{*}$ tel que $p\land q$ tels que $\sqrt{ 2 }=\frac{p}{q}$
Ainsi $2q^{2}=p^{2}$ donc $p^{2}$ est un entier pair.
Or, $p$ impair implique $p^{2}$ impair
Par contraposée $p^{2}$ pair implique $p$ pair
Conclusion $p$ est pair
Alors $\exists a\in \mathbb{N},p=2a$
alors $p^{2}=4a^{2}$
Ainsi $2q^{2}=p^{2}$ devient $2q^{2}=4a^{2}$
et donc $q^{2}=2a^{2}$
donc $q^{2}$ est pair ainsi, de même, $q$ est pair
Contradiction $p\land q$ et $p$ et $q$ pairs

Exemple: Montrer $(\exists a,b\in \mathbb{R}\setminus \mathbb{Q},a^{b}\in \mathbb{Q})$
- Posons $a=\sqrt{ 2 }^{\sqrt{ 2 }}$ et $b=\sqrt{ 2 }$
  Ainsi $a^{b}=\sqrt{ 2 }^{\sqrt{ 2 }\cdot\sqrt{ 2 }}=\sqrt{ 2 }^{2}=2\in \mathbb{Q}$
Si $\sqrt{ 2 }^{\sqrt{ 2 }}\in \mathbb{R}\setminus\mathbb{Q}$ ça fonctionne
Si $\sqrt{ 2 }^{\sqrt{ 2 }}\in \mathbb{Q}$, ça fonctionne avec $a=b=\sqrt{ 2 }$

2) Connecteurs logiques
Conjonction $\land$
Disjonction $\lor$
Négation $\neg$

Définition: Soient $P$ et $Q$ deux assertions
- L'assertion $(P\land Q)$ est vraie si et seulement si les assertion $P$ et $Q$ sont vraies
- L'assertion $(P\lor Q)$ est vraie dès que au moins l'une des deux est vraie
- L'assertion $(\neg P)$ est vraie si et seulement si $P$ est fausse

Les tables de vérité résument cette définition

| $P$ | $\neg P$ |     | $P$ | $Q$ | $P\land Q$ | $P\lor Q$ |
| --- | -------- | --- | --- | --- | ---------- | --------- |
| $V$ | $F$      |     | $V$ | $F$ | $F$        | $V$       |
| $F$ | $V$      |     | $V$ | $V$ | $V$        | $V$       |
|     |          |     | $F$ | $F$ | $F$        | $F$       |
|     |          |     | $F$ | $V$ | $F$        | $V$       |


Définition: Deux propositions logiques sont équivalentes si elles ont la même table de vérité

on notera $\equiv$ l'équivalence logique
Exemple: $\neg(\neg P)\equiv P$

Lois de De Morgan:
$\neg(P\land Q)\equiv(\neg P)\lor (\neg Q)$
$\neg(P\lor Q)\equiv(\neg P)\land(\neg Q)$

Exemple: $\neg(2\leq x\leq 3)\equiv x \in \mathbb{R}\setminus\left[ 2;3 \right]$

Propriétés:
- $P\land P\equiv P$ (idempotent)
- $Q\land P\equiv P\land Q$ (commutatif)
- $(P\land Q)\land R=P\land(Q\land R)$ (associatif)
-----
Idem en remplaçant $\land$ par $\lor$

Distributivité du $\land$ sur le $\lor$ et distributivité du $\lor$ sur le $\land$
$P\land(Q\lor R)\equiv(P\land Q)\lor(P\land R)$
$P\lor(Q\land R)\equiv(P\lor Q)\land(P\lor R)$

3) Implication
Définition: Soient $P, Q$ deux propositions logiques. La proposition $(P\implies Q)$ est définie par la table de vérité suivante:

| $P$ | $Q$ | $P\implies Q$ |
| --- | --- | ------------- |
| $F$ | $F$ | $V$           |
| $F$ | $V$ | $V$           |
| $V$ | $F$ | $F$           |
| $V$ | $V$ | $V$           |
Remarquons: $P\land (\neg Q)\equiv \neg(P\implies Q)$

Propriété: $P\implies Q\equiv(\neg P)\lor Q$

Preuve: $P\implies Q\equiv \neg \neg(P\implies Q)\equiv \neg(P\land(\neg Q))\underset{ De Morgan }{ \equiv }(\neg P)\lor Q$

En pratique, pour prouver $(P\implies Q)$ est toujours vraie, il suffit de supposer $P$ et d'en déduire $Q$

Vocabulaire:
Pour l'assertion $(P\implies Q)$, on dit que $P$ est condition suffisante pour avoir $Q$ et $Q$ est condition nécessaire pour avoir $P$

La réciproque de $(P\implies Q)$ est l'assertion $(Q\implies P)$
La contraposée de $(P\implies Q)$ est $((\neg Q)\implies(\neg P))$

Une implication et sa réciproque sont en général logiquement différentes

Définition: $(P\underbrace{ \iff }_{ \text{si et seulement si} } Q)\equiv(P\implies Q)\land(Q\implies P)$

Méthode: On procède par double imlication pour démontrer $P\iff Q$.

Propriété: $\underbrace{ (\neg Q)\implies (\neg P) }_{ \text{Contraposée} }\equiv\underbrace{ (P\implies Q) }_{ \text{Implication} }$
Preuve:
$(\neg Q)\implies(\neg P)$
$\equiv Q\lor \neg P$
$\equiv(\neg P)\lor Q$
$\equiv P\implies Q$

Exemple: donner la table de vérité de $f\equiv(\neg P)\implies(P\implies Q)$

| $P$ | $Q$ | $\neg P$ | $P\implies Q$ | $f$ |
| --- | --- | -------- | ------------- | --- |
| $V$ | $F$ | $F$      | $F$           | $V$ |
| $V$ | $V$ | $F$      | $V$           | $V$ |
| $F$ | $F$ | $V$      | $V$           | $V$ |
| $F$ | $V$ | $V$      | $V$           | $V$ |

Du faux, on peut déduire n'importe quoi


Raisonnement par l'absurde.
$(\neg P)\implies\text{Faux}\equiv P\lor\text{Faux}\equiv P\lor\text{Faux}\equiv P$

Méthode: pour montrer $P$, on suppose le contraire et on aboutit à ue contradiction.

Raisonnement par disjonction de cas
$(Q\implies P)\land(\neg Q\implies P)\equiv((\neg Q)\lor P)\land(Q\lor P)\equiv (Q\land \neg Q)\lor P\equiv\text{Faux}\lor P\equiv P$
Méthode: 
- 1er cas: Supposons $Q$ et on montre $P$
- 2e cas: Supposons $\neg Q$ et on montre $P$

## II) Quantificateurs
1) Prédicat
Définition: Si une phrase mathématique $P$ dépend d'une variable $x$, on l'appelle prédicat et on la note $P(x)$. 
Exemple: $\underbrace{ (n \text{ est un entier pair}) }_{ P(n) }$ est un prédicat sur la variable $n$

2) Ensemble par compréhension
Soit $P$ un prédicat sur une variable $x$ où $x$ désigne un élément d'un ensemble $E$.
On définit l'ensemble des éléments de $E$ vérifiant le prédicat $P$ par $\left\{ x \in E|P(x) \right\}$
Exemple: $\left\{ n \in \mathbb{Z}|n\text{ est pair} \right\}=\left\{ n\in \mathbb{Z}|\exists k\in \mathbb{Z},n=2k \right\}=\left\{ 2k|k\in \mathbb{Z} \right\}=2\mathbb{Z}=\bigcup\limits_{k\in \mathbb{Z}}\left\{ 2k \right\}$

3) Quantificateur universel
Définition: Soit $P(x)$ un prédicat où $x$ est une variable dans un ensemble $E$. L'assertion $(\forall x \in E,P(x))$ est vraie ssi pour tout élément $x_{0}$ dans $E$, la phrase $P(x_{0})$ est vraie.
$\color{orange}{\forall x,P(x)}$<span style="color:orange"> ne veut rien dire, il faut préciser l'ensemble </span>$\color{orange}{E}$
Exemple: $P_{1}:\forall (a, b)\in \mathbb{C}^{2},(ab=0\implies(a=0\lor b=0))$

$P_{1}$ est vraie
Preuve: Soit $(a,b)\in \mathbb{C}^{2}$
Supposons $ab=0$.
Par disjonction de cas
- Si $a\neq 0$, alors $b=\frac{1}{a}\times(ab)=\frac{1}{a}\times 0=0$ donc $b=0$
- Si $a=0$, c'est fini
Conclusion $a=0\lor b=0$

4) Quantificateur existentiel

On définit l'assertion $(\exists x \in E,P(x))$ comme vraie lorsqu'il exist au moins un élément $x_{0}\in E$ qui vérifie $P(x_{0})$

Propriété: 
- $\neg(\forall x \in E,P(x))\equiv(\exists x \in E,\neg P(x))$
- $\neg(\exists x \in E,P(x))\equiv(\forall x \in E,\neg P(x))$

Exemple:  Nier la phrase $\forall \varepsilon>0,\exists \eta>0,\forall(x,y)\in I^{2},|x-y|\leq \eta\implies |f(x)-f(y)|\leq\varepsilon$
$\exists\varepsilon>0,\forall \eta>0,\exists(x,y)\in I^{2},|x-y|\leq \eta \land |f(x)-f(y)|>\varepsilon$

Exemple:
$A: (\forall x \in \mathbb{R},\exists n\in \mathbb{Z},x\leq n)$
$B:(\exists n\in \mathbb{Z},\forall x \in \mathbb{R},x\leq n)$
$C:(\forall x \in \mathbb{R}, x\leq n\text{ avec }n\in \mathbb{Z})$

Remarque: 
- $\forall x \in E,P(x)\equiv \forall y\in E,P(y)$
- $\exists x \in E,P(x)\equiv \exists y\in E,P(x)$

Cas particulier si $E=\emptyset$
- $(\exists x \in \emptyset,P(x))$ est toujours faux
  Ainsi, $(\exists x \in \emptyset,\neg P(x))$ est faux
  Donc $(\forall x \in \emptyset,P(x))$ est toujours vrai

## III) Raisonnements

1) Raisonnement direct
Méthode: Pour montrer $A\implies B$, on suppose $A$, puis par des déductions successives, on conclut $B$

Rédaction: Supposons $A$. Donc $C_{1}$, donc $C_{2}$, or $C_{3}$, donc $C_{4}$, donc $B$

2) Raisonnement par disjonction de cas.
Méthode: Pour montrer $P$ on introduit une nouvelle assertion $Q$ et on montre $(Q\implies P)\land(\neg Q\implies P)$

Exemple: Montrer que $\forall n\in \mathbb{N}, \frac{n(n+1)}{2}\in \mathbb{N}$
Par disjonction de cas:
- si $n$ est pair, $\frac{n}{2}\in \mathbb{N}$, donc $\frac{n}{2}(n+1)\in \mathbb{N}$
- si $n$ impair, $\frac{n+1}{2}\in \mathbb{N}$, donc $\frac{n+1}{2}n\in \mathbb{N}$

3) Raisonnement par l'absurde
Méthode: Pour montrer $P$, on suppose $\neg P$ et on déduit Faux

Exemple: Montrer que $\forall n\in \mathbb{N}^{*},\not\exists p \in\mathbb{N},p^{2}=n^{2}+1$
Soit $n\in \mathbb{N}^{*}$
Par l'absurde supposons $\exists p \in\mathbb{N},p^{2}=n^{2}+1$
Alors, $p^{2}-n^{2}=1$
Donc $\underbrace{ (p-n) }_{ \in \mathbb{N} }\underbrace{ (p+n) }_{ \in \mathbb{N}^{*} }=1$
Nécessairement, $p+n=1$ et $p-n=1$ car $(\forall(a,b)\in \mathbb{N},ab=1\implies a=b=1)$
donc $n=-n\implies n=0$, or $n\in \mathbb{N}^{*}$ donc $n\neq 0$

---

Exemple: Montrer que l'ensemble des nombres premier est infini.
Par l'absurde, notons $\mathbb{P}$ l'ensemble des nombres premiers et on le suppose fini, disons à $n$ éléments
notons $\mathbb{P}=\left\{ p_{1},p_{2},\dots,p_{n} \right\}$ avec $p_{1}<p_{2}<\dots<p_{n}$
En prenant $x=p_{1}p_{2}\dots p_{n} + 1$
On remarque que $\forall i\in[\![1,n]\!]$, $p_{i}$ ne divise pas $x$
En effet, $p_{i}|x\implies p_{i}|1$, or $p_{i}\neq 1$ car $p_{i}$ premier
Donc $x$ est lui aussi premier car il ne possède pas de facteurs premiers dans $\mathbb{P}$, or $x>p_{n}$ donc $x \not\in \mathbb{P}$
d'où la contradiction

4) Raisonnement par contraposée
$(P\implies Q)\equiv(\neg Q\implies \neg P)$

Exemple: montrer $\forall a\in \mathbb{R},\left[ \forall\varepsilon>0,|a|\leq\varepsilon \right]\iff a=0$
Soit $a\in \mathbb{R}$
- si $a=0$, alors $\forall\varepsilon>0,|0|\leq\varepsilon$, donc l'implication $\impliedby$ est vérifiée
- On veut montrer $(\forall\varepsilon>0,|a|\leq\varepsilon)\implies a=0$
  Raisonnement par contraposée: supposons $a\neq 0$.
  $a\neq 0$, donc $|a|>0$
  Prenons $\varepsilon=\frac{|a|}{2}$, on a bien $0<\varepsilon<|a|$

5) Raisonnement par Analyse-Synthèse
Pour déterminer un ensemble d'éléments $x \in E$ vérifiant un prédicat $P(x)$, on procède:
	1) Analyse: Supposons $P(x)$. A partir de cette information on essaye de trouver un maximum d'informations sur $x$
	2) Synthèse: Vérification que les conditions nécessaires sont suffisantes. On part de $x \in E$ vérifiant les conditions trouvées. On essaye de conclure que $x$ vérifie $P(x)$

Exemple: Résoudre $x=\sqrt{ 2-x }$ sur $\mathbb{R}$
Analyse: Soit $x \in \mathbb{R}$ tel que $x=\sqrt{ 2-x }$. Alors $2-x\geq 0$ et $x\geq 0$, donc $x \in[0,2]$
$x=\sqrt{ 2-x }$, donc $x^{2}=2-x$ donc $x^{2}+x-2=0$
Le trinôme a pour discriminant $\Delta=9$
Les racines du trinôme dont $\frac{-1\pm 3}{2}$ donc $-2$ ou $1$
Or $x \in[0,2]$, donc $x=1$
Synthèse: Si $x=1$, $1=\sqrt{ 2-1 }$ donc l'ensemble des solutions est $\left\{ 1 \right\}$

Exemple: montrer qu'il existe un unique couple $(f,g)$ de fonctions de $\mathbb{R}$ dans $\mathbb{R}$ avec $\begin{cases}f\text{ paire}\\g\text{ impaire}\end{cases}$
telles que $\forall x \in \mathbb{R},\exp(x)=f(x)+g(x)$

Analyse: Supposons $f$ paire et $g$ impaire telles que $\forall x \in \mathbb{R}, \underset{ (*) }{ e^{ x }=f(x)+g(x) }$
Ainsi: $\forall x \in \mathbb{R},f(-x)=f(x)$ et $g(-x)=-g(x)$
Donc $\forall x \in \mathbb{R},e^{ -x }=f(-x)+g(-x)$, Ainsi $\underset{ (**) }{ e^{ -x }=f(x)-g(x) }$
$(*)+(**)$      $e^{ x }+e^{ -x }=2f(x)$
$(*)-(**)$      $e^{ x }-e^{ -x }=2g(x)$

Alors $f(x)=\frac{e^{ x }+e^{ -x }}{2}$ et $g(x)=\frac{e^{ x }-e^{ -x }}{2}$

Cela prouve l'unicité du couple $(f,g)$ sous réserve d'existence

Synthèse: Posons $f$ et $g$ ainsi trouvées
- Vérifions: $\forall x \in \mathbb{R},\frac{e^{ x }+e^{ -x }}{2}+\frac{e^{ x }-e^{ -x }}{2}=e^{ x }$, donc $f+g=\exp$
- Vérifions: $\forall x \in \mathbb{R},f(-x)=\frac{e^{ -x }+e^{ x }}{2}=f(x)$, donc $f$ paire
- Vérifions $\forall x \in \mathbb{R},g(-x)=\frac{e^{ -x }-e^{ x }}{2}=-g(x)$, donc $g$ impaire

Exemple: Trouver tous les couples $(n,z)\in \mathbb{Z}\times \mathbb{C}$ tels que $z^{n}=(z-1)^{n}=1$
Analyse: Supposons $n\in \mathbb{Z}$ et $z\in \mathbb{C}$ tels que $z^{n}=1$ et $(z-1)^{n}=1$
- si $z=0$, $\begin{cases}0^{n}\text{ n'est pas défini si }n<0\\0^{0}=1\land(-1)^{0}=1\\0^{n}=0\iff n\geq 1\end{cases}$ donc le cas $(0, 0)$ fonctionne
- si $z\ne 0$, posons $r=|z|\in \mathbb{R}^{*}_{+}$
  Ainsi $|z^{n}|=1$ donc $|z|^{n}=1$ donc $r^{n}=1$ donc $r=1$
  Donc $z$ est de module $1$, donc sur le cercle trigonométrique
  De même, $|(z-1)^{n}|=1$ donc $|z-1|^{n}=1$ donc $|z-1|=1$
  Donc $z$ est sur le cercle de centre 1 et de rayon 1
  Donc $z=\frac{1}{2}\pm i \frac{\sqrt{ 3 }}{2}=e^{ \pm i\pi/3 }$
- Si $z=e^{ i\pi/3 }$ alors $z^{n}=(e^{ i\pi/3 })^{n}=e^{ in\pi/3 }$ et $z-1=e^{ i\pi/3 }-1=e^{ i 2\pi/3 }$
  Donc $(z-1)^{n}=e^{ 2in\pi/3 }$
  Or, $e^{ in\pi/3 }=1=e^{ i0 }\iff \frac{n\pi}{3}\equiv 0\,\,\left[ 2\pi \right]\iff \exists k\in \mathbb{Z},\frac{n\pi}{3}=2\pi k$
  $\iff \exists k\in \mathbb{Z}n=6k$
  $\iff n\in 6\mathbb{Z}$
  Pour avoir $z^{n}=1$, il faut $n\in 6\mathbb{Z}$.
  
Synthèse: si $n\in 6\mathbb{Z}$ et $z=e^{ \pm i\pi/3 }$ alors $z^{n}=1$
$z-1=e^{ i_{2}\pi/3 }$ ou $e^{ -2i\pi/3 }$
$\forall k\in \mathbb{Z}, (z-1)^{6k})=e^{ \pm i 2\pi \times 6k/3 }=e^{ \pm_{4}i\pi k }=1$
Bilan, $(n,z)\in 6\mathbb{Z}\times \left\{ e^{ \pm i\pi/3 } \right\}$ ou bien $(0,z)$ avec $z \in \mathbb{C}$

## IV) Récurrence sur $\mathbb{N}$
$\mathbb{N}$ est muni de deux lois $+$ et $\times$, et d'une relation d'ordre $\leq$
Axiomes:
- (A1) Toute partie non vide de $\mathbb{N}$ admet un plus petit élément.
- (A2) Toute partie non vide et majorée de $\mathbb{N}$ admet un plus grand élément
- (A3) $\mathbb{N}$ n'a pas de plus grand élément

Propriété: Il n'existe pas de suite (infinie) dans $\mathbb{N}$ strictement décroissante
Preuve: Par l'absurde, on se donne $(u_{n})_{n\in \mathbb{N}}$ avec $\begin{cases}\forall n\in \mathbb{N},u_{n+1}<u_{n}\\ \forall n\in \mathbb{N},u_{n}\in \mathbb{N}\end{cases}$
Posons $A=\left\{ u_{n},n\in \mathbb{N} \right\}$
$A$ est une partie non vide de $\mathbb{N}$, donc $A$ possède un plus petit élément $m$
$m\in A$ donc il existe $p \in \mathbb{N}$ tel que $m=u_{p}$
Or, $u_{p+1}<u_{p}$ et $\overbrace{ u_{p+1}\in A }^{ \text{str. plus petit que } m}$: Absurde!

### Principe de récurrence
Comment démontrer $\left[ \forall n\in \mathbb{N},P(n) \right]$
Théorème: (Récurrence)
Soit $P$ un prédicat sur $\mathbb{N}$
Si $\begin{cases}P(0)\text{ vraie}\\ \forall n\in \mathbb{N},P(n)\implies P(n+1)\end{cases}$ alors $(\forall n\in \mathbb{N},P(n))$

Preuve: Supposons $(I): P(0)$ et $(H): \forall n\in \mathbb{N}P(n)\implies P(n+1)$
Par l'absurde: supposons $(\exists n\in \mathbb{N},\neg P(n))$
Appelons $n_{0}\in \mathbb{N}$ tel que $P(n_{0})$ est fausse.
Notons $A=\left\{ n\in \mathbb{N}|\neg P(n) \right\}$
$n_{0}\in A$ donc $A$ est non vide
$A\subset \mathbb{N}$, donc $A$ possède un plus petit élément $p$.
Ainsi $P(p)$ est fausse
Comme $P(0)$ est vraie, $p\neq 0$
Ainsi $p-1\in \mathbb{N}$ et $p-1\not\in A$ donc $P(p-1)$ est vraie
En appliquant $(H)$, $P(p-1)\implies P(p)$
Comme $P(p-1)$ est vraie, alors $P(p)$ est vraie: Absurde!

Exemples: Montrons que $\forall n\in \mathbb{N},\sum\limits_{k=0}^nk^{2}=\frac{n(n+1)(2n+1)}{6}$
La propriété $P_{n}:\sum\limits_{k=0}^nk^{2}=\frac{n(n+1)(2n+1)}{6}$
on démontre par récurrence
- initialisation: $\sum\limits_{k=0}^0=0^{2}=0$ et $\frac{0(0+1)(2\times 0+1)}{6}=0$ donc $P_{0}$ est vérifiée
- hérédité: Soit $n\in \mathbb{N}$ tel que $P_{n}$ est vraie.
  Montrons $P(n+1)$
  $\sum\limits_{k=0}^{n+1}k^{2}=\left( \sum\limits_{k=0}^{n}k^{2} \right)+(n+1)^{2}$
  $\underset{ P(n) }{ = } \frac{n(n+1)(2n+1)}{6}+(n+1)^{2}=\frac{n+1}{6}\left( n(2n+1)+6(n+1) \right)$
  $=\frac{n+1}{6}(2n^{2}+7n+6)=\frac{n+1}{6}(2n+3)(n+2)$
  Don $P_{n+1}$ est vérifiée
- Conclusion: par théorème de récurrence, $\forall n\in \mathbb{N},P_{n}$

Variantes:
Commencer à un rang $n_{0}$
Si $\begin{cases}P(n_{0})\\ \forall n\geq n_{0},P(n)\implies P(n+1)\end{cases}$ alors $\forall n\geq n_{0},P(n)$
idée de la preuve: $Q(n)=P(n_{0}+n)$

Récurrence finie: on veut montrer: $\forall n\in[\![n_{0},N]\!],P(n)$
Si $\begin{cases}P(n_{0})\\ \forall n\geq n_{0},n<N\implies(P(n)\implies P(n+1))\end{cases}$ alors $\forall n\in[\![n_{0},N]\!],P(n)$

Récurrence double:
Si $\begin{cases}P(n_{0})\land P(n_{0}+1)\\ \forall n\geq n_{0},(P(n)\land P(n+1))\implies P(n+2)\end{cases}$ alors $\forall n\geq n_{0},P(n)$
idée de la preuve: $Q(n)=P(n)\land P(n+1)$

Récurrence forte:
Si $\begin{cases}P(n_{0})\\ \forall n\geq n_{0},(\forall k\in[\![n_{0},n]\!],P(k))\implies P(n+1)\end{cases}$ alors $\forall n\geq n_{0},P(n)$
idée de la preuve $Q(n):\forall k\in[\![n_{0},n]\!],P(k)$

Exemple: Soit $(u_{n})_{n\in \mathbb{N}}$ définie par
$\begin{cases}u_{0}=1\\ \forall n,u_{n+1}=\sum\limits_{k=0}^n u_{k}\end{cases}$
Trouver $u_{n}$ pour tout $n$
$u_{1}=u_{0}=1=2^{0}$
$u_{2}=u_{0}+u_{1}=2=2^{1}$
$u_{3}=u_{0}+u_{1}+u_{2}=4=2^{2}$
$u_{4}=u_{0}+u_{1}+u_{2}+u_{3}=8=2^{3}$
Conjecture: $u_{n}=2^{n-1}$ pour $n\geq 1$

Récurrence:
- initialisation: vrai pour $n\in[\![1,4]\!]$
- hérédité: Soit $n\geq 1$ tel que $\forall k\in[\![1,n]\!],u_{k}=2^{k-1}$
  Ainsi $u_{n+1}=\sum\limits_{k=0}^{n}u_{k}=u_{0}\sum\limits_{k=1}^{n}2^{k-1}$
  $u_{n+1}=1+\left( 2^{0}+2^{1}+2^{2}+\dots+2^{n-1} \right)=1+2^{n}-1$
  Donc $u_{n+1}=2^{n}$ donc le range $n+1$ est démontré
- conclusion: bla bla bla
