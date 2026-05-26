---
tags:
  - Math
---
# I - Comparaison de suites

Contexte : 
>Les suites sont à valeurs dans $\mathbb{K}\text{ }(\text{ }\mathbb{R}\text{ ou }\mathbb{C})$
>et ne s'annulent pas APCR
>Ainsi, on pourra discuter du quotient $\frac{u}{v}$ APCR

1) Notations de Landau
Déf :
>On dit que $u$ est dominée par $v$, noté $\begin{cases}u=O(v) \\ ou \\ u_{n} \underset{ n\to +\infty }{ = } O(V_{n \\ })\end{cases}$ 
>si $\frac{u}{v}$ est bornée APCR

$\exists \text{ }M \in \mathbb{R}, \exists n_{0},\forall n\geqslant n_{0}, \frac{u_{n}}{v_{n}}\leqslant M$
$|U_{n}|\leqslant M \times |V_{n}|$
Remarque : si $\exists m>0$ et $\exists M > 0\text{ tq } \exists n_{0}$
$\forall n\geqslant n_{0}, 0<m< |\frac{u_{n}}{v_{n}}|\leqslant M$
alors $|U_{n}| \leqslant M \times |V_{n}| : u=O(v)$
et $|\frac{v_{n}}{u_{n}}| \leqslant \frac{1}{m} : |V_{n}|\leqslant \frac{1}{m} |U_{n}|$
donc $v=O(u)$

$. = O(.)$ est une relation binaire reflexive et transitive
$\frac{u}{u}$ est bornée donc $u = O(u)$
si $\frac{u}{u}$ et $\frac{v}{w}$ sont bornées donc leur produit aussi $\frac{u}{w}$
Ainsi $(u=O(v)\text{ et } v = O(w))$

Définition:
>$u$ négligeable devant $v$, noté $\begin{cases} u = o(v) \\ ou  \\ u_{n} = o(v_{n})\end{cases}$
>si $\frac{u}{v}$ converge vers 0
>$\forall \varepsilon > 0; \exists n_{0},\forall n\geqslant n_{0}, |u_{n}|\leqslant \varepsilon \times |v_{n}|$

Remarque : 
si $u=o(v)$ alors $u=O(v)$
en effet : si $\frac{u}{v}\to 0$ alors $\frac{u}{v}$ est bornée
ATTENTION réciproque fausse

Remarque : 
$.=o(.)$ est une relation binaire transitive :
en effet : si $\frac{u}{v}\to_{0}$ et $\frac{v}{w}\to{0}$ alors leur produit $\frac{u}{w} \to 0$
Remarque : 
Si $u=o(v)$ et $\lambda\in\mathbb{K}^{*}$ alors $\lambda u=o(v)$
En effet : $\frac{u}{v} \to 0$ donc $\lambda \frac{u}{v} \to 0$
Ainsi les constantes mult ne seront pas dans $o(.)$

Propriété:
>Si $u=o(v)$ alors $w  \times u = o (w \times v)$
>En effet : si $\frac{u}{v}\to 0$ alors $\frac{wu}{wv} = \frac{u}{v} \to 0$
>On écrira $n \times o(\sqrt{ n }=o(n\sqrt{ n }))$

Abus d'écriture pour dire :
Si $u_{n}$ = $n \times v_{n}$ avec $v_{n}=o(\sqrt{ n })$
	alors $u_{n} = o (n\sqrt{ n })$
ATTENTION $2o(n)=o(n)$ si $u_{n} = 2 \times v_{n}$ avec $v_{n} = o(n)$ et $u_{n}=o(n)$

$o(n) + o(n) = o(n)$
si $u=o(n)$ et $v=o(n)$ alors $u+v=o(n)$ et $u-v=o(n)$
ATTENTION = n'est pas une égalité

$o(1)$ désigne une suite qui converge vers 0
	$u=o(1)$ signifie : $\frac{u}{1} \to 0$
	$o(1)+3o(1)-o(1)=o(1)$
	$o(n)+o(n^{2})=o(n^{2})$
En effet :
	si $u=o(n)$ et $v=o(n^{2})$ alors $u+v =o(n^{2})$
	$\frac{u}{n} \to 0$ et $\frac{v}{n^{2}} \to 0$ alors $\frac{u}{n^{2}}= \frac{u}{n}\times \frac{1}{n} \to 0$

Croissances comparées aux suites:
$\forall \alpha > 0,\forall q>1$,
	$n^{\alpha}=o(q^{n})$
	$q^{n}=o(n!)$
	$n! =o(n^{n})$ 
	$\ln(n)^{\beta}=o(n^{\alpha})$

$u=o(v)$ s'écrit aussi $u\ll v$
$\ln(n)^{\beta}\ll n^{\alpha}\ll q^{n}\ll n! \ll n^{n}$ (avec $\alpha>0,\text{ }\beta>0,\text{ }q>1$)
   (toutes tendent vers $+\infty$)

Définition:
>$u$ est équivalente à $v$, noté $u \sim v$ ou $u_{n} \underset{ n\to +\infty }{ \sim } v_{n}$
>si $\frac{u}{v}$ converge vers $1$ 

Remarque  
$\sim$ est une relation d'équivalence
donc E = {$u \in \mathbb{K}^{\mathbb{N}}\text{ }|\text{ }u \text{ ne s'annule pas APCR }$}

En effet : 
- $\frac{u}{u}=1 \to 1$ donc $u \sim u$ réflexivité
- Si $u \sim v$, alors $\frac{u}{v} \to 1$
		donc $\frac{v}{u}\to 1$
		donc $v \sim u$
- si $u \sim v$ et $v \sim w$ alors $\frac{u}{w}=\frac{u}{v}\times \frac{v}{w}\to 1$ donc $u \sim w$

$\underline{Théorème}$: (Lien entre $\sim$ et $o$)
	$u \sim v \iff u-v=o(v)$

Preuve : 
$u \sim v \iff \frac{u}{v}\to 1$
$\iff \frac{u}{v}-1 \to 0$
$\iff \frac{u-v}{v} \to 0$
$\underline{\iff u-v = o(v)}$
$\underline{\text{on écrira dans ce cas : }u=v+o(v)}$



lemme (presque inutile) :
	$\text{Soit } \ell \in \mathbb{K} \text{ avec } \ell \neq 0$
	$u \text{ converge vers } \ell \iff u- \ell \to 0$ 
	$\iff u - \ell = o(1)$
	$\iff u \sim \ell$ avec $\ell$ $\text{valeur FINIE non NULLE}$

2) Opérations sur les notations $o,O,\sim$

Pour un $o$ et un $O$, les constantes multiplicatives n'ont pas de pertinence
Précisément: - si $u=o(v)$ et $\lambda \in \mathbb{K}^{*}$, $\lambda u=o(v)$
		-si $u=O(v)$ et $\lambda \in \mathbb{K}^{*}$, $\lambda u=O(v)$
Typiquement : un $O(-3n^{2})$ se réécrit $O(n^{2})$

$\underline{\text{Addition/Combinaison Linéaire}}$

- Si $u = O(w)$ et $v=O(w)$ et $\lambda ,\mu \in \mathbb{K}$
  alors $\lambda u+\mu v=O(w)$

Informellement : "$\lambda O(w)+\mu O(w)=O(w)$"

- Si $u = o(w)$ et $v=o(w)$ 
  alors $\lambda u+\mu v=o(w)$

Remarque : $o(v) + O(v) = O(v)$

En effet : si $u=o(v)$ et $u'=O(v)$
		alors $\frac{u}{v}\to 0$ donc $\frac{u}{v}$ est bornée donc $u=O(v)$
		donc $u+u'=O(v)$

Ainsi $\underline{\text{Méthode importante}}$
	Si $u_{n}=v_{n}+\alpha \,a_{n}+\beta\,b_{n}+\gamma\,c_{n}$
	et si $\begin{cases}a_{n}=o(v_{n}) \\ b_{n}=o(v_{n}) \\ c_{n}=o(v_{n})\end{cases}$
	alors $u_{n}=v_{n}+o(v_{n})$
	donc $u_{n}\sim v_n$

Exemple :
$u_{n}=-b_{n}+\frac{\ln(n)}{8}+2^{n}-n^{2}$
alors $u_{n} \sim 2^{n}$
car $u_{n}=2^{n}+o(2^{n})$
car $n=o(2^{n})$
et $\ln n=o(2^{n})$

$\underline{\text{Multiplication}}$
- Si $u=o(v)\text{ et }w\text{ une suite, alors }u\times w=o(vw)$
- $\text{Si }  u = O(v), \text{alors }u\times w=O(uw)$
car $\frac{uw}{vw}=\frac{u}{v}$

Exemple : Si $u_{n}=o\left( \frac{1}{n} \right)\text{ alors }n^{2}u_{n}=o(1)$ donc $n^{2}\times u_{n}$ converge vers $0$

- 3) Opérations sur les équivalents $\sim$
	
Propriété : (Signe)
Si $u,v \in \mathbb{R}^{\mathbb{N}}\text{ qui ne s'annulent pas APCR }$ et si $u \sim v$
alors $u_{n}\text{ et } v_{n}$ sont de même signe au voisinage de $+\infty$ APCR

Preuve : 
$u \sim v \iff \frac{u}{v} \to 1$
Si $\frac{u}{v} \to 1 > 0$ alors $\exists n_{0},\forall n \geqslant n_{0}, \frac{u_{n}}{v_{n}}> 0$ $\underline{u_{n} \text{ et } v_{n}\text{ sont de même signe}}$

Exemple : 
$u_{n}=-3v_{n}+\frac{n}{100}+10^{10}\ln(n)$
	$u_{n} \sim \frac{n}{100} > 0,$ donc $\underline{\text{u est positive APCR}}$

Propriété : ($\sim et \lim\limits$)
	Si $u \sim v$ et si $v \to \ell \in \bar{\mathbb{R}}$
	alors $u\to \ell$
Preuve : (On suppose $\frac{u}{v }\to 1$)
$u = \frac{u}{v}\times v$ (or $\frac{u}{v}\to1$)
si $v\to l$     alors $\left( \frac{u}{v} \right)\times v\to \ell$
donc $u\to l$

$\underline{\text{Prosuit/Quotient/Puissance}}$
- Si $u \sim v$ et $w$ est une suite
	alors $u\times w \sim v\times w$
- Si $u\sim v$ et $\lambda$ constante non nulle
	alors $\lambda u\sim\lambda v$
- Si $u\sim v$ alors $\frac{1}{u}\sim \frac{1}{v}$

- Si $p \in \mathbb{Z}$ et $u\sim v$ alors $u^{p}\sim v^{p}$

- Si $\alpha \in \mathbb{R}$ ($\underline{\text{Puissance FIXE}}$) et $u \sim v$  et si $v > 0 \text{ }APCR$ alors $u^{\alpha}\sim v^{\alpha}$

Preuve :
- $\frac{uw}{vw}=\frac{u}{v}$
- $\frac{\lambda u}{\lambda v}=\frac{u}{v}$
- $\frac{\frac{1}{u}}{\frac{1}{v}} =\frac{v}{u}=\frac{1}{(\frac{u}{v})}$
- $\frac{u^{p}}{v^{p}}=\left( \frac{u}{v} \right)^{p}$
- $\frac{u^{\alpha}}{v^{\alpha}}=\left( \frac{u}{v} \right)^{\alpha}$

Exemple :
$u_{n}= (n^{2}+\ln n-3)^{2}\times \frac{2\sqrt{ n }-\ln(\ln n)}{2^{n}-n^{5}}$

- ($n^{2}+\ln n-3$) $\sim n^{2}$ (car $\ln n-3=o(n^{2})$)
	donc ($n^{2}+\ln n-3$)$^{2}\sim (n^{2})^{2}\sim n^{4}$

- $(2^{n}-n^{5})\sim2^{n}$ (car $-n^{5}=o(2^{n})$ )

- $(2\sqrt{ n }-\ln(\ln n))\sim 2\sqrt{ n }$

$\text{Donc}$ $u_{n}\sim n^{4}\times \frac{2\sqrt{ n }}{2^{n}}$
	$u_{n}\sim \frac{2n^{9/2}}{2^{n}}$ (pas simplifiable)
Par croissances comparées $n^{9/2}=o(2^{n})$
donc $u_{n}\to 0$

/ ! \ PAS DE SOMME DE $\sim$ / ! \
Si $u_{n}\sim v_{n}$
On ne peut PAS faire : $\cancel{ (u_{n}+a_{n})\sim(v_{n}+a_{n}) }$

Exemple : 
$u_{n}(n^{2}-3n)\sim n^{2}$
$v_{n}(n^{2}+\pi \sqrt{ n })\sim n^{2}$
	$u_{n}\sim v_{n}$
	$u_{n}-n^{2}\cancel{ \sim } v_{n}-n^{2}$      / ! \

$\underline{\text{Pour faire une somme :}}$

$\underline{\text{On revient aux } o(.)}$
- $u_{n}\sim v_{n}$ donc $u_{n} = v_{n}+o(v_{n})$	
- donc $u_{n}+a_{n} = v_{n}+a_{n}+o(v_{n})$             (***à discuter...***)
            $= [\dots]$
            $=b_{n}+o(b_{n})$ (donc équivaut à $b_{n}$)

4) Taux d'accroissements usuels ($en\,\,\,version\sim$)

$\underline{idée}$ $\text{si }f\text{ est dérivable en 0}$
	on a $\lim\limits_{ x \to 0 } \frac{f(x)-f(0)}{x}=f'(x)$
	si de plus$\underline{f'(0)\neq 0}$ alors $\lim\limits_{ x \to 0 }\frac{f(x)-f(0)}{xf'(0)}=1$

Enfin si $(u_{n})$ est une suite qui converge vers 0

Alors $\lim\limits_{ n \to +\infty }\frac{f(u_{n})-f(0)}{f'(0)}=1$
Donc $(f(u_{n})-f(0))\underset{ n\to +\infty }{ \sim }f'(0)u_{n}$

$\underline{\text{Théorème :}}$
Si $u$ converge vers 0, alors
- $(e^{u_{n}}-1)\sim u_{n}$
- $\ln(1+u_{n})\sim u_{n}$
- $\sin(u_{n})\sim u_{n}$ / $\text{sh}(u_{n})\sim u_{n}$ / $\arcsin(u_{n})\sim u_{n}$
- $\tan(u_{n})\sim u_{n}$ / $\text{th}(u_{n})\sim u_{n}$ / $\arctan(u_{n})\sim u_{n}$
- Pour $\alpha\in \mathbb{R}, ((1+u_{n})^{\alpha}-1)\sim \alpha u_{n}$

>Compléter théorème

# II - Comparaison de fonctions

Les fonctions seront définies sur un intervalle $I$ à valeurs dans $\mathbb{K}$
($\mathbb{R}$ ou $\mathbb{C}$)
On veut évaluer le comportement de $f$ $\begin{cases}\text{en un point de }I \\ ou \\ \text{en une extrémité de }I\end{cases}$

Définition (voisinage)
>Soit $\begin{cases}a \in I \\ ou \\ a \text{ une extrémité de }I\end{cases}$
>avec $a \in \bar{\mathbb{R}}$
>Soit $P$ une propriété sur $f:I\to \mathbb{K}$
>$f$ vérifie $P$ au voisinage de $a$ signifie :
> - Si $a \in \mathbb{R}$
>     $\exists \text{ }\alpha \in \mathbb{R^{+}_{ *}}$ tel que $f$ vérifie $P$ sur $I\text{ }\cap \text{ }]a-\alpha,a+\alpha[$
> - Si $a = +\infty$
>      $\exists \text{ }A\in \mathbb{R}$ tel que $f$ vérifie $P$ sur $I\text{ }\cap\text{ }]A,+\infty[$
> - Si $a=-\infty$
>      $\exists\text{ } B \in \mathbb{R}$ tel que $f$ vérifie $P$ sur $I\text{ }\cap\text{ }]-\infty, \text{ }B[$

Dans ce qui suit, on va remplacer le "$APCR$" des suites par :
"il existe un voisinage dans lequel" pour les fonctions

1) Domination, négligeabilité, équivalence

On étudie les fonctions $f, g$ définies sur $I \text{\\}\text{\{}a\text{\}}$
	qui ne s'annulent pas au voisinage de $a$ avec $a \in \bar{ \mathbb{R}}$

- $f$ est dominée par $g$ 
	au voisinage de $a$ si $\frac{f}{g}$ est bornée au voisinage de $a$
	 On le note $f\underset{ a }{ = }O(g)$ 
	 ou $f(x)\underset{ x\to a }{ = }O(g(x))$ 
	Formellement,
	 $\exists V$ voisinage de $a$,$\exists M/\forall x\in I \cap V,|f(x)|\leqslant M\times|g(x)|$

- $f$ est négligeable devant $g$ au voisinage de $a$ si
	$\frac{f}{g}\underset{ a }{ \to } 0$ ce que l'on note $f\underset{ a }{ = }o(g)$ 

- $f$ est équivalente à $g$ en $a$ si $\frac{f}{g}\underset{ a }{ \to } 1$ 
	ce que l'on note $f \underset{ a }{ \sim } g$ ou $f(x)\underset{ x\to a }{ \sim } g(x)$

/!\ Exemple $f :x\mapsto 2x^{2}-x$
	$f(x)\sim_{2}x^{2}$ car $\frac{2x^{2}-x}{2x^{2}}=1-\frac{1}{2x}\to 1$
	$f(x)\sim (-x)$
	 car $\frac{2x^{2}-x}{2x^{2}}=1-\frac{1}{2x}\to 1$
	 $f(x) \sim 1$ car $2x^{2}-x \to 1$

/!\ $x\underset{ x\to\infty }{ = }o(x^{2})$ 
     $x^{2}\underset{x\to{0} }{ = }o(x)$ en 


$\underline{{Théorème}}$
$f \underset{ a }{ \sim }g \iff f-g\underset{  }{ = }o(g)$

on écrira dans ce cas $f(x)\underset{ x \to a }{ = }g(x)+o(g(x))$
on remarque
$\frac{f(x)}{g(x)}=1+\frac{1}{g(x)}\times o(g(x)) \underset{ x\to a }{ = }1+o(1)$
/!\ Si $\alpha<\beta$ deux réels positifs strict

$\lim\limits_{ x \to \infty } \frac{x^{\alpha}}{x^{\beta}}=\lim\limits_{ x \to \infty }x^{\alpha-\beta}=0$ donc $x^{\alpha}\underset{ x\to +\infty }{ = }o(x^{\beta})$

$\lim\limits_{ x \to 0 } \frac{x^{\beta}}{x^{\alpha}}=\lim\limits_{ x \to 0 }x^{\beta-\alpha}=0$ donc $x^{\beta}\underset{ x\to 0 }{ = }o(x^{\alpha})$ 

Exemple (Fonctions polynomiales)

Soit $P:x\mapsto \sum\limits_{k=p}^{n}a_{k}x^{k}$
avec $\begin{cases}a_{k}\text{ coefficients où }\begin{cases}a_{n}\neq 0 \\ a_{p}\neq 0\end{cases} \\ p\leqslant n \text{ deux entiers naturels}\end{cases}$


Alors $P(x)\underset{ x\to + \infty }{ \sim }a_{n}x^{n}$ (plus haut degré)

et $P(x)\underset{ x\to_{0} }{ \sim }a_{p}x^{p}$ (plus petit degré non nul)

$\underline{\text{En effet}}$
$P(x)\underset{ x\to +\infty }{ = }a_{n} x^{n}+ o(x^{n})$ car $\forall k<n$, $x^{k}\underset{ +\infty }{ = }o(x^{n})$
et $P(x)\underset{ x\to{0} }{ = }a_{p}+x^{p}+o(x^{p})$ car $\forall k>p,$ $x^{k}\underset{ x\to_{0} }{ = }o(x^{p})$

Exemple : (incomplet)
$f:x \mapsto \frac{2x^{8}-x^{7}+3x^{3}}{10x^{5}-8x^{3}}$

équivalent en $+\infty$ 
$f(x)$




2) Propriétés

Les règles d'opérations sur $o, O,\sim$ sont les mêmes que sur les suites.
 $\to$ produit/quotient/puissance pour les $\sim$
 $\to$ combinaison linéaire de $o,O$

/!\ PAS DE SOMMES D'$\sim$

si $f(x)\underset{ a }{ = }x^{2}$ et $g(x)\underset{ a }{ \sim }-x^{2}$
alors $(f(x)+g(x))\underset{ a }{ \sim } \text{ }???$
on sait $\begin{cases}f(x)\underset{ a }{ = }x^{2}+ o(x^{2}) \\ g(x)\underset{ a }{ = }-x^{2}+o(x^{2})  \end{cases}$
donc $f(x)+g(x)\underset{ a }{ = }o(x^{2})$      (trop flou pour avoir un $\sim$)


/!\ PAS DE COMPOSITION PAR UNE FONCTION DANS LES $\sim$

($x+\ln(x)$) $\underset{ x\to + \infty }{ \sim }x$  car $\ln(x)\underset{ x\to +\infty }{ = }o(x)$ ($\frac{\ln x}{x}\underset{ + \infty }{ \to }0$)
or, $\exp(x+\ln x)=e^{x}\times e^{\ln x} =xe^{x}\cancel{ \sim } e^{x}$

$\underline{\text{Propriété}}$: (Changement de variable)

Si $u(x)\underset{ x\to b }{ \to }a$

Si $f(y)\underset{ y\to a }{ = } O(g(y)),$ alors $f(g(y))\underset{ x\to b }{ = }O(g(u(x)))$  (pareil pour les $o$)

Si $f \underset{ a }{ \sim }g,$ alors $f \text{ }o \text{ }u \underset{ b }{ \sim }g\text{ }o\text{ }u$

$\underline{Preuve}$:

si $\frac{f(y)}{g(y)}\underset{ y\to a}{ \to }1$
et si $u(x)\underset{ x\to b }{ \to }a$
Par composition de limites, 
$\lim\limits_{ x \to b } \frac{f(u(x))}{g(u(x))}=1$

>Exemple ici

Equivalent en $1$ de $\sin(\ln x)$
	$\ln(x)\underset{ x\to_{1} }{ \to }0$ et $\sin(u)\underset{ u\to 0 }{ \to } u$
	donc $\sin(\ln u) \underset{ x\to 1 }{ \sim } \ln(x) \underset{ x\to1 }{ \sim } (x-1)$


>Rappel des classiques :
>$\underline{\text{Taux d'accroissements}}$
>$(e^{u}-1)\underset{ u\to{0} }{ \sim }u$
>$\ln(1+u)\underset{ u\to 0 }{ \sim }u$
>$\sin(u)\underset{ 0 }{ \sim } u$      $\text{sh(u)}\underset{ 0 }{ \sim } u$      $\arcsin(u) \underset{ 0 }{ \sim }u$
>$\tan(u) \underset{ 0 }{ \sim } u$    $\arctan(u) \underset{ 0 }{ \sim } u$    $\text{th}(u) \underset{ 0 }{ \sim  }u$
>$\forall\alpha\in \mathbb{R^{*}}$
>$[(1+u)^{\alpha}-1] \underset{ u\to 0 }{ \sim  }\underline{\alpha} u$
>$(1-\cos(u))\underset{ u\to 0 }{  \sim } \frac{1}{2}u^{2}$
>$(\text{ch}(u)-1) \underset{ u\to 0 }{ \sim } \frac{1}{2}u^{2}$


$\underline{\text{Astuce du retour à 0}}$
- Si $x\to \ell$ avec $\ell \neq {0}$, on écrit $\begin{cases}x=\ell+h\text{ avec }h\to 0 \\ h=x-\ell \underset{ x\to \ell }{ \to } 0\end{cases}$
- Si $x\to \pm \infty$ on travaille $h= \frac{1}{x} \underset{ x\to \pm \infty}{ \to }0$


$\underline{\text{Exemples :}}$
- $\sim$ en $0$ de $e^{\sin t}$ 
	Ici, $\sin t \underset{ t\to 0 }{ \to } {0}$
	donc, $\sin t \underset{ +\infty }{ \to } 1$
	gagnons en précision en calculant un équivalent de $(e^{\sin(t)}-1)$ en 0
	 or $(e^{u}-1) \underset{ u\to 0 }{ \sim } u$  donc $(e^{\sin(t)}-1)\underset{ t\to 0 }{ \sim } \sin t \sim t$
	$\underline{e^{\sin(t)}\underset{ t\to{0} }{ = }1+t+o(t)}$

- $\sim$ en $0$ de $\sin(2x)+\cos(x)-1$
	or $\begin{cases}\sin(2x)\underset{ 0 }{ \sim }(2x) \\ (\cos(x)-1)\sim\left( -\frac{1}{2} x^{2}\right)\end{cases}$
	Retour aux $o(\dots)$
	$\sin(2x)\underset{ 0 }{ = }2x+o(x)$
	et
	$\cos x-1 \underset{ 0 }{ =  }-\frac{1}{2}x^{2}+o(x^{2})$
	on somme.
	$\sin(2x)+\cos(x)-1$
	 $\underset{ x\to{0} }{ = }2x+o(x)-\frac{1}{2}x^{2}+o(x^{2})$
	 or $x^{2}\underset{ x\to{0} }{ = }o(x)$
	$\underset{ x\to0 }{ = }2x+o(x)$ donc $(\sin(2x)+\cos(x)-1)\underset{ 0 }{ \sim  }{2}x$

- $\sim$ en 0 de $\ln(\cos x)$
	$\ln(\cos x) = \ln(1+(\cos x - 1))\underset{ x\to 0 }{ \sim }(\cos x-1)\underset{ x\to 0 }{ \sim }-\frac{1}{2}x^{2}$

- $\sim$ en $0$ de $\ln(\sin x)$
	 /!\ $\lim\limits_{ x \to 0^{+} }\ln(\sin x)=-\infty$
	MAIS $\sin x\underset{ x\to 0 }{ \sim } x$
	$\frac{\ln(\sin x)}{\ln x}=\frac{\ln\left( x\times \frac{\sin x}{x} \right)}{\ln x}=\frac{\ln x+\ln\left( \frac{\sin x}{x} \right)}{\ln x} =1+\frac{\ln\left( \frac{\sin x}{x} \right)}{\ln x} \underset{ x\to 0 }{ \to } 1$
	donc $\underline{\ln(\sin x)\underset{ 0 }{ \sim } \ln(x)}$
	
	$\sin(x)\underset{ x\to 0 }{ = }x+o(x)$
	donc 
	$\ln(\sin x)=\ln[x+o(x)]=\ln[x\times(1+o(1))]=\ln x+\ln(1+o(1))$
	$\ln(\sin x)\underset{ x\to{0} }{ = }\ln(x)+o(1)$ $\underline{\text{donc}}$ $\ln(\sin x)\underset{ 0 }{ \sim } \ln(x)$

/!\ $\underline{\text{on ne compose pas les équivalents}}$
	 $(1-x)\underset{ x\to 0 }{ \sim }{1}$
	 $\left( 1+\frac{x^{2}}{7} \right)\underset{ x\to {0} }{ \sim }{1}$
	or $\ln(1-x)\underset{ x\to_{0} }{ \sim }-x$ et $\ln\left( 1+\frac{x^{2}}{7} \right)\underset{ x\to_{0} }{ \sim  }\frac{x^{2}}{7}$ 
	et $-x$ n'est pas équivalent à $\frac{x^{2}}{7}$


# III - Développements Limités $(DL)$

1) DL, unicité, troncature
	$\underline{\text{Définition :}}$ $(DL_{n}(a))$
	>Soit $f:I\to \mathbb{R}$ et $a \in \mathbb{R}$
	>avec $\begin{cases}a \in I \\\text{ }ou \\ a\text{ est une extrémité de I}\end{cases}$
	>On dit que $f$ admet un Développement Limité à l'ordre $n$ en $a$
	>si il existe $\alpha_{0},\alpha_{1},\dots ,\alpha_{n}\in \mathbb{R}$ tels que
	>$f(x)\underset{ x\to a }{ = }\alpha_{0}+\alpha_{1}(x-a)+\alpha_{2}(x-a)^{2}+\dots+\alpha_{n}(x-a)^{n}+o((x-a)^{n})$
	>$\underset{ x\to a }{ = }\sum\limits_{k=0}^{n}\alpha_{k}(x-a)^{k}+o((x-a)^{n})$
	
	$\underline{\text{Remarque :}}$ $o((x-a)^{n})$ peut s'écrire $(x-a)^{n}\times \varepsilon(x)$ où $\lim\limits_{ x \to a }\varepsilon(x)=0$
	
	On peut écrire aussi $\underline {h=x-a}\iff x=a+h$
		Ainsi $h\underset{ x\to a }{ \to } 0$ 
	$f$ admet un $DL_{n}(a)$ signifie :
		$f(\underbrace{ a+h }_{ \underline{\text{proche de }a} })\underset{ h\to_{0} }{ = }\alpha_{0}+\alpha_{1}h+\alpha_{2}h^{2}+\dots+\alpha_{n}h^{n}+o(h^{n})$
	
	
	$\underline{\text{Troncature d'un }DL}$
	Si $p<n$ deux entier naturels
	Si $f$ admet un $DL_{n}(a)$, alors $f$ admet un $DL_{p}(a)$ et le $DL_{p}(a)$ s'obtient en tronquant à l'ordre $p$ le $DL_{n}(a)$
	
	$\underline{\text{En détail :}}$
		$DL_{n}$ : Si $f(x)=\alpha_{0}+\alpha_{1}(x-a)+\dots+\alpha_{p}(x-a)^{p}+\dots+\alpha_{n}(x-a)^{n}+o((x-a)^{n})$
	alors $f(x)=\alpha_{0}+\dots\alpha_{p}(x-a)^{p}+\underbrace{ o((x-a)^{p}) }_{ +\dots+\alpha_{n}(x-a)^{n}+o((x-a)^{n}) }$
	En effet 
		pour $k\in \textlbrackdbl p+1; n \textrbrackdbl$
			alors $(x-a)^{k}\underset{ x-a }{ = }o((x-a)^{p})$
		$\underline{\text{et une somme finie }}$de $o(x-a)^{p}$ est un $o((x-a)^{p})$
	
	
	$\underline{\text{Propriété :}}$ 
	>Si $f(x)\underset{ x\to a }{ = }\alpha_{0}+\alpha_{1}(x-a)+\alpha_{2}(x-a)^{2}+\dots+\alpha_{n}(x-a)^{n}+o((x-a)^{n})$
	>	alors les coefficients de $\alpha_{0},\alpha_{1},\dots,\alpha_{n}$ sont uniques
	
	$\underline{\text{Preuve}}$ :
	Supposons que $f$ admette deux $DL_{n}(a)$:
		$f(x)\underset{ x\to a }{ = }\alpha_{0}+\alpha_{1}(x-a)+\alpha_{2}(x-a)^{2}+\dots+\alpha_{n}(x-a)^{n}+o((x-a)^{n})$
			${ x\to a }{ = }\beta_{0}+\beta_{1}(x-a)+\beta_{2}(x-a)^{2}+\dots+\beta_{n}(x-a)^{n}+o((x-a)^{n})$
	- $\underline{\text{Par troncature à l'ordre 0 :}}$ $f(x)\underset{ x\to a }{ = }\alpha_{0}+o(1)$
							$\underset{ x\to a }{ = } \beta_{0}+o(1)$
		Alors $\lim\limits_{ x \to a }f(\alpha)=\alpha_{0}$ et $\lim\limits_{ a \to a }f(x)=\beta_{0}$
		Par unicité de la limite, $\alpha_{0}=\beta_{0}$
	
	- Supposons $\alpha_{0}=\beta_{0},\text{ }\alpha_{1}=\beta_{1},\dots,\text{ }\alpha_{k}=\beta_{k}$ avec $k\in \textlbrackdbl 0,n-1 \textrbrackdbl$
		En soustrayant les deux $DL_{n}(a) :$ $0\underset{ x\to a }{ = }(\alpha_{k+1}- \beta_{k+1})(x-a)^{k+1}+o((x-a)^{k})$ et en tronquant à l'ordre $k+1$
		Donc $0\underset{ x\to a }{ = }(\alpha_{k+1}-\beta_{k+1})+o(1)$
			donc en posant à la limite quand $x\to a,$
			$0=\alpha_{k+1}-\beta_{k+1}$ donc $\underline{\alpha_{k+1}=\beta_{k+1}}$
	
	$\underline{\text{Conclusion :}}$ $\forall k\in \textlbrackdbl 0,n \textrbrackdbl,\alpha_{k}=\beta_{k}$
	
	
	$\underline{\text{Définition :}}$ (Forme normalisée d'un $DL$)
	>Si $f(x)\underset{ x\to a }{ = }\alpha_{0}+\alpha_{1}(x-a)+\dots+\alpha_{n}(x-a)^{n}+o((x-a)^{n})$
	>Posons $p=min\{ k\in \mathbb{N}\text{ }|\text{ }\alpha_{k}\neq 0 \}$
	>	Ainsi $\underline{\alpha_{0}=\alpha_{1}=\dots=\alpha_{p-1}=0}$ et $\alpha_{p}\neq 0$
	>Donc $f(x)\underset{ x\to a }{ = }\alpha_{p}(x-a)^{p}+\dots+\alpha_{n}(x-a)^{n}+o((x-a)^{n})$
	>Ainsi $\frac{f(x)}{\alpha_{p}(x-a)^{p}}=\underbrace{ 1+ \frac{\alpha_{p+1}}{\alpha_{p}}(x-a)+\dots+ \frac{\alpha_{n}}{\alpha_{p}}(x-a)^{n-p}+o((x-a)^{n-p}) }_{ DL_{n-p}(a) }$
	>Donc $\underline{f(x)\underset{ x\to a }{ \sim  }\underbrace{ \alpha_{p} }_{ \neq\text{ }0 }(x-a)^{p}}$ équivalent en $a$
	>	
	>	et la forme normalisée de $f$ sera :
	>		$f(x)= (x-a)^{p}\times [\underbrace{ \alpha_{p} }_{ \neq \text{ }0 }+\alpha_{p-1}(x-a)+\dots+\alpha_{n}(x-a)^{n-p}+o((x-a)^{n-p})]$
	>		Dans ce cas $f(x)\underset{ x\to a }{ = }o((x-a)^{p-1})$
	>Si on a $f(x)\underset{ x\to a }{ \sim }(x-a)^{p}$ alors on connait la représentation graphique de $f$ au voisinage de $a$
	>$p\geqslant 2$  ***Tableau 1***
	>$\underline{\text{Si }p\geqslant 2}$ $\lim\limits_{ x \to a }f(x)=\lim\limits_{ x \to a }\alpha_{p}(x-a)^{p}=0$
	>Posons $f(a)=0$ pour prolonger par continuité de $f$
	>$\frac{f(x)-f(a)}{x-a}=\frac{f(x)}{x-a}\underset{ x\to a }{ \sim } \alpha_{p}(x-a)^{p-1}$
	>Or si $p\geqslant 2$, $p-1\geqslant 1$ donc 
	>	$\lim\limits_{ x \to a }\frac{f(x)-f(a)}{x-a}=0$
	>$\underline{\text{DONC}}\text{ } f$ est dérivable en $a$ et $f'(a)=0$


Tableau 1

| $\alpha_{p}>0$            | $\alpha_{p}>0$                | $\alpha_{p}<0$            | $\alpha_{p}<0$                |
| ------------------------- | ----------------------------- | ------------------------- | ----------------------------- |
| $p$ pair                  | $p$ impair                    | $p$ pair                  | $p$ impair                    |
| positive sur $\mathbb{R}$ | positive sur $\mathbb{R}^{+}$ |                           | positive sur $\mathbb{R}^{-}$ |
|                           | négative sur $\mathbb{R}^{-}$ | négative sur $\mathbb{R}$ | négative sur $\mathbb{R}^{+}$ |


2) Parité et DL
	Si $f$ admet un $DL_{2n}(0)$
	alors il existe $\alpha_{0},\alpha_{1},\dots,\alpha_{2n}$ coefficients tels que
		$f(x)\underset{ x\to{0} }{ = }\sum\limits_{k=0}^{2n}\alpha_{k}x^{k}+o(x^{2n})$
	or $\lim\limits_{ x \to 0 }(-x)=0,$ donc $f(-x)\underset{ x\to 0 }{ = }\sum\limits_{k=0}^{2n}\alpha_{k}(-x)^{k}+o((-x)^{2n})$
	Ainsi $f(-x)\underset{ x\to0 }{ = }\sum\limits_{k=0}^{2n}(-1)^{k}\alpha_{k}x^{k}+o(x^{2n})$
		$x\mapsto f(-x)$ admet donc un $DL_{2n}(0)$
	
	- Supposons de plus la parité de $f$ :
	$\forall x,f(-x)=f(x)$
	$f$ admet deux $\mathrm{DL}_{2n}(0)$ et par unicité des coefficients, $\forall k\in \textlbrackdbl 0,2n \textrbrackdbl,\alpha_{k}=(-1)^{k}\alpha_{k}$
	Cela impose $\begin{cases}\alpha_{1}=-\alpha_{1} \\ \alpha_{3}=-\alpha_{3} \\ \vdots \\ \alpha_{2n-1}=-\alpha_{2n-1}\end{cases}$ doc tous les coefficients d'indices impairs sont nuls.
	
	- Supposons désormais que la fonction $f$ soit impaire
	$\forall x,f(-x)=-f(x)$. Par unicité du $DL$ de la fonction $x\mapsto f(-x)=x\mapsto-f(x)$
	donc $\forall k\in\textlbrackdbl 0,2n \textrbrackdbl,(-1)^{k}\alpha_{k}=-\alpha_{k}$
	Pour tout indice $k$ pair, on a $\alpha_{k}=-\alpha_{k}$ donc $\alpha_{k}=0$
	
	$\underline{\text{Théorème :}}$ Si $f$ admet un $DL_{2n}(0)$
	- Si $f$ est paire, tous les coefficients impairs sont nuls
	- Si $f$ est impaire, tous les coefficients pairs sont nuls
	 
	$\underline{\text{Théorème :}}$ (Existence du $DL$)
	$\underline{\text{Formule de Taylor-Young}}$
	Si $f\in \mathcal C^{n}(I,\mathbb{R})$ et si $a\in I$ (point intérieur)
		alors $f$ admet un $DL_{n}(a)$
	De plus :
	$f(x)\underset{ x\to a }{ = }f(a)+f'(a)(x-a)+\frac{f''(a)}{2!}(x-a)^{2}+\dots+\frac{f^{(n)}(a)}{n!}(x-a)^{n}+o((x-a)^{n})=[\sum\limits_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^{k}]+o((x-a)^{n})$
	ou encore $f(a+h)\underset{ h\to 0 }{ = }f(a)+f'(a)\times h+\frac{f''(a)}{2!}h^{2}+\dots+\frac{f^{(n)}(a)}{n!}h^{n}+o(h^{n})$
	
	D'où cela sort-il ?
	
	$\underline{\text{Théorème :}}$(Formule de Taylor dans reste intégral. GLOBAL)
		Soit $f\in \mathcal C^{n+1}(I,\mathbb{K})et\in I$
	alors $\forall\text{ }x\in I,\text{ }f(x)=\left[ \sum\limits_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^{k} \right]+ \int_{a}^{x} \frac{(x-t)^{n}}{n!}\times f^{(n+1)}(t) \, dt$
	
	$\underline{\text{Preuve :}}$ Récurrence sur $n$
	- $n=0$ Si $f$ est $\mathcal C^{1}$ , alors $f'$ est $\mathcal C^{0}$
		alors $\int_{a}^{x} f'(t) \, dt=f(x)-f(a)$
	
	- Hérédité : Supposons vrai le rang n
		Soit $f\in \mathcal C^{n+2}$ Alors $f\in \mathcal C^{n+1}$
		donc on a la formule de Taylor au rang n
		or $\int_{a}^{x} \frac{(x-t)^{n}}{n!}\times f^{(n+1)} \, dt$
		or $f^{(n+1)}\text{ est } \mathcal C^{1} \begin{cases}u'(t)=f^{(n+2)}(t) \\ v(t)=-\frac{(x-t)^{n+1}}{n+1}\end{cases}$
	L'IPP donne $\left[ -\frac{(x-t)^{n+1}}{(n+1)!} \times f^{(n+1)}(t) \right]^{x}_{a}-\int_{a}^{x} \frac{(x-t)^{n+1}}{(n+1)!}f^{(n+2)}(t) \, dt$
	
	$\underline{\text{Au voisinage de a :}}\text{ }$sur $[a-\eta,a+\eta]$ pour un certain $\eta>0$
		Si $f$ est $\mathcal C^{n+1}$ alors $f^{(n+1)}$ est continue sur $I \cap[a-\eta,a+\eta]$
		(Par théorème des bornes atteintes, cf cours [[Continuité]])
			$f^{(n+1)}$ est bornée au voisinage de $a$
	$\exists M$ tq $|f^{(n+1)}|\leqslant M$ sur $[a-\eta,a+\eta]$
	
	Ainsi Pour $x \in[a-\eta,+\eta]$
		$\begin{cases}\forall t\in[a,x], \\ \forall t\in[x,a]\end{cases}, |\frac{(x-t)^{n}}{n!}f^{(n+1)}(t)|\leqslant \frac{|x-t|^{n}}{n!}\times M$
	Si $x>a$$$\int_{a}^{x} |\frac{(x-t)^{n}}{n!}f^{(n+1)}(t)| \, dt \leqslant\int_{a}^{x} \frac{(x-t)^{n}}{n!}M \, dt$$
	Or, $$\int_{a}^{x} \frac{(x-t)^{n}}{n!}\times M \, dt=\left[ \frac{M}{n!}\times\frac{-(x-t)^{n+1}}{n+1} \right]^{x}_{a} =\frac{(x-a)^{n+1}}{(n+1)!}\times M$$
	Ainsi par inégalité triangulaire $\left( |\int f| \leqslant \int|f|\right)$
	$\underbrace{ |\int_{a}^{x} \frac{(x-t)^{n}}{n!}f^{(n+1)}(t) \, dt| }_{ c'est\text{ }un\text{ }o((x-a)^{n}) } \leqslant (x-a)^{n}\times(x-a)\times \underbrace{ \frac{M}{(n+1)!} }_{ \underset{ x\to a }{ \to } 0 }$
	Si $x<a$, on inverse les bornes de l'intégrale dans la majoration.
	$\underline{\text{Application}}$ si $f$ est $\mathcal C^{\infty}$ au voisinage de $0$
		Par Taylor-Young, $f$ admet un $DL_{n}(0)$ pour tout $n\in \mathbb{N}$
			$f(x)\underset{ x\to{0} }{ = }\sum \limits_{k=0}^{n} \frac{f^{(k)}(0)}{k!}\times x^{k}+o(x^{n})$
	$\underline{\text{Exemple :}} \exp ^{(k)}=\exp$ donc $\exp ^{(k)}(0)=1$
	Le $DL$ en 0 de $\exp$
		$e^{ x }\underset{ x \to 0 }{ = }\sum\limits_{k=0}^{n} \frac{1}{k!}x^{k}+o(x^{n})$
		$e^{ x }\underset{ x\to 0 }{ = }1+x+ \frac{x^{2}}{2} +\frac{x^{3}}{3}+\dots +\frac{x^{n}}{n}+o(x^{n})$
		position de $\exp$ vis-à-vis de sa tangeante$\to$ $(e^{ x }-(1+x))\underset{ 0 }{ \sim } \frac{x^{2}}{2}$ positif
	
	$\underline{\text{Exemple :}}$ $\sin$ et $\cos$ sont $\mathcal C^{\infty}$ sur $\mathbb{R}$
		$\sin$ est impaire : les coeff $x^{2p}$ sont nuls
		$\cos$ est paire : les coeff $x^{2p+1}$ sont nuls
	$\sin'=\cos$        $\sin ^{(4k+1)}(0)=\cos(0)=1$
	$\sin'''=-\cos$   $\sin ^{(4k+3)}(0)=-\cos(0)=-1$
			Donc $\sin(x)=x- \frac{x^{3}}{3}+ \frac{x^{5}}{5}+\dots + (-1)^{n}\times \frac{x^{2n+1}}{(2n+1)!}+o(x^{2n+1})$
	$\sin(x)\underset{ x\to 0 }{ = }\sum\limits_{k=0}^{n}(-1)^{k} \frac{x^{2k+1}}{(2k+1)!}+o(x^{2n+1})$
	= ------------------------------- $+ o(x^{2n+2})$ mieux, plus précis 
	= ------------------------------- $+O(x^{2n+3})$ encore mieux, sans effort
	
	$\underline{\text{Exemple :}}$ $\sin(x)\underset{ 0 }{ = }x+O(x^{3})$
	$\lim\limits_{ x \to 0 } \frac{\sin x-x}{x^{5/2}}?$
	$\sin x\underset{ 0 }{ \sim } x$
	$\sin x=x+o(x)$
	$\sin-x\underset{ 0 }{ = }o(x)$
	$\frac{\sin x-x}{x^{5/2}}= \frac{1}{x^{5/2}}o(x)$
	$=o(x^{-3/2})$ inutile xptdr
	Or, si on est plus précis,
		$\sin(x)\underset{ 0 }{ = }x+O(x^{3})$
		$\frac{\sin x-x}{x^{5/2}}= \frac{1}{x^{5/2}}\times O(x^{3})=O(\sqrt{ x })$
		
	$DL_{n}(0)$ de cos
	$\cos ^{(4k)}(0)=\cos(0)-1$
	$\cos ^{(4k+2)}=-\cos(0)=-1$
	les coeff. devant $x^{2k+1}$ sont nuls car $\underline{\text{cos paire}}$ :
	$\cos(x)=1- \frac{x^{2}}{2}+ \frac{x^{4}}{4!}-\frac{x^{6}}{6!}\dots(-1)^{n} \frac{x^{2n}}{(2n)!}+o(x^{2n+1})$
	On retrouve : $(\cos(x)-1)\underset{ 0 }{ \sim } \frac{-x^{2}}{2}$
	$\sin(x)\underset{ 0 }{ = }x-\frac{x^{3}}{6}+o(x^{3})$
	$(\sin x-x)\underset{ 0 }{ \sim } \frac{-x^{3}}{6}$
	- $\underline{\text{si }x>0 :}, -\frac{x^{3}}{6}<0$
	- $\underline{\text{si }x<0 :}, -\frac{x^{3}}{6}>0$
	$\underline{\text{Somme géométrique :}}$
	Pour $x \neq{1} : \sum\limits_{k=0}^{n}x^{k}= \frac{1-x^{n+1}}{1-x}$
		donc $\forall x\neq{1}, \frac{1}{1-x}=\sum\limits_{k=0}^{n}x^{k}+ \frac{1}{1-x}\times x^{n+1}$
		or $\underline{\frac{1}{1-x}\times x^{n+1}\underset{ x\to 0 }{ = }o(x^{n})}$
	
	$\lim\limits_{ x \to 0 } \frac{x}{1-x}=0$ donc $x\mapsto \frac{1}{1-x}$ admet un $DL(0)$ à tous ordres
		et $\frac{1}{1-x}\underset{ 0 }{ = }1+x+x^{2}+\dots+x^{n}+o(x^{n})$
	$\underline{\text{Variante :}}$ $\frac{1}{1+x}= \underbrace{ \frac{1}{1-(-x)} }_{ \lim\limits_{ x \to 0 }(-x)=0 } \underset{ 0 }{ = }1-x+x^{2}-x^{3}+\dots+(-1)^{n}x^{n}+o(x^{n})$


3) Opérations sur les $DL$
	
	 a) Combinaison linéaire
	
	Si $f$ et $g$ admettent un $DL_{n}(0)$
	alors pour tout $\lambda,\mu\in \mathbb{K}$, $\lambda f+\mu g$ admet un $DL_{\underline{n}}(0)$
		et la partie régulière s'obtient par combinaison linéaire.
	Si $f(x)\underset{ 0 }{ = }P(x)+o(x^{n})$ et $g\underset{ 0 }{ = }Q(x)+o(x^{n})$
	alors $\lambda f(x)+\mu g(x)\underset{ 0 }{ = }\lambda P(x)+\mu Q(x)+o(x^{n})$
	$\underline{\text{Applications :}}$ $DL$ en 0 de $\mathrm{ch}$ et $\mathrm{sh}$ 
		$\mathrm{ch}(x)=\frac{1}{2}e^{ x }+ \frac{1}{2}e^{ -x }$    ch paire
			$\underset{ 0 }{ = }\frac{1}{2} \left( \sum\limits_{k=0}^{2n} \frac{x^{k}}{k!} \right)+ \frac{1}{2} (\sum\limits_{k=0}^{2n} \frac{(-x)^{k}}{k!})+o(x^{2n})$
		$\mathrm{ch}(x)\underset{ 0 }{ = }\sum\limits_{k=0}^{2n} \underbrace{ \frac{1+(-1)^{k}}{2} }_{= \begin{cases}1\text{ si }k\text{ pair} \\ 0\text{ si }k\text{ impair}\end{cases} }\times \frac{x^{k}}{k!}+o(x^{2n})$
		$\mathrm{ch}(x)\underset{ 0 }{ = }\sum\limits_{k=0}^{2n}= \frac{x^{k}}{k!}+o(x^{2n})=\sum\limits_{p=0}^{n} \frac{x^{2p}}{(2p)!}+o(x^{2n})$
		De même, sh impaire et sh$(x)=\frac{1}{2}e^{ x }-\frac{1}{2}e^{ -x }=\sum\limits_{\underset{ k\text{ impair} }{ k=0 }}^{2n} \frac{x^{k}}{k!}+o(x^{2n})$
		sh$(x)\underset{ 0 }{ = }\sum\limits_{p=0}^{n-1} \frac{x^{2p+1}}{(2p+1)!}+o(x^{2n})$
		ch$(x)\underset{ 0 }{ = }1+\frac{x^{2}}{2!}+\frac{x^{4}}{4!}+\dots$
		sh$(x)\underset{ 0 }{ = }x+\frac{x^{3}}{3}+\frac{x^{5}}{5}+\dots$ (avec $x$ la tangente en 0)
	$\underline{\text{Exemple : }}DL_{4}\left( \frac{\pi}{4} \right)$ de sin$(x)$
		Ici $x\to \frac{\pi}{4}$
		$\underline{\text{Retour à 0 :}}$ on pose $h = x-\frac{\pi}{4} \underset{ x \to \frac{\pi}{4} }{ \to } 0$
		$\sin(x)=\sin\left( \frac{\pi}{4}+h \right)=\frac{\sqrt{ 2 }}{2}\sin(h)+\frac{\sqrt{ 2 }}{2}\cos(h)$
		$=\frac{\sqrt{ 2 }}{2}(\sin(h)+\cos(h))$
		$=\frac{\sqrt{ 2 }}{2}\left( \left[ h- \frac{h^{3}}{6} +\underline{\underline{o(h^{4})}}\right]+\left[ 1- \frac{h^{2}}{2}+ \frac{h^{4}}{4!}+\underline{\underline{o(h^{4})}} \right] \right)$
		$=\frac{\sqrt{ 2 }}{2}\left( 1+h-\frac{h^{2}}{2} -\frac{h^{3}}{6}+\frac{h^{4}}{24}+o(h^{4})\right)$
		$\sin(x)\underset{ x\to \frac{\pi}{4} }{ = }\underbrace{ \frac{\sqrt{ 2 }}{2}+\frac{\sqrt{ 2 }}{2}\left( x-\frac{\pi}{4} \right) }_{ \text{tangeante en } \frac{\pi}{4} }\underbrace{ -\frac{\sqrt{ 2 }}{2}\left( x- \frac{\pi}{4} \right)^{2} }_{ \text{position vis-à-vis de la tangente} }- \frac{\sqrt{ 2 }}{12}\left( x- \frac{\pi}{4} \right)^{3}+ \frac{\sqrt{ 2 }}{48}\left( x- \frac{\pi}{4} \right)^{4}+o\left( \left( x- \frac{\pi}{4} \right)^{4} \right)$
	
	b) Produit de deux $DL$ 
	
	Si $f$ et $g$ admettent $DL_{n}(0)$
	Alors $f\times g$ admet un $DL_{n}(0)$
		En détail, si $f(x) \underset{ 0 }{ = } a_{0}+a_{1}x+\dots+a_{n}x^{n}+o(x^{n})$
		et $g(x) \underset{ 0 }{ = } b_{0}+b_{1}x+\dots+b_{n}x^{n}+o(x^{n})$
		alors $f(x)\times g(x)\underset{ 0 }{ = }a_{0}b_{0}$
		$+(a_{0}b_{1}+a_{1}b_{0})x$
		$+(a_{0}b_{2}+a_{1}b_{1}+a_{2}b_{0})x^{2}$
		$+(a_{0}b_{3}+a_{1}b_{2}+a_{2}b_{1}+a_{3}b_{0})x^{3}$
		$+\text{ }\vdots$
		$+(a_{0}b_{n}+a_{1}b_{n-1}+\dots+a_{n-1}b_{1}+a_{n}b_{0})x^{n}$
		+$o(x)$
		$f(x)\times g(x)=\left( \sum\limits_{i=0}^{n}a_{i}x^{i} \right)\times\left( \sum\limits_{j=0}^{n}b_{j}x^{j} \right)+o(x^{n})$
		$=\sum\limits_{i=0}^{n}\sum\limits_{j=0}^{n} a_{i}b_{j}x^{i+j}+o(x^{n})$
		$=\sum\limits_{k=0}^{n}\left( \sum\limits_{i+j=k}^{}a_{i}b_{j} \right)x^{k}+o(x^{n})$
		$=\sum\limits_{k=0}^{n}\left( \sum\limits_{i=0}^{k}a_{i}b_{k-i} \right)x^{k}+o(x^{n})$
		
	$\underline{\text{Exemple :}}$
		$DL_{3}(0)$ de $\frac{e^{ x }}{1-x}$
		$e^{ x }\times \frac{1}{1-x}\underset{ 0 }{ = }\left( 1+x+ \frac{x^{2}}{2!}+ \frac{x^{3}}{3!} +o(x^{3})\right)\times(1+x+x^{2}+x^{3}+o(x^{3}))$
		on organise les termes : $=1+2x+ \frac{5}{2}x^{2}+\left( 1+1+ \frac{1}{2}+ \frac{1}{6} \right)x^{3}+o(x^{3})$
		$=1+2x+ \frac{5}{2}x^{2}+\frac{8}{3}x^{3}+o(x^{3})$
	$\underline{\text{Exemple :}}$
	$DL_{n}(0)$ de $\left( \frac{1}{1-x} \right)^{2}$
	- $\left( \frac{1}{1-x} \right)^{2}\underset{ 0 }{ = }\left( \sum\limits_{i=0}^{n}x^{i}+o(x^{n}) \right)^{2}=\left( \sum\limits_{i=0}^{n} 1\times x_{i} \right)\times\left( \sum\limits_{j=0}^{n}1\times x^{j} \right)+o(x^{n})$
		$=\sum\limits_{k=0}^{n}\left( \sum\limits_{i+j=k}^{}1 \right)x^{k}+o(x^{n})$
		$=\sum\limits_{k=0}^{n}\left( \sum\limits_{i=0}^{k}1 \right)x^{k}+o(x^{n})$
		$=\sum\limits_{k=0}^{n}(k+1)x^{k}+o(x^{n})$
		$=1+2x+3x^{2}+\dots+(n+1)x^{n}+o(x^{n})$
		MAIS (autre façon), on remarque que $f(x)=\frac{1}{1-x}$ a comme dérivée $f'(x)=\frac{1}{(1-x)^{2}}$
		donc on aurait pu faire comme ça ^^
	
	:) /!\ $\underline{\text{Intérêt de la forme normalisée pour le produit}}$
	Si $f(x)\underset{ 0 }{ = }x^{p}\times(a_{0}+a_{1}x+\dots+a_{n}x^{n})+o(x^{n+p})$
	$DL_{n+p}(0)$ { et si $g(x)\underset{ 0 }{ = }x^{q}(b_{0}+b_{1}x+\dots+b_{n}x^{n})+o(x^{n+q})$
	$DL_{n+q}(0)$ { alors $f(x)\times g(x)=x^{p+q}\times(DL_{n}(0))+o(x^{n+p+q})$                                                                                     
	$\underline{\text{Exemple :}} DL_{5}(0)$ de $(\sin x-x)\times(1-\cos x)$
		$\underline{\text{Subtil :}}$ 
		- $\sin x-x \underset{ 0 }{ = } \frac{-x^{3}}{6}+o(x^{3}) :(\sin x-x)\underset{ 0 }{ \sim }\frac{-x^{3}}{6}$
		$\sin x-x\underset{ 0 }{ = }x^{3}\times[DL_{0}]$
		- $1-\cos x\underset{ 0 }{ = }\frac{x^{2}}{2}+o(x^{2}):(1-\cos x)\underset{ 0 }{ \sim } \frac{x^{2}}{2}$
		$1-\cos x\underset{ 0 }{ = }x^{2}\times[DL_{0}]$
	
	c) Composition de $DL$
	$\underline{\text{Méthode :}}$ 
	Si $g(u)\underset{ 0 }{ = }a_{0}+a_{1}u+\dots+a_{n}(u)^{n}o(u^{n})$
	et si $f(x)\underset{ u\to{0} }{ \to } {0}$
	alors $g(f(x))\underset{ x\to0 }{ = }a_{0}+a_{1}f(x)+\dots+a_{n}(f(x))^{n}+o((f(x))^{n})$
	$\underline{\text{Puis on injecte le }DL(0)\text{ de }f}$
	
	$\underline{\text{Exemple :}}$ 
	$DL_{3}(0)$ de $e^{ \sin(x) }$
	$\sin(x)\underset{ x \to 0 }{ \to } 0$
	$e^{ u }\underset{ u \to 0 }{ = }1+u+\frac{1}{2}u^{2}+\frac{1}{3!}u^{3}+o(u^{3})$
	$e^{ \sin (x) }=1+(\sin x)+\frac{1}{2}(\sin x)^{2}+\frac{1}{6}(\sin x)^{3}+o(x^{3})$
	$=1+\left( x- \frac{x^{3}}{6} \right)+ \frac{1}{2}\underbrace{ \left( x- \frac{x^{3}}{6}+o(x^{3}) \right) }_{ =x^{2} +o(x^{3})}+ \frac{1}{6}x^{3}+o(x^{3})$
	On réorganise les termes : $\underset{ 0 }{ = }1+x + \frac{x^{2}}{2}\cancel{ +0x^{3} }+o(x^{3})$
	
	$\underline{\text{Exemple :}}$ $DL_{7}(0)$ de $\sin(x^{3})$
	$\sin(u)\underset{ u \to 0 }{ = }u+O(u^{3})$
	$\sin(x^{3})\underset{ x \to 0 }{ = }=x^{3}+\underbrace{ O(x^{9}) }_{ \text{ce qui est bien }o(x^{7}) }$
	
	
	$DL$ en 0 de $f(x)=(1+x)^{\alpha}$ avec $\alpha \in \mathbb{R}$
	$f$ est $\mathcal C^{\infty}$ sur $]-1,1[$ (donc sur un voisinage de $0$)
	on peut appliquer Taylor-Young :
	$(1+x)^{\alpha}\underset{ 0 }{ = }[\sum\limits_{k=0}^{n} \frac{f^{(k)}(0)}{k!}x^{k}]+o(x^{n})$
	$f'(x)=\alpha(1+x)^{\alpha-1}$
	$f''(x)=\alpha(\alpha-1)(1+x)^{\alpha-2}$
	on conjecture $f^{(k)}=\alpha \times(\alpha-1)\times\dots \times(\alpha-k+1)(1+x)^{\alpha-k}$
	on dérive une fois pour vérifier l'hérédité
	$\forall k\in \mathbb{N}, f^{(k)}(0)=\alpha \times(\alpha-1)\times\dots \times(\alpha-k+1)$
	$\alpha \in \mathbb{R}$
	$(1-x)^{\alpha}=\sum\limits_{k=0}^{n} \frac{\alpha \times(\alpha-1)\times\dots \times(\alpha-[k-1])}{k!}x^{k}+o(x^{n})$
	$\underset{ x \to 0 }{ = }1+\alpha x+ \frac{\alpha(\alpha-1)}{2}x^{2}+\frac{\alpha(\alpha-1)(\alpha-2)}{3!}x^{3}+\dots+\frac{\alpha(\alpha-1)\dots(\alpha-[n-1])}{n!}x^{n}+o(x^{n})$
	
	$\underline{\text{Application :}}$
	$\underline{\alpha = \frac{1}{2}}$
	
	$\sqrt{ 1+x }\underset{ 0 }{ = }1+\frac{1}{2}x- \frac{1}{8}x^{3}+o(x^{3})$
	
	$\underline{\alpha=-\frac{1}{2}}$
	
	$\frac{1}{\sqrt{ 1+x }}=(1+x)^{-1/2}\underset{ x \to 0 }{ = }1 -\frac{1}{2}x+ \frac{3}{8}x^{2}+o(x^{2})$
	
	
	$\underline{DL_{4}(0)\text{ de } \frac{1}{\cos x}}$
	
	$\frac{1}{\cos x}\underset{ x \to 0 }{ \to } 1$
	$x \mapsto \frac{1}{\cos x}$ paire
	$\frac{1}{\cos x}\underset{ 0 }{ = }1+ax^{2}+bx^{4}+o(x^{4})$
	$\frac{1}{\cos x}= \frac{1}{1-u(x)}$ avec $u(x)=1-\cos (x) \underset{ x \to 0 }{ \to } 0$
	or on peut faire le $DL(0)$ de $u(x)$
		$u(x)\underset{ 0 }{ = }1-\left[ 1-\frac{x^{2}}{2}+ \frac{x^{4}}{4!}+o(x^{4}) \right]$
		$\underset{ 0 }{ = }\frac{x^{2}}{2}- \frac{x^{4}}{4!}+o(x^{4})=x^{2}\times\left[ \frac{1}{2}- \frac{1}{4!}x^{2} +o(x^{2})\right]$
		$u(x)\underset{ 0 }{ \sim } \frac{1}{2}x^{2},(u(x))^{2}\underset{ 0 }{ \sim } \frac{1}{4}x^{4}$
		donc $o(u(x)^{2})$ sera un $o(x^{4})$
		De plus :
		$\frac{1}{1-u}\underset{ u \to 0 }{ = }1+u+u^{2}+o(u^{2})$
		Donc
		$\frac{1}{\cos x}\underset{ x \to 0 }{ = }1+u(x)+(u(x))^{2}+o(u(x)^{2})$
		$=1+\left[ \frac{x^{2}}{2}-\frac{x^{4}}{4} \right]+\frac{1}{4}x^{4}+o(x^{4})$
		$=1+\frac{1}{2}x^{2}+ \underbrace{ \frac{1}{4}\left ( 1-\frac{1}{6} \right)x^{4} }_{ \frac{5}{24} } +o(x^{4})$
		$\dfrac{1}{\cos x}$ admet bien un $DL_{4}(0),$ donc par parité $DL_{5}(0)$
		Conséquence $\tan(x)$ aura un $DL_{5}(0)$
		$\tan(x)= \dfrac{\sin(x)}{\cos(x)}=(\sin x)\times(\dfrac{1}{\cos x})=(x\times-\dfrac{x^{3}}{3!}+\dfrac{x^{5}}{5!}+o(x^{5}))\times(1+\dfrac{x^{2}}{2}+\dfrac{5}{24}x^{4}+o(x^{5}))$
		$\underset{ 0 }{ = }x+(\dfrac{1}{2}-\dfrac{1}{6})x^{3}+(\dfrac{5}{24}-\dfrac{1}{12}+\dfrac{1}{5!})x^{5}+o(x^{5})$
		
		$\tan(x)\underset{ 0 }{ = }x+\dfrac{1}{3}x^{3}+\dfrac{2}{15}x^{5}+o(x^{5})$
		$\dfrac{3}{24}+\dfrac{1}{5!}=\dfrac{16}{5!}=\dfrac{16}{\cancel{ 2 }\times{3}\times \cancel{ 4 } \times 5}= \dfrac{2}{15}$
	
	d) $\underline{\text{Quotient / Inverse d'un }DL}$
	
	$\underline{\text{Propriété :}}$
	>Si $f$ admet un $DL_{n}(0)$ et si $f(x)\underset{ x \to 0 }{ \to } 0$
	>alors la fonction $\dfrac{1}{1-f}$ admet un $DL_{n}(0)$
	
	Preuve : 
	on compose $u \mapsto \dfrac{1}{1-u}$ avec $f$
	$\dfrac{1}{1-f(x)}=1+f(x)+(f(x))^{2}+\dots+(f(x))^{n}+o(( f(x) )^{n})$
	
	$\underline{\text{Corollaire :}}$
	>Si $f$ admet un $DL_{n}(0)$
	>et si $\begin{cases}\text{si }g(x) \underset{ x \to 0 }{ \to } \ell\neq{0} \\ \text{et }g\text{ admet un }DL_{n}(0)\end{cases}$
	>alors $\dfrac{f}{g}$ admet un $DL_{n}(0)$
	
	$\underline{\text{Idée :}}$
		$\dfrac{g(x)}{\ell}\underset{ x \to 0 }{ \to } 1$ donc $(\dfrac{g(x)}{\ell}-1)\underset{ x \to 0 }{ \to } 0$
		Posons $u(x)=\dfrac{g(x)}{\ell}-1$       Ainsi $\underline{u(x) \underset{ x \to 0 }{ \to } 0}$
		et $\dfrac{f(x)}{g(x)}=\underbrace{ f(x) }_{ DL_{n}(0) }\times \dfrac{1}{\ell}\times \dfrac{1}{1+u(x)}$
	
	
	$\underline{\text{Exemple :}}$ $DL_{3}(0)\text{ de }\dfrac{1}{1+e^{ x }}$
		$e^{ x } \underset{ 0 }{ = } 1+\dfrac{x}{1!}+\dfrac{x^{2}}{2!} + \dfrac{x^{3}}{3!}+o(x^{3})$
		$1+e^{ x }=2\times(1+\dfrac{x}{2}+\dfrac{x^{2}}{4} +\dfrac{x^{3}}{12}+o(x^{3}))$
		$\dfrac{1}{1+e^{ x }}=\dfrac{1}{2}\times \dfrac{1}{1+u(x)}$ avec $\underbrace{ u(x)\underset{ 0 }{ = } \dfrac{x}{2}+ \dfrac{x^{2}}{4} +\dfrac{x^{3}}{12}o(x^{3}) }_{ u(x)\text{ }\underset{ 0 }{ \to }\text{ } 0 }$
		Or, $\dfrac{1}{1+u}\underset{ u\text{ }\to\text{ }0 }{ = }1-u+\underbrace{ o(u) }_{ \underline{\text{Pas suffisant !}} }$ $o(u(x))$ ici sera un $o(x)$
		$u(x)\underset{ 0 }{ \sim } \dfrac{x}{2}$ donc $(u(x))^{3} \sim \dfrac{x^{3}}{8}$
			donc un $o(\text{ }(u(x))^{3}\text{ })$ sera un $o(x^{3})$
		Il faut $\dfrac{1}{1+u}\underset{ 0 }{ = }1-u+u^{2}-u^{3}+o(u^{3})$
		
		$\text{"La précision de }u\text{ va dépendre du terme prépondérant de }u\text{"}$
		
		$\underline{\text{Bilan :}}$
		$\dfrac{1}{1+e^{ x }}\underset{ 0 }{ = } \dfrac{1}{2}\times[1-u(x)+(u(x))^{2}-(u(x))^{3}+o(u(x)^{3})]$
		$\underset{ 0 }{ = } \dfrac{1}{2}[1-(\dfrac{x}{2}+\dfrac{x^{2}}{4}+\dfrac{x^{3}}{12})+(\dfrac{x}{2} +\dfrac{x^{2}}{4}+\dfrac{x^{3}}{12})^{2}-(\dfrac{x}{2}+\dfrac{x^{2}}{4}+\dfrac{x^{3}}{12})^{3}+o(x^{3})]$
		$\underset{ 0 }{ = } \dfrac{1}{2}[1-\dfrac{1}{2}x +0x^{2} +\underbrace{ (-\dfrac{1}{12}+\dfrac{1}{4}-\dfrac{1}{8}) }_{ = \dfrac{-2+6-3}{24} }x^{3}+o(x^{3})]$
		$\dfrac{1}{1+e^{ x }}\underset{ 0 }{ = }\underbrace{  \dfrac{1}{2}-\dfrac{1}{4}x }_{ \text{tangente en 0} }+ \dfrac{1}{48}x^{3}+o(x^{3})$
		$(\dfrac{1}{1+e^{ x }}-\dfrac{1}{2} +\dfrac{1}{4}x)\text{ }\text{ } \underset{ 0 }{ \sim } \underbrace{ (\dfrac{x^{3}}{48}) }_{ \text{position vis-à-vis }\\\text{de la tangente} }$
	
	$\underline{\text{d) Primitive d'un }DL}$
	
	>Soit $f\in\mathcal C(I,\mathbb{R})$ avec $0\in I$
	> 	telle que $f$ admet un $DL_{n}(0)$ de la forme 
	> $$f(x)\underset{ 0 }{ = }\sum\limits_{k=0}^{n}a_{k}x^{k}+o(x^{n})$$
	>Prenons alors $F$ une primitive de $f$
	>	$F$ possède un $DL_{n+1}(0)$ qui est $F(x)\underset{ x \to 0 }{ = }F(0)+(\sum\limits_{k=0}^{n}a_{k}\dfrac{ x^{k+1}}{k+1})+o(x^{n})$
	
	$\underline{\text{Exemples : }}$ par $\heartsuit$
	$f:x\mapsto \ln(1+x)$ $\underline{\text{en }0}$
		$f'(x)=\dfrac{1}{1+x}$ on connaît le $DL_{n}(0)$
		$\underset{ 0 }{ = }1-x+x^{2}-x^{3}\dots+(-1)^{n}x^{n}+o(x^{n})$
	on primitive ce $DL$
	$\ln(1+x) \underset{ 0 }{ = }x- \dfrac{x^{2}}{2} +\dfrac{x^{3}}{3}-\dfrac{x^{4}}{4}\dots(-1)^{n} \dfrac{x^{n+1}}{n+1}+o(x^{n+1})$  $\underline{\ln(1+x)\text{ NE COMMENCE PAS PAR }1}$
	
	$\underline{DL\text{ de l'}\arctan\text{ en }0}$
	$\arctan'(x)\underset{ 0 }{ = }\dfrac{1}{1+x^{2}}=\dfrac{1}{1+u(x)}$ avec $u(x) \underset{ x \to 0 }{ \to } 0$
	$\underset{ 0 }{ = }(x^{2})^{0}-x^{2}+(x^{2})^{2}-(x^{2})^{3}\dots+(-1)^{n}(x^{2})^{n}+o(x^{2n})$
	$\underset{ 0 }{ = }1-x^{2}+x^{4}-x^{6}+\dots+(-1)^{n}x^{2n}+o(x^{2n})$
	on primitive le $DL$ $\arctan(0)=0$
	Donc 
	$\arctan(x)\underset{ 0 }{ = }0+x-\dfrac{x^{3}}{3}+\dfrac{x^{5}}{5}+\dots+(-1)^{n} \dfrac{x^{2n+1}}{2n+1}+o(x^{2n+1})$
	
	$\underline{DL\text{ de l'}\arcsin\text{ en }0}$
	$\arcsin'(x)= \dfrac{1}{\sqrt{ 1-{x^2} }}=(1-x^{2})^{-1/2}$
	$=(1+u(x))^{-1/2}$
	avec $u(x) \underset{ x \to 0 }{ \to } 0$
	On sait que $(1+u)^{\alpha} \underset{ u \to 0 }{ = } 1+\alpha u + \dfrac{\alpha(\alpha-1)}{2}u^{2}+ \dfrac{\alpha(\alpha-1)(\alpha-2)}{3!}u^{3}+\dots+\dfrac{\alpha(\alpha-1)\dots(\alpha-[n-1])}{n!}u^{n}+o(u^{n})$
	Pour $\alpha=-\dfrac{1}{2}$, $\alpha(\alpha-1)\dots(\alpha-n+1)$
	$=(-\dfrac{1}{2})(-\dfrac{3}{2})(-\dfrac{5}{2})\dots(\dfrac{-(2n-1)}{2})=\dfrac{(-1)^{n}}{2^{n}}\underbrace{ (1 \times 3 \times 5 \times \dots \times(2n-1)) }_{ \dfrac{(2n)!}{2^{n}\times n!} }$
	Bilan avec $\begin{cases}u=(-x^{2}) \\ \alpha=-1/2\end{cases}$
	
	$\dfrac{\alpha(\alpha-1)\dots(\alpha-n+1)}{n!}u^{n}$
	
	$=\dfrac{(-1)^{n}(2n)!}{2^{n}\times{2}^{n}\times n!}\times \dfrac{-x^{2}}{n!}$
	
	$=\dfrac{1}{4^{n}}\times \binom{2n}{n}x^{2n}$
	
	Donc $(1-x^{2}) \underset{ 0 }{ = } \sum\limits_{k=0}^{n} \dfrac{1}{4^{k}}\binom{2k}{k} x^{2k}+o(x^{2n})$
	
	En primitivant : 
		$\arcsin(x) \underset{ x\to 0 }{ = } \arcsin(0) + \sum\limits_{k=0}^{n} \dfrac{1}{4^{k}} \binom{2k}{k} \dfrac{x^{2k+1}}{2k+1}+o(x^{2n+1})$
		$\underset{ x \to 0 }{ = }x + \underbrace{ \dfrac{1}{4} \binom{2}{1} \dfrac{x^{3}}{3} }_{ \frac{1}{6} x^{3} } +o(x^{3})$
		Apparition d'une équation diff d'ordre $1$
		$\tan(x)\underset{ 0 }{ \sim } x$ donc $\tan(x)\underset{ 0 }{ = }x+o(x)$
			or $\tan$ est impaire : $\tan (x)                \underset  { 0 }  { = } x+o(x^{2})$
			donc $(\tan x)^{2}\underset{ 0 }{ = }[x \times(1+o(x))]^{2}$
			$\underset{ 0 }{ = }x^{2} \times (1+o(x))$
			$\underset{ 0 }{ = }x^{2}+o(x^{3})$
		
	Ainsi $\tan'(x)=1+(\tan x)^{2}$
	$\underset{ 0 }{ = } 1+x^{2}+o(x^{3})$
	
	$\underline{\text{on primitive}}\text{ et }\tan(0)=0$
	$\tan(x)\underset{ 0 }{ = }x+\dfrac{x^{3}}{3}+o(x^{4})$
	$=x \times[1+ \dfrac{x^{2}}{3}+o(x^{3})]$
	Donc $(\tan x)^{2} \underset{ 0 }{ = }x^{2}\times(1+ \dfrac{x^{2}}{3}+o(x^{3}))$
	$=x^{2}\times(1+2 \dfrac{x^{3}}{3}+o(x^{3}))$
	$(\tan x)^{2} \underset{}{ = } x^{2}+ \dfrac{2}{3}x^{4}+o(x^{5})$
	$\tan'=1+\tan ^{2}$ se primitive 
	$\tan(x) \underset{ 0 }{ = } x +\dfrac{x^{3}}{3}+ \dfrac{2}{3}\times \dfrac{x^{5}}{5}+o(x^{6})$	
	$\tan(x)=x \times[1+\dfrac{1}{3}x^{2}+\dfrac{2}{15}x^{4}+o(x^{5})]$
	
	Dans $(\tan x)^{2},$ on a $(\dfrac{4}{15}+\dfrac{1}{9})x^{6}$
	$(\dfrac{12+5}{45})x^{6}$
	$\dfrac{17}{45}x^{6}$
	
	$\underline{\text{on primitive}}$
	$\dfrac{17}{45}\times \dfrac{x^{7}}{7}= \underline{\dfrac{17}{315}x^{7}}$	
	
	--- 
	Si $f$ est de classe $\mathcal C^{n}$ sur $I$ avec $a\in I$ alors $f$ admet un $DL_{n}(a)$
	$f(a+h)=\alpha_{0}+\alpha_{1}+\dots+\alpha_{n}h^{n}+o(h^{n})$
	où $\alpha_{k}= \dfrac{f^{(k)}(a)}{k!}$
	

5) Lien entre $DL$ et dérivabilité

a) Lien entre continuité et dérivabilité en $a$

Soit $f:I\to \mathbb{K}$ une fonction et $a \in \mathbb{R} \begin{cases}\text{un point de }I \\ \text{ou} \\ \text{une extrémité de }I\end{cases}$
Si $f$ admet un $DL_{n}(a)$ d'ordre 0
alors il existe un $\alpha_{0}\in \mathbb{K}$ tel que $f(x)\underset{ x\to a }{ = }\alpha_{0}+\mathcal o(1)$
Alors $f$ admet une limité en $a$ et $\lim\limits_{ x \to a }f(x)=\alpha_{0}$

Réciproquement si $f$ admet une limite $\ell$ en $a$
$\lim\limits_{ x \to a }f(x)=\ell \in \mathbb{K}$
$f(x)\underset{ x\to a }{ = }\ell+o(1)$
donc $f$ admet un $DL_{0}(a)$

Ainsi si $f$ est définie sur $I\setminus \{a\}$ (non définie en $a$)
on a le résultat suivant : 
$f$ admet un $DL_{0}(a):\alpha_{0}+o(1)$
$\iff f$ se prolonge par continuité en $a$
en posant $f(a)=\alpha_{0}$ 

De plus si $f$ est déjà définie au point $a$
$f$ admet un $DL_{0}(a)\iff f$ est continue en $a$
Dans ce cas là
$f(x)\underset{ x\to a }{ = }f(a)+o(1)$

b) $DL_{1}(a)$ et dérivabilité

Si $f$ admet un $DL_{1}(a)$
il existe $\alpha_{0},\alpha_{1}$ tels que : 
$f(x)\underset{ x\to a }{ = }\alpha_{0}+\alpha_{1}(x-a)+o(x-a)$
Par troncature, $f$ admet un $DL_{0}(a)$
$f(x)\underset{ x\to a }{ = }\alpha_{0}+o(1)$
Ainsi $\begin{cases} -\text{Soit }f \text{ est continue en }a\text{ avec }\alpha_{0}=f(a) \\ -\text{Soit }f\text{ se prolonge par continuité en }a\text{ en posant }f(a=\alpha_{0})\end{cases}$
Ainsi, le $DL_{1}(a)$ s'écrit : $f(x)=f(a)+\alpha_{1}\times(x-a)+o(x-a)$
$\forall x\neq a, \dfrac{f(x)-f(a)}{x-a}=\alpha_{1}+o(1)$
Ainsi $\lim\limits_{ x \to a } \dfrac{f(x)-f(a)}{x-a}=\alpha_{1}$
donc $f$ est dérivable en $a$
et $f'(a)=\alpha_{1}$
Donc $f(x) \underset{ x\to a }{ = } \underbrace{ f(a)+f'(a)\times(x-a)+o(x-a) }_{ \text{équation de la tangente en }a }$

$\underline{\text{Réciproquement }}$
Si $f$ est dérivable en $a$. $f'(a)= \lim\limits_{ x \to a }\dfrac{f(x)-f(a)}{x-a}$
donc $\dfrac{f(x)-f(a)}{x-a}\underset{ x\to a }{ = }f'(a)+o(1)$
donc $f(x)-f(a)=(x-a)\times[f'(a)+o(1)]$
$=(x-a)f'(a)+o(x-a)$
donc $f$ admet un $DL_{1}(a)$

$\underline{\text{Résumé}} :$
$DL_{0}(a)$ ssi continuité en $a$
$DL_{1}(a)$ ssi dérivabilité en $a$

$\underline{\text{Remarque : }}$ on peut prouver 
	dérivable $\implies$ continue 
grâce à la troncature .
	$DL_{1}(a)\implies DL_{0}(a)$

/!\ Mauvaises nouvelles
Si $f$ admet un $DL_{n}(a)$
avec $n \geqslant 2$
cela $\underline{\text{n'implique pas}}$ le fait que $f$ soit 2 fois dérivable

$\underline{\text{Contre-exemple :}}$ fonction pathologique 
Soit $f:x\mapsto \begin{cases}x^{3}\sin(\dfrac{1}{x})\text{ si } x\neq 0 \\ 0 \text{ si } x= 0\end{cases}$
$f$ admet un $DL_{2}(0)$ car $f(x)\underset{ x\to 0 }{ = }o(x^{2})$
$\forall x\neq{0},|\dfrac{f(x)}{x^{2}}|=|x\sin(\dfrac{1}{x})|\leqslant|x|$
Ainsi par encadrement : $\lim\limits_{ x \to 0 } \dfrac{f(x)}{x^{2}}=0$
donc $f(x)\underset{ 0 }{ = }o(x^{2})$
donc $f(x)\underset{ 0 }{ = }0+0x+0x^{2}+o(x^{2})$
étudions la dérivabilité en 0 de $f'$
$\dfrac{f'(x)-f'(0)}{x}\underset{ x\to 0 }{ \to }???$
$\forall x\neq0,f'(x)=3x^{2}\sin(\dfrac{1}{x})+x^{3}\times(-\dfrac{1}{x^{2}})\cos(\dfrac{1}{x})$
$\forall x\neq 0,f'(x)=3x^{2}\sin(\dfrac{1}{x})-x\cos(\dfrac{1}{x})$

Comme $f$ admet un $DL_{2}(0)$
donc $f$ admet un $DL_{1}(0)$
donc $f$ dérivable en 0
avec $f'(0)=0$

$\underline{\text{Bilan}}$
$\forall x\neq 0, \dfrac{f'(x)-f'(0)}{x}=3x\sin(\dfrac{1}{x})-\cos(\dfrac{1}{x})$
$|3x\sin(\dfrac{1}{x})|\leqslant 3x$ donc $\lim\limits_{ x \to 0 }3x\sin(\dfrac{1}{x})=0$
mais $\cos(\dfrac{1}{x})$ n'a pas de limite en 0
donc le taux d'accroissement de $f'$ en 0 n'a pas de limite
donc $f'$ n'est pas dérivable en 0
Il n'y a pas de $f''(0)$

$\underline{\text{généralisation }}$ Soit $n\geqslant 2$
$f_{n}:\begin{cases}x^{n+1}\times \sin(\dfrac{1}{x^{n}}) \text{ si }x\neq 0 \\ 0\text{ si }x=0\end{cases}$
on montre que $f(x)\underset{ 0 }{ = }o(x^{n})$
donc $f$ admet un $DL_{n}(0)$
Mais $f'$ n'est pas dérivable en 0 $\cancel{ f''(0) }$

$\underline{\text{Conséquence}}$
On ne dérive pas un $DL$

Il est possible d'avoir 
$\begin{cases}f\text{ admet un }DL_{n}(0) \\ f'\text{ n'admet pas de }DL_{1}(0)\end{cases}$

$\underline{\text{Bonne nouvelle :}}$
Si $f$ admet un $DL_{n+1}(0)$
et si $f'$ admet un $DL_{n}(0)$
alors les coefficients du $DL$ de $f'$ s'obtiennent par dérivation terme à terme du $DL$ de $f$

En pratique, l'existence des $DL$ sera assurée par Taylor-Young en vérifiant que $f$ est $\mathcal C^{n+1}$
En effet, si $f\in \mathcal C^{n+1}$
alors $f'\in \mathcal C^{n}$
Ainsi par Taylor-Young, $\begin{cases}f\text{ admet un }DL_{n+1}(a) \\ f'\text{ admet un }DL_{n(a)}\end{cases}$
et $f(x)\underset{ 0 }{ = }\sum\limits_{k=0}^{n+1} \frac{f^{(k)}(0)}{k!}x^{k}+o(x^{n+1})$
et $f'(x)\underset{ 0 }{ = }\sum\limits_{k=0}^{n} \frac{(f')^{(k)}(0)}{k!}x^{k}+o(x^{n})$
$\underset{ 0 }{ = }\sum\limits_{k=0}^{n} \frac{f^{(k+1)}(0)}{k!}x^{k}+o(x^{n})$
$=\sum\limits_{k=1}^{n+1} \frac{f^{(k)}(0)}{(k-1)!}x^{k-1}+o(x^{n})$
$=\sum\limits_{k=1}^{n+1} \frac{f^{(k)}(0)}{k!}\times kx^{k-1}+o(x^{n})$
Cela revient à dériver le $DL$ de $f$


# IV - $\underline{\text{Applications des }DL}$

1) Analyse locale d'une fonction en un point 
$g:x\mapsto \frac{\sin(x)}{x}$ si $x\neq 0$

$\underline{\text{Etude au voisinage de 0 :}}$
$\sin(x)\underset{ 0 }{ = }x-  \frac{x^{3}}{3!}+o(x^{4})$
$\frac{\sin(x)}{x}\underset{ 0 }{ = }1-\frac{x^{2}}{6}+o(x^{3})$ c'est un $DL_{3}(0)$
donc $g$ admet un $DL_{1}(0)$
donc $g$ se prolonge par continuité en 0 et la fonction prolongée est dérivable en 0. 

On pose $g(0)=1$
Ainsi $g$ devient continue en 0
$g$ est de plus dérivable et $g'(0)=0$
car $g(x)\underset{ 0 }{ = }\underbrace{ 1 }_{ g(0) }+\underbrace{ 0x }_{ g'(0) }- \frac{x^{2}}{6}+o(x^{2})$

2) Calculs de limites / Calculs d'équivalents 

- Trouver un équivalent en 0 de $f(x)=x(1+\cos x)-2\tan (x)$
	/!\ $\underline{\text{L'ordre 1}}$ à précision $o(x)$ ne suffit pas :
	$f(x)\underset{ 0 }{ = }2x-2x+o(x)=o(x)$
	on doit être plus précis pour capturer l'équivalent
	or $\cos(x)\underset{ 0 }{ = }1- \frac{x^{2}}{2}+o(x^{2})$
	$\tan(x) \underset{ 0 }{ = } x+ \frac{x^{3}}{3}+o(x^{3})$
	Donc $x(1+\cos x)=2x - \frac{x^{3}}{2}+o(x^{3})$
	Donc $f(x) \underset{ 0 }{ = } -\frac{1}{2}x^{3} - \frac{2}{3}x^{3}+o(x^{3})$
	$-\frac{7}{6}x^{3}+o(x^{3})$
	donc $f(x)\underset{ 0 }{ \sim } -\frac{7}{6}x^{3}$

- Trouver un équivalent en $+\infty$ de $g(x)=\exp\left( \frac{1}{x} \right)- \frac{x(x+1)}{1+x^{2}}$
	$x\to +\infty$ alors $\frac{1}{x}\underset{ x\to+\infty }{ \to } {0}$
	Posons $h=\frac{1}{x}$ $h \to 0$
	$g(x)=g\left( \frac{1}{h} \right)= e^{ h }- \frac{1/h(1/h +1)}{(1/h)^{2}+1}$
	$\times \frac{h^{2}}{h^{2}}$
	$=e^{ h }- \frac{1+h}{1+h^{2}}$
	Allons à l'ordre 2 $o(h^{2})$
	$e^{ h }\underset{ 0 }{ = }1+h+ \frac{h^{2}}{2}+o(h^{2})$
	$\frac{1}{1+h^{2}}\underset{ 0 }{ = }1-h^{2}+o(h^{2})$
	donc $(1+h)\times \frac{1}{1+h^{2}}=(1-h^{2}+o(h^{2}))+h \cancelto{ o(h^{2}) }{ -h^{3}+o(h^{3}) }$
	$=1+h-h^{2}+o(h^{2})$
	
	Bilan
	$g(1/h) \underset{ h\to 0 }{ = } \frac{3}{2}h^{2}+o(h^{2})$
	$g\left( \frac{1}{h} \right)\underset{ h\to 0 }{ \sim } \frac{3}{2}h^{2}$
	Retour en $x=1/h$
	$g(x)\underset{ x\to +\infty }{ \sim  }\frac{3}{2x^{2}}$
	$\underbrace{ g(x)= \frac{3}{2x^{2}}+o\left( \frac{1}{x} \right) }_{ \text{dvlp asymptotique en }+\infty }$

3) Développements asymptotiques

$\underline{\text{Exemple :}}$ $\sin(\sqrt{ x })$ en $0^{+}$ à précision $o(x^{3})$
	Posons $u=\sqrt{ x } \underset{ x \to 0^{+} }{ \to } 0$
	alors $u^{6}=x^{3}$ On pousse le $DL$ de $\sin(u)$ à précision $o(u^{6})$
 	$\sin(u) = u - \frac{u^{3}}{3!}+ \frac{u^{5}}{5!}+o(x^{6})$
 	$\sin(\sqrt{ x }) = \sqrt{ x } - \frac{x\sqrt{ x }}{6} \frac{x^{2}\sqrt{ x }}{5!}+o(x^{3})$
