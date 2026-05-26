##






smol arithmétique
## Exercice 28
Soit $p \in \mathbb{P}$ et $p\geqslant 5$, 24$\text{ }|\text{ }(p^{2}-1)$
$24=3\times 8=3 \times 2^{3}$
$p^{2}-1=(p-1)(p+1)$
$p \neq 3$ donc $p \not\equiv 0[3]$
$p \not\in 3 \mathbb{Z}$
Si $p\equiv 1[3]$ alors
$3\text{ }|\text{ }(p-1)$
Si $p\equiv 2[3]$
alors $3\text{ }|\text{ }(p+1)$
donc $\boxed{3\text{ }|\text{ }p^{2}-1}$

---

$p$ premier $\neq 2$ donc $\boxed{p\text{ impair}}$
Donc $(p-1)\text{ et }(p+1)$ sont pairs
et consécutifs
donc l'un des deux est multiple de $4$
Le produit est multiple de $8$ :
$\boxed{8\text{ }|\text{ }(p^{2}-1)}$
Comme $3 \land8=1$ 
alors $3\times 8\text{ }|\text{ }(p^{2}-1)$

## Exercice 42
### 1. 
Si $p \in \mathbb{P}$
#### a.
Si $p > 3$ et $a\in \textlbrackdbl 2;p-2 \textrbrackdbl$
$p \nmid a$ donc $\boxed{a \land p=1}$
Par Bézout, $\exists(u,v)\in \mathbb{Z}^{2}$ $au+pv=1$
Ainsi $\boxed{au\equiv 1[p]}$
$\exists!x \in \textlbrackdbl 0;p-1 \textrbrackdbl,u\equiv x[p]$ <small>x reste de la div. eucl. de u par p</small>
Ainsi $au\equiv ax[p]$
donc $\boxed{ax\equiv 1[p]}$ avec $0 \leqslant x\leqslant p-1$
- Si $x=0,ax\equiv 0[p]$ ce qui est exclu
- Si $x=1$, $a\equiv 1[p]$ donc $\boxed{p\text{ }|\text{ }a-1}$
	or $a-1\in \textlbrackdbl 1;p-2 \textrbrackdbl$
	donc $p \nmid(a-1)$
	Absurde donc $x \neq 1$
- Si $x=p-1$
	$x\equiv -1[p]$
	$ax\equiv -a[p]$

## Exercice 6
1.
$T_{2}=2X^{2}-1$
$T_{3}=4X^{3}-3X$
$T_{4}=8X^{4}-8X^{2}+1$

2.
Récurrence 
<u>Initialisation</u>
$H_{n}:T_{n}\in \mathbb{Z}[X]$, $\begin{cases}\mathrm{deg}(T_{n})=n \\ \mathrm{cd}(T_{n})=2^{n-1}\end{cases}$ cd $\to$ coeff dominant
Montrons $H_{n}$ pour $n \geqslant 1$

<u>Init</u> 
$H_{1},H_{2},H_{3},H_{4}$ $\checkmark$

<u>Hérédité</u>
Soit $n\geqslant 3$ tel que $H_{n}$ et $H_{n+1}$
$T_{n+2}=2X[2^{n}X^{n+1}+Q_{1}]-[2^{n-1}X^{n}+Q_{2}]$
où $\begin{cases}\mathrm{deg}(Q_{1})\leqslant n \\ \mathrm{deg(Q_{2})}\leqslant n-1\end{cases}$ et $Q_{1},Q_{2} \in \mathbb{Z}[X]$

$T_{n+2}=2^{n+1}X^{n+2}+\underbrace{ \boxed{2XQ_{1}} }_{ \mathrm{deg}\leqslant n+1 }-\underbrace{ T_{n} }_{ \mathrm{deg}\leqslant n }$
$\begin{align}\text{donc } & \boxed{ \mathrm{deg}(T_{n+2})=n+2 } \\  & \boxed{\text{coeff. dom. : }2^{n+1}}\end{align}$

3.

Par produit et somme dans $\mathbb{Z}$ les coeff sont entiers
$T_{1}(\cos x)=\cos(1x)$
$T_{2}(\cos x)=2(\cos x)^{2}-1=\cos2x$

<u>Réc</u>
$H_{n}:(\forall\theta \in \mathbb{R},T_{n}(\cos\theta)=\cos(n\theta))$

<u>Init.</u>
$H_{1},H_{2}$  $\checkmark$

<u>Hérédité</u>
Supposons $n\geqslant 1$, tel que $H_{n}$ et $H_{n+1}$
Soit $\theta \in \mathbb{R}$
$\begin{align}T_{n+2}(\cos\theta & ) =2(\cos\theta)T_{n+1}(\cos\theta)-T_{n}(\cos\theta) \\  & \underset{ H_{n,n+1} }{ = }2(\cos\theta)\times \cos((n+1)\theta)-\cos(n\theta)\end{align}$

$=\cos((n+2)\theta)+\cancel{ \cos(n\theta) }-\cancel{ \cos(n\theta) }$ d'où $H_{n+2}$    $\checkmark$

4.
$T_{n}(\cos\theta)=\cos(n\theta)$
Soir $X\in[-1;1]$  $\exists! \theta \in[0;\pi],x=\cos\theta$   $(\theta=\arccos x)$
$\begin{align}T_{n}(x)=0 & \iff T_{n}(\cos\theta)=0 \\  & \iff \cos(n\theta)=0 \\  & \iff n\theta\equiv \frac{\pi}{2}[\pi] \\ &  \iff \theta\equiv \frac{\pi}{2n}\left[ \frac{\pi}{n} \right] \\  & \iff \exists k\in \mathbb{Z},\theta=\frac{\pi}{2n}+k \frac{\pi}{n} \\  & \iff \boxed{\exists k\in Z,\theta=\frac{(k+1)\pi}{2n}} \\  & \iff \exists k\in \mathbb{Z},x=\cos\left( \frac{(k+1)\pi}{2n} \right)\end{align}$
- Combien d'arguments dans $[0;\pi]$ ?
$0< \underbrace{ \frac{\pi}{2n} }_{ k=0 }< \underbrace{ \frac{3\pi}{2n} }_{ k=1 }< \frac{5\pi}{2n}<\dots< \underbrace{ \frac{(2n+1)\pi}{2n} }_{ k=n-1 }<\pi$
Ainsi $\left\{  \cos\left( \frac{2k+1}{2n}\pi \right),k\in \mathbb{Z}  \right\}=\left\{  \cos\left( \frac{2k+1}{2n} \pi\right) ,0\leqslant k \leqslant n-1 \right\}$ qui est de cardinal $n$
On a $n$ racines <u><b>distinctes</b></u> réelles et dans $]-1;1[$
Comme $\mathrm{deg}(T_{n})=n$ et $\mathrm{cd}(T_{n})=2^{n-1}$
donc sa factorisation est
$\boxed{T_{n}=2^{n-1}\prod\limits_{k=0}^{n-1}\left(X-\cos\left( \frac{(k+1)\pi}{2n} \right)\right)}$

5.
$\begin{array}{rcl}f:\theta &\mapsto &T_{n}(\cos\theta)=\cos(n\theta)\end{array}$
$f'(\theta)=-n\sin(n\theta)$
$f''(\theta)=-n^{2}\cos(n\theta)$
donc $\boxed{f''+n^{2}f=0}$
$(cf.\text{ oscillateurs harmoniques})$
Or $f(\theta)=T_{n}(\cos\theta)$
donc $f'(\theta)=(-\sin\theta)\times T_{n}'(\cos\theta)$
$f''(\theta)=(-\cos\theta)T_{n}'(\cos\theta)+(\sin\theta)^{2}T_{n}''(\cos\theta)$
or $f''+n^{2}f=0:$ $\boxed{\forall\theta \in \mathbb{R},(1-(\cos\theta)^{2})\text{ }T_{n}''(\cos\theta)-\cos\theta T_{n}'(\cos\theta)+n^{2}T_{n}(\cos\theta)=0}$
Introduisons le polynôme 
$Q=(A-X^{2})T_{n}''-XT_{n}'+n^{2}T_{n}$
or $Q$ possède $\{ \cos\theta \text{ }|\text{ }\theta \in \mathbb{R} \}$ comme racines
Or, $\{ \cos\theta \text{ }|\text{ }\theta \in \mathbb{R} \}=[-1;1]\implies$ une infinité de racines
Donc $\boxed{Q=0}$ (poly. nul)
$\forall x \in[-1;1],Q(x)=0$, donc $Q=0$

