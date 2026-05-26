## Exercice 11
Vrai = anneau
##### 1 - 
Vrai
##### 2 -
Faux
##### 3 -
Vrai
##### 4 -
Faux
##### 5-
Faux
##### 6-
Faux
##### 7 - 
Vrai
##### 8 -
Faux
##### 9 -
Faux (car $f(x)=1 \forall x \in \mathbb{R}$)
##### 10 -
Faux
##### 11 -
Faux
##### 12 -
Faux (pas de neutre multiplicatif)

## Exercice 12
##### 1 - 
Voir [[m - 11 Structures Algébriques (Groupes, Anneaux, Corps)]] 
$\mathbb{Z}[j]=\{ a+bj,(a,b)\in \mathbb{Z}^{2} \}$ où $j=e^{ 2i\pi/3 }$
- $\mathbb{Z}[j]\in \mathbb{C}$
- $0,1 \in \mathbb{Z}[j]$
- Soient $\begin{cases}z_{1}=a+bj \text{ }\text{ }\text{ }\in \mathbb{Z}[j]\\ z_{2}=a'+b'j\text{ }\text{ }\in\mathbb{Z}[j]\end{cases}$
Donc $z_{1}-z_{2}=(a-a')+j(b-b')$ $\in \mathbb{Z}[j]$

et $z_{1} \times z_{2}=aa'+j(ab'+a'b)+bb'j^{2}$
$j \in \mathbb{U}_{3}$ donc $j^{3}=1$ et $\boxed{1+j+j^{2}=0}=\frac{1-j^{3}}{1-j}$
$\boxed{j^{2}=-1-j}$
donc $z_{1}\times z_{2}=(aa'-bb')+j(ab'+a'b-bb')$
$\in \mathbb{Z}[j]$
$\mathbb{Z}[j]$ est un sous-anneau de $(\mathbb{C},+,\times)$

$\aleph_{0}$

# Arithmétique :p

## Exercice 8
[[m - 12 Arithmétique dans Z]]
<u>Reste</u> de la Division Euclidienne de $10^{10^{n}}$ par $7$

$10\equiv 3[7]$
$\forall K\in \mathbb{N}^{*}$, $10^{K}\equiv 3^{K}[7]$
Par Fermat, $3^{6}\equiv 1[7]$   $(p=7\text{ et }a=3)$
Ainsi $3^{6N}\equiv 1[7]$ pour tout $N\in \mathbb{N}^{*}$
Or $10\equiv 4[6]$
Donc $10^{n}\equiv 4^{n}[6]$

$\begin{align}4^{2} & \equiv 16[6] \\  & \equiv 4[6]\end{align}$

Donc <small>(réc. immédiate)</small> $4^{n+1}\equiv 4\times 4^{n}\equiv 4\times 4\equiv 4[6]$
$\forall n\in \mathbb{N}^{*},$ $4^{n}\equiv 4[6]$
$10^{n}\equiv 4[6]$   
 Donc $\exists k\in \mathbb{Z},10^{n}=6k+4$
$\begin{align}\text{Ainsi } 10^{10^{n}} & \equiv 3^{10^{n}}[7] \\  & \equiv 3^{6k+4}[7] \\  & \equiv \boxed{3^{6k}}\times 3^{4}[7]\end{align}$
$\begin{align}\forall n\in \mathbb{N}^{*},10^{10^{n}} & \equiv 3^{4}[7] \\  & \equiv 9^{2}[7] \\  & \equiv 2^{2}[7] \\  & \equiv 4[7]\end{align}$

# <u>Exercice 22</u>
Soit $n\in \mathbb{N}^{*}$
$(n^{2}+n)\land(2n+1)$

On pose $d=(n^{2}+n)\land(2n+1)$
$\begin{rcases}d \text{ }|\text{ }n^{2}+n \\d \text{ }|\text{ }2n+1\text{ donc }d \text{ }|\text{ }2n^{2}n\end{rcases}$    donc $d \text{ }|\text{ }n^{2}$
Or $d \text{ }|\text{ }n^{2}-n-1$ donc $d \text{ }|\text{ }n+1$
$\begin{align}\text{donc } & d \text{ }|\text{ }2n+2 \\ \text{or } & d \text{ }|\text{ }2n+1 \\ \text{donc } & d \text{ }|\text{ }1\text{ }\text{ donc } \boxed{d=1}\end{align}$

# Exercice 25
### 1.
$(a,b)\in \mathbb{Z}^{2}$
$m \land n=1$
$$
S=\{ x \in \mathbb{Z}\text{ }|\text{ }\begin{cases}
x\equiv  a[m] \\
x\equiv  b[m]
\end{cases} \}
$$
Par Bézout, $\exists(u,v)\in \mathbb{Z}^{2},mu+nv=1$
Donc $amu+bnv=a$
Donc $\boxed{a\equiv anv[m]}$

De même : $bmu+bnv=b$
Donc $\boxed{b\equiv bmu[n]}$

Posons $x_{0}=anv+bmu$
Alors $x_{0}\equiv bmu[n]$
$x_{0}\equiv b[n]$
et $x_{0}\equiv anv[m]$
$x_{0}\equiv a[m]$
$\boxed{\text{donc }x_{0}\text{ convient}}$

<u>Analyse</u> 
Soit $x \in S$
$\begin{cases}x\equiv a[m] \\ x\equiv b[n]\end{cases}$    donc   $\begin{cases}x\equiv x_{0}[m] \\ x\equiv x_{0}[n]\end{cases}$

donc $x-x_{0}\text{ est divisible par }m\text{ et par }n$
or $n \land m=1$
donc $x-x_{0}$ st divisible par $mn$
donc $\boxed{x\equiv x_{0}[mn]}$
$x \in \{ x_{0}+kmn\text{ }|\text{ }k\in \mathbb{Z} \}$

<u>Synthèse</u> 
$\forall k\in \mathbb{Z},\begin{cases}\begin{align}x_{0}+kmn & \equiv x_{0}[n] \\  & \equiv b[n]\end{align} \\ x_{0}+kmn\equiv x_{0}[n]\equiv a[n] \end{cases}$

$\begin{cases}x\equiv x_{0}[m] \\ x\equiv x_{0}[n]\end{cases}$    $\underset{ m\land n=1 }{ \iff } x\equiv x_{0}[mn]$

### 2.
Si $\begin{cases}x\equiv 3[12] \\ x\equiv 5[9]\end{cases}$     alors $x=12k+3=9k'+5$

Regardons <u>modulo 3</u> :
et $\begin{cases}x\equiv 0[3] \\ x\equiv 2[3]\end{cases}$


# <b><u>Exercice 26</u></b>
$\begin{cases} N\equiv 3[17] \\ N\equiv 4[11] \\ N\equiv 5[6] \end{cases}$

$17 \land 11=1,\text{ }17\land 6=1,\text{ } 11 \land 6=1$
Relation de Bézout.
$\boxed{3}\times 6\space\space\boxed{-1}\times 17=1$
$\boxed{2}\times 6\space\space\boxed{-1}\times 11=1$
$\boxed{2}\times 17\space\space\boxed{-3}\times 11=1$



$\begin{cases}-3\times11\equiv 1[17] \\ 2\times17\equiv 1[11]\end{cases}$

Ainsi $x_{0}=3\times(-3)\times 11 + 4 \times 2 \times 17$
On a $x_{0}\equiv (2 \times 17)\times 4[11]$
$x_{0}\equiv 4[11]$

et $x_{0}\equiv 3\times(-3)\times 11[17]$
$\equiv 3[17]$

$x_{0}\equiv 3+4[6]$
$\equiv 1[6]$

Les solutions sont de la forme $S_{k}=\underbrace{ x_{0} }_{ \equiv 1[6] }+\underbrace{ k\times 17\times 11 }_{ \equiv ?[6] }$

On veut $S_{k}\equiv 5[6]$
c'est à dire $17\times 11k\equiv 4[6]$
$\begin{rcases}17\equiv -1[6]\\11\equiv -1[6]\end{rcases}$    $\begin{align} & \text{donc }17\times 11\equiv 1[6] \\  & \text{donc }17\times 11\times k\equiv k[6]\end{align}$

On prend $k=4$
Finalement, on a une solution $S_{0}=x_{0}+4\times 17\times 11$
$=3\times(-3)\times 11+ 4\times (2\times 17)+4\times(17 \times 11)$

$\underline{S_{0}}$<u> est solution</u>

Soit $S$ sol. quelconque $\begin{cases}S\equiv S_{0}[17] \\ S\equiv S_{0}[11] \\ S\equiv S_{0}[6]\end{cases}$
$17,11\text{ et }6\text{ divisent }S-S_{0}$

Etant $2\text{ }à\text{ }2$ premiers entre eux, 
	$S-S_{0}$ est divisible par $6\times 11\times 17$

$\boxed{Solutions :S_{0}\text{ }+\text{ }\text{ }\text{ }6\times 11 \times 17 \text{ }\mathbb{Z}}$
