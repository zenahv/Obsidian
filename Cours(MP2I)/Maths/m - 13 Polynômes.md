---
tags:
  - Math
aliases:
---
# I - Définition de $\mathbb{K}[X]$
## 1) Définitions
<u>Déf</u> $\to$
>Soit $\mathbb{K}$ un corps $(\mathbb{R}\text{ ou }\mathbb{C})$
>L'ensemble des suites presque nulles de $\mathbb{K}^{\mathbb{N}}$ est 
> $\{ (a_{n})_{n\in \mathbb{N}}\in \mathbb{K}^{\mathbb{N}}\text{ }|\text{ }\exists N\in \mathbb{N}, \forall n\geqslant N, a_{n}=0 \}$
>On note $X=(0,1,0,0,\dots$
>Soit $(a_{k})_{k\in \mathbb{N}}$ une suite presque nulle de $\mathbb{K}^{\mathbb{N}}$
>On appelle l'objet suivant 
>$P= \sum\limits_{k\in \mathbb{N}}^{}a_{k}X^{k}$

<u>Remarque</u> : Cette somme est finie car : $\exists N\in \mathbb{N},\forall k>N,a_{k}=0$
Ainsi, $P=\sum\limits_{k=0}^{N}a_{k}X^{k}$

L'ensemble des polynômes à coefficients dans $\mathbb{K}$ est noté $\mathbb{K}[X]$
	$X$ est appelée <u>l'indéterminée</u>

$\underline{\text{Somme dans }\mathbb{K}[X]}$
>Soient $\begin{cases}P=\sum\limits_{k\in \mathbb{N}}^{}a_{k}X^{k} \\Q=\sum\limits_{k\in \mathbb{N}}^{}b_{k}X^{k}\end{cases}$   deux polynômes
>On définit $P+Q$ par $P+Q=\sum\limits_{k\in \mathbb{N}}^{}(a_{k}+b_{k})X^{k}$

$(a_{k})_{k}$ et $(b_{k})_{k}$ sont presque nulles.
	donc $(a_{k}+b_{k})_{k}$ aussi

$\exists N_{1},N_{2}$, $\begin{cases}\forall k > N_{1}, a_{k}=0 \\ \forall k>N_{2}, b_{k}=0\end{cases}$
Ainsi, $\forall k>\max(N_{1},N_{2}),a_{k}+b_{k}=0$

<u>Mult. par <b>un scalaire</b></u> $\lambda \in \mathbb{K}$
Soit $\lambda \in \mathbb{K}$
Soit $P = \sum\limits_{k\in \mathbb{N}}^{}a_{k}X^{k}$
Alors $\lambda.P=\lambda P=\sum\limits_{k\in \mathbb{N}}^{}\underbrace{ (\lambda \times a_{k}) }_{ \in \mathbb{K} }X^{k}$
et $(a_{k})_{k}$ presque nulle donc $(\lambda a_{k})_{k}$ est presque nulle

<u>Produit dans </u>$\mathbb{K}[X]$

Si $P= \sum\limits_{k\in \mathbb{N}}^{}a_{k}X^{k}$ et $Q=\sum\limits_{k\in \mathbb{N}}^{}b_{k}X^{k}$ sont deux polynômes de $\mathbb{K}[X]$
on définit $P\times Q$ par $P\times Q=PQ=\sum\limits_{k\in \mathbb{N}}^{}c_{k}X^{k}$
avec $c_{k}=\underset{ i+j=k }{ \sum\limits_{i,j\in \mathbb{N}\text{ }tq}^{} }a_{i}b_{j}=$ $\sum\limits_{i=0}^{k}a_{i}b_{k-i}$

$\exists N_{1},N_{2}\in \mathbb{N},$ $\begin{cases}\forall k >N_{1},a_{k}=0 \\ \forall k>N_{2},b_{k}=0\end{cases}$

Pour $k>N_{1}+N_{2}$
$c_{k}=\sum\limits_{i=0}^{k}a_{i}b_{k-i}$
$\underset{ Chasles }{ = }\sum\limits_{i=0}^{N_{1}}a_{i}b_{k-i}+\sum\limits_B{i>N_{1}}^{}\underbrace{ a_{i} }_{ =0 }b_{k-i}$ avec la 2$^{e}$ somme $=0$
***à compléter ?***
$i\leqslant N_{1}$ donc $-i \geqslant -N_{1}$
donc $k-i\geqslant k-N_{1}$
or $k >N_{1}+N_{2}$ donc $k-i > N_{1}+N_{2}-N_{1}=N_{2}$ donc $\boxed{b_{k-i}=0}$

Ainsi $\sum\limits_{i=0}^{N_{1}}a_{i}b_{k-i}=0$
	Pour $\boxed{k>N_{1}+N_{2},c_{k}=0}$
$\underline{c_{k}\text{ presque nulle}}$

L'écriture du produit par définition permet de retrouver les calculs standrds

$$
\left( \sum\limits_{\cancelto{ i }{ k }\in \mathbb{N}}^{}a_{\cancelto{ i }{ k }}X^{\cancelto{ i }{ k }} \right)\times\left( \sum\limits_{\cancelto{ j }{ k }\in \mathbb{N}}^{}b_{\cancelto{ j }{ k }}X^{\cancelto{ j }{ k }} \right) = \sum\limits_{i,j\in \mathbb{N}}^{} a_{i}b_{j}X^{i+j}
$$
$$
=\sum\limits_{k\in \mathbb{N}}^{}\left( \underset{ i+j=k }{ \sum\limits_{i,j\in \mathbb{N}\text{ tel que}}^{} }a_{i}b_{j}X^{i+j} \right)
$$ $$
=\sum\limits_{k\in \mathbb{N}}^{}\left( \sum\limits_{i,j}^{}a_{i}b_{j} \right)X^{k} \text{ avec } i+j=k
$$

$\boxed{Théorème}$ :
>$(\mathbb{K}[X],+,\times)$ est un anneau commutatif,
> de $\begin{cases}\text{neutre }0_{\mathbb{K}[X]}(\text{polynôme nul})\text{ pour }+ \\ \text{neutre }1_{\mathbb{K}[X]}(\text{le polynôme constant 1})\text{ pour }\times\end{cases}$


où $\begin{cases}0_{\mathbb{K}[X]}=\sum\limits_{k\in \mathbb{N}}^{}0X^{k} \\ 1_{\mathbb{K} [X]}=\sum\limits_{k\in \mathbb{N}}^{}c_{k}X^{k}\text{ où }\begin{cases}c_{0}=1 \\ \forall k \geqslant 1, c_{k}=0 \\ \end{cases}\end{cases}$

- $0+\mathscr p=\mathscr p+0=\mathscr p$   $\forall \mathscr p\in \mathbb{K}[X]$
- Si $\mathscr p=\sum\limits_{ k\in \mathbb{N}}^{}a_{k}X^{k}$ on pose $-P=\sum\limits_{k\in \mathbb{N}}^{}(-a_{k})X^{k}=(-1).P$
	et ainsi $\mathscr p+(-\mathscr p)= (-\mathscr p)+\mathscr p=0$
- $+$, associative et commutative
- $+$ est une LCI sur $\mathbb{K}[X]$
	donc $(\mathbb{K}[X],+)$ est un groupe commutatif
- $\times$ <u>commutative, associative et distributive sur +</u> 
- $\mathscr p\times1= 1 \times \mathscr p$ car 
si $\mathscr p=\sum\limits_{k\in\mathbb{N}}^{}a_{k}X^{k}$ et $1=\sum\limits_{k\in \mathbb{N}}^{}e_{k}X^{k}$ avec $\begin{cases}e_{0}=1 \\ \forall k\geqslant 1, e_{k}=0\end{cases}$
$\mathscr p\times 1=\sum\limits_{k\in \mathbb{N}}^{}c_{k}\times X^{k}$ où $\boxed{c_{k}}=\sum\limits_{i=0}^{}a_{i}e_{k-i}$
$=a_{k}e_{0}+\underbrace{ \sum\limits_{i=0}^{k-1}a_{i}e_{k-i} }_{ =0 }$
$=\boxed{a_{k}}$

donc $\mathscr p\times 1=\mathscr p$

<u>Remarque</u> :
$\mathscr p=\mathscr q$ si les suites de coefficients sont égales
$\forall k\in \mathbb{N},a_{k}=b_{k}$

"Principe d'identification des coefficients"

Les calculs dans un anneau commutatif sont valables !

>-$\forall \mathscr p,\mathscr q\in \mathbb{K}[X]$, $\forall n\in \mathbb{N},(\mathscr p\times \mathscr q)^{n}=\mathscr p^{n}\times \mathscr q^{n}$
>-$(\mathscr p+\mathscr q)^{n}=\sum\limits_{k=0}^{n}\binom{n}{k}\mathscr p^{k}\times \mathscr q^{n-k}$
>-$\mathscr p^{n}-\mathscr q ^{n}=(\mathscr p-\mathscr q)\times \sum\limits_{k=0}^{n-1}\mathscr p^{k}\mathscr q^{n-1-k}$

où $\mathscr p^{0}=1$ 
Si $k \in \mathbb{N}$, $\mathscr p ^{k+1}=\mathscr p ^{k}\times \mathscr p$

Exercice (+cours)

(Formule de Vandermonde)
$\forall(n,m,k)\in \mathbb{N}^{3}$
$$
\sum\limits_{i,j\in \mathbb{N}}^{} \binom{n}{i}\times \binom{m}{j}=\binom{n+m}{i+j}=\binom{n+m}{k}
$$
<u>Cours</u>
>$Or, c_{k}=\sum\limits_{i+j=k}^{}a_{i}b_{j}$ est le coeff. devant $X^{k}$ dans le produit de 2 polynômes
$\left( \sum\limits_{i\in \mathbb{N}}^{}a_{i}X^{i} \right)\times\left( \sum\limits_{j\in \mathbb{N}}^{}b_{j}X^{j} \right)=\sum\limits_{k\in \mathbb{N}}^{}c_{k}X^{k}$
 
 <u>idée</u> On introduit es polynômes suivants :
 $\mathscr p=\sum\limits_{i\in \mathbb{N}}^{}\binom{n}{i}X^{i}$ et $\mathscr q =\sum\limits_{j \in \mathbb{N}}^{}\binom{m}{j}X^{j}$

Ainsi,
$\mathscr {pq}=\sum\limits_{k\in \mathbb{N}}^{}\underbrace{ \left( \sum\limits_{i+j=k}^{}\binom{n}{i}\binom{m}{j} \right) }_{ =c_{k} }X^{k}$
Or $\mathscr p=\sum\limits_{i=0}^{n}\binom{n}{i}X^{i}$ car $\forall i > n, \binom{n}{i}=0$
$\underset{ binome }{ = }(1+X)^{n}$

De même, $\mathscr q=\sum\limits_{j=0}^{m}\binom{m}{j}X^{j}\underset{ binome }{ = }(1+X)^{m}$

Donc $\boxed{\mathscr{pq}}=(1+X)^{n}\times(1+X)^{m}$
$=(1+X)^{n+m}$
$\underset{ binome }{ = }\sum\limits_{k=0}^{n+m}\binom{n+m}{k}X^{k}$
Par égalité des polynômes, $\boxed{c_{k}=\binom{n+m}{k}=\sum\limits_{i+j=k}^{}\binom{n}{i}\binom{m}{j}}$

<u>Conséquence</u>
$\forall n \in \mathbb{N}, \sum\limits_{k=0}^{n}\binom{n}{k}^{2}$ $\begin{align} & =\sum\limits_{k=0}^{n}\binom{n}{k}\times \binom{n}{k}\underset{ sym. }{ = }\sum\limits_{k=0}^{n}\binom{n}{k}\binom{n}{n-k} \\  & =\sum\limits_{i,j}^{}\binom{n}{i}\binom{n}{j}=\binom{2n}{n}\end{align}$

---
 

## 2) Degré d'un polynome

Soit $\mathscr p \in\mathbb{K}[X]$ avec $\mathscr p \neq 0$ 
Ainsi on peut écrire $\mathscr p=\sum\limits_{k \in \mathbb{N}}^{}a_{k}X^{k}$ avec $\begin{cases}(a_{k})_{k}\text{ presque nulle} \\ \text{et }(a_{k})_{k} \neq (0)_{k}\end{cases}$
L'ensemble $\{ k \in \mathbb{N}\text{ }|\text{ }a_{k} \neq 0 \}$ est donc $\begin{cases}\text{non vide} \\ et \\ \text{majoré}\end{cases}$

<b>Donc</b> il admet un plus grand élément, on l'appelle $\boxed{le\text{ }degré\text{ }de\text{ }\mathscr p}$

$\boxed{\forall \mathscr p \in \mathbb{K}[X]\setminus \{ 0 \},deg(\mathscr p)=\max\{ k\in \mathbb{N}\text{ }|\text{ }a_{k} \neq 0 \}}$

Ainsi $\begin{cases}\text{si }d=deg(\mathscr p)\text{ on a }\boxed{d\in \mathbb{N}} \\ a_{d} \neq 0 \text{ et }\forall k>d,a_{k}=0\end{cases}$
donc $\mathscr p=\sum\limits_{k=0}^{d}a_{k}X^{k}$ avec $\boxed{a_{d}\neq 0}$ le <u>coeff. dominant</u>

<u>Conviention</u>
>$\boxed{deg(0)=-\infty}$

Ainsi $\boxed{deg:\mathbb{K}[X]\to \mathbb{N} \cup \{ -\infty \}}$
et $\forall \mathscr p \in \mathbb{K}[X],deg(\mathscr p)< 0\iff \mathscr p = 0$

<big><span style="color:yellow"> ⚠ </span></big>
Si $\mathscr p=\lambda$ avec $\lambda \in \mathbb{K} \setminus \{  0 \}$
on dit que $\mathscr p$ est un <u>poly. contant</u> et non nul. et $deg(\mathscr p)=0$
Ici, $a_{0}=\lambda\neq 0$ coeff. dominant

<u>Déf</u> $\to$
>On dit que $\mathscr p\in\mathbb{K}[X]\setminus \{ 0 \}$ est $\boxed{\text{unitaire}}$ 
><b>si</b> son <u>coeff. dominant vaut 1</u>
>Alors en notant $deg(\mathscr p)=d, \mathscr p=1X^{d}+\sum\limits_{k=0}^{d-1}a_{k}X^{k}$

<u>Notation</u>

Soit $n\in \mathbb{N}$, on note :
>$\mathbb{K}_{n}[X]=\{ \mathscr p \in \mathbb{K}[X] \text{ }|\text{ }deg(\mathscr p)\leqslant n \}$
>l'ens. des poly. de degré majoré par $n$
>Ainsi, $\mathbb{K}_{n}[X]=\{ a_{0}+a_{1}X+\dots+a_{n}X^{n}\text{ }|\text{ }(a_{0},a_{1},\dots,a_{n})\in \mathbb{K}^{n+1} \}$

<b>Exemple</b> : $\mathbb{K}_{0}[X]=\{ a_{0}\text{ }|\text{ }a_{0} \in \mathbb{K}\}=\mathbb{K}$ (<u>les poly. constants</u>)

$\mathbb{K}_{1}[X]=\{ aX+b\text{ }|\text{ }(a,b)\in \mathbb{K}^{2} \}$
$\mathbb{K}_{2}[X]=\{ aX^{2}+bX+c\text{ }|\text{ }(a,b,c)\in \mathbb{K}^{3} \}$

$\mathbb{K}_{0}[X]\subset \mathbb{K}_{1}[X]\subset\dots \subset \mathbb{K}_{n}[X]\subset \mathbb{K}[X]$


$\boxed{\text{Propriété}}$
>$\forall (\mathscr p, \mathscr q)\in \mathbb{K}[X]^{2},\forall\lambda \in \mathbb{K}$
>- $deg(\mathscr p+\mathscr q)\leqslant \max(deg(\mathscr p), deg(\mathscr q))$
>	Si $deg(\mathscr p)\neq deg(\mathscr q),$ alors on a égalité
>-$deg(\lambda \mathscr p)=\begin{cases}deg(\mathscr p)\text{ si }\lambda \neq 0 \\ -\infty\text{ si }\lambda=0\end{cases}$
>-$deg(\mathscr p \mathscr q)=deg(\mathscr p)+deg(\mathscr q)$

---

ici, $\max$ et $+$ sont définies dans $\mathbb{N} \cup \{ -\infty \}$
$\begin{align}\forall n \in \mathbb{N}, & \max(-\infty,n)=\max(n,-\infty)=n \\  & n+(-\infty)=(-\infty)+n=-\infty\end{align}$

<u>Remarque</u> 
Si $\mathscr p=0$, $\mathscr{pq}=0$
	donc $deg(\mathscr{pq})=-\infty$ $=\begin{align} & \underbrace{ deg(\mathscr{p}) }_{  }+deg(\mathscr{q}) \\  & -\infty\text{ }\text{ }\text{ }\text{ }\text{ }+deg(\mathscr q)\end{align}$


<u>Preuve</u> 
si $\mathscr p=\sum\limits_{k=0}^{d}a_{k}X^{k}$ avec $a_{d}\neq 0$
et $\mathscr q=\sum\limits_{k=0}^{d'}b_{k}X^{k}$ avec $b_{d'}\neq 0$
Dans $\mathscr{pq}=\sum\limits_{k\geqslant 0}^{}\underset{ =c_{k} }{ \boxed{\left( \sum\limits_{i+j=k}^{}a_{i}b_{j} \right)} }X^{k}$ avec $\begin{cases}0\leqslant i \leqslant d \\ 0\leqslant j \leqslant d'\end{cases}$

$\forall k >d+d',c_{k}=0$
et $c_{d+d'}=a_{d}+b_{d'}$ avec les 3 $\neq 0$ et $a_{d},b_{d'}\in \mathbb{K}$
donc $deg(\mathscr{pq})=d+d'=deg \mathscr (p)+deg (\mathscr q)$

$\boxed{\text{Propriété}}$
$(\mathbb{K}[X],+,\times)$ est un anneau intègre
$\forall (\mathscr p, \mathscr q) \in \mathbb{K}[X]^{2}$, $\mathscr p \mathscr q=0 \implies(\mathscr p=0 \lor \mathscr q=0)$

<u>Preuve</u>
si $\mathscr{pq}=0$
alors $deg(\mathscr{pq})=deg(0)$
donc $deg(\mathscr p)+deg( \mathscr q)=-\infty$
donc $deg (\mathscr p)=-\infty \lor deg (\mathscr q)=-\infty$
$\underline{\mathscr p=0 \lor \mathscr q = 0}$

<u><span style="color:yellow"> Remarque </span></u> : On peut donc <u>simplifier</u> dans $\mathbb{K}[X]$ par un <u>polynôme non nul</u> 
$\boxed{\text{Si }\mathscr {ab}=\mathscr {ac} \text{ et }\mathscr a \neq 0}$
Alors $\mathscr{ab}-\mathscr{ac}=0$
<b>donc</b> $\mathscr a\times(\mathscr b- \mathscr c)=0$
donc $\mathscr b-\mathscr c= 0$
donc $\boxed{\mathscr b=\mathscr c}$

<span style="color:violet"> Exemple </span> 
si $X^{2}\times \mathscr p\times(X+1)=\mathscr q^{2}\times(X+1)^{2}\times X^{3}$
$\underset{ X \neq 0\text{ et }X+1 \neq 0 }{ \text{alors} }$   $\mathscr p= \mathscr q^{2}\times(X+1)\times X$
$=X(X+1)\mathscr q ^{2}$

$\boxed{\text{Propriété}}$ $(\text{Inversibles de }\mathbb{K}[X])$
>Si $\mathscr p,\mathscr q\in \mathbb{K}[X]$ tels que $\mathscr{pq}=1$
>alors $\mathscr p$ et $\mathscr q$ sont des polynômes <u>constants non nuls</u>
>L'ensemble des poly. inversibles de $\mathbb{K}[X]$ est $\mathbb{K}_{0}[X]\setminus \{ 0 \}$ $\begin{align} & =\mathbb{K}^{*} \\  & =\mathbb{K} \setminus \{ 0 \}\end{align}$

<u>Preuve</u> :
Si $\mathscr{pq}=1$ alors $deg(\mathscr{pq})=deg(1)$
donc $deg(\mathscr p)+deg(\mathscr q)=0,$    $deg(\mathscr p),deg(\mathscr q)\in \mathbb{N}\cup \{ -\infty \}$
donc $deg(\mathscr p)= deg(\mathscr q)=0$ donc $\boxed{\mathscr p, \mathscr q\in \mathbb{K}_{0}[X]\setminus \{ 0 \}}$

<u>Réciproquement</u>,
si $\mathscr p=\lambda$ avec $\lambda \in \mathbb{K}^{*}$
alors $\lambda \times \lambda ^{-1}=1$
Or $\lambda ^{-1}\in \mathbb{K}$ (corps)
Alors $\mathscr p ^{-1}=\frac{1}{\mathscr p}= \frac{1}{\lambda}$ l'inverse de $\mathscr p =\lambda$

3) Division euclidienne dans $\mathbb{K}[X]$

$\boxed{Théorème}$
>Soient $\mathscr{a,b}\in \mathbb{K}[X]$ avec $\mathscr b \neq 0$
>$\exists!(\mathscr{q,r})\in \mathbb{K}[X]^{2}$ tq
>	$\mathscr{a=bq+r}$ avec $deg(\mathscr r)<deg(\mathscr b)$

<u>Preuve</u> :
- $\boxed{\text{Unicité}}$
	Si $(\mathscr q_{1},\mathscr r_{1})$ et $(\mathscr q_{2}, \mathscr  r_{2})$ conviennent
	$\mathscr a= \mathscr{bq}_{1}+\mathscr r_{1}=\mathscr{bq}_{2}+r_{2}$
	avec $\begin{cases}deg(\mathscr r_{1})<deg(\mathscr b) \\ deg(\mathscr r_{2})<deg(\mathscr b)\end{cases}$
	donc $\mathscr b(\mathscr q_{1}- \mathscr q_{2})=\mathscr r_{2}- \mathscr r_{1}$
	$deg(\mathscr b)+deg(\mathscr q_{1}- \mathscr q_{2})=deg(r_{2}-r_{1})\leqslant\max(deg(\mathscr r_{1}), deg(\mathscr r_{2}))<deg (\mathscr b)$
	or $B \neq 0$ donc $deg(B)\in \mathbb{N}$
	donc $deg(Q_{1}- Q_{2})<0$
	donc $Q_{1}- Q_{2}=0$ donc $\boxed{Q_{1}=Q_{2}}$
	puis $R_{2} -R_{1}=0$ donc $\boxed{R_{1}= R_{2}}$

<span style="color:violet"> Exemple </span>(unicité) : 
Division euclidienne de 
$A=X^{4}+5X^{3}-X+2$
par $B = X^{2}+1$

<u>Posons la division</u>

![[Polynomes 1.png]]

![[Polynomes 2.png]]

Changement de notation : $\mathscr q$ et autres lettres pour les polynomes deviennent $Q$ en maj normales

$\boxed{Thèorème}$ Div. Euclidienne 
>Soit $(A,B)\in \mathbb{K}[X]^{2}$ avec $B \neq 0$
>$\exists ! (Q,R) \in \mathbb{K}[X]^{2}$ tq 
>$\begin{cases}A=BQ+R \\ \text{et }deg(R)<deg(B)\end{cases}$

<u>Preuve</u> (Existence)
Fixons $B \neq 0$ de degré $m\in \mathbb{N}$
et écrivons $B=b_{m}X^{m}+B_{1}$
où $\begin{cases}deg(B_{1})<m \\ \boxed{b_{m}}\neq 0\end{cases}$

$\underline{\text{Récurrence sur }deg(A)}$
Soit $H_{n}:[\text{Pour tout polynôme }P\in \mathbb{K}_{n-1}[X],\text{ il existe }(P,Q)\in \mathbb{K}[X]^{2}\text{ tel que }\begin{cases}P=QB+R \\ deg(R)<deg(b)\end{cases}]$

<u>Init.</u>
Pour $n \leqslant m=deg (b)$
Soit $A\in \mathbb{K}[X]$ avec $deg(A)\leqslant n-1<m$
On peut écrire $A=B \times 0 +\boxed{A}$
et on a bien $deg(A) < deg (B)$
donc ici, $\begin{cases}Q=0 \\ R=1\end{cases}$ (cas d'arrêt)


<u>Hérédité</u>
Soit $n \geqslant m$ tel que $H_{n}$
$\to$ Montrons $H_{n+1}$

Soit $A$ de degré $n$
Ainsi $A=a_{n}X^{n}+A_{1}$ avec $\begin{cases}deg(A_{1})<n \\ a_{n}\neq 0\end{cases}$
Or, $\frac{a_{n}}{b_{n}}X^{\overbrace{ n-m }^{ \in \mathbb{N} }}\times B=a_{n}X^{n}+\frac{a_{n}}{b_{m}}X^{n-m}B_{1}$

Posons $\tilde{A}=A- \frac{a_{n}}{b_{m}}X^{n-m}B$
Ainsi, $\tilde{A}=A_{1}-\frac{a_{n}}{b_{m}}X^{n-m}B_{1}$
$\begin{align}\text{avec, } & deg(A_{1})<n \\  & deg(B_{1})<m\end{align}$
donc $deg(X^{n-m}B_{1})=n-m+deg(B_{1})\text{ }\text{ }\boxed{<n}$
donc $deg(\tilde{A})\leqslant\max(deg(A_{1}),deg(X^{n-m}B_{1}))<n$
En appliquant $H_{n}\text{ }à\text{ }\tilde{A}$ :
$\begin{align}\exists(\tilde{Q},\tilde{R})\text{ tels que } &\tilde{A}=B \tilde{Q}+ \tilde{ R} \\  & \text{avec } \boxed{deg(\tilde{R})<deg(B)} \end{align}$
Or $A=\tilde{A}+ \frac{a_{n}}{b_{m}}X^{n-m}B$
Ainsi, $A=B\times \underbrace{ \left[ \frac{a_{n}}{b_{m}}X^{n-m}+Q \right] }_{ \text{quotient }Q }+\boxed{\tilde{ R}}$ $\to$ le reste $R$

<u>Déf</u> $\to$
>Soient $A,B\in \mathbb{K}[X]$ avec $B \neq 0$
>$\boxed{B\text{ divise }A}$, noté $B\text{ }|\text{ }A$
>si $\exists \underbrace{ C\in\mathbb{K}[X] }_{ (\text{polynôme !!}) }$ tel que $A=BC$

<span style="color:violet"> Remarque </span> : $B\text{ }|\text{ }A\text{ }\boxed{\iff}$ le reste de la div. eucl. de $A$ par $B$ est nul

Si $B\text{ }|\text{ }A$, $\exists C\in \mathbb{K}[X]$ tel que $A=BC$
donc $A=BC+0$ avec $deg(0)=-\infty<deg(B)$
donc $0$ est <u>LE reste</u> de la div. eucl. de $A$ par $B$

# II - Fonctions polynomiales et racines

## <u>1. Fonction polynomiale</u>

Soit $P=\sum\limits_{k=0}^{a}a_{k}X^{k}$
On appelle <u>fonction polynomiale associée</u> : 
$\begin{align}\tilde{P}:\text{ } & \mathbb{K}\to \mathbb{K} \\  & x \mapsto \sum\limits_{k=0}^{d}a_{k}x^{k}\end{align}$     $\in \mathcal F(\mathbb{K},\mathbb{K})$
$\tilde{P}(x)$ est <u>l'évaluation</u> de $P$ en $x \in \mathbb{K}$, on a $\underline{\text{substitué }x\text{ à }X}$ 

$\boxed{\text{Proposition}}$ : 
Soient $P,Q\in \mathbb{K}[X]$,
$\tilde{P\times Q}=\tilde{P}\times \tilde{Q}$
$\boxed{\forall\lambda \in \mathbb{K}}$, $\tilde{\lambda P}=\lambda \tilde{P}$
Dans la suite, on pourra confondre les notations $P$ et $\tilde{P}$

<u>Déf</u> $\to$
>Soit $f\in \mathcal F(X,\mathbb{K})$ où $X \subset \mathbb{K}$
>On dira que $f$ est une <u>fonction polynomiale</u> s'il existe $P\in \mathbb{K}[X]$ tel que 
>$\forall x \in X,\text{ }f(x)=\tilde{P}(x)$

## <u>2. Racine</u>

<u>Déf</u> $\to$
>Soit $P\in \mathbb{K}[X]$ et $\alpha \in \mathbb{K}$
>On dit que $\boxed{\alpha\text{ est une racine de }P}$ si $\tilde{P}(\alpha)=0$

<span style="color:lime"> <small>Les racines de P sont les zéros de la fonction polynomiale P tilde</small> </span>

$\boxed{Théorème}$  (Factorisation par une racine)
> $\begin{align}\alpha\text{ est racine de }P & \iff(X-\alpha)\text{ }|\text{ }P \\  & \iff \exists Q\in \mathbb{K}[X]\text{ tel que }P=(X-\alpha)\times Q\end{align}$

<u><span style="color:Gold"> Preuve </span></u>
$\boxed{\impliedby}$
Si $P=(X-\alpha)\times Q$
$\begin{align}\text{Alors, }\tilde{P}(\alpha) & =(\alpha-\alpha)\tilde{Q}(\alpha) \\  & =0\text{ }\text{ }\text{ }\text{donc }\alpha\text{ est une racine de }P\end{align}$

$\boxed{\implies}$
Supposons $\alpha$ racine de $P$
Posons la div. eucl. de $P$ par $(X-\alpha)$
$\exists!(Q,R)\in \mathbb{K}[X]^{2},P=(X-\alpha)\times Q+R$ avec $\boxed{deg(R)<deg(X-\alpha)}$
<u><b>Donc</b></u> $deg(R)< 1$
donc $R\in \mathbb{K}_{0}[X]$
donc $\boxed{R\text{ est constant}}$
Posons $\lambda \in \mathbb{K}$ tel que $R=\lambda$
$P=(X-\alpha)\times Q+\lambda$, On évalue en $\alpha$ :
$\tilde{P}(\alpha)=(\alpha-\alpha)Q(\alpha)+\lambda$
donc $\tilde{P}(\alpha)=\lambda$
Or $\alpha$ est racine de $P$.
$\tilde{P}(\alpha)=0$ donc $\lambda=0$, donc $\boxed{R=0}$ et $\boxed{P=(X-\alpha)Q}$

$\boxed{Corollaire}$
>Si $\alpha_{1},\alpha_{2},\dots,\alpha_{r}$ sont des racines <u><u>distinctes</u></u> de $P$
>alors $\left( \prod\limits_{i=1}^{r}(X-\alpha_{i}) \right)$ divise $P$
>c'est-à-dire : $\exists Q\in \mathbb{K}[X]$ tel que 
>$P=\left( \prod\limits_{i=1}^{r}(X-\alpha_{i}) \right)\times Q$
>avec $deg(P)=r+deg(Q)$

<u><span style="color:gold"> Preuve </span></u> du corollaire $\colon$
Récurrence sur $k\in \textlbrackdbl 1;r \textrbrackdbl$
- $\underline{k=1}$ $\to$ $\boxed{Th.}$ précédent
- Soit $k\in \textlbrackdbl 1;r-1 \textrbrackdbl$ tel que le résultat est $\underline{\text{est vérifié au rang }k}$
	Posons $\alpha_{1},\alpha_{2},\dots,\alpha_{k},\alpha_{k+1}$     $(k+1)$ racines distinctes
	Par $H.R.$ $\exists Q\in \mathbb{K}[X],$
		$P=\left( \prod\limits_{i=1}^{k}(X-\alpha_{i}) \right)\times Q$
On évalue en $\alpha_{k+1}$
$\tilde{P}(\alpha_{k+1})=\underbrace{ \left( \prod\limits_{i=1}^{k}\underbrace{ (\alpha_{k+1}-\alpha_{i}) }_{ \neq 0 } \right) }_{ \neq 0\text{ }(\text{intégrité de }\mathbb{K}) }\times \tilde{Q}(\alpha_{k+1})$
donc $\tilde{Q}(\alpha_{k+1})=0$
donc $\alpha_{k+1}$ est racine de $Q$
donc $\exists Q_{1}\in \mathbb{K}[X],Q=(X-\alpha_{k+1})\times Q_{1}$
donc $P=\left( \prod\limits_{i=1}^{k+1}(X-\alpha_{i}) \right)\times Q_{1}$ d'où le résultat au rang $k+1$

$\boxed{Théorème}$ 
>Soit $P\in \mathbb{K}[X]$ de $\underline{\text{degré }n\in \mathbb{N}}$
>Alors $P$ possède $\underline{\underline{\text{au plus}}}$ $n$ racines distinctes 

<u><span style="color:gold"> Preuve </span></u> :
Notons $\alpha_{1},\alpha_{2},\dots,\alpha_{r}$ les <u>racines distinctes de </u> $P_{i}$
Alors $P=\left( \prod\limits_{i=1}^{r}(X-\alpha_{i}) \right)\times Q$ avec $A \neq 0$ (car $P \neq 0$)
or $deg(P)=\underbrace{ n }_{ \in \mathbb{N} }=r+\underbrace{ deg(Q) }_{ \in \mathbb{N} }\geqslant r$
donc $\boxed{ r \leqslant n}$

$\boxed{Corollaire}$ :
>Soit $P \in \mathbb{K}_{n}[X]$, tel que $P$ possède au moins $(n+1)$ racines distinctes,
><u><b>Alors</b></u> $P$ est le polynôme nul

<u><span style="color:gold"> Preuve </span></u>:
Si $P\neq 0$, alors $deg(P)\in \mathbb{N}$ 
et le nombre de racines est majoré par $deg(P)$
ce qui donne $n+1 \leqslant n$ <small>(absurde)</small>
<u>Donc</u> $P=0$

<u><span style="color:Cyan"> Exemples d'application </span></u>
- <u>Montrer que deux polynômes sont égaux</u>
	Soient $A,B\in \mathbb{K}_{n}[X]$
	Pour montrer que $A=B$, on montre $A-B=0$
	il suffit alors de trouver $(n+1)$ valeurs distinctes dans $\mathbb{K}$
	$x_{0},x_{1},\dots x_{n}$ telles que $\forall i\in \textlbrackdbl 0;n \textrbrackdbl$, $(A-B)(x_{i})=0$
	
	Or $deg(A-B)\leqslant \max(deg(A);deg(B))\leqslant n$
	$\begin{cases}A-B\in \mathbb{K}_{n}[X] \\ A-B\text{ possède }(n+1)\text{ racines distinctes}\end{cases}$
	donc $A-B=0$ donc $\boxed{A=B}$

	<u>En reformulant</u> :
		Si $A,B\in \mathbb{K}_{n}[X]$ et si $\boxed{A\text{ et }B\text{ coïncident en }(n+1)\text{ valeurs distinctes}}$ , alors $A=B$
		$(\exists x_{0},\dots,x_{n}\in \mathbb{K}\text{ deux-à-deux distincts tq }\forall i \in \textlbrackdbl 0;n \textrbrackdbl,A(x_{i})=B(x_{i}))$
		$cf.$ interpolation

- <u>Montrer qu'une fonction n'est pas polynômiale</u>
	
	$\sin$ n'est pas polynomiale,
		Par l'absurde, supposons $\exists P\in \mathbb{K}[X]$ tel que $\forall x \in \mathbb{R},\sin(x)=\tilde{P}(x)$
		Alors $\forall n\in \mathbb{Z}$, $\sin(2\pi n)=0=\tilde{P}(2\pi n)$
		Les $(2\pi n)_{n\in \mathbb{Z}}$ sont des racines distinctes de $P$
		On a une <u>infinité de racines</u> donc $P=0$,
		or $\sin\left( \frac{\pi}{2}=1\neq 0 \right)$, d'où l'absurdité.

<u>Exercice</u> :
Si $\begin{array}{rcl}f:\mathbb{K}&\to& \mathbb{K}\end{array}$ est $T-$périodique avec $T> 0$, alors $f$ n'est pas polynomiale

Par l'absurde, s'il existe $P\in \mathbb{K}[X]$ tel que $\forall x \in\mathbb{K}$, $f(x)=\tilde{P}(x)$
or $\forall n\in \mathbb{Z},f(nT)=f(0)$
Ainsi $P-\underbrace{ f(0) }_{ \text{cste.} }$ est un polynôme qui s'annule une infinité de fois.
donc c'est le polynôme nul, donc $\boxed{P=f(0)}:P$ est constant égal à $f(0)$
donc $\forall x \in \mathbb{K},f(x)=\tilde{P}(x)=f(0)$, donc $\boxed{f\text{ est constante}}$

- $\boxed{\exp\text{ n'est pas polynomiale}}$ 
	Sinon $\exists P\in \mathbb{C}[X],\forall z\in \mathbb{C},e^{ z }=P(z)$
	$\begin{align}\forall z\in \mathbb{C},\exp(z+2\pi i) & =e^{ z }\times e^{ 2\pi i } \\  & =e^{ z }\times{1} \\  & =e^{ z }\end{align}$
	Ainsi, $\exp$ est $(2\pi i)-$périodique et <u>non constante</u>, donc <u>non polynomiale</u>

## 3. Composée dans $\mathbb{K}[X]$
<u>Déf</u> $\to$
>Soit $P=\sum\limits_{k\geqslant 0}^{}a_{k}X^{k}\in \mathbb{K}[X]$ et $Q\in \mathbb{K}[X]$
>On définit $P\circ Q$ par $P \circ Q=\sum\limits_{k\geqslant 0}^{}a_{k}Q^{k}$
>On remarque que $P\circ Q\in \mathbb{K}[X]$

Ainsi la composition est une LCI sur $\mathbb{K}[X]$

<span style="color:violet"> Remarque </span> :
$(\widetilde{P\circ Q})=\tilde{P}\circ \tilde{Q}$

$\boxed{Prop}$ 
$\forall(P_{1},P_{2},Q)\in \mathbb{K}[X]^{3}$
$(P_{1}+P_{2})\circ Q=P_{1} \circ Q+ P_{2} \circ Q$
$(P_{1}\times P_{2})\circ Q=(P_{1}\circ Q)\times(P_{2}\circ Q)$

⚠
- $\circ$ n'est pas commutative 
- $\circ$ n'est pas distributive à gauche

<big>⚠</big> <u><b>Notations</b></u>
Si $Q=X\in \mathbb{K}[X]$
$P\circ Q=\boxed{P\circ X=P}$

<u>Abus de notations</u>
on va écrire $P(X)=P=P\circ X$
<u><small>Plus généralement</small></u>, Pour $Q\in \mathbb{K}[X]$, on écrira $P\circ Q=P(Q)$

Si 
$P(X)$=$\sum\limits_{}^{}a_{k}X^{k}$
Alors
$P(Q)=\sum\limits_{}^{}a_{k}Q^{k}$
<u>Exemples</u> Si $P(X)=P=X^{4}-2X^{2}+1$  
$=(X^{2})^{2}-2(X^{2})+1$  $=Q(X^{2})$
avec $Q=Q(X)=X^{2}-2X+1=(X-1)^{2}$
$\begin{align}\text{Donc }P =Q(X^{2})=(X^{2}-1)^{2} & =[(X-1)(X+1)]^{2} \\  & =(X-1)^{2}  (X+1)^{2}\end{align}$
---
$\to$  Composition avec un polynôme constant
	Soit $P\in \mathbb{K}[X]$ et $Q=\lambda \in \mathbb{K}_{0}[X]$
	Alors $P=\sum\limits_{k\geqslant 0}^{}a_{k}X^{k}$
	donc $P\circ Q=\sum\limits_{}^{}a_{k}Q^{k}=\sum\limits_{}^{}a_{k}\lambda^{k}=\boxed{\tilde{P}(\lambda)}$
	$P \circ Q= P(Q)=P(\lambda)$, la notation coïncide avec $\tilde{P}(\lambda)$

Que dire en général de $\mathrm{deg}(P\circ Q)$ ?

$\boxed{\text{Propriété}}$ 
>Si $P$ et $Q$ sont deux polynômes <u>NON constants</u>
>$(\mathrm{deg}(P)\geqslant 1$ et $\mathrm{deg}(Q)\geqslant 1)$
>Alors $\mathrm{deg}(P\circ Q)=\mathrm{deg}(P)\times \mathrm{deg}(Q)$

Si $d\geqslant 1$ est le degré de $P$
	$P=\sum\limits_{k=0}^{d}a_{k}X^{k}$ avec $\boxed{a_{d}\neq 0}$
	$P \circ Q=\sum\limits_{k=0}^{d}a_{k}Q^{k}$
	Or, $\mathrm{deg}(Q^{k})=k\mathrm{deg}(Q)$
	Ainsi, comme $\mathrm{deg}(Q)\geqslant 1,$ 
	$(k\mathrm{deg}\text{ }Q)_{0<k\leqslant d}$ est strictement croissante

Ainsi dans la somme $\sum\limits_{k=0}^{d}a_{k}Q^{k}$
le terme en $k=d$ donnera le degré
$\forall k < d, \mathrm{deg}(a_{k}Q^{k})<\mathrm{deg}(\underbrace{ a_{d} }_{ \neq 0 }Q^{d})$
Donc $\mathrm{deg}(P\circ Q)=[\dots]=d\times \mathrm{deg}(Q)=(\mathrm{deg}(P))\times(\mathrm{deg}(Q))$

⚠ : En général, $P(X+1)$ désigne $P \circ (X+1),$ en revanche, $(X+1)P$ désigne $(X+1)\times P$

$\begin{array}{rcl}f:A&\to& B \\ x &\mapsto &f(x)\end{array}$   

# III - Dérivation dans $\mathbb{K}[X]$
## 1. Définitions

<u>Déf</u> $\to$
>Soit $P=\sum\limits_{k\geqslant_{0}}^{}a_{k}X^{k}$  $\in \mathbb{K}[X]$
>On définit <u>le polynôme dérivé</u>, noté $P'$ par
$P'=\sum\limits_{k\geqslant \underline{\underline{1}}}^{}ka_{k}X^{k-1}=\sum\limits_{k\geqslant 0}^{}(k+1)a_{k+1}X^{k}$


$\boxed{\text{Propriété}}$
>$(\tilde{P})'=\widetilde{(P')}$

---
$P=3X^{2}-2X+7$
$P'=6X-2$
En particulier, $\boxed{\forall p \in\mathbb{N},(X^{p})'=\begin{cases}pX^{p-1}\text{ si }p\geqslant1 \\ 0 \text{ si }p=0\end{cases}}$

$\boxed{\text{Propriété}}$ 
>$\forall P\in \mathbb{K}[X],$
>$\mathrm{deg}(P')=\begin{cases}(\mathrm{deg } P)-1\text{ }\text{ si }\mathrm{deg}(P)\geqslant 1 \\ -\infty\text{ }\text{ si }P\text{ constant}\end{cases}$

<u><span style="color:gold"> Preuve </span></u> :
- Si $P=0,P'=0$ $\checkmark$
- Sinon, $\mathrm{deg}(P)=d\in \mathbb{N}$ et $P=\sum\limits_{k=0}^{d}a_{k}X^{k}$ avec $\boxed{a_{d }\neq 0}$
	$P'=da_{d}X^{d-1}+\underbrace{ \text{ }\text{ }\text{ }\text{ }\text{ } }_{ d_{g}<d-1 }$

## 2. Dérivées successives

<u>Déf</u> $\to$
>Soit $P\in \mathbb{K}[X]$
>on définit la <u>k-ième dérivée de P</u> récursivement
>	$P^{(0)}=P$
>$\forall k\in \mathbb{N},P^{(k+1)}=(P^{(k)})'$

<span style="color:violet"> Remarque </span>
$P^{(1)}=P',$      $P^{(2)}=P''$

$\boxed{\text{Propriété}}$
>$\forall P\in \mathbb{K}[X],\forall k\in \mathbb{N}$,
>$\mathrm{deg}(P^{(k)})=\begin{cases}\mathrm{deg}(P)-k\text{}\text{ si }\mathrm{deg}(P)\geqslant k \\ -\infty\text{ }\text{ si }\mathrm{deg}(P)< k\end{cases}$

$\boxed{Théorème}$ (Taylor-Young version polynômes)
>$\forall P\in \mathbb{K}[X]$, $P=\sum\limits_{n\geqslant 0}^{}\frac{P^{(n)}(0)}{n!}X^{n}$

Précisément: $\forall P\in \mathbb{K}_{d}[X],P=\sum\limits_{k=0}^{d} \frac{P^{(k)}(0)}{k!}X^{k}$

<u>Corollaire</u>: 
>$\forall P\in \mathbb{K}_{d}[X],P(X)=P=\sum\limits_{k=0}^{d} \frac{P^{(k)}(a)}{k!}(X-a)^{k}$

<u><span style="color:gold"> Preuve</u> </span>
Soit $P\in \mathbb{K}_{d}[X]$. On pose $Q(X)=P(X+a)$.
$\deg(Q)=\deg(P)\times\deg(X+a)=\deg(P)$
<u>On applique Taylor en 0 par Q</u>
$Q(X)=\sum\limits_{k=0}^{d} \frac{Q^{(k)}(0)}{k!}X^{k}$
Donc $\underbrace{ Q(X-a) }_{ P(X) }=\sum\limits_{k=0}^{d}\frac{Q^{(k)}(0)}{k!}(X-a)^{k}$
Or, $Q(0)=P(a)$
$Q(X)=P(X+a)$, donc en dérivant,
$Q'(X)=P'(X+a)$
Par récurrence: $Q^{(k)}(X)=P^{(k)}(X+a)$ 
donc $Q^{(k+1)}(X)=P^{(k+1)}(X+a)$.
Ainsi, $\boxed{\forall k\in \mathbb{N},Q^{(k)}(0)=P^{(k)}(a)}$ 
## 3. Dérivée formelle et opérations

$\boxed{Théorème}$
>$(P+Q)'=P'+Q'$
>$\forall\lambda \in \mathbb{K},$ $(\lambda P)'=\lambda P'$
>$(P\times Q)'=P'\times Q+P\times Q'$
>$(P\circ Q)'=(P' \circ Q)\times Q'$

<u><b>Dérivées successives et opérations</b></u> 
>$\forall n\in \mathbb{N},(P+Q)^{(n)}=P^{(n)}+Q^{(n)}$
>$\forall\lambda \in \mathbb{K},(\lambda.P)^{(n)}=\lambda P^{(n)}$
>$\boxed{Leibniz}$ 
>$(P\times Q)^{(n)}=\sum\limits_{k=0}^{n}\binom{n}{k}P^{(k)}\times Q^{(n-k)}$

<u>Résumé</u> :
Soit $P\in \mathbb{K}[X]$ avec $\mathrm{deg}(P)=d\in \mathbb{N}$
et $a_{d}\in \mathbb{K}\setminus \{ 0 \}$ son coeff. dominant
Si $P$ possède $\alpha_{1},\dots,\alpha_{d}$ comme <u>racines distinctes</u>
alors $\underset{ \text{factorisation de }P }{ \boxed{P=a_{d}\times \prod\limits_{i=1}^{d}(X-\alpha_{i})} }$

<u>Exemple</u> :
Soit $n\in \mathbb{N}^{*}$ et $P_{n}=X_{n}-1$
$\begin{cases}\mathrm{deg}(P_{n})=n \\\text{coeff. dominant }=1\end{cases}$
Cherchons les racines de $P_{n}$
Soit $z\in \mathbb{C}$ tq $P_{n}(z)=0$
$P_{n}(z)=0\iff z^{n}-1=0$
$\iff z^{n}=1\iff z\in \mathbb{U}_{n}\iff\underline{\exists k\in \textlbrackdbl 0;n-1 \textrbrackdbl, z=e^{ \frac{2ik\pi}{n} }}$

On a trouvé les <u>racines distinctes</u> pour $P_{n}$
donc $P_{n}=1\times \prod\limits_{p=0}^{n-1}(X-e^{ \frac{2ik\pi}{n} })$
$\underset{ 1\in \mathbb{U}_{n} }{ \boxed{X^{n}-1=\prod\limits_{\omega \in \mathbb{U}_{n}}^{}(X-\omega)} }$

$X^{n}-1=X-1\times \prod\limits_{\omega \in \mathbb{U}_{n}}^{}(X-\omega)$ avec $\omega \neq 1$
$\begin{align}\text{donc, }\boxed{\prod\limits_{\omega \in \mathbb{U}_{n}}^{}(X_{\omega})} & =\frac{X^{n}-1}{X-1} \\  & =\boxed{\sum\limits_{k=0}^{n-1}X^{k}}\end{align}$ 

$X^{n}-1\underset{ Bernouilli }{ = }X^{n}-1^{n}=(X-1)\times \sum\limits_{k=0}^{n-1}X^{k}$

$1+X+X^{2}+\dots+X^{n-1}=\prod\limits_{k=1}^{n-1}(X-e^{ \frac{2ik\pi}{n} })$
<u>Cas particulier</u> : $1+X+X^{2}=(X-j)(X-j^{2})$ où $j=e^{ \frac{2i\pi}{3} }=-\frac{1}{2}+i \frac{\sqrt{ 3 }}{2}$

---
## 4. Racines multiples et dérivées successives

<u>Déf</u>$\to$(Multiplicité d'une racine)
>Soit $P\in \mathbb{K}[X]$ non nul, et $\alpha \in \mathbb{K}$
>On appelle <u>multiplicité de la racine</u> $\alpha$ l'entier suivant :
>$\max\{ k\in \mathbb{N}\text{ tel que }(X-\alpha)^{k}\text{ }|\text{ }P \}$

<span style="color:violet"> Remarque </span>
Si $(X-\alpha)^{k}\text{ }|\text{ }P$
alors $\mathrm{deg}((X-\alpha)^{k})\leqslant \mathrm{deg}(P)$
donc $k\leqslant \mathrm{deg}(P)$
L'ensemble est donc bien <u>majoré</u>

$(X-\alpha)^{0}=1\text{ }|\text{ }P$ donc l'ensemble <u>contient toujours 0</u> (Non vide !)

L'ensemble admet bien un plus grand élément
Notons $m=\max\{ k\in \mathbb{N}\text{ tq }k\text{ }|\text{ }P \}$
on a $(X-\alpha)^{m}\text{ }|\text{ }P$ et $(X-\alpha)^{m+1}\nmid P$

<u>Vocabulaire</u>
- $m=0\iff\alpha$ n'est pas racine de $P$
	$\iff(X-\alpha)^{1}\nmid P$
	<u>Une racine de multiplicité 0</u> n'est pas une racine de $P$
- $m=1$ : $\alpha$ est une <u>racine simple</u> de $P$
- $m=2$ : $\alpha$ est une <u>racine double</u> de $P$

<u>Exemple</u> :
$\begin{align}P & =X^{3}(X^{2}-1)^{2}(X+1)^{3} \\  & =X^{3}((X-1)(X+1))^{2}(X+1)^{3} \\  & =X^{3}(X-1)^{2}(X+1)^{5}\end{align}$
$\mathrm{deg}(P)=10$ et $\begin{cases}0\text{ racine de multliplicité }3 \\ 1\text{ racine de multliplicité }2 \\ (-1)\text{ racine de multliplicité }5\end{cases}$

$\boxed{Théorème}$ (Multiplicité et dérivées)
>Soit $P\in \mathbb{K}[X]$ non nul
>Soit $\alpha \in \mathbb{K}$ et $m\in \mathbb{N}^{*}$
>On a équivalence entre :
>	(i) $\alpha$ est racine de $P$ avec multiplicité $m$
>$\iff$
>	(ii) $\begin{cases}P(\alpha)=P'(\alpha)=\dots=P^{(m-1)}(\alpha)=0 \\ \text{et }P^{(m)}(\alpha)\neq 0\end{cases}$

<u><span style="color:gold"> Preuve </span></u> 
 - $\boxed{\text{(i)}\implies\text{(ii)}}$
 <u>Lemme</u> : Soit $m\in \mathbb{N}^{*}$, Si $\alpha$ racine de $P$ de mult. $m$ alors $\alpha$ est racine de $P'$ de mult. $m-1$ 
	 Preuve lemme
		 On suppose $\begin{cases}P=(X-\alpha)^{m}\times Q \\ \text{avec }Q(\alpha)\neq 0\end{cases}$
		 On dérive formellement :
		 $\begin{align}P' & =m(X-\alpha)^{m-1}\times Q+(X-\alpha)^{m}\times Q' \\  & =(X-\alpha)^{m-1}\times\underbrace{ [mQ+(X-\alpha)Q'] }_{ =Q_{1} }\end{align}$
		 avec $Q_{1}(\alpha)=\underbrace{ m }_{ \neq 0 }\underbrace{ Q(\alpha) }_{ \neq 0 }+0$
		 $\boxed{m-1\text{ est l mult. de }\alpha\text{ en }P}$
	On sait que $\underline{m\text{ est la mult. de }\alpha\text{ dans }P}$
	On pose $H_{k}:[\alpha$ est racine de $P^{(k)}$ avec mult. $m-k]$
	<u>Récurrence finie</u> sur $k\in \textlbrackdbl 0;m \textrbrackdbl$
	- <u>Initialisation</u> : $H_{0}$     $\checkmark$           <small>c'est l'hypothèse du Théorème </small>
	- <u>Hérédité</u> : Soit $k\in \textlbrackdbl 1;m \textrbrackdbl$ tel que $H_{k-1}$
	On sait que $\alpha$ est racine de $P^{(k-1)}$ avec mult. $(m-(k-1))$
	Ici $m-(k-1)=\underbrace{ m-k }_{ \geqslant 0 }+1\text{ }\underline{\underline{\geqslant 1}}$  :)
	Donc par le lemme, 
	$\alpha$ est racine de $\underbrace{ (P^{(k-1)})' }_{ P^{(k)} }$ avec mult. $m-k$,  donc $H_{k}$  $\checkmark$
	-<u>Conclusion</u>
	$\boxed{\forall k\in \textlbrackdbl 0;m \textrbrackdbl,H_{k}\text{ est vraie}}$
	Finalement pour $\boxed{k\in \textlbrackdbl 0;m-1 \textrbrackdbl}$, $m-k\geqslant 1$
	Donc $\alpha$ est racine de $P^{(k)}$ donc $\boxed{P^{k}(\alpha)=0}$
	Enfin, $P^{(m)}$ n'a pas $\alpha$ comme racine car la mult. est $m-m=0$

- $\boxed{\text{(ii)}\implies\text{(i)}}$
	Supposons $\begin{cases}\forall k\in \textlbrackdbl 0;m-1 \textrbrackdbl,P^{(k)}(\alpha)=0 \\ \text{et }P^{(m)}(\alpha)\neq 0\end{cases}$
	Appliquons la formule de <u>Taylor polynomiale</u> en $\alpha$ :
	$\begin{align}P & =\sum\limits_{k\geqslant 0}^{}\frac{P^{(k)}(\alpha)}{k!}(X-\alpha)^{k} \\  & =\sum\limits_{k\geqslant m}^{}\frac{P^{(k)}(\alpha)}{k!}(X-\alpha)^{k}=\frac{P^{(m)}(\alpha)}{m!}(X-\alpha)^{m}+\dots.\end{align}$
	$P=(X-\alpha)^{m}\times \underbrace{ \sum\limits_{k\geqslant m}^{}\frac{P^{(k)}(\alpha)}{k!}(X-\alpha)^{\overset{ \in \mathbb{N} }{ k-m }} }_{ =Q }$
	avec $Q(\alpha)=\frac{P^{(m)}(\alpha)}{m!}\neq 0$
	$\alpha$ n'est pas racine de $Q$
	$\boxed{m\text{ est la mult. de }\alpha\text{ dans }P}$    $\checkmark$


<u>Exemple</u> :
Soit $n\in \mathbb{N}^{*}$
et $P=nX^{n+2}-(n+1)X^{n+1}+(n+2)X-n$
$\mathrm{deg}(P)=n+2$
Montrer que $(X-1)^{3}$ divise $P$
Cela signifie que $1$ est racine de $P$ avec mult. $\geqslant 3$
Cela revient à montrer $\boxed{P(1)=P'(1)=P''(1)=0}$
$P(1)=n-(n+2)+(n+2)-n=0$  $\checkmark$

$P'=n(n+2)X^{n+1}-(n+2)(n+1)X^{n}+(x+2)$
$P''=n(n+2)(n+1)X^{n}-(n+2)(n+1)nX^{n-1}$

Ainsi 
$P'(1)=n(n+2)-(n+2)(n+1)+(n+2)=0$   $\checkmark$
$P''(1)=n(n+2)(n+1)-(n+2)(n+1)n=0$   $\checkmark$

<u>Exemple</u> :
Soit $P\in \mathbb{K}[X]$ avec $\mathrm{deg}(P)\geqslant 2$
Donner le reste de la division euclidienne de 
a. $P$ par $(X-a)(X-b)$ avec $a \neq b$
b. $P$ par $(X-a)^{2}$


a. On sait que $\exists(Q,R)\in \mathbb{K}[X]^{2}$ tel que 
$(*)$   $P=Q\times(X-a)(X-b)+R$     avec $\mathrm{deg}(R)< 2$

On évalue $(*)$ en $a$ et en $b$
$\begin{cases}P(a)=Q(a)\times 0+R(a) \\ P(b)=Q(b)\times 0+R(b)\end{cases}$
donc $\begin{cases}P(a)=R(a) \\ P(b)=R(b)\end{cases}$
Or $R\in K_{1}[X]$ donc, $\exists(\alpha,\beta)\in \mathbb{K}^{2}$ tels que
$\boxed{R=\alpha X+\beta}$
$\begin{align}\text{Donc }\underline{\text{en évaluant}}\text{ : } & R(a)=\alpha a+\beta=P(a) \space\space\space L_{1}\\  & R(b)=\alpha b+\beta=P(b)\space\space\space L_{2}\end{align}$
$L_{1}-L_{2}=P(a)-P(b)=\alpha(a-b)$
$\underset{ \boxed{a \neq b} }{ \text{donc} }$ $\boxed{\alpha=\frac{ P(a)-P(b)}{a-b}}$
et $\beta=P(a)-\alpha a=P(a)- \frac{P(a)-P(b)}{a-b}\times a$

$=\dfrac{(a-b)P(a)-aP(a)+aP(a)}{a-b}$

$=\boxed{\frac{aP(b)-bP(a)}{a-b}}$

Le reste vaut $\boxed{R=\frac{P(a)-P(b)}{a-b}X+\frac{aP(b)-bP(a)}{a-b}}$


b. Div. Eucl. de $P$ par $(X-a)^{2}$
$\exists!(Q,R)\in \mathbb{K}[X]^{2}$ tel que 
$P=(X-a)^{2}\times Q+R$    avec $\mathrm{deg}(R)<2$
Ici, $\exists(\alpha,\beta)\in \mathbb{K}^{2},R=\alpha X+\beta$
$\begin{align}(*)\text{ évalué en }a\text{ donne : } & P(a)=0+R(a) \\  &P(a)=R(a) \\  & \boxed{P(a)=\alpha a+\beta}\space L_{1} \end{align}$
On exploite la racine double, on dérive $(*)$ : $P'=[2(X-a)Q+(X-a)^{2}Q']+R'$
on évalue en $a$ : $P'(a)=0+R'(a)$
$R'=\alpha$ donc $\boxed{P'(a)=\alpha}$ donc $\boxed{\beta=P(a)-aP'(a)}$
$R=P'(a)X+P(a)-aP'(a)$
$\boxed{R=P'(a)(X-a)+P(a)}$

<span style="color:violet"> Remarque </span>  Taylor en $a$
$\begin{align}P & =\sum\limits_{k\geqslant 0}^{}\frac{P^{(k)}(a)}{k!}(X-a)^{k} \\  & =\underbrace{ \left( \sum\limits_{k\geqslant 2}^{}\frac{P^{(k)}(a)}{k!}(X-a)^{k} \right) }_{ \text{divisible par }(X-a)^{2} }+\underset{ \text{reste} }{ \boxed{P'(a)(X-a)+P(a)} }\end{align}$


# IV - Arithmétique des polynômes 

[[m - 13 suite.pdf]]
![[Polynomes 3.png]]![[Polynomes 4.png]]![[Polynomes 5.png]]
1.
$X^{2}+2=(X)X+2$   donc $2$ est le dernier reste non nul
$X=\left( \frac{1}{2}X \right)2+\underset{ \text{reste} }{ 0 }$
$(X^{2}+2)\land X=1$  (unitaire)
et une relation de Bézout :
$1=\overset{ U }{ \boxed{\frac{1}{2}} }(X^{2}+2)\text{ }\overset{ V }{ \boxed{-\frac{1}{2}X} }X$

![[Polynomes 6.png]]
2.
  
 $\begin{align} &A=X^{3}B+X^{2}+1 \\  &B=(X+1)(X^{2}+1)  \end{align}$     donc $\boxed{A \land B=X^{2}+1}$        $\boxed{\begin{align} & B=(X^{2}+1)(X+1) \\  & A=(X^{2}+1)(X^{4}+X^{3}+1)\end{align}}$

![[Polynomes 7.png]]

$\cdot$ $\begin{align} & C\text{ }|\text{ } AC \\ &  C\text{ }|\text{ }BC\end{align}$   donc $C\text{ }|\text{ }(AC)\land(BC)$   donc $\exists D$ tel que $(AC)\land (BC)=DC$

Or $\begin{align} & DC\text{ }|\text{ }AC \\  & DC\text{ }|\text{ }BC\end{align}\underset{ C\neq 0 }{ \implies }$ $\begin{align} & D\text{ }|\text{ }A \\  & D\text{ }|\text{ }B\end{align}$   alors $\boxed{D\text{ }|\text{ }A\land B}$

<u>Enfin</u>, Soit  $P\text{ }|\text{ }A$ et $P\text{ }|\text{ }B$, alors $PC \text{ }|\text{ }AC$ et $PC\text{ }|\text{ }BC$ 
Donc $PC\text{ }|\text{ }(AC)\land(BC)$
donc $PC\text{ }|\text{ }DC$
donc $P\text{ }|\text{ }D$

Prenons $P=A\land B$. Ainsi, $\boxed{A\land B\text{ }|\text{ }D}$  
$\boxed{D\text{ et }(A\land B)\text{ sont associés}}$, c'est à dire : $\exists\lambda \in \mathbb{K}^{*},A\land B=\lambda D$

<u><b>Bilan</b></u> : $\underset{ \text{unitaire} }{ (AC)\land(BC) }=\frac{1}{\lambda}C\times(\underset{ \text{unitaire} }{ A\land B })$   donc $\to$ le coeff. dominant de $\frac{1}{\lambda}C$ doit être 1 !
 
![[Polynomes 8.png]]

$\boxed{\implies}$
Algo d'Euclide, $AU+BV=A\land B$

$\boxed{\impliedby}$
Si $D\text{ }|\text{ }A$ et $D\text{ }|\text{ }B$
alors $D\text{ }|\text{ }(AU+BV)$
donc $D\text{ }|\text{ }1$
donc $\boxed{D\in \mathbb{K}^{*}}$
donc $A\land B=1$ $\boxed{}$

![[Polynomes 9.png]]
$(X-a)-(X-b)=b-a \neq 0$
$\underset{ U }{ \boxed{\frac{1}{b-a}} }(X-a)-\underset{ V }{ \boxed{\frac{1}{(b-a)}} }=1$

Par Bézout, 
$(X-a)\land(X-b)=1$, premiers entre eux !
![[Polynomes 10.png]]
![[Polynomes 11.png]]
![[Polynomes 12.png]]
<u><span style="color:gold"> Preuve </span></u> 
 $\underline{A\land B=1}$ : Par Bézout, $\exists(U,V)\in \mathbb{K}[X]$ tq 
 $AU+BV=1$
 $AUC+BCV=C$
 avec $AUC$ et $BCV$ divisibles par $A$
 ![[Polynomes 13.png]]
 <u><span style="color:gold"> Preuve </span></u> 
 
 $\begin{align} & \exists U\text{ tq }C=AU \\  & \exists V\text{ tq }C=BV\end{align}$    donc $AU=BV$ $\begin{rcases}&\text{donc }A\text{ }|\text{ }BV \\ &\text{mais }A\land B=1\end{rcases}$  $\overset{ \text{Gauss} }{ \implies }A\text{ }|\text{ }V$ donc $AB\text{ }|\text{ }BV$ donc $\boxed{AB\text{ }|\text{ }C}$ 
 ![[Polynomes 14.png]]![[Polynomes 15.png]]![[Polynomes 16.png]]
<u><span style="color:gold"> Preuve </span></u> 
1.
Montrons $A.\mathbb{K}[X]\cap B.\mathbb{K}[X]=(AB).\mathbb{K}[X]$ quand $A\land B=1$

$\boxed{\supset}$ Soit $\boxed{P\in(AB).\mathbb{K}[X]}$   $AB\text{ }|\text{ }P$, donc $A\text{ }|\text{ }AB\text{ }|\text{ }D$ et $B\text{ }|\text{ }AB\text{ }|\text{ }D$, donc $\boxed{P\in A.\mathbb{K}[X]\cap B.\mathbb{K}[X]}$

$\boxed{\subset}$ Soit $\boxed{P\in A.\mathbb{K}[X]\cap B.\mathbb{K}[X]}$, Ainsi $A\text{ }|\text{ }P$ et $B\text{ }|\text{ }P$ Comme $A\land B=1,$ donc $AB\text{ }|\text{ }P$, donc $P\in(AB).\mathbb{K}[X]$

![[Polynomes 17.png]]
![[Polynomes 18.png]]
<u><span style="color:gold"> Preuve </span></u> 


![[Polynomes 19.png]]


![[Polynomes 20.png]]

# V - <u>Factorisation dans </u>$\underline{\mathbb{C}[X]}$<u> et </u>$\underline{\mathbb{R}[X]}$

## 1. <u>Dans </u>$\underline{\mathbb{C}[X]}$

$\boxed{Théorème}$ <small>(D'Alembert-Gauss)</small>
>Tout polynôme non constant dans $\mathbb{C}[X]$ <b><u>possède une racine</u></b> dans $\mathbb{C}[X]$
$\boxed{\text{ADMIS}}$

On dit que le corps $(\mathbb{C},+,\times)$ est <u>algébriquement clos</u>

<u>Corollaire 1</u>
>Les polynômes irréductibles de $\mathbb{C}[X]$ sont exactement les polynômes de degré $1$

<u><span style="color:gold"> Preuve </span></u> 
 Soit $P\in \mathbb{C}[X]$, non constant et irréductible.
 Si $\mathrm{deg}(P)\geqslant 2,$ alors il admet une racine $\alpha \in \mathbb{C}$.
 Alors $\underbrace{ (X-\alpha) }_{ \in \mathbb{C}[X] }$ divise $P$, donc $\boxed{P\text{ n'est pas irréductible}}$
$\boxed{\text{Si }\mathrm{deg}(P)=1}$
Alors $P=aX+b$, avec $\begin{cases}(a,b)\in \mathbb{C}^{2} \\ a \neq 0\end{cases}$
$P$ admet une unique racine $-\frac{b}{a}$, et $P$ <u>est irréductible</u> car :
Si $P=A\times B$ alors $1=\mathrm{deg}(P)=\mathrm{deg}\text{ }A+\mathrm{deg}\text{ }B$, donc $\mathrm{deg}\text{ }A=0$ ou $\mathrm{deg}\text{ }B=0$

<u>Corollaire 2</u>
>Tout polynôme $P\in \mathbb{C}[X]$ <u><b>non constant</b></u> s'écrit :
>$P=\lambda \times \prod\limits_{i=1}^{r}(X_-\alpha_{i})^{m_{i}}$    avec $\lambda$ le coeff. dominant, $\alpha_{1},\alpha_{2},\text{ }\dots\text{ },\alpha_{r}\in \mathbb{C}$ des racines distinctes, et $m_{i}\in \mathbb{N}^{*}$<small>(multiplicité)</small>
>et on a $\mathrm{deg}(P)=\sum\limits_{i=1}^{r}m_{i}$

$\alpha_{1},\text{ }\dots\text{ },\alpha_{r}$ des racines distinctes
$m_{1},\text{ }\dots\text{ },m_{r}$ leur multiplicité

<u>Vocabulaire</u> :
On dit que le polynôme $P$ est $\boxed{\text{scindé}}$
	(= produit de polynômes de <b><u>degré 1</u></b>)

(Tout polynôme non constant dans $\mathbb{C}[X]$ est scindé)

Une autre écriture est :
$x_{1},x_{2},\text{ }\dots\text{ },x_{n}\in \mathbb{C}$ et $n=\mathrm{deg}(P)$
$P=\lambda \times \prod\limits_{i=1}^{n}(X-x_{i})$   avec $\lambda$ le coeff. dominant
où les $x_{1},\text{ }\dots\text{ },x_{n}$ sont les racines de $P$ éventuelles égales

<u>Exemples</u>
- $X^{2}+1$ est scindé sur $\mathbb{C}$
	car $X^{2}+1=(X+i)(X-i)$
- $X^{2}+X+1$ est scindé sur $\mathbb{C}$
	car $X^{2}+X+1=(X-j)(X-j^{2})$
- Soit $n\in \mathbb{N}^{*}$, $X^{n}-1$ est scindé sur $\mathbb{C}$ et $X^{n}-1=\prod\limits_{\omega \in \mathbb{U}_{n}}^{}(X-\omega)$
	$=(X-1)\times \underset{ \omega\neq 1 }{ \prod\limits_{\omega \in \mathbb{U}_{n}}^{} }(X-{\omega})$
- $X^{4}+X^{2}+1$ est scindé sur $\mathbb{C}$
	$\begin{align}X^{4}+X^{2}+1 & =(X^{2})^{2}+(X^{2})^{1}+1=Q(X^{2}) \\  & =(X^{2}-j)(X^{2}-j^{2}) \\  & =(X^{2}-j)(X-j)(X+j) \\  &  =(X^{2}-j^{4})(X-j)(X+j) \\  & =\boxed{(X-j^{2})(X+j^{2})(X-j)(X+j)}\end{align}$ 
	On retrouve $\mathbb{U}_{6}\setminus \{ \pm 1 \}=\{ \pm j;\pm j^{2} \}$
	Si $z\in \mathbb{C}$ est racine de $X^{4}+X^{2}+1$
		$1+z^{2}+z^{4}=0\underset{ \text{géom.} }{ \iff } \frac{1-(z^{2})^{3}}{1-(z^{2})}=0$
		$\iff z^{6}=1$ et $z^{2} \neq 1$
		$\iff \boxed{z\in \mathbb{U}_{6}\text{ et }z\not\in \mathbb{U}_{2}}$
---
$\boxed{\text{Propriété}}$ (Racines et divisibilité dans $\mathbb{C}$)
>Soient $A,B\in \mathbb{C}[X]$ <u>non constants</u> 
>$A$ divise $B\iff$ les racines de $A$ sont racines de $B$ avec une multiplicité plus grande dans $B$

<u><span style="color:gold"> Preuve </span></u> 
 $\boxed{\impliedby}$
$A$ est scindé dans $\mathbb{C}$
Posons $A=\lambda \prod\limits_{i=1}^{r}(X-\alpha_{i})^{m_{i}}$
avec $\alpha_{1},\text{ }\dots\text{ },\alpha_{r}\in \mathbb{C}$ distinctes
On suppose que $\forall i\in \textlbrackdbl 1;r \textrbrackdbl$, $(X-\alpha_{i})^{m_{i}}\text{ }|\text{ }B$, les $\alpha_{i}$ étant 2 à 2 distincts
$(X-\alpha_{i})^{m_{i}}\land(X-\alpha_{j})^{m_{j}}=1$ pour $i\neq j$
donc $\left( \prod\limits_{i=1}^{r}(X-\alpha_{i})^{m_{i}} \right)\text{ }|\text{ }B$
donc $A\text{ }|\text{ }B$

$\boxed{\implies}$
Trivial.

---
<span style="color:turquoise"> <u>Exemple</u> </span>
Montrer que $X^{4}+X^{2}+1$ divise $X^{18}-1$
Posons $A=X^{4}+X^{2}+1$
$=(X-j)(X+j)(X-j^{2})(X+j^{2})$
$A$ possède $4$ racines <u>simples</u>

Posons $B=X^{18}-1$
$\{\pm j ; \pm j^{2}\}\subset \mathbb{U}^{6}$
$\forall z\in \{ \pm j ; \pm j^{2} \}$, alors $z^{6}=1$
alors $(z^{6})^{3}=1$
donc $z^{18}=1$, donc $\boxed{B(z)=0}$
donc $\boxed{A\text{ }|\text{ }B}$

## 2. Factorisation dans $\mathbb{R}[X]$
<u>Rappel</u>
Si $P=aX^{2}+bX+c$ avec $\begin{cases}(a,b,c)\in \mathbb{R}^{3} \\ \text{ et }a\neq 0\end{cases}$
$\boxed{\mathrm{deg}(P)=2}$

$\boxed{P\text{ est irréductible dans }\mathbb{R}[X]\text{ ssi }\Delta=b^{2}-4ac<0}$

<u>Exercice</u>
$\boxed{\text{Tout polynôme de }\mathbb{R}[X]\text{ de degré }\underline{\text{impair}}\text{ admet au moins une racine réelle}}$
Soit $P=a_{2p+1}X^{2p+1}+\sum\limits_{k=0}^{2p}a_{k}X^{k},$ avec $\begin{cases}a_{2p+1}\in \mathbb{R}^{*} \\ a_{k}\in \mathbb{R}\end{cases}$
La fonction polynomiale associée $\boxed{P\text{ est continue sur }\mathbb{R}}$ et $\boxed{P(x)\underset{ x\to \pm \infty }{ \sim }a_{2p+1}x^{2p+1}}$

Ainsi, $\begin{cases}\lim\limits_{ x \to +\infty }P(x)=\begin{cases}+\infty\text{ si }a_{2p+1}>0 \\ -\infty\text{ sinon }\end{cases} \\ \lim\limits_{ x \to -\infty }P(x)=\begin{cases}-\infty\text{ si }a_{2p+1}>0 \\ +\infty\text{ sinon}\end{cases}\end{cases}$
Ainsi $\exists a\in \mathbb{R},P(a)> 0$ et $\exists b\in \mathbb{R},P(b)< 0$

On applique le TVI sur $[a,b]$ ou $[b,a]$, il existe $\boxed{c\in \mathbb{R}\text{ tel que }P(c)=0}$, donc $c$ racine réelle

<u>Exemple</u>
$\begin{align} & X^{4}+1 \\  =& (X^{2})^{2}+1^{2} \\ = & (X^{2}+i)(X^{2}-i) \\ = & (X^{2}+e^{ i\pi/2 })(X^{2}-e^{ i\pi/2 }) \\ = & (X^{2}-(ie^{ i\pi/4 })^{2})(X^{2}-(e^{ i\pi/4 })^{2}) \\ = & (X-ie^{ i\pi/4 })(X+ie^{ i\pi/4 })(X-e^{ i\pi/4 })(X+e^{ i\pi/4 })\end{align}$ 

Les $4$ racines sont :
$\underset{ \alpha }{ \boxed{e^{ i\pi/4 }} },ie^{ i\pi/4 }=e^{ i((\pi/2)+(\pi/4)) }\underset{ \beta }{ =\boxed{e^{ i 3\pi/4 }} }$
$-e^{ i\pi/4 }=e^{ i(\pi\text{ }+\text{ }\pi/4) }=\underset{ \bar{\beta} }{ \boxed{e^{ i{5}\pi/4 }} }$
$-ie^{ i\pi/4 }=e^{ i(-\pi\text{ }+\text{ }\pi/2\text{ }+\text{ }\pi/4) }=\underset{ \bar{\alpha} }{ \boxed{e^{- i\pi/4 }} }$

![[Pasted image 20260126115417.png]]

$=\underbrace{ \underbrace{ (X^{2}+1-\sqrt{ 2 }X) }_{ \in \mathbb{R}[X] }\underbrace{ (X^{2}+1+\sqrt{ 2 }X) }_{ \in \mathbb{R}[X]  } }_{ \text{La factorisation en irréductibles dans }\mathbb{R} }$

Cela se généralise :
$\boxed{\text{Propriété}}$
>Soit $P\in\mathbb{R}[X]$
>Soit $\alpha\in \mathbb{C}$ et $m\in \mathbb{N}^{*}$
>- $\alpha$ est racine de $P \iff \bar{\alpha}$  est racine de $P$
>- $\alpha$ est racine de $P$ avec mult. $m$ $\iff$  $\bar{\alpha}$ est racine de $P$ avec mult. $m$

<u>En effet</u>
Soit $(a_{0},\text{ ... },a_{n})\in \mathbb{R}^{n+1}$

$\begin{array}{rcl}\text{ et }P:\mathbb{R}&\to& \mathbb{R} \\ x &\mapsto &\sum\limits_{k=0}^{n}a_{k}x^{k}\end{array}$

$\begin{align}\alpha\text{ est racine de }P & \iff P(\alpha)=0 \\  & \iff \sum\limits_{k=0}^{n}a_{k}\alpha^{k}=0 \\  & \iff \overline{\left( \sum\limits_{k=0}^{n}a_{k}\alpha^{k} \right)}=0 \\  & \underset{ \text{conj.} }{ \iff }\end{align}$
![[Pasted image 20260126120428.png]]
![[Pasted image 20260126120442.png]]

$\boxed{\text{Prop}}$
> Les polynômes irréductibles de $\mathbb{R}[X]$ sont :
> (a) $\to$ Les polynômes de degré 1
> (b) $\to$ Les polynômes de degré 2 de discriminant $\Delta < 0$

<u><span style="color:gold"> Preuve </span></u> 
 Soit $P\in \mathbb{R}[X]$ et $\mathrm{deg}(P)\geqslant 3$
 Comme $P\in \mathbb{C}[X]$ et $\mathrm{deg}(P)\geqslant 1$
 par d'Alembert-Gauss, $\exists \alpha \in \mathbb{C},\alpha$ est racine de $P$

$\underline{1^{er}\text{ cas}}$, Si $\alpha \in \mathbb{R}$
Alors $(\underbrace{ X-\alpha }_{ \in \mathbb{R}[X] })$ divise $\underbrace{ P }_{ \in \mathbb{R}[X] }$ dans $\mathbb{R}[X]$
$\exists Q\in \mathbb{R}[X]$ tel que $P=\underbrace{ (X-\alpha) }_{ \mathrm{deg}\text{ }1 }\times \underbrace{ Q }_{ \mathrm{deg}\geqslant 2 }$
donc $P$ n'est <u><b>pas irréductible</b></u>

$\underline{2^{ème}\text{ cas}}$, Si $\alpha \not\in \mathbb{R}$
$\underline{P(\alpha)}=0$, donc $P(\alpha)=P(\bar{\alpha})=0$ car $P\in \mathbb{R}[X]$
$\alpha \neq \bar{\alpha}$ et $\alpha ,\bar{\alpha}$ sont racines de $P$
Comme les racines sont distinctes, alors 
$(X-\alpha)(X-\bar{\alpha})\text{ }|\text{ }P$
$\begin{align}\text{ Or, }(X-\alpha)(X-\bar{\alpha}) & =X^{2}-(\alpha+\bar{\alpha})X+\alpha\bar{\alpha} \\  & =\underset{ \in \mathbb{R}[X] }{ \boxed{X^{2}-2\mathrm{Re}(\alpha)X+|\alpha|^{2}} }\end{align}$
De discriminant $\Delta = \underset{ \neq 0 }{ - 4 \mathrm{Im}(\alpha)^{2} }<0$
Ainsi $\underset{ \in \mathbb{R}[X] }{ P }=\underbrace{ [X^{2}-2\mathrm{Re}(\alpha)X+|\alpha|^{2}] }_{ \in \mathbb{R}[X] }\times Q$
avec $Q\in \mathbb{R}[X]$ et $\mathrm{deg}(Q)\geqslant 1$

donc $P$ n'est <u><b>pas irréductible</b></u> dans $\mathbb{R}[X]$

<u>Corollaire</u> 
>Tout polynôme non constant de $\mathbb{R}[X]$ s'écrit :
>$P=\lambda \times \left( \prod\limits_{i=1}^{r}(X-\alpha_{i})^{m_{i}} \right)\times\left( \prod\limits_{j=1}^{s}(X^{2}+b_{j}X+c_{j})^{n_{j}} \right)$     avec $\lambda \in \mathbb{R}^{*}$ coeff. dominant de $P$
>Avec $\alpha_{1}<\alpha_{2}<\dots<\alpha_{r}$ racines réelles de mult. $m_{1},\dots,m_{r}\in \mathbb{N}^{*}$
>$n_{1},\dots n_{s}\in \mathbb{N}^{*}$ et $b_{j},c_{j}$ tels que $b_{j}\text{}^{2}-4c_{j}<0$
>Enfin, cette écriture est unique à ordre de facteurs près

<span style="color:turquoise">Exemple </span> 
 $X^{3}-2\in \mathbb{Q}[X]$
 $X^{3}-2$ est-il irréductible dans $\mathbb{Q}[X]$ ?
 S'il n'est pas irréductible dans $\mathbb{Q}[X]$, alors $\exists A,B\in \mathbb{Q}[X],X^{3}-2=A\times B$
 avec $\begin{cases}\mathrm{deg}(A)\geqslant 1 \\ \mathrm{deg}(B)\geqslant 1\end{cases}$
 Or, $\mathrm{deg}(A)+\mathrm{deg}(B)=3$
 Ainsi $\mathrm{deg}(A)=1$ ou $\mathrm{deg(B)}=1$
 donc il existe un facteur $\alpha X+\beta$ où $(\alpha,\beta)\in \mathbb{Q}^{2}$ et $\alpha \neq 0$
donc <u>une racine rationnelle</u> pour $X^{3}-2$
Or, $z^{3}-2=0\iff z^{3}=2\iff\left( \dfrac{z}{\sqrt[3]{ 2 }} \right)^{3}=1$ $\iff \begin{cases}z=\sqrt[3]{2  }\not\in Q \\ \text{ou} \\ \begin{rcases}z=j\sqrt[3]{ 2 } \\ \text{ou} \\ z=j^{2}\times \sqrt[3]{ 2 }\end{rcases}\not\in \mathbb{R}\end{cases}$
Donc $\boxed{X^{3}-2\text{ irréductible dans }\mathbb{Q}[X]}$ 

# VI - Relations coefficients-racines

Soit $P=\sum\limits_{k=0}^{n}a_{k}X^{k}$ un polynôme scindé $(\text{sur }\mathbb{R}\text{ ou }\mathbb{C})$ de degré $n\in \mathbb{N}^{*}$
Alors $\exists x_{1},x_{2},\dots,x_{n}$ ses racines (non nécessairement distinctes)
telles que $\underset{ \text{scindé} }{ \boxed{P=a_{n}\times\prod\limits_{i=1}^{n}(X-x_{i})} }$
- Si $\boxed{n=2}$
	$\begin{align}\text{Si }P & =aX^{2}+bX+c=a(X-x_{1})(X-x_{2}) \\  & =a\times(X^{2}-(x_{1}+x_{2})X+x_{1}x_{2})\end{align}$
	Par égalité des coff. $(a\neq 0)$
	$\boxed{\begin{align} & x_{1}+x_{2}=-\frac{b}{a} \\  & x_{1}\times x_{2}=\frac{c}{a}\end{align}}$ $\begin{align} & \text{Somme des racines} \\ \\   & \text{Produit des racines}\end{align}$

- Si $\boxed{n=3}$
	$\begin{align}P & =a_{3}X^{3}+a_{2}X^{2}+a_{1}X+a_{0} \\  & =a_{3}\times(X-x_{1})(X-x_{2})(X-x_{3}) \\  & =a_{3}[X^{3}-(x_{1}+x_{2}+x_{3})X^{2}+(x_{1}x_{2}+x_{1}x_{3}+x_{2}x_{3})X-x_{1}x_{2}x_{3}]\end{align}$
	On obtient par égalité des coefficients
	$\boxed{\begin{align} & x_{1}+x_{2}+x_{3}=-\dfrac{a_{2}}{a_{3}} \\ & x_{1}x_{2}+x_{1}x_{3}+x_{2}x_{3}=+\dfrac{a_{1}}{a_{3}} \\  & x_{1}x_{2}x_{3}=-\frac{a_{0}}{a_{3}} \end{align}}$ $\begin{align}& \to\text{Somme des racines} \\  \\  \\  \\  & \to\text{Produit des racines}\end{align}$ 


<u>Cas général</u>

Posons $$\sigma_{k}=\sum\limits_{1\leqslant i_{1}<i_{2}\dots<i_{k}\leqslant n}^{}x_{i_{1}}x_{i_{2}}\dots x_{i_{k}}$$ somme des produits de $k$ racines

$\sigma_{1}=x_{1}+x_{2}+\dots+x_{n}=\sum\limits_{i=1}^{n}x_{i}$   somme des racines
$\sigma_{2}=x_{1}x_{2}+x_{1}x_{3}+\dots+x_{1}x_{n}+x_{2}x_{3}+\dots+x_{2}x_{n}+\dots+x_{n-1}x_{n}=\sum\limits_{1\leqslant i<j\leqslant n}^{}x_{i}x_{j}$       somme des produits de 2 racines
$\sigma_{3}=\sum\limits_{1 \leqslant i < j < k \leqslant n}^{}x_{i}x_{j}x_{k}$
$\vdots$
$\vdots$
$\begin{align}\sigma_{n} & =\sum\limits_{1\leqslant i_{1}<i_{2}\dots<i_{n}\leqslant n}^{}x_{i_{1}}x_{i_{2}}\dots x_{i_{n}} \\  & =x_{1}x_{2}\dots x_{n}=\boxed{\prod\limits_{i=1}^{n}x_{i}}\text{ }\text{ }\text{ }\text{produit des racines}\end{align}$ 
$\sigma_{k}$ contient $\dbinom{n}{k}$ termes additifs
Pour $P=\sum\limits_{k=0}^{n}a_{k}X^{k}=a_{n}\times \prod\limits_{i=1}^{n}(X-x_{i})$

<u><b>On a les relations coeff/racines</b></u>
$\boxed{\forall k\in \textlbrackdbl 1;n \textrbrackdbl,\sigma_{k}= \frac{(-1)^{k}a_{n-k}}{a_{n}}}$

Cas extrêmes
$\sigma_{1}=\sum\limits_{i=1}^{n}x_{i}=-\dfrac{a_{n-1}}{a_{n}}$   : somme des racines
$\sigma_{n}=\prod\limits_{i=1}^{n}x_{i}=(-1)^{n} \dfrac{a_{0}}{a_{n}}$  : produit des racines

<span style="color:violet">Remarque </span> 
 $P(X)=a_{n}\prod\limits_{i=1}^{n}(X-x_{i})$
 Alors $P(0)=a_{0}=a_{n}\times \prod\limits_{i=1}^{n}(0-x_{i})$
 $a_{0}=(-1)^{n}a_{n}\times \prod\limits_{i=1}^{n}x_{i}$

![[Pasted image 20260127112404.png]]

$P(1)=0$ donc $(X-1)\text{ }|\text{ }P$
$X^{3}-2X^{2}-5X+6=(X-1)(\underbrace{ X^{2}-X-6 }_{  })$
$\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space$ on devine $3$ et $(-2)$ comme racines
$=(X-1)(X-3)(X+2)$
donc $\boxed{\{ x,y,z \}=\{ 1,3,\text{-}2 \}}$
$\{ x,y,z \}\in \{ (1,\text{-}2,3),(1,3,\text{-}2),(\text{-}2,1,3),(\text{-2},3,1),(3,1,\text{-}2),(3,\text{-}2,1) \}$

---

<span style="color:turquoise">Exemple </span> 
Soit $P=X^{3}+\sqrt[3]{ 67 }X^{2}-4\pi X+e^{ 7 }$
Notons $x_{1},x_{2},x_{3}$ ses racines dans $\mathbb{C}$
Calculer $\underbrace{ x_{1}\text{}^{2}+x_{2}\text{}^{2}+x_{3}\text{}^{2} }_{ =A }$ puis $\underbrace{ x_{1}\text{}^{3}+x_{2}\text{}^{3}+x_{3}\text{}^{3} }_{ =B }$
Posons $\sigma_{1}=x_{1}+x_{2}+x_{3}=-\sqrt[3]{ 67 }$
$\space\space\space\space\space\space\space\space\space\space\space$  $\sigma_{2}$ $=x_{1}x_{2}+x_{1}x_{3}+x_{2}x_{3}=-4\pi$ 
$\space\space\space\space\space\space\space\space\space\space\space\space$ $\sigma_{3}=x_{1}x_{2}x_{3}$
car $\boxed{P=X^{3}-\sigma_{1}X^{2}+\sigma_{2}X-\sigma_{3}}$ $\to$ liens coeff/racines
$\begin{align}\text{Or, }\sigma_{1}\text{}^{2} & =(x_{1}+x_{2}+x_{3})^{2} \\  &=x_{1}\text{}^{2}+x_{2}\text{}^{2}+x_{3}\text{}^{2} + 2x_{1}x_{2}+2x_{1}x_{3}+2x_{2}x_{3}\end{align}$ 
$\space\space\space\space$   $\sigma_{1}\text{}^{2}=A+2\sigma_{2}$
Donc $A=\sigma_{1}\text{}^{2}-2\sigma_{2}=(\sqrt[3]{ 67 })^{2}+8\pi$   $\checkmark$

---

$P(x_{1})=P(x_{2})=P(x_{3})=0$
$x_{i}\text{}^{3}+\sqrt[3]{ 67 }\space x_{i}\text{}^{2}-4\pi x_{i}+e^{ 7 }=0$
On somme pour $i\in \{ 1,2,3 \}$

Ainsi $B=-\sqrt[3]{ 67 }\space A+4\pi\sigma_{1}-3e^{ 7 }$
$(x_{i}\text{}^{3}=-\sqrt[3]{ 67 }\space x_{i}\text{}^{2}+4\pi x_{i}-e^{ 7 })$
