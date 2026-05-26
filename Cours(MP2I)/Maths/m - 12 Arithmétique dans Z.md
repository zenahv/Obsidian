---
tags:
  - Math
---

# I - Divisibilité et division euclidienne

1) Division euclidienne

$\boxed{Théorème}$
>Soit $a\in \mathbb{Z}$ et $b \in \mathbb{N}^{*}$
>Il existe un <u>unique couple</u> $(q,r)\in \mathbb{Z}^{2}$ tel que 
>	$a=bq+r$, et $0 \leqslant r <b$

$\begin{align} & q\text{ est le quotient} \\  & r\text{ est le reste}\end{align}$ de la division euclidienne de $a$ par $b$

<u>Preuve</u> :
- <u>Unicité</u> : Soient $(q,r)$ et $(q',r')\in \mathbb{Z}^{2}$
	tel que $a=bq+r=bq'+r'$
	avec $\begin{cases}0\leqslant r <b \\0\leqslant r '<b  \end{cases}$
	Ainsi $r-r'=b \times (q'-q)$
	donc $|r-r'|=b \times |q'-q|$ car $b>0$
	$0\leqslant r <b$
	$-b < -r' \leqslant 0$
---
donc $-b<r-r'<b$
	donc $|r-r'|<b$
	donc $b\times |q'-q|<b$
		donc $\underbrace{ |q'-q| }_{ \in \mathbb{N} }<1$
	donc $q'-q=0$
	$\begin{align}\text{donc }r-r' & =b \times(q'-q) \\  & =0\end{align}$
	donc $\boxed{(q,r)=(q',r')}$

- <u>Existence</u>
Posons $q= \left\lfloor  \frac{a}{b}  \right\rfloor$
Ainsi $q \in \mathbb{Z}$ et $q \leqslant \frac{a}{b}< q+1$
	$\underset{ (b>0) }{ \text{donc} }$ $bq \leqslant a < bq+b$
Posons $r= \underbrace{ a-bq }_{ \in \mathbb{Z} }$, Ainsi $a \leqslant r <b$

<u>Exemple</u> : Div. Euclidienne de $a=2^{n+1}-1$ par $b=2$
	$\begin{align}a & =2 \times 2^{n}-1 \\  & =2\times\underbrace{ (2^{n}-1) }_{ \text{quotient} } +\underbrace{ 1 }_{ \text{reste} }\end{align}$

<u>Exemple</u> :
Si $a=bq+r$ avec $0\leqslant r<b$
Donner la div. eucl. de $(-a)$ par $b$
	$-a=-(bq+r)=-bq-r$
$\to$ Si $r=0$, alors $-a=b\times\underset{ \text{quotient} }{ (-q) }+\underset{ \text{reste} }{ 0 }$
$\to$ Sinon,
$\begin{align}-a & =-bq-b+b-r \\  & =b\underset{ \text{quotient} }{ (-q-1) }+\underbrace{ (b-r) }_{\underset{ \text{reste} }{  \in \textlbrackdbl 1, b-1 \textrbrackdbl  }}\end{align}$

2) Diviseurs, multiples

<u>Déf</u> $\to$
>Soient $(a,b)\in \mathbb{Z}^{2}$
>On dit que $\boxed{b\text{ divise }a}$ si 
>	$\exists\text{ }k \in \mathbb{Z}$, $a=bk$

<span style="color:yellow"> Remarque </span>: On note $b|a$ 
	$\boxed{\begin{align}b\text{ est un diviseur de }a \\ a\text{ est un multiple de }b\end{align}}$

$b$ divise $a$ lorsque le reste de la <u>division euclidienne de </u>$\underline{a}$<u> par </u>$\underline{b}$ vaut 0

<u>Exemples</u> : 
- $\forall a \in \mathbb{Z},\text{ }a|a,\text{ }-a|a,\text{ }1 | a, -1|a$
- $\forall a \in \mathbb{Z},\text{ }a|0$ car $0=0\times a$
- $\forall a \in \mathbb{Z}, (\underset{ \exists k \in \mathbb{Z}, a=0k }{ 0 \text{ }|\text{ }a  }\implies a=0)$

<u>Notations</u>
- $\underline{\text{Les multiples de }n \in \mathbb{Z}}$ sont notés
	$n\mathbb{Z}=\{ kn \text{ }|\text{ }k \in \mathbb{Z} \}$
- $\underline{\text{Les diviseurs de }n \in \mathbb{Z}}$ sont notés
	$\mathcal D(n)= \{ k \in \mathbb{Z}\text{ tel que } k \text{ }|\text{ }n \}$

<u>Exemple</u> :
$\mathcal D(0)=\mathbb{Z}$ car $\forall k \in \mathbb{Z}$, $0=k\times {0}$
Soit $n \in \mathbb{Z}$ et $n \neq 0$,
$k \text{ }|\text{ }n \iff k \text{ }|\text{}-n$
	car $n=kd \iff -n=k \times -d$
donc $\mathcal D(-n)= \mathcal D(n)= \mathcal D(|n|)$
	on peut regarder uniquement $\boxed{n\in \mathbb{N}^{*}}$

Soit $n \in \mathbb{N}^{*}$ et $a \in \mathcal D(n)$
	Alors $\exists k \in \mathbb{Z}, n=ak$
	$n \neq 0$ donc $a \neq0$ et $k \neq 0$
	donc $|n|=n=|a|\times |k|$ avec $|k| \geqslant 1$
	donc $|a| \times |k|\geqslant |a|$
	donc $\underline{n \geqslant |a|}$
Ainsi, $\boxed{\mathcal D(n) \subset \textlbrackdbl -n,n \textrbrackdbl}$

<span style="color:yellow"> Remarque </span>
Si $b \neq 0$ et $a \text{ }|\text{ }b$ alors $\underset{ \text{val. absolues} }{ |a|\leqslant |b| }$

<u>Exemple</u>
$\mathcal D(42)=\{ \pm 1;\pm 2; \pm 3; \pm 6;\pm 7;\pm 14;\pm 21;\pm 42\}$
$\mathcal D(42)\cap \mathbb{N}= \{ 1,2,3,6,7,14,21,42 \}$

$\boxed{Prop}$
>$\forall(a,b)\in \mathbb{Z}^{2}$, $\begin{align}a \text{ }|\text{ }b  & \iff   b\mathbb{Z} \subset a\mathbb{Z} \\  & \iff \mathcal D(a)\subset \mathcal D(b)\end{align}$

<u>Preuve</u>
- Si $a \text{ }|\text{ }b$
	Soit $\underset{{  \text{par trasitivité, }a \text{ }|\text{ }c\text{ donc }c \in a\mathbb{Z}  }}{ c \in b\mathbb{Z} }$, alors $b \text{ }|\text{ }c$
	donc $b\mathbb{Z} \subset a\mathbb{Z}$
- Si $b\mathbb{Z}\subset a\mathbb{Z}$ alors $\underset{ \text{donc }a \text{ }|\text{ }b }{ b \in a\mathbb{Z} }$
- Si $a \text{ }|\text{ }b$
	$\text{Soit }c \in \mathcal D(a):c \text{ }|\text{ }a.\text{ Par transitivité, }c \text{ }|\text{ }b\text{ donc }c \in \mathcal D(b)$
	donc $\mathcal D(a)\subset \mathcal D(b)$
- Si $\mathcal D(a)\subset \mathcal D(b)$,
	$a\in \mathcal D(n)$ donc $a \in \mathcal D(b)$ donc $a \text{ }|\text{ }b$

<u>Propriétés de la divisibilité</u>
- $\text{ }|\text{ }$ est une relation réflexive et transitive dans $\mathbb{Z}$
- $\forall(a,b)\in \mathbb{Z}^{2},[a\text{ }|\text{ }b\text{ et }b \text{ }|\text{ }a]\iff |a|=|b|$
	$\iff a=\pm b$
	On dit que $a$ et $b$ sont associés
- Dans $\mathbb{N}, \text{ }|\text{ }$ est antisymétrique, c'est à dire une relation d'ordre

<u>Preuve</u> :
Si $a\text{ }|\text{ }b$ et $b \text{ }|\text{ }a$

<u>1er cas</u> : Si $a=0$, alors $b=0$ donc $a=b$

<u>2e cas</u> : Si $a \neq 0$ et $b \neq 0$
$a \text{ }|\text{ } b$ donc $|a|\leqslant |b|$ 
et $b \text{ }|\text{ } a \text{ donc } |b| \leqslant |a|$ 
donc $|a|=|b|$
$\boxed{Prop}$
Soient $(a,b,d,c,u,v)\in \mathbb{Z}^{6}$
- $(d \text{ }|\text{ }a\text{ et }d \text{ }|\text{ }b) \implies d \text{ }|\text{ }(au+bv)$
- $(a\text{ }|\text{ }b\text{ et }c \text{ }|\text{ } d)\implies ac \text{ }|\text{ } bd$
- $a \text{ }|\text{ }b \implies \forall k \in \mathbb{N}, a ^{k}\text{ }|\text{ } b^{k}$

3) Congruences

<u>Rappel</u> : Soit $n \in \mathbb{N}^{*}$ et $(a,b) \in \mathbb{Z}^{2}$
$\underline{a\text{ est congru à }b\text{ modulo }n}$ si $\exists k \in \mathbb{Z},a=b+kn$
et on note $a\equiv b[n]$

$\begin{align}\underline{\text{Fait }}:a\equiv b[n] & \iff a-b\equiv{0}[n] \\  & \iff n \text{ }|\text{ }a-b\end{align}$

<span style="color:yellow"> Remarque </span>
Si $a=nq+r$
alors $a\equiv r[n]$

<u>Opérations et congruences</u>
- <u>addition</u>
$\begin{cases}a\equiv b[n] \\ et \\ a'\equiv b'[n]\end{cases}\implies a+a'\equiv b+b'[n]$
- <u>multiplication</u>
idem $\implies aa'\equiv bb'[n]$
- <u>Puissance</u> : 
$a\equiv b[n] \implies \forall k \in \mathbb{N},a^{k}\equiv b^{k}[n]$
- <u>Mult. par un constante</u> 
$a\equiv b[n]\iff \lambda a\equiv\lambda b[\lambda n]$ et $\lambda \neq{0}$

##### <u>Exercice</u>
$2^{345}+5^{432}$ est divisible par $3$
- $5\equiv {2}[3]$
$\equiv(-1) [3]$ donc $5^{432}\equiv(-1)^{432}[3]$
$\equiv {1}[3]$
- $2\equiv (-1) [3]$ donc $2^{345}\equiv(-1)^{345}[3]$
$\equiv-1 [3]$
La somme est congrue à $0[3]$

- Tout nombre impair $n$ est tel que $8 \text{ }|\text{ }n^{2}-1$
	c'est à dire $n^{2}\equiv1[8]$

<u>Méthode</u> : $\exists k\in \mathbb{Z}$, $n=2k+1$
	$n^{2}-1=(n-1)(n+1)$
	$n^{2}-1=2k(2k+2)$
	donc $n^{2}-1=\underset{ \text{l'un des deux est pair} }{ 4k(k+1) }$
	donc $8 \text{ }|\text{ } n^{2}-1$

<u>Exemple</u> :
$2^{65362}$ : donner le reste de la div. eucl. par $\boxed{7}$
	$2^{65362}\equiv??[7]$
$2^{0}\equiv{1}[7]$
$2^{1} \equiv 2[7]$
$2^{2} \equiv 4[7]$
$\boxed{2^{3} \equiv 1[7]}$

Donc $(2^{3})^{N}\equiv{1}[7]$
	$2^{3N}\equiv{1}[7]$
	
On cherche le reste de $65632$ par 3
$65632\equiv(6+5+3+6+2)[3]$
	$\equiv7[3]\equiv{1}[3]$

$65362=3N+1$
donc $2^{65362}=2^{3N+1}=2^{3N}\times{2}\equiv{1}\times{2}[7]\equiv{2}[7]$

<u>Divisibilités usuelles</u>
$n=\underset{ \text{chiffres de base 10} }{ C_{k}C_{k-1}\dots C_{0} }=\sum\limits_{i=0}^{k}C_{i}10^{i}$

- <u>Modulo 3</u>
$10\equiv 1[3]$ donc $10^{i}\equiv 1[3]$
donc $n=\sum\limits_{i=0}^{k}C_{i}\text{ }\text{ }[3]$
$n$ est divisible par 3 si la somme de ces chiffres est divisible par 3

- <u>Modulo 9</u>
$10\equiv 1[9]$ donc $n=\sum\limits_{i=0}^{k}C_{i}\text{ }\text{ }[9]$	
$9 \text{ }|\text{ }n$ ssi la somme des chiffres est div. par 9

- <u>Modulo 2</u>
$\forall i \geqslant 1,10^{i}\equiv 0[2]$ donc $\boxed{n\equiv C_{0}[2]}$

- <u>Modulo 5</u>
$\forall i \geqslant 1,10^{i}\equiv 0[5]$ donc $\boxed{n\equiv C_{0}[5]}$

- <u>Modulo 4</u>
$100\equiv 4\times 25 \equiv 0[4]$
$\forall i\geqslant 2$, $10^{i}\equiv 0[4]$
donc $n\equiv C_{0}+10C_{1}[4]$
	$\equiv \underbrace{ \bar{C_{1}C_{0}}^{10} }_{ \text{2 derniers chiffres de }n }[4]$

- <u>Modulo 11</u>
$10\equiv (-1)[11]$
$10^{i}\equiv (-1)^{i}[11]$
$\boxed{n=\sum\limits_{i=0}^{K}C_{i}(-1)^{i}\text{ }\text{ }[11]}$

## II - PGCD, PPCM
1) Plus grand diviseur commun
Définition:
> Soit $(a,b)\in \mathbb{Z}^{2}\setminus\{ (0,0) \}$
> L'ensemble $\mathcal{D}(a)\cap \mathcal{D}(b)\cap \mathbb{N}$ est non vide et majoré
> donc il admet un plus grand élément, qu'on appelle $\mathrm{pgcd}$
> $\mathrm{pgcd}(a,b)=a\land b=\max(\mathcal{D}(a)\cap \mathcal{D}(b)\cap \mathbb{N})$

- Si $a=0$ et $b\neq 0$, $\mathcal{D}(a)\cap \mathcal{D}(b)=\mathcal{D}(b)\subseteq \textlbrackdbl -|b|,|b| \textrbrackdbl$
- $1\in \mathcal{D}(a)\cap \mathcal{D}(b)\cap \mathbb{N}$

Cas particulier: $\forall a\neq 0,0\land a=|a|$ car $\mathcal{D}(a)\cap \mathcal{D}(0)=\mathcal{D}(a)\cap \mathbb{Z}=\mathcal{D}(a)$ et $\max(\mathcal{D}(a))=|a|$

Propriété:
- $a\land b=|a|\land |b|$
- $a\land b=b\land a$
- $(a\land b)\land c=a\land(b\land c)$
- $a\land a=|a|$
- $a\land 0=|a|$
- $a\land 1=1$
En effet, $\mathcal{D}(a)=\mathcal{D}(|a|)$, $\cap$ est commutative et associative, et $\mathcal{D}(1)\cap \mathbb{N}=\{ 1 \}$

Exemple: $12\land 18=6$ car $\mathcal{D}(12)\cap \mathbb{N}=\{ 1,2,3,4,6,12 \}$ et $\mathcal{D}(18)\cap \mathbb{N}=\{ 1,2,3,6,9,18 \}$

2) Algorithme d'Euclide
Lemme: $\forall(a,b,k)\in \mathbb{Z}^{3},a\land b=(a+kb)\land b$

Preuve: on va montrer $\mathcal{D}(a)\cap \mathcal{D}(b)=\mathcal{D}(b)\cap \mathcal{D}(a+kb)$
- Soit $d\in \mathcal{D}(a)\cap \mathcal{D}(b)$. $d|a$ et $d|b$ alors $d|(a+kb)$
  Donc $d\in \mathcal{D}(b)\cap \mathcal{D}(a+kb)$
- Soit $d\in \mathcal{D}(b)\cap \mathcal{D}(a+kb)$. $d|b$ et $d|(a+kb)$ donc $d|((a+kb)+(-k)b)$ donc $d|a$
  Donc $d\in \mathcal{D}(a)\cap \mathcal{D}(b)$

Corollaire: Soit $(a,b)\in \mathbb{Z}^{2},b\in \mathbb{N}^{*}$. La division euclidienne de $a$ par $b$ s'écrit $\exists!(q,r)\in \mathbb{Z}^{2},a=bq+r,0\leqslant r<b$
Alors $a\land b=(a-bq)\land b=r\land b=b\land r$

On en déduit l'algorithme d'Euclide
$\boxed{\mathrm{PGCD}}$ Entrée: $(a,b)\in \mathbb{Z}^{2}$ avec $b \geqslant 0$. Si $b=0$, alors renvoyer $|a|$. Sinon, renvoyer $\mathrm{pgcd}(b, a\space\mathrm{mod}\space b)$

Principe: on effectue des divisions euclidiennes successives et on obtient une suite de restes $(r_{k})_{k}$ avec $r_{0}=a$ et $r_{1}=b$
$r_{k+1}$ est donc le reste de la division euclidienne de $r_{k-1}$ par $r_{k}$:
$\exists!(q_{k+1},r_{k+1}),r_{k-1}=q_{k+1}r_{k}+r_{k+1},0\leqslant r_{k+1}<r_{k}$
La suite des restes est dans $\mathbb{N}$ et strictement décroissante donc elle est finie.
Ainsi, $\exists N\in \mathbb{N}$ tel que $r_{N}=0$
Or, étudions la suite finie $(r_{0},r_{1},\dots,r_{N-1},r_{N})$
Or, $r_{k-1}\land r_{k}=r_{k}\land r_{k+1}$ pour $k\in \textlbrackdbl 1,N-1 \textrbrackdbl$
La suite $(r_{k-1}\land r_{k})_{1\leqslant k<N}$ est constante donc $r_{0}\land r_{1}=r_{N-1}\land r_{N}$ donc $a\land b=r_{N-1}\land 0=r_{N-1}$, le dernier reste non nul

Exemple: $a=521$, $b=432$
$521=432\times 1+89$       $a=b\times q+r$
$432=89 \times 4+76$         $b=r\times q'+r'$
$89=76 \times 1+13$
$76=13\times 5+11$
$13=11\times 1+2$
$11=2\times 5+1$
$2=1\times 2+0$
$a\land b=1$

Remarque: $a\land b\in \mathcal{D}(a)\cap \mathcal{D}(b)$ donc $a\land b|a$ et $a\land b|b$
L'algorithme d'Euclide donne la réciproque:
Si un entier divise $a$ et $b$, alors il divise leur $\mathrm{pgcd}$

Si $n|a$ et $n|b$ en notant $(r_{0},r_{1},\dots,r_{N-1},0)$ la suite des restes de l'algorithme d'Euclide avec $r_{0}=a,r_{1}=b,r_{N-1}=a\land b$
comme $r_{k-1}=q_{k}r_{k}+r_{k+1}$
Si $n|r_{k-1}$ et $n|r_{k}$, alors $n|r_{k+1}$. Par récurrence sur $k$, $n|r_{N-1}$ donc $n|a\land b$

Théorème: $\mathcal{D}(a)\cap \mathcal{D}(b)=\mathcal{D}(a\land b)$
C'est-à-dire $\forall n\in \mathbb{Z},(n|a \text{ et } n|b)\iff n|a\land b$

Preuve:
$\boxed{\implies}$ via l'algorithme d'Euclide
$\boxed{\impliedby}$ définition du $\mathrm{pgcd}$ et transitivité

Remarque: $a|b\iff a\land b=|a|$

Car $a|b\iff a\in \mathcal{D}(b)\iff a\in \mathcal{D}(b)\land a\in \mathcal{D}(a)\iff a\in \mathcal{D}(a\land b)$

Propriété: $(ak)\land(bk)=|k|(a\land b)$

Exemple: $12\land 18=(6\times 2)\land(6\times 3)=6\times(2\land 3)=6\times 1=6$

Preuve: 
- Posons $d=a\land b$. $d|a$ et $d|b$ donc $dk|ak$ et $dk|bk$ donc $dk|(ak\land bk)$
- Posons $\delta=ak\land bk$. $k|ak$ et $k|bk$ donc $k|\delta$ donc $\exists c\in \mathbb{N}^{*},\delta=|k|\times c$. Or, $\delta|ak$ et $\delta|bk$ donc $kc|ak$ et $kc|bk$ donc $c|a$ et $c|b$ donc $c|a\land b$. donc $\delta|k(a\land b)$
On a montré que $kd|\delta$ et $\delta|kd$ donc ils sont associés $|kd|=|\delta|$ donc $|k|d=\delta$

3) Relation de Bézout
Propriété: Soient $(a,b)\in \mathbb{Z}^{2}$
Il existe $(u,v)\in \mathbb{Z}^{2},au+bv=a\land b$
$(u,v)$ est appelé un couple de Bézout

Il y a existence mais pas unicité

Preuve:
- cas dégénéré, $(a,b)=(0,0)$, $0\land0=0$
- Soit $(a,b)\neq(0,0)$. $|a|+|b|\in(a\mathbb{Z}+b\mathbb{Z})\cap \mathbb{N}^{*}$. Ainsi, $(a\mathbb{Z}+b\mathbb{Z})\cap \mathbb{N}^{*}$ est non vide et minoré, donc il admet un plus petit élément $d=\min((a\mathbb{Z}+b\mathbb{Z})\cap \mathbb{N}^{*})$
  donc $c\in \mathbb{N}^{*}$ et $\exists(u,v)\in \mathbb{Z}^{2},au+bv=d$. Montrons que $d=a\land b$
  $a\land b|a$ et $a\land b|b$ donc $a\land b|(au+bv)$ donc $a\land b|d$
  On effectue la division euclidienne de $a$ par $d$:
  $\exists!(q,r),a=dq+r,0\leqslant r<d$ Or, $r=a-dq=a-(au+bv)q=a(1-uq)+b(-vq)$
  Donc $r\in \mathbb{N},r\in a\mathbb{Z}+b\mathbb{Z}$ et $r<d=\min((a\mathbb{Z}+b\mathbb{Z})\cap \mathbb{N}^{*})$
  Donc $r=0$ donc $d|a$
  De même, $d|b$
  Donc $d|a\land b$ et donc $|d|=|a\land b|$ donc $d=a\land b$

Corollaire: $a\mathbb{Z}+b\mathbb{Z}=(a\land b)\mathbb{Z}$
Preuve:
- Par Bézout, $a\land b\in a\mathbb{Z}+b\mathbb{Z}$ alors $\forall k\in \mathbb{Z},k\times(a\land b)\in a\mathbb{Z}+b\mathbb{Z}$ donc $(a\land b)\mathbb{Z}\subseteq a\mathbb{Z}+b\mathbb{Z}$
- Si $x=au+bv$, or $a\land b|a$ et $a\land b|b$ donc $a\land b|x$ donc $x \in(a\land b)\mathbb{Z}$

Calcul algorithmique d'une relation de Bézout:
On fait l'algorithme d'Euclide étendu:
$a=bq+r_2$
$r_{k-1}=r_{k}q_{k}+r_{k+1}$
$r_{N-2}=r_{N-1}q_{N-1}+r_{N}$
Le dernier reste non nul est $r_{N-1}=a\land b$

On remonte successivement depuis $a\land n=r_{N-1}=r_{N-3}-r_{N-2}q_{N-2}$
$r_{i}=r_{i-2}-r_{i-1}q_{i-1}$
en injectant dans la dernière division euclidienne, on obtient $a\land b$ en fonction de $r_{0}$ et $r_{1}$ d'où $a\land b=au+bv$

Exemple: $a=512=32\times 16$ et $b=240=15\times 16$
$a\land b=16\times(15\land 32)$
$32=15\times 2+2$
$15=2\times 7+1$
$1=15-2\times 7=15-7\times(32-2\times 15)=15\times 15-7\times 32$
$a\land b=16\times(32\land 15)=16$
donc $16=16\times 15\times 15-7\times 16\times 32$
$16=15\times 240-7\times 512$
$a\land b=16=15b-7a$

<u>généralisation</u> au PGCD de $(a_{1},a_{2},\dots,a_{r})\in \mathbb{Z}^{r}$ 
	avec $(a_{1},\dots a_{r})\neq (0,0,\dots,0)$
Comme $\land$ est associatif, on peut définir :
$a_{1}\land a_{2}\land\dots \land a_{r}=\land_{i=1}^{r}a_{i}$
qui est le <u>plus grand</u> diviseur commun de la famille $(a_{i})_{1\leqslant i \leqslant r}$
c'est 
$$
\text{max}\left( \underset{ i=1 }{ \bigcap }^{r} \mathcal D(a_{i}) \right)
$$
Or, $\mathcal D(a)\cap \mathcal D(b)=\mathcal D(a \land b)$
Ainsi,
$$
\underset{ i=1 }{ \bigcap }^{r}\mathcal D(a_{i})=\mathcal D(\land_{i=1}^{r}a_{i})
$$
<u>On a encore une relation de Bézout</u> :
	$\exists(u_{1},\dots u_{r})\in \mathbb{Z}^{r}$ tq
	$\sum\limits_{i=1}^{r}a_{i}u_{i}=\land_{i=1}^{r}a_{i}$

$\boxed{\text{Fait}}$
Soient $(a,b)\in \mathbb{Z}^{2}$ et soit $d=a\land b$
on a $d \text{ }|\text{ }a$ et $d \text{ }|\text{ }b$
<u>Donc</u> $\exists(a',b')\in \mathbb{Z}^{2}$ tel que $\begin{cases}a=da' \\ b=db'\end{cases}$
Or $d=a\land b=(da')\land(db')$
$=d \times(a'\land b')$
<b>Avec</b> $(a \land b) \neq (0,0)$
	on a $d \neq 0$
	donc $\boxed{1=a'\land b'}$

# III - Entiers premiers entre eux

<u>Déf</u> $\to$
> $a\text{ et }b$ sont premiers entre eux si
> $\boxed{a \land b=1}$


Si $(a_{1},\dots,{a_{r}})\in \mathbb{Z}^{r}$
- On dit que les $(a_{i})_{1\leqslant i \leqslant r}$ sont <u>deux-à-deux</u> premiers entre eux si
$$
\forall(i,j) \in \textlbrackdbl 1,r \textrbrackdbl ^{2}, i\neq j \implies a_{i} \land a_{j}=1
$$
- On dit que $(a_{i})_{1 \leqslant i \leqslant r}$ sont <u>premiers entre eux dans leur ensemble</u> si 
$$
\land_{i=1}^{r}a_{i}=1
$$

<span style="color:yellow"> ⚠ </span> Les notions ne sont pas équivalentes
- 2 à 2 premiers entre eux $\implies$ premiers entre eux dans l'ensemble
- La réciproque est fausse
<u>Exemple</u>$\begin{cases}a=6=2\times3 \\ b=10=2\times 5 \\ c=15=3\times 5\end{cases}$            $\begin{cases}a \land b =2 \\ a \land c = 3 \\ b \land c=5\end{cases}$
$a \land b \land c=(a \land b)\land c = 2 \land 15=1$

$\boxed{\text{Théorème}}$ : (Bézout)
> Soit $(a,b)\in \mathbb{Z}^{2}$
> On a équivalence entre
> $(i)$ $a \land b=1$
> $(ii)$ $\exists (u,v)\in \mathbb{Z}^{2},au+bv=1$

<u>Preuve</u>
$\boxed{(i)\implies(ii)}$
$a \land b=1$ donc il existe une relation de Bézout (par exemple, l'algo d'Euclide étendu)

$\boxed{(ii)\implies(i)}$
Soit $d$ un diviseur commun à $a\text{ et }b$
$d \text{ }|\text{ }a$ et $d \text{ }|\text{ }b$
Alors $d \text{ }|\text{ }(au+bv)$
donc $d \text{ }|\text{ }1$
donc $d = \pm1$
$\boxed{\text{Donc }a \land b =1}$

<u>Lemme (Gauss)</u>
>Si $a \text{ }|\text{ }bc$ et $a \land b=1$ alors $a \text{ }|\text{ }c$

<u>Preuve</u>
Comme $a \land b=1$ alors :
$\exists(u,v)\in \mathbb{Z}^{2}, au+bv=1$
alors $acu+bcv=c$
or $a \text{ }|\text{ }bc$ donc $a \text{ }|\text{ }bcv$
et $a \text{ }|\text{ }a$ donc $a \text{ }|\text{ }acu$

<u>Donc</u> $a \text{ }|\text{ }bcv+acu$, donc $\boxed{a \text{ }|\text{ } c}$



<u>Conséquence</u> : Résolution d'équation diophantiennes 
$$
ax+by=a \land b
$$
où $a\text{ et }b$ sont fixés et $(x,y)\in \mathbb{Z}^{2}$ inconnus

$1^{ere}$ étape :
Posons $d=a \land b$
Ainsi $\exists(a',b')\in \mathbb{Z}^{2},\begin{cases}a=da' \\ b=db' \\ \text{et }a'\land b'=1\end{cases}$
$ax+by=d \iff a'x+b'y=1$
Par <u>l'algorithme d'Euclide étendu</u>, 
il existe une relation de Bézout, $\exists(u_{0},v_{0})\in \mathbb{Z}^{2}$ tels que
$a'u_{0}+b'v_{0}=1$

$2^{e}$ étape
<u>Analyse</u>

Soit $(x,y)\in \mathbb{Z}^{2}$ une <u>solution</u>
$a'x+b'y=1=a'u_{0}+b'v_{0}$
Donc $a'(x-u_{0})=b'(y-v_{0})$
Ainsi $a' \text{ }|\text{ }b'(v_{0}-y)$
Or $a' \land b'=1$  donc par lemme de Gauss,
$$
\boxed{a' \text{ }|\text{ }v_{0}-y}
$$donc $\exists k \in \mathbb{Z}$ tel que :
$v_{0}-y=ka'$
Donc $\boxed{y=v_{0}-ka'}$
or $a'\times(x-u_{0})=b'(v_{0}-y)$
se réécrit
$a'\times(x-u_{0})=b' \times ka'$
$\underset{ a' \neq 0 }{ \to }\boxed{x=u_{0}+kb'}$
Bilan, 
$(x,y)\in \{ (u_{0}+kb',v_{0}-ka'), k \in \mathbb{Z} \}$

<u>Synthèse</u> Soit $k \in \mathbb{Z}$
$a'\times(u_{0}+kb')+b'\times(v_{0}-ka')$
$=a'u_{0}+b'v_{0}=1$, donc tous les couples trouvés <u><b>conviennent</b></u>

<u>Conclusion</u>
Les solutions de $ax+by=a\land b$ avec $(x,y)\in \mathbb{Z}^{2}$ sont
$$
\begin{align}
 & \{ (u_{0}+kb',v_{0}-ka')\text{ }|\text{ }k \in \mathbb{Z} \} \\
 = & \{ (u_{0},v_{0})+k(b',-a')\text{ }|\text{ }k \in \mathbb{Z} \}
 \\
= &(u_{0},v_{0})+\mathbb{Z}\times(b',-a') 
\end{align}
$$
<u>Remarque</u> :
$ax+by=c$ avec $c \in \mathbb{Z}$
- Si $d = a \land b$
	alors $d \text{ }|\text{ }a$ et $d \text{ }|\text{ }b$
	donc $d \text{ }|\text{ }ax+by$
	donc $d \text{ }|\text{ }c$
	il est nécessaire d'avoir $(a \land b)\text{ }|\text{ }c$

- Si $c \not\in d\mathbb{Z},$ l'équation n'a pas de solution.

- Si $c \in d\mathbb{Z}$,
	Alors $\begin{cases}a=da' \\ b=db' \\ c=dc'\end{cases}$ avec $a' \land b'=1$
	$ax+by=c \iff a'x+b'y=c'$
	on résout $a'x'+b'y'=1$
	puis on obtient $a'(x'c')+b'(y'c')=c'$

<u>Exemple</u> Résoudre dans $\mathbb{Z}^{2}$
$$
45x-25y=105
$$
$\iff \boxed{ 9x-5y=21}$, On voit que $\boxed{9 \land 5=1}$
or il existe une relation de Bézout, 
$$
(-1)\times 9 - 5 \times (-2) =1
$$
on pose $u_{0}=-1$, $v_{0}=-2$
Ainsi, $9u_{0}-5v_{0}=1$
(( Donc $9\times 21u_{0}-5 \times 21v_{0}=21$ ))
Soit $(x,y) \in \mathbb{Z}^{2}$ tq 
$45x-25y=105$
$\begin{align}\text{Alors } 9x-5y & =21 \\  & =9\times(21u_{0})-5(21v_{0})\end{align}$
donc $9(x-21u_{0})=5(y-21v_{0})$
Par exemple $9 \text{ }|\text{ }5\times(y-21v_{0})$
Par Gauss, $9 \text{ }|\text{ }(y-21v_{0})$
car $\boxed{9 \land 5=1}$

Alors : $\exists k \in \mathbb{Z}$, $y-21v_{0}=9k$
Ainsi $9\times(x-21u_{0})=5\times9k$
donc $x=21u_{0}+5k$

<u>Bilan</u>
$(x,y)\in \{ (21u_{0}+5k,\text{ }21v_{0}+9k),k \in \mathbb{Z} \}$

Réciproquement, tous ces couples conviennent bien.
$S=\{ 21.(u_{0},v_{0})+k(5,9), k \in \mathbb{Z} \}$

<b>Conséquences de Bézout et Gauss</b>
$(1)$ On a équivalence entre
	$(a\land b=1\text{ et }a \land c=1) \iff a\land(bc)=1$

(2) Si $a \land b=1$
 alors $(a \text{ }|\text{ }c\text{ et }b \text{ }|\text{ }c)$ $\implies ab \text{ }|\text{ }c$

<u><b>Preuve</b></u> :
(1)
$\boxed{\implies}$
	Si $a \land b=1$ et $a \land c=1$
Par Bézout, $\exists(u,v),(u',v')\in \mathbb{Z}'$
$\begin{cases}au+bv=1 \\ au'+cv'=1\end{cases}$

Par produit :
$\underline{a}uau'+\underline{a}ucv'+bv\underline{a}u'+\underline{b}v\underline{c}v'=1$
donc $a \times K+bcK'=1$
$\text{avec }\begin{cases}K=auu'+ucv'+bvu' \in \mathbb{Z} \\ K'=vv' \in \mathbb{Z}\end{cases}$
Il y a une relation de Bézout entre $a$ et $(bc)$
Par th. de Bézout, $\boxed{a \land(bc)=1}$

$\boxed{\impliedby}$ 
Si $a\land (bc)=1$
Par Bézout, $\exists(u,v)\in \mathbb{Z}^{2},au+bcv=1$ 
Donc $\begin{cases}au+bK=1 \\ au+cK'=1\end{cases}$
Donc $(\text{Th. Bézout})$, $\begin{cases}a \land b=1 \\ a \land c=1\end{cases}$

(2)
On suppose $a \land b =1$ et $a \text{ }|\text{ }c$ et $b \text{ }|\text{ }c$
$\exists k,k\text' \in \mathbb{Z}$, tq $\begin{cases}c=ak \\ c=bk'\end{cases}$
Ainsi, $ak=bk'$
Ainsi, $a \text{ }|\text{ }bk'$
Or, $a \land b =1$, donc par Gauss, $a \text{ }|\text{ }k'$
Donc $ab \text{ }|\text{ } bk'$
Donc $\boxed{ab\text{ }|\text{ }c}$

<u>Généralisation</u>
- $(\forall i \in \textlbrackdbl 1,r \textrbrackdbl,a_{i }\land n=1)$
	$\iff$$\left( \prod\limits_{i=1}^{r}a_{i} \right)\land n=1$

- $(\forall(i,j)\in \textlbrackdbl 1,r \textrbrackdbl\times \textlbrackdbl 1,p \textrbrackdbl, a_{i}\land b_{j}=1)$
	$\iff \left( \prod\limits_{i=1}^{r}a_{i} \right)\land\left( \prod\limits_{j=1}^{p}b_{j} \right)=1$

- Si $\begin{cases}\forall i \in \textlbrackdbl 1,r \textrbrackdbl, a_{i} \text{ }|\text{ }n \\ \text{et les }a_{i}\text{ sont 2 à 2 premiers entre eux}\end{cases}$
	alors $\left( \prod\limits_{i=1}^{r}a_{i} \right)\text{ }|\text{ }n$

<u>Forme irréductible d'un rationel</u>.
$$
\boxed{\begin{align}
\forall r\in \mathbb{Q}, & \exists!(p,q)\in \mathbb{Z}\times \mathbb{N}^{*} \\
& \text{tel que} \begin{cases}
p \land q=1 \\
r=\frac{p}{q}
\end{cases}
\end{align}}
$$

<u>Preuve</u> : 
Soit $r \in \mathbb{Q}$, $\exists(a,b)\in \mathbb{Z}^{2},r=\frac{a}{b}\text{ avec }b\neq 0$
<u>On pose</u> $d=a \land b$
	Ainsi $\exists a',b' \in \mathbb{Z}$ tq $\begin{cases}a=da' \\ b=db' \\ \text{et }a'\land b'=1\end{cases}$
	Ainsi $r=\dfrac{a}{b}=\dfrac{da'}{db'}= \boxed{\frac{a'}{b'}=\frac{(-a')}{(-b')}}$
	Si $b' \in \mathbb{N}^{*}$, le couple $(a',b')$ convient.
	Sinon, le couple $(-a',-b')$ convient
	
---
- <u>Unicité</u>
Si $r=\dfrac{p_{1}}{q_{1}}=\dfrac{p_{2}}{q_{2}}$ avec $q_{1},q_{2}\in \mathbb{N}^{*}$ et $p_{1} \land q_{1}= p_{2} \land q_{2}=1$
Alors $p_{1}q_{2}=p_{2}q_{1}$
Ainsi, $q_{2}\text{ }|\text{ }p_{2}q_{1}$
Or, $q_{2} \land p_{2}=1$
$\underset{ \text{par Gauss} }{ \implies }\boxed{q_{2}\text{ }|\text{ }q_{1}}$
De même $q_{1} \text{ }|\text{ }p_{1}q_{2}$ et $q_{1}\land p_{1}=1$
$\underset{ \text{par Gauss} }{ \implies }\boxed{q_{1}\text{ }|\text{ }q_{2}}$

Comme $q_{1},q_{2}\in \mathbb{N}^{*}$ et $|q_{1}|=|q_{2}|$
Alors $\underline{q_{1}=q_{2}}$
Puis $\underline{p_{1}=p_{2}}$

# IV - Plus Petit Multiple Commun (PPCM)

<u>Déf</u> $\to$
> Pour $(a,b)\in \mathbb{Z}^{2}\text{ avec }a\neq 0\text{ et }b \neq 0$
> On note $a \lor b=ppcm(a,b)$ 
>  $\begin{align}\text{le plus petit élément de } & (|a|\mathbb{N}^{*}\cap |b|\mathbb{N}^{*}) \\  & =(a\mathbb{Z}\cap b\mathbb{Z})\cap \mathbb{N}^{*}\end{align}$

$a \lor b=ppcm(a,b)=min(\mathbb{N}^{*} \cap a\mathbb{Z}\cap b\mathbb{Z})$

$\boxed{Prop}$
$a\mathbb{Z}\cap b\mathbb{Z}=(a\lor b)\mathbb{Z}$
$(\forall n \in \mathbb{Z},(a \text{ }|\text{ }n\text{ et }b \text{ }|\text{ }n)\iff(a\lor b)\text{ }|\text{ }n)$

$\boxed{Prop}$ Lien $PGCD /PPCM$
$\boxed{|ab|=(a\land b)\times(a\lor b)}$
*pgcd $\times$ ppcm = produit*

<u>Efficacité</u>
$ppcm(a,b)=a \lor b= \dfrac{|ab|}{a \land b}$
 avec $a \land b$ pgcd obtenu par l'algorithme d'Euclide


<u>Remarque</u> 
Soit$(a,b)\in \mathbb{Z}^{2}$
Posons $d=a \land b$
Ainsi $\begin{cases}a =da' \\ b=db'\end{cases}$ avec $a'\land b'=1$
donc $a' \lor b'=|a'b'|$

<u>Preuve</u>
Si $a\neq 0$ et $b \neq 0$
Ainsi $a \land b$, $a \lor b$ et $|ab|\in \mathbb{N}^{*}$
Soit $d=a \land b$
Alors $\exists a',b' \in \mathbb{Z},\begin{cases}a=a'd \\ b=b'd\end{cases}\text{ }\text{ }avec\text{ }\boxed{a'\land b'=1}$

Il reste à calculer : <small>(on factorise le PPCM)</small>
$\begin{align}a\lor b & =(a'd)\times(b'd) \\  & =d \times (a'\lor b')\end{align}$

Il faut montrer $\begin{cases}a'\lor b'=|a'b'| \\ \text{avec }a'\land b'=1\end{cases}$

<b>Posons</b> $\underline{m=a'\lor b'}$ (ppcm de $a'$ et $b'$)
- Ainsi $\begin{cases}a'\text{ }|\text{ }m \\ b' \text{ }|\text{ }m\end{cases}$    Or $\boxed{a' \land b'=1}$ (premiers entre eux)
	donc $\boxed{a'b'\text{ }|\text{ }m}$

- $\begin{rcases} & a'\text{ }|\text{ }a'b' \\  & b'\text{ }|\text{ }a'b'\end{rcases}$ donc $a'b'\in a'\mathbb{Z} \cap b'\mathbb{Z}=n\mathbb{Z}$
	donc $\boxed{m\text{ }|\text{ }a'b'}$

donc $|m|=|a'b'|$ donc $m=|a'b'|$

<u>Bilan</u> : 
$\begin{align} & (a  \lor b)\times(a \land b) \\   = & dm\times d \\  = & d |a'b'|\times d \\  = & |da'|\times |db'| \\ = & |a|\times |b|\end{align}$

##### Caractérisation du PPCM
>$\forall n \in \mathbb{Z},$
>	$(a\text{ }|\text{ }n\text{ et }b\text{ }|\text{ }n)\iff(a\lor b)\text{ }|\text{ }n$
>	$n\in a\mathbb{Z}\cap b\mathbb{Z}$,            $n \in(a\lor b)\mathbb{Z}$

##### Caractérisation du PGCD
>$\mathcal D(a)\cap \mathcal D(b)=\mathcal D(a\land b)$
>$\forall n\in \mathbb{Z}$,
>	$(n\text{ }|\text{ }a\text{ et }n\text{ }|\text{ }b)\iff n\text{ }|\text{ }a\land b$


# V - Nombres premiers
1) Définitions:
Définition:
> Soit $p \in\mathbb{N}$
> $p$ est premier si $p \neq 1$ et ses sels diviseurs positifs sont triviaux

$p$ est premier si et seulement si $\mathcal{D}(p)\cap \mathbb{N}=\{ 1,p \}$ avec $p\neq 1$

Soit $p \in \mathbb{N}^{*}$
Si $p$ n'est pas premier, alors il est composé, $\exists(a,b)\in \mathbb{N}^{2},p=ab$ avec $a\neq 1$ et $b\neq 1$
Ainsi, $a\geqslant 2$ et $b\geqslant 2$
mais aussi $a\leqslant p-1$ et $b\leqslant p-1$

<u>Remarque</u>
$(\text{Pratique})$ 
- On note $\mathbb{P}(\text{ou }\mathcal P)$ l'ensemble des nombres premiers

>Soit $p \in \mathbb{P}$ et $a\in \mathbb{Z}$, on a deux alternatives :
>- soit $p \text{ }|\text{ }a$,     $a\in p\mathbb{Z}$
>- soit $p$ $\nmid$ $a$,    alors $\boxed{a \land p=1}$

<u>En effet</u>, si $p \nmid a$
	considérons $d$ un diviseur commun dans $\mathbb{N}^{*}$ à $a\text{ et }p$

$d\in \mathcal D(a)\cap \mathcal D(p)\cap \mathbb{N}^{*}\subset \{ 1;p \}$
<u>Or</u>, $p \nmid a$ donc $p \not\in \mathcal D(a)$
<b>Donc</b>, $d\in \{ 1 \}$
donc $\boxed{d=1}$, Ainsi $\boxed{a \land p=1}$

<u>Remarque</u>
Soit $p \in\mathbb{P}$, 

Tout élément $a\in \textlbrackdbl 1;p-1 \textrbrackdbl$ est premier avec $p$      $\boxed{a \land p=1}$
En effet, si $1 \leqslant a <p$, <u>on est sûrs que</u> $p \nmid a$

$\boxed{Théorème}$ : 
> Tout entier de $\mathbb{N}^{*}$ s'écrit comme <u><b>un produit de nombres premiers</b></u>
> <small>(Existence de la décomp. en facteurs premiers)</small>

<u>Preuve :</u> 
$H_{n}:(n\text{ est un produit de facteurs tous premiers})$ <small>(éventuellement à 1 facteurs)</small>
- <u>Initialisation</u> :
	$n=1$ : $1=\prod\limits_{i \in \varnothing}^{}p_{i}$ (produit vide)
	$\underline{n=2}$ : $\boxed{2\in \mathbb{P}}$, $2=2$

- <u>Hérédité</u> :
	Soit $n\geqslant 3$ tel que $\forall k\in \textlbrackdbl 1;n-1 \textrbrackdbl$, $H_{k}$ est vérifiée
	 - si $n\in \mathbb{P}$, alors $n=n$  $\checkmark$ 
	 - sinon, $\exists a,b$, $n=a\times b$ avec $\begin{cases}a \neq 1 \\ b \neq 1\end{cases}$
	$\begin{align} & a \geqslant 2 \\  & b \geqslant 2\end{align}$   donc   $\begin{align} & b=\frac{n}{a}\leqslant \frac{n}{2} < n \\  & a= \frac{n}{b} \leqslant \frac{n}{2} < n\end{align}$
	$a,b\in \textlbrackdbl 1;n-1 \textrbrackdbl$
	Donc on leur applique $H_{a}$ et $H_{b}$ 
	Ainsi $a$ et $b$ sont des produits de premiers
	donc $n=ab$ également donc $\boxed{H_{n}\text{ est vérifiée}}$

- <u>Conclusion</u> :
>La récurrence forte permet de démontrer $\boxed{\forall x \geqslant 1, H_{n}}$

$\boxed{Théorème}$ :
>$\mathbb{P}$ est infini

Preuve: Supposons que $\mathbb{P}$ est un ensemble fini, c'est à dire $\exists N\in \mathbb{N}^{*},\mathbb{P}=\{ p_{1},p_{2},p_{3},\dots,p_{N} \}$ avec $p_{1}<p_{2}<p_{3}<\dots<p_{N}$
Soit $x=\left( \prod\limits_{i=1}^{N}p_{i} \right)+1$
$\forall i\in \textlbrackdbl 1,N \textrbrackdbl, x\equiv 1\quad[p_{i}]$ donc $\forall p \in \mathbb{P},p\nmid x$
Or, $x$ est un produit de facteurs premiers
Or, $x>p_{N}$ donc $x\not\in \mathbb{P}$
ce qui est <u><b>contradictoire</b></u>

$\boxed{\text{Propriété}}$ :
>Tout nombre $n\in \mathbb{N}^{*}$ <u>composé</u> 
>contient un facteur premier $p \leqslant \lfloor \sqrt{ n } \rfloor$

<u>Preuve</u> :
Si $n$ est <u>composé</u>, notons $\underline{p}$ le + petit nombre premier diviseur de $n$
$\exists k\in \mathbb{N}^{*}$, $n=pk$ et $k \geqslant p$ 
donc $pk\geqslant p^{2}$ 
donc $\sqrt{ n }\geqslant p$ 
donc $\boxed{\lfloor \sqrt{ n } \rfloor \geqslant p}$

2) Valuation $p-$adique

<u>Déf</u> $\to$
> Soit $p \in\mathbb{P}$ et $n\in \mathbb{N}^{*}$
> La valuation $p-$adique de $n$ est :
> $\boxed{V_{p}(n)=max\{ k\in \mathbb{N}, p^{k}\text{ }|\text{ }n \}}$
<small>l'ensemble est non vide car il contient 0</small>

$p^{0}=1$ et $1\text{ }|\text{ }n$

et si $p^{k}\text{ }|\text{ }n$
donc $p^{k}\leqslant n$
donc $k \leqslant \log_{p}(n)$
donc $k\leqslant \underbrace{ \lfloor \log_{p}(n) \rfloor+1 }_{ \text{majorant !!!} }$

<u>Remarque</u> :
Soit $p \in \mathbb{P}$ et $n\in \mathbb{N}^{*}$
$\begin{cases} p^{V_{p}(n)}\text{ }|\text{ }n \\ p^{V_{p}(n)+1} \nmid n\end{cases}$
donc $\exists q\in \mathbb{N}^{*}$, $\boxed{n=p^{V_{p}(n)}\times q\text{ avec }\boxed{p\land q=1}}$

$\boxed{\text{Propriété}}$ :
> $\forall p \in \mathbb{P}$, $\forall(a,b)\in (\mathbb{N}^{*})^{2}$,
> $V_{p}(ab)=V_{p}(a)+V_{p}(b)$



<u>Preuve</u>:  
$a=p^{V_{p}(a)}\times q_{1}$ avec $q_{1}\land p=1$ et $b=p^{V_{p}(b)}\times q_{2}$ avec $q_{2}\land p=1$
donc $ab=p^{V_{p}(a)+V_{p}(b)}\times q_{1}q_{2}$
Donc $V_{p}(ab)\geqslant V_{p}(a)+V_{p}(b)$

$\begin{rcases} q_{1}\land p=1 \\ q_{2}\land p=1\end{rcases}$ donc $(q_{1}q_{2})\land p=1$ 
donc $p\nmid q_{1}q_{2}$
donc $V_{p}(ab)<V_{p}(a)+V_{p}(b)+1$
d'où l'égalité

Conséquence:
>$\forall a\in \mathbb{N}^{*},\forall p\in \mathbb{P},\forall n\in \mathbb{N},V_{p}(a^{n})=nV_{p}(a)$

$\boxed{Théorème}$ : <u>Factorisation</u>
>Pour tout $n \in \mathbb{N}^{*}$, la suite $V_{p}(n)_{p\in \mathbb{P}}$ est presque nulle
>et on a $$
n=\prod\limits_{p \in \mathbb{P}}^{}p^{V_{p}(n)}
$$

Soit $n\in \mathbb{N}^{*}$
Posons $p_{1} < p_{2} <p_{3} < \dots <p_{n}$
la liste finie des <u>diviseurs premiers</u>
Alors $n=\prod\limits_{i=1}^{k}p_{i}^{\space V_{p}(n)}$
$n=\prod\limits_{\underset{ p\text{ }|\text{ }n }{ p\in \mathbb{P}\text{ }tq }}^{}p^{V_{p}(n)}$
$$\prod\limits_{\underset{}{ p\in \mathbb{P},\space p \nmid n }}^{}p^{0}=1$$

<u>Conséquences</u> : 
Soit $(a,b)\in(\mathbb{N}^{*})^{2}$
- $a|b\iff \forall p\in \mathbb{P}, V_{p}(a)\leqslant V_{p}(b)$
- $a\land b=pgcd(a,b)=\prod\limits_{p \in \mathbb{P}}^{}p^{\min(V_{p}(a),V_{p}(b))}$
- $a\lor b=ppcm(a,b)=\prod\limits_{p \in \mathbb{P}}^{}p^{\max(V_{p}(a),V_{p}(b))}$

$\boxed{Théorème}$ (Petit Th. de Fermat)
>Soit $p \in \mathbb{P}$
>$(i)$ $\forall a\in \mathbb{Z}, a^{p}\equiv a [p]$
>$(ii)$ Si $p \nmid a$, alors $a^{p-1}\equiv 1[p]$

<u>Preuve</u> :
$(i)$ Soit $a\in \mathbb{Z},\exists!r\in \textlbrackdbl 0,p-1 \textrbrackdbl$ tel que $a\equiv r[p]$
($r$ est le reste de la div. eucl. de $a$ par $p$)
Ainsi $\underline{a^{p}\equiv r^{p}[p]}$

<u>Il suffit de montrer</u> : $\forall r\in \textlbrackdbl 0;p-1 \textrbrackdbl,r ^{p}\equiv r[p]$

Réc. finie sur $r\in \textlbrackdbl 0,p-1 \textrbrackdbl$

Soit $H_{r}:r ^{p}\equiv r[p]$

- <u>Initialisation</u> :
Avec $r=0$, $p \in \mathbb{P}$ donc $p\geqslant 2$
Alors $0^{p}=0\equiv 0[p]$

- <u>Hérédité</u> :
Soit $r \in \textlbrackdbl 0;p-2 \textrbrackdbl$ tel que $H_{r}$
Il faut montrer $H_{r+1}$
$\begin{align}\text{Or }(r+1)^{p} & \underset{ \text{binome} }{ = }\sum\limits_{k=0}^{p}\binom{p}{k}r ^{k} \\  & =\underbrace{ r ^{p} }_{ k=p }+\sum\limits_{k=1}^{p-1}\binom{p}{k}r ^{k}+\underbrace{ 1^{p} }_{ k=0 } \\  & \underset{ H_{r} }{ \equiv }r+\underset{ \text{multiple de }p\text{ }? }{ \left( \sum\limits_{k=1}^{p-1}\binom{p}{k}r ^{k} \right) }+1\space \space[p]\end{align}$

<u><b>Lemme</b></u>
---- 
<u>Montrons</u> que $p \text{ }|\text{ }\binom{p}{k}$,
avec $\begin{cases}k \in \textlbrackdbl 1;p-1 \textrbrackdbl \\ p \in \mathbb{P} \end{cases}$
\-\-\-\-

Par <u>formule du chef</u>, $\binom{p}{k}=\frac{p}{k}\times \binom{p-1}{k-1}$  $(car\text{ }k\geqslant 1)$
Donc $k \times \binom{p}{k}=p \times \binom{p-1}{k-1}$  $(\text{On est dans }\mathbb{N}\text{ }!)$

Ainsi $p$ divise $k\times \binom{p}{k}$
Or, $k<p$ et $p$<u> est premier</u>
donc $\boxed{k \land p=1}$

Par lemme de Gauss, $\boxed{p\text{ divise }\binom{p}{k}}$       $(\text{avec }1\leqslant k\leqslant p-1)$

<b>En revenant à <u>l'Hérédité</u></b>, on a :
$(r+1)^{p}\equiv r+1+\sum\limits_{k=1}^{p-1}[\underbrace{ \binom{p}{k} }_{ \equiv 0[p] }r ^{k}]\space\space[p]$
$\equiv (r+1)[p]$, donc $H_{r+1}$ est vérifiée.

<u>Remarque</u> :
$\underline{\forall p \in \mathbb{P}}$, $\forall(a,b)\in \mathbb{Z}^{2},(a+b)^{p}\equiv a^{p}+b^{p}\space[p]$

$(ii)$ Soit $p \in \mathbb{P}$ et $a \in \mathbb{Z}$
On suppose que $p \nmid a$, donc $\boxed{a \land p=1}$
Par $(i)$ : $a^{p}\equiv a[p]$
$a^{p}-p\equiv 0[p]$
donc $p \text{ }|\text{ }a\times(a^{p-1}-1)$
$\underset{ \text{Gauss} }{ \text{donc} }$ $p \text{ }|\text{ }(a^{p-1}-1)$
donc $\boxed{a^{p-1}-1\equiv 0[p]}$

[[TD Anneaux Corps et Arithmétique dans le Z]]

