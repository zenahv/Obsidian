
On considère des fonctions de la <u>variable réelle</u> à <u>valeurs réelles</u> 
$\begin{array}{rcl}f:D&\to& \mathbb{R} \end{array}$ où $D\subset \mathbb{R}$

# I - Limites

## 1 - Voisinage
<u>Objectif</u> : Parler de propriétés <span style="color:red"><u><span style="color:white">locales</span></u></span> pour une fonction

<u>Déf</u>$\to$  
 >$*$ Soit $a\in \mathbb{R}$ (fini)
 >   Un voisinage de $a$ est un ensemble 
 >   $\mathcal V=[a-\eta,a+\eta]$   avec $\eta >0$
 >
 >$*$ Un voisinage de $+\infty$ est un ensemble 
 >   $\mathcal V=[A,+\infty[$   avec $A\in \mathbb{R}$ 
 >
 >$*$ Un voisinage de $-\infty$ est un ensemble 
 >   $\mathcal V=]-\infty,B]$   avec $B\in \mathbb{R}$ 
 
 <u>Déf</u>$\to$  
 >Soit $\begin{array}{rcl}f:D&\to& \mathbb{R} \end{array}$ avec $D\subset \mathbb{R}$ et $a\in D$ ou $a$ une extrémité de $D$
 >Avec $a\in \mathbb{R}\cup \{ -\infty,+\infty \}$
 >$f$ vérifie $\underline{\text{une propriété }P\text{ au voisinage de }a}$
 >Si $\exists \mathcal V$ voisinage de $a$ tel que $\underset{ \text{restriction} }{ f_{|\mathcal V\cap D} }$ vérifie $P$
 
 <span style="color:turquoise">Exemple </span> 
- $x\mapsto \sin(x)$ est strictement croissante au voisinage de $0$
	car est strict. croissante sur $\mathcal V=\left[ -\frac{\pi}{2}, \frac{\pi}{2} \right]$

- $x\mapsto \frac{1}{x}$ est bornée au voisinage de $+\infty$ 
	car bornée sur $[10,+\infty[$

- $x\mapsto \lfloor x \rfloor$ est constante au voisinage de 
	tout point $a\in \mathbb{R}\setminus \mathbb{Z}$

## 2 - Définition des limites

### a - Limite finie

Soit $\begin{array}{rcl}f:D&\to& \mathbb{R} \end{array}$ une fonction bien définie au voisinage de $a\in \bar{\mathbb{R}}$. 

Soit $\boxed{\ell \in \mathbb{R}}$ :
On dit que $\boxed{f\text{ tend vers }\ell\text{ en }a}$ que l'on note $f \underset{ a }{ \to }\ell$ (ou $f(x)\underset{ x\to a }{ \to } \ell$)
si :
$\boxed{\begin{align}\forall\varepsilon & >0,\exists \mathcal V\text{ voisinage de }a\text{ tel que} \\  & \forall x \in \mathcal V\cap D,|f(x)-\ell|\leqslant \varepsilon\end{align}}$
$\forall\varepsilon>0,\exists \mathcal V$ vois. de $a$ tel que 
$\forall x \in D,x \in \mathcal V\implies |f(x)-\ell|\leqslant \varepsilon$
En détail, cela donne 3 cas : 
1) $f(x)\underset{ x\to a }{ \to }\ell$ avec $\ell \in \mathbb{R}$ et $a\in \mathbb{R}$
	$\forall\varepsilon>0,\exists \eta> 0,\forall x \in D,$
	$|x-a|\leqslant \eta \implies |f(x)-\ell|\leqslant \varepsilon$
2) $f(x)\underset{ x\to +\infty }{ \to }\ell$ avec $\ell \in \mathbb{R}$ 
	$\forall\varepsilon> 0,\exists A\in R,\forall x \in D$
	$x\geqslant A\implies |f(x)-\ell|\leqslant \varepsilon$
3) $f(x)\underset{ x\to -\infty }{ \to }\ell$ avec $\ell \in \mathbb{R}$ 
	$\forall\varepsilon>0,\exists B\in \mathbb{R},\forall x \in D,$
	$x \leqslant B\implies |f(x)-\ell|\leqslant \varepsilon$
![[Lim 1.png]]


<span style="color:violet">Remarque </span> 
⚠ Que signifie : "$\exists \eta> 0,\forall\varepsilon> 0,\forall x \in D,|x-a|\leqslant\eta\implies |f(x)-\ell|\leqslant \varepsilon$"
On prend un tel $\eta>0$ et soit $x \in D\cap[a-\eta,a+\eta]$
alors $\forall\varepsilon> 0,|f(x)-\ell|\leqslant \varepsilon$

$\boxed{\text{v 1.0.0}}$
Si $\alpha=|f(x)-\ell|\neq 0$ alors $\alpha > 0$
donc $0 \frac{<\alpha}{2}<\alpha$
et avec $\varepsilon=\frac{\alpha}{2}$, on obtient une contradiction car $\boxed{\alpha\leqslant \varepsilon=\frac{\alpha}{2}}$

$\boxed{\text{v 2.0.0}}$
Si $|f(x)-\ell|$ est un minorant de $\mathbb{R}_{+}^{*}$
il est donc inférieur à la borne inf de $\mathbb{R}_{+}^{*}$
donc $|f(x)-\ell|\leqslant 0$

Bref : $|f(x)-\ell|= 0$
donc $f$ <u>est constante</u> sur $D\cap[a-\eta,a+\eta]$ (au voisinage de $a$)

$\boxed{\text{Propriété}}$
Si $f$ est déjà définie en $a$
et $\boxed{f \underset{ a }{ \to } \ell}$ (avec $\ell \in \mathbb{R}$ et $a\in \mathbb{R}$)
alors $\ell=f(a)$

<u><span style="color:gold"> Preuve </span></u> 
 On sait que $\forall\varepsilon> 0,\exists \eta> 0,\forall x \in D$
 $|x-a|\leqslant \eta \implies |f(x)-\ell|\leqslant \varepsilon$

$\boxed{\text{Soit }\varepsilon>0}$
Ainsi, il existe $\eta > 0$ et en prenant $a\in D$ on a toujours 
$0=|a-a|\leqslant \eta$ donc $|f(a)-\ell|\leqslant \varepsilon$

<u>Bilan</u> : 
$\forall\varepsilon> 0,|f(a)-\ell|\leqslant \varepsilon$
En passant à la borne inf.
$0\leqslant |f(a)-\ell|\leqslant 0$ Donc $\ell=f(a)$

<u>Exercice</u> <small>(laissé en exercice au lecteur)</small>
La fonction identité sur $\mathbb{R}$ admet des limites finies en tout point :
Soit $a\in \mathbb{R}$ et $f:x\mapsto x$
$x\underset{ x\to a }{ \to } a$ 

$\boxed{\text{Proposition}}$
>$\ell \in \mathbb{R}$ et $a\in \bar{\mathbb{R}}$
>$f\underset{ a }{ \to } l$ ssi $|f-\ell|\underset{ a }{ \to }0$

<u><span style="color:gold"> Preuve </span></u> 
 $|f(x)-\ell|=||f(x)-\ell|-0|$
 
### b - Limite infinie
<u>Déf</u>$\to$ (limite en $\begin{align}+\infty \\ -\infty\end{align}$) 
 >Soit $a\in \bar{\mathbb{R}}$
 >$f$ tend vers $\begin{align}+\infty \\ -\infty\end{align}$ en $a$ si :
 >$\forall A\in \mathbb{R},\exists \mathcal V$ vois. de $a,\forall x \in D,$
 >$x \in \mathcal V\implies \begin{cases}f(x)\geqslant A \\ f(x)\leqslant A\end{cases}$

En détail, cela donne $6$ cas supplémentaires
4) $f\underset{ a }{ \to }+\infty$ avec $a\in \mathbb{R}$
	$\forall A\in \mathbb{R},\exists \eta>0,\forall x \in D,$
	$|x-a|\leqslant \eta\implies f(x)\geqslant A$
5) $f\underset{ +\infty }{ \to }+\infty$
	$\forall A\in \mathbb{R},\exists B\in \mathbb{R},\forall x \in D$
	$x \geqslant B \implies f(x)\geqslant A$
6) $f\underset{ -\infty }{ \to }+\infty$
	$\forall A\in \mathbb{R},\exists B\in \mathbb{R},\forall x \in D,$
	$x\leqslant B\implies f(x)\geqslant A$
![[Lim 2.png]]

<small>cas 7,8,9 inutiles à voir (très similaires)</small>

## 3 - Caractérisation séquentielle de la limite

$\boxed{Théorème}$
>Soit $f : D\to \mathbb{R}$ définie au voisinage de $a\in \bar{\mathbb{R}}$
>Soit $\ell \in \bar{\mathbb{R}}$
>(i) $f\underset{ a }{ \to }\ell$
>$\iff$
>(ii) $\forall(x_{n})_{n\in \mathbb{N}}\in D^{\mathbb{N}},x_{n}\underset{ n\to +\infty }{ \to }a\implies f(x_{n})\underset{ n\to +\infty }{ \to } \ell$
>Pour toute suite à valeurs dans $D$ qui tend vers $a$, $\implies \dots$

<u><span style="color:gold"> Preuve </span></u> 
Il y a $9$ cas à faire :vs_sat_horror:
Plaçons nous dans le cas $\begin{cases}a\in \mathbb{R} \\ \ell \in \mathbb{R}\end{cases}$
$\boxed{\text{(i)}\implies\text{(ii)}}$ 
Supposons $f\underset{ a }{ \to } \ell$
Soit $(x_{n})_{n\in \mathbb{N}}\in D^{\mathbb{N}}$ telle que $x_{n}\underset{ n\to +\infty }{ \to } a$
Montrons que la suite $(f(x_{n}))_{n\in \mathbb{N}}$ converge vers $\ell$
Soit ${\color{}\varepsilon>0}$ Comme $f \underset{ a }{ \to } \ell$
$\exists \eta> 0,\forall x \in D,|x-a|\leqslant \eta\implies | f(x)-\ell|\leqslant \varepsilon$
Or $x_{n}\underset{ n\to +\infty }{ \to } a$
avec $\eta> 0$ dans la déf. de la convergence d'une suite
$\exists n_{0},\boxed{\forall n\geqslant n_{0}},|x_{n}-a|\leqslant\eta$
Or, $\boxed{x_{n}\in D}$
On en conclut grâce à l'implication :
$\boxed{\forall n\geqslant n_{0},|f(x_{n})-\ell|\leqslant\varepsilon}$


$\boxed{\text{(ii)}\implies\text{(i)}}$ 
On procède par contraposée en montrant $\neg\text{(i)}\implies \neg\text{(ii)}$
On suppose $\neg[f\underset{ a }{ \to } \ell]$
On cherche à montrer l'existence d'une suite $(x_{n})_{n}$ dans $D$ 
qui converge vers $a$ et telle que la suite $f(x_{n}) \underset{ n\to + \infty }{ \not\to } \ell$
$\begin{align}\text{On a }\neg[f\underset{ a }{ \to } \ell] & \equiv \neg[\forall\varepsilon> 0,\exists \eta> 0,\forall x \in D,|x-a|\leqslant \eta\implies |f(x)-\ell|\leqslant \varepsilon] \\  & \equiv \exists\varepsilon>0,\forall n>0,\exists x \in D,|x-a|\leqslant n\text{ }\boxed{\land}\text{ }|f(x)-\ell|>\varepsilon\end{align}$
Fixons un tel $\varepsilon>0$
Prenons un tel $n\in \mathbb{N}$ quelconque et $\eta_{n}=\frac{1}{2^{n}}>0$ donc :
il existe $x_{n}\in D$ tel que $\begin{cases}|x_{n}-a|\leqslant \frac{1}{2^{n}} \\ \text{et }|f(x_{n})-\ell|>\varepsilon\end{cases}$

<u>Bilan</u>
$\begin{rcases}\forall n\in \mathbb{N},x_{n}\in D\\|x_{n}-a|\leqslant \frac{1}{2^{n}}\end{rcases}$ On a une suite $(x_{n})_{n\in\mathbb{N}}\in D^{\mathbb{N}}$ qui converge vers $a$ (Th. Encadrement)
$|f(x_{n})-\ell|>\varepsilon$
Ainsi $f(x_{n})\not\to \ell$

<u>Intérêt</u>

- (i) $\implies$ (ii)  : le schéma de composition des limites
	$\begin{rcases}x_{n}\underset{ n\to +\infty }{ \to } a\text{ avec }a\in \bar{\mathbb{R}}\\f(x)\underset{ x\to a }{ \to } \ell\text{ avec }\ell \in \bar{\mathbb{R}}\end{rcases}$ alors $f(x_{n})\underset{ n \to + \infty }{ \to } \ell$
	
- (i) $\implies$ (ii) : Montrer qu'une fonction <u>n'a pas de limite</u>
	$x\mapsto \cos x$ n'a pas de limite en $+\infty$ car 
	$\forall n\in \mathbb{N},\begin{cases}x_{n}=2\pi n\underset{ n\to +\infty }{ \to }+\infty \\ y_{n}=2\pi n+\frac{\pi}{2}\underset{ n\to + \infty }{ \to } +\infty\end{cases}$
	$\begin{rcases}\forall n,&\cos(x_{n})=1\underset{ n\to +\infty }{ \to } 1\\&\cos(y_{n})=0 \underset{ n\to +\infty }{ \to }0\end{rcases}$ donc $\cos \underset{ +\infty }{ \not\to } \ell$

- (ii) $\implies$ (i) : cours sur les $\begin{align}\text{opérations} \\ \text{théorèmes}\end{align}$ sur les limites de fonction

<u>Par exemple</u>

$\boxed{Théorème}$ (unicité de la limite)
>si $f\underset{ a }{ \to  }\ell_{1}$ et $f\underset{ a }{ \to } \ell_{2}$ alors $\ell_{1}=\ell_{2}$

On s'autorise la notation :
$\boxed{\ell=\lim\limits_{ x \to a }f(x)}$

<u><span style="color:gold"> Preuve </span></u> 
Via la caractérisation séquentielle
Soit $(x_{n})_{n}\in D^{\mathbb{N}}$ qui converge vers $a$
$\begin{rcases}f\underset{ a }{ \to } \ell_{1}\text{ }\text{ donc }\text{ }f(x_{n})\underset{ n\to +\infty }{ \to } \ell_{1}\\f\underset{ a }{ \to } \ell_{2}\text{ }\text{ donc }\text{ }f(x_{n})\underset{ n\to +\infty }{ \to } \ell_{2}\end{rcases}$ Par Th. d'unicité des <u>suites</u> on a $\ell_{1}=\ell_{2}$

## 4 - Limites à gauche/à droite en $a\in \mathbb{R}$

Soit $\ell \in \mathbb{R}$
$f$ admet une limite à droite en $a$ qui vaut $\ell$, notée $\begin{cases}f\underset{ a^{+} }{ \to }\ell \\ f(x)\underset{ x> a }{ \underset{ x\to a }{ \to } }\ell\end{cases}$ 
Si $f_{|D\cap]a,+\infty[}$ admet une limite en $a$ qui vaut $\ell$

- $f\underset{ a^{+} }{ \to }\ell$ signifie $|x-a|\leqslant \eta$
$\forall\varepsilon> 0,\exists \eta>0,\forall x \in D,\underset{ \text{à droite de }a }{ a<x\leqslant a+\eta } \implies |f(x)-\ell|\leqslant \varepsilon$

<small>kinda the same for limite à gauche but not the same, you get the point</small>

⚠ Si $f \underset{ a^{+} }{ \to } \ell$ et $f \underset{ a^{-} }{ \to } \ell$ et si $f$ n'est pas définie en $a$ alors $f\underset{ a }{  \to } \ell$

⚠ Si $f \underset{ a^{+} }{ \to } \ell$ et $f \underset{ a^{-} }{ \to } \ell$ et si $f(a)$ existe, on a alors $[f \underset{ a }{ \to } \ell \iff \ell=f(a)]$

En revanche,
Si $f\underset{ a }{ \to } \ell$ et $a$ n'est pas une extrémité alors $f\underset{ a^{+} }{ \to  }\ell$ et $f \underset{ a^{-} }{ \to } \ell$

<span style="color:turquoise">Exemple </span> 
$\begin{array}{rcl}\mathbb{R}&\to& \mathbb{R} \\ x &\mapsto &\lfloor x \rfloor\end{array}$ admet $\begin{cases}\text{une limite gauche et une limite droite en tout point de } \mathbb{R} \\ \text{une limite uniquement en tout point de }\mathbb{R} \setminus \mathbb{Z}\end{cases}$

```functionplot
---
title: 
xLabel: 
yLabel: 
bounds: [0,5,-0.1,5]
disableZoom: false
grid: true
---
f(x)=floor(x)
```
si $n\in \mathbb{Z},$
$\begin{cases}\lim\limits_{ x \to n^{+} }\lfloor x \rfloor=n\text{ }\text{ }(=\lfloor n \rfloor) \\ \lim\limits_{ x \to n^{-} }\lfloor x \rfloor=n-1\text{ }\text{ }(\neq\lfloor n \rfloor) \end{cases}$

## 5 - Fonctions monotones

$\boxed{Théorème}$ <u><small>lim. monotone</small></u>
>Soit $\begin{array}{rcl}f:\text{ }\text{ }]a,b[&\to& \mathbb{R} \end{array}$  avec $(a,b)\in \bar{\mathbb{R}}^{2}$ et $a<b$
>Si $f$ est monotone sur $]a,b[,$ alors $\lim\limits_{   a^{+} }f$ et $\lim\limits_{   b^{-} }f$ existent

Précisément : 
- Si $f$ est <u>croissante</u> sur $]a,b[$,
	$\begin{cases}\lim\limits_{ b^{-}  }f=\underset{ ]a,b[ }{ \mathrm{sup} }\text{ }f \\ \lim\limits_{ a^{+}  }f=\underset{ ]a,b[ }{ \mathrm{inf} }\text{ }f\end{cases}$

- Si $f$ est <u>décroissante</u> sur $]a,b[$,
	$\begin{cases}\lim\limits_{ b^{-}  }f=\underset{ ]a,b[ }{ \mathrm{inf} }\text{ }f \\ \lim\limits_{ a^{+}  }f=\underset{ ]a,b[ }{ \mathrm{sup} }\text{ }f\end{cases}$

<span style="color:violet">Remarque </span> 
C'est un théorème <u><b>d'existence</b></u> de limites gauche et droite


<u>Corollaire</u>
Si $f$ est monotone sur un intervalle $I$,
alors en tout point à l'intérieur de $I$, $f$ admet une $\lim$ gauche en $a$ (et droite)
et <u>de plus</u> :
- Si $f$ croissante
	$\lim\limits_{ a^{-} }f\leqslant f(a)\leqslant \lim\limits_{ a^{+} }f$

- Si $f$ décroissante
	$\lim\limits_{ a^{+} }f\leqslant f(a)\leqslant \lim\limits_{ a^{-} }f$

<u><span style="color:gold"> Preuve </span></u> 
- Si $f$ croissante sur $]a,b[$ étudions la limite en $b^{-}$
	$*$ Si $f$ est majorée sur $]a,b[$
		Notons $\ell=\underset{ ]a,b[ }{ \mathrm{sup} }f\in \mathbb{R}$ 
		Montrons $\lim\limits_{ x \to b^{-} }f(x)=\ell$
		Soit $\varepsilon> 0$
		$\forall x \in\text{ }]a,b[$, $f(x)\leqslant \underset{ ]a,b[ }{ \mathrm{sup} }f=\ell$
		Or $\ell-\varepsilon<\ell$ donc $\ell-\varepsilon$ n'est pas un majorant
		$\exists x_{0}\in]a,b[,f(x_{0})>\ell-\varepsilon$
		Or $f$ croissante donc 
		$\forall x \in[x_{0},b[,f(x)\geqslant f(x_{0})>\ell-\varepsilon$
		donc 
		$\forall x \in[x_{0},b[,\ell-\varepsilon\leqslant f(x)\leqslant \ell$
		donc $\boxed{\lim\limits_{ b^{-} }f=\ell}=\underset{ ]a,b[ }{ \mathrm{sup} }f$
	
	$*$ Si $f$ n'est pas majorée sur $]a,b[$
		alors $\underset{ ]a,b[ }{ \mathrm{sup} }f=+\infty$
		On veut montrer $\lim\limits_{ b^{-}  }f=+\infty$
		Soit $A\in \mathbb{R}$ 
		Comme $f$ n'est <u>pas majorée</u>, alors
		$\exists x_{0}\in]a,b[,f(x_{0})\geqslant A$
		Par croissance, $\boxed{\forall x \in[x_{0},b[,f(x)\geqslant f(x_{0})}$
		donc $\lim\limits_{ b^{-} }f=+\infty$

# II - Continuité

## 1 - Définitions
<u>Déf</u>$\to$  
 >ponctuelle :
 >Soit $f:D\to \mathbb{R}$ et $a\in D$
 >$f$ est <u>continue</u> et $a$ si $\lim\limits_{ x \to a }f(x)=f(a)$
 >globale :
 >$f$ est <u>continue</u> $D$ si pour tout $a\in D,f$ est continue en $a$
 
 $f$ est continue sur un intervalle $I$
 $\iff$
 $\boxed{\begin{align}\forall x \in I,\forall\varepsilon> 0,\exists \eta >0,\forall y\in I, \\ |x-y|\leqslant \eta \implies |f(x)-f(y)|\leqslant\varepsilon\end{align}}$

<span style="color:violet">Remarque </span> 
Soit $f:D\to \mathbb{R}$ avec $a\in D$
$f$ est continue en $a$ $\iff$ $\lim\limits_{ x \to a }f(x)=f(a)$
$\iff\left[\begin{align} & \forall(x_{n})_{n\in \mathbb{N}}\in D^{\mathbb{N}}, \\  & ((x_{n})_{n}\text{ converge vers }a\implies(f(x_{n}))_{n})\text{ converge vers }f(a)\end{align}\right]$ 

<span style="color:turquoise">Exemple </span> 
- $\mathbb{1}_{\mathbb{Q}}$ est discontinue en tout point de $\mathbb{R}$
- $x\mapsto \lfloor x \rfloor$ est discontinue en tout point de $\mathbb{Z}$

---

<u>Déf</u>$\to$ (Continuité à gauche/droite de $a$) 
 >Soit $f:D\to \mathbb{R}$ avec $a\in D$
 >$f$ est <u>continue à droite/gauche en </u>$\underline{a}$ si $\boxed{\lim\limits_{ x \to \begin{align}a^{+} \\ a^{-}\end{align} }f(x)=f(a)}$ 
 
 $\boxed{Prop}$
 >Soit $f:I\to \mathbb{R}$ où $I$ intervalle et soit $a\in I$ avec $a$ un <u>point intérieur</u> de $I$
> $f$ continue en $a$ $\iff f$ continue à gauche et à droite en $a$

<u><span style="color:gold"> Preuve </span></u> 
Si $\lim\limits_{ a^{+}  }f$ et $\lim\limits_{ a^{-}  }f$ sont égales et valent $f(a)$,
alors $\underline{\text{la limite de }f\text{ en }a\text{ existe et vaut }f(a)}$

<span style="color:turquoise">Exemple </span> 
 $\begin{array}{rcl}\mathbb{1}_{\{ 0 \}}:\mathbb{R}&\to& \mathbb{R} \\ x &\mapsto &\begin{cases}1\text{ si }x=0 \\ 0\text{ si }x\neq0\end{cases}\end{array}$
$\mathbb{1}_{\{ 0 \}}$ n'est pas continue en $0$
$\lim\limits_{ 0^{-} }\mathbb{1}_{\{ 0 \}}=\lim\limits_{ 0^{+} }\mathbb{1}_{\{ 0 \}}=0\neq{1}=\mathbb{1}_{\{ 0 \}}(0)$ 

## 2. Opérations dans $\mathscr C(I,\mathbb{R})$

$\boxed{Prop}$
>$(\mathscr C (I,\mathbb{R}),+,\times)$ est un anneau commutatif et stable par combinaison linéaire
>En détail, si $f,g\in \mathscr C(I,\mathbb{R})$ et $\lambda,\mu \in \mathbb{R}$ et $a\in I$
>$\lambda f+\mu g\in \mathscr C(I,\mathbb{R})$  et $fg\in \mathscr C(I,\mathbb{R})$

<u><span style="color:gold"> Preuve </span></u> 
Caractérisation séquentielle

<span style="color:turquoise">Exemple </span> 
Toute fonction polynomiale est continue sur $\mathbb{R}$ car $\mathrm{id}_{\mathbb{R}}$ est continue sur $\mathbb{R}$

$\boxed{Prop}$
>Soit $f\in \mathscr C(I,\mathbb{R})$
>et $\boxed{\text{si }f\text{ ne s'annule pas sur }I}$
>alors $\frac{1}{f}\in \mathscr C(I,\mathbb{R})$

$\boxed{Prop}$
>Si $f\in \mathscr C(I,\mathbb{R})$ et $g\in\mathscr C(I,\mathbb{R})$ 
>et si $\boxed{f(I)\subset I}$, alors $g\circ f\in \mathscr C(I,\mathbb{R})$

<span style="color:turquoise">Exemple </span> 
$x \mapsto \dfrac{\exp(\sqrt[]{ x^{2}+1 })}{(\sin(2x))^{2}+2}$ est continue sur $\mathbb{R}$
car $\sqrt[]{ \text{ }\text{ }\text{ } }$, $\exp,\sin$ sont continues sur $\mathbb{R}_{+},\mathbb{R},\mathbb{R}$ et $x^{2}+1$ continu sur $\mathbb{R}$

## 3. Prolongement par continuité

Soit $I$ un intervalle d'intérieur non vide avec $a\in I$
Soit $f$ définie sur $I\setminus \{ a \}$

$f$ est <u>prolongeable par continuité</u> en $a$ si $\boxed{\exists \ell \in \mathbb{R}\text{ (finie) telle que }\lim\limits_{ x \to a }f(x)=\ell}$
 $\begin{array}{rcl}\text{On pose }\tilde{f}:I&\to& \mathbb{R} \\ x &\mapsto &\begin{cases}f(x)\text{ si }x\neq a \\ \ell\text{ si }x=a\end{cases}\end{array}$
Ainsi $\tilde{f}$ est continue en $a$ $\boxed{\lim\limits_{ x \to a }\tilde{f}(x)=\ell=\tilde{f}(a)}$

<span style="color:turquoise">Exemple </span> 
Soit $\alpha \in \mathbb{R}$
$f_\alpha:\overset{ \large{\mathbb{R}\to\mathbb{R}} }{ x \mapsto x^{\alpha} }=\exp(\alpha \ln x)$
***à compléter***

## 4. TVI
$\boxed{Théorème}$
>Soit $f$ continue sur $[a,b]$ à valeurs dans $\mathbb{R}$
>telle que $\boxed{f(a)\times f(b)\leqslant 0}$
>Alors $\exists c\in[a,b],f(c)=0$

<u><span style="color:gold"> Preuve </span></u> 
 Algorithme par dichotomie 
 On construit une suite de segments emboîtés $([a,b])_{n\in \mathbb{N}}$
 tels que $(b_{n}-a_{n})_{n}$ converge vers $0$
 et $f(a_{n})f(b_{n})\leqslant 0$
 
<u>Init</u>
$\boxed{\begin{align}a_{0}=a \\ b_{0}=b\end{align}}$ $f(a_{0})f(b_{0})\leqslant 0$ par hypothèse

<u>Hérédité</u>
Soit $n\in \mathbb{N}$ tel que $a_{n},b_{n}$ sont déjà construits et $f(a_{n})f(b_{n})\leqslant 0$
On pose $c_{n}=\dfrac{a_{n}+b_{n}}{2}$
Si $f(c_{n})f(a_{n})\leqslant 0$, on pose $\begin{cases}a_{n+1}=a_{n} \\ b_{n+1}=c_{n}\end{cases}$
Sinon, on pose $\begin{cases}a_{n+1}=c_{n} \\ b_{n+1}=b_{n}\end{cases}$ 

$\begin{rcases}\text{Dans ce }2^{e}&\text{cas} :f(c_{n})\times f(a_{n})>0\\&Or,f(a_{n})\times f(b_{n})\leqslant 0\end{rcases}$ donc $f(c_{n})f(b_{n})\leqslant 0$
***à compléter***

## 5. Théorème des bornes atteintes (compacité)

Dans $\mathbb{R}$, les <u>segments</u> sont les intervalles <u>fermés et bornés</u> :
$[a,b],$ avec $\begin{cases}a,b\in \mathbb{R} \\ a<b\end{cases}$

$\boxed{Théorème}$
>Toute fonction continue sur un segment est bornée et atteint ses bornes

<u>Corollaire 1</u>
>L'image d'un segment pour une fonction continue est un segment

<u>Corollaire 2</u>
>Soit $f\in \mathscr C([a,b],\mathbb{R})$  avec $a<b\in \mathbb{R}$
>$\exists c,d\in[a,b],\forall x\in[a,b],f(c)\leqslant f(x)\leqslant f(d)$

c'est-à-dire :
$\begin{align}f([a,b]) & =[f(c),f(d)] \\  & =[\underset{ [a,b] }{ \min  }f,\underset{ [a,b] }{ \max } f]\end{align}$ 

<u><span style="color:gold"> Preuve </span></u> 
Soit $f$ continue sur le <u><b>segment</b></u> $[a,b]$

Notons $M=\underset{ [a,b] }{ \sup } f$
Alors $M\in \mathbb{R}\cup \{ +\infty \}$

$M=\sup \{ f(x)\text{ }|\text{ }x\in[a,b] \}$
Par carac. séq. de la borne $\sup$, il existe $(y_{n})_{n\in \mathbb{N}}$ une suite à valeurs dans $f([a,b])$ qui a pour limite $M$

$M=\lim\limits_{ n \to +\infty }y_{n}$
avec $y_{n}\in f([a,b])$

Alors $\exists x_{n}\in[a,b],y_{n}=f(x_{n})$
on a $M=\lim\limits_{ n \to +\infty }f(x_{n})$
Or la suite $(x_{n})_{n\in \mathbb{N}}$ est <u>bornée</u> (car dans $[a,b]$)
Par Bolzano-Weierstrass, il existe une sous-suite convergente notée $(x_{\varphi(n)})_{n\in \mathbb{N}}$
Notons $d$ sa limite finie $\boxed{d=\lim\limits_{ n \to +\infty }x_{\varphi(n)}}$

Or $\forall n\in \mathbb{N},a\leqslant x_{\varphi(n)}\leqslant b$
Par passage à la limite, $a\leqslant d\leqslant b$
donc $\boxed{d\in[a,b]}$

<u>Enfin</u>
$(f(x_{n}))_{n\in \mathbb{N}}$ a pour limite $M$
donc la suite extraite $(f(x_{\varphi(n)}))_{n}$ aussi.
$M=\lim\limits_{ n \to +\infty }f(x_{\varphi(n)})$

## 6. Lien entre monotonie et injectivité

$\boxed{Propriété}$
>Soit $f:I\to \mathbb{R}$ continue sur <u>l'intervalle </u>$I$
>On a équivalence entre :
>(i) $f$ injective sur $I$
>$\iff$
>(ii) $f$ strictement monotone sur $I$

<u><span style="color:gold"> Preuve </span></u> 
- Si $f$ est strictement croissante sur $I$
  Soient $a,b\in I$ avec $a\neq b$. Alors si $a<b,f(a)<f(b)$ et si $a>b,f(a)>f(b)$
  donc $f(a)\neq f(b)$

- On suppose $f$ injective sur $I$
  Soient $a,b\in I$ avec $a<b$. Par injectivité, $f(a)\neq f(b)$. Supposons pour la suite que $f(a)<f(b)$.
  Montrons que $f$ est strictement croissante sur $I$.
  Soient $x,y\in I,x<y$. Posons $\varphi:\left[ 0,1 \right]\to \mathbb{R},t\mapsto f(ty+(1-t)b)-f(tx+(1-t)a)$.
  Ainsi $\varphi(0)=f(b)-f(a)>0$ et $\varphi(1)=f(y)-f(x)$
  $\varphi$ est continue sur $\left[ 0,1 \right]$.
  Par injectivité de $f$, $\varphi$ ne s'annule pas sur $\left[ 0,1 \right]$.
  Par théorème des valeurs intermédiaires, $\varphi$ est de signe constant sur $\left[ 0,1 \right]$ donc strictement positive donc $\varphi(1)>0$ donc $f(x)<f(y)$
  On a prouvé $\forall x,y\in I,(x<y\implies f(x)<f(y))$ donc $f$ est strictement croissante sur $I$

$\boxed{Théorème}$ (Bijection continue)
>Soit $f:I\to \mathbb{R}$ <u>continue</u> et <u>strict. monotone</u> sur $I$
>Alors $f$ est une bijection de $I$ dans $f(I)$
>---
>De plus $f(I)$ est un intervalle de même nature que $I$
>dont les extrémités sont obtenues avec les limites aux bornes de $I$
>---
>Enfin, la réciproque :
>$f^{-1}:f(I)\to I$ est strictement monotone et <u>continue</u>
>de même monotonie que $f$

## 7. Fonctions lipschitziennes 


<u>Déf</u>$\to$  
 >Soit $f:I\to \mathbb{R}$ où $I$ intervalle 
 >Soit $k\in \mathbb{R}^{+}$, On dit que $f$ est $k$-lipschitzienne sur $I$ si :
 >$\forall(x,y)\in I^{2},|f(x)-f(y)|\leqslant k\times |x-y|$
 
 <small>MAIS k C'EST UNE CONSTANTE PUTAIN</small>

 $\boxed{Propriété}$
>Si $f$ est lipschitzienne sur $I$,
>alors $f$ est continue sur $I$

<u><span style="color:gold"> Preuve </span></u> 
Supposons $\exists k\in \mathbb{R}^{+}$,
$\forall(x,y)\in I^{2},|f(x)-f(y)|\leqslant k|x-y|$

Soit $a\in I$ avec $y=a$
$\forall x\in I,|f(x)-f(a)|\leqslant k|x-a|$

Si $x\to a,|x-a|\to 0$
Par encadrement
$|f(x)-f(y)|\to 0$
donc $\boxed{\lim\limits_{ x \to a }f(x)=f(a)}$
donc $f$ continue en $a$

$\boxed{Proposition}$
>Les fonctions lipschitziennes sur $I$ sont stables par :
>	- addition
>	- combinaison linéaire
>	- composition

<span style="color:turquoise">Exemple </span> 
 $\mathrm{id}_{\mathbb{R}}$ est lipschitzienne sur $\mathbb{R}$
 ⚠$x\mapsto x^{2}$ n'est pas lipschitzienne sur $\mathbb{R}$

<span style="color:violet">Remarque </span> 
Soit $a\in \mathbb{R}^{+}_{*}$ fixé,
$\sqrt[]{ \text{ }\text{ } }$ est lipschitzienne sur $[a,+\infty[$ 

<u>En effet</u>,
Soient $(x,y)\in[a,+\infty[^{2}$
$\sqrt[]{ x }-\sqrt[]{ y }= \frac{x-y}{\sqrt[]{ x }+\sqrt[]{ y }}$
$|\sqrt[]{ x }-\sqrt[]{ y }|=|x-y|\times \frac{1}{\sqrt[]{ x }+\sqrt[]{ y }}\leqslant|x-y|\times \underset{ constante }{ \boxed{\dfrac{1}{2\sqrt[]{ a }}} }$

Donc $\sqrt[]{ \text{ }\text{ } }$ est $\frac{1}{2\sqrt[]{ a }}$-lipschitzienne

<u>Déf</u>$\to$  
 >On dit que $f$ est <u>contractante</u> sur $I$ si elle est $k$-lipschitzienne sur $I$ avec $k< 1$
 
 