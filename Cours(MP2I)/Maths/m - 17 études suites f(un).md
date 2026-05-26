e# Etude pratique des suites récurrentes $u_{n+1}=f(u_{n})$

Soit $f:\mathcal D_{f}\to \mathbb{R}$ où $\mathcal D_{f}\subset \mathbb{R}$
on s'intéresse à la suite éventuellement définie par 
$\begin{cases}u_{0}\in \mathcal D_{f} \\ u_{n+1}=f(u_{n})\end{cases}$

## 1. Représentation graphique

![[étude suite 1.png]]
convergence (sur l'axe des $x$) ?


## 2. Intervalle stable
<u>Déf</u>$\to$  
 >L'intervalle $I \subset \mathcal D_{f}$ est stable par $f$ si $\boxed{\forall x\in I,f(x)\in I}$ 
 >c'est à dire $\boxed{f(I)\subset I}$

<u>Proposition</u>
 $\boxed{\begin{align}\text{Si }&I\text{ est stable par }f\text{ et si }u_{0}\in I \\& \text{alors }\forall n\in \mathbb{N},u_{n}\in I\end{align}}$

<u><span style="color:gold"> Preuve </span></u> 
Réc. sur $n$, $H_{n}:(u_{n}\in I)$
- $H_{0}\text{ }\checkmark$
- Soit $n \geqslant 0$ tel que $u_{n}\in I$ 
	Alors $f(u_{n})\in I$ donc $u_{n+1}\in I$

<span style="color:turquoise">Exemple </span> 
$\begin{cases}u_{0}=5 \\ u_{n+1 }=\sqrt[]{ u_{n}-1 }\end{cases}$ 

⚠ $f :{ x\mapsto \sqrt[]{ x-1 } }$
	$\mathcal D_{f}=[1,+\infty[$ et $f(\mathcal D_{f})=\mathbb{R}^{+}$ $f(\mathcal D_{f})\not\subset D_{f}$
	Pas stable...
<span style="color:violet">Remarque </span> 
Dans l'idéal, on recherche un intervalle stable le + précis possible

## 3. Points fixes

<u>Rappel</u>
>$a\in \mathcal D_{f}$ est un point fixe de $f$ si $f(a)=a$

<u>Proposition</u> :
$\boxed{\begin{align}\text{Si }I&\text{ est un intervalle stable par } f \text{ et }I \text{ est fermé} \\ &\text{Si de plus }f:I\to I\text{ est continue sur }I \\ &\text{et si }(u_{n})_{n}\text{ converge vers }\ell \\ &\text{alors }\ell\text{ est un point fixe de }f \\ &\text{donc }\ell=f(\ell)\end{align}}$

<u><span style="color:gold"> Preuve </span></u> 
$\begin{cases}u_{0}\in I \\ u_{n+1}=f(u_{n})\end{cases}$ 
et $I$ <u>stable par </u>$f$, donc $\boxed{\forall n\in \mathbb{N},u_{n}\in I}$
on a par hypothèse $u_{n}\underset{ n\to+\infty }{ \longrightarrow }\ell \in \mathbb{R}$
comme $\forall n,u_{n}\in I$ et $I$ est $\boxed{\text{fermé}}$ alors $\ell \in I$
(passage à la limite <u>large</u> dans une inégalité)
Or $f$ est continue sur $I$ donc $f$ <b>continue</b> en $\ell$
Ainsi $\forall n\in \mathbb{N},u_{n+1}=f(u_{n})$
<span style="color:cyan">Limite </span>
$u_{n+1}\underset{ n\to+\infty }{ \longrightarrow }\ell$ et $f(u_{n})\underset{ n\to+\infty }{ \longrightarrow }f(\ell)$ <b><u>par continuité de f en l !!!!</u></b>
Par unicité de la limite $\ell=f(\ell)$

***compléter

## 3. Sous-espace vectoriel
<u>Déf</u>$\to$  
 >Soit $E$ un $\mathbb{K}$-espace vectoriel
 >Soit $F$ une partie de $E$ <u>non vide</u>
 >$F$ est sous-espace vectoriel(sev) de $E$ si :
 >- $\forall(u,v)\in F^{2},u+v\in F$
 >- $\forall u\in F,\forall\lambda \in \mathbb{K},\lambda u\in F$
 >(Stabilité des lois $+$ et $\times$ dans $F$)
 
<u>Propriété</u>
$\boxed{\begin{align}\text{Soit }E\text{ un }\mathbb{K}\text{-ev}, F\text{ est un sev de }E\text{ ssi : } \\ \begin{cases}F\subset E \\ 0_{E}\in F \\ \forall(u,v)\in F^{2},\forall(\lambda,\mu)\in \mathbb{K}^{2},\lambda u+\mu v\in F\end{cases}\end{align}}$

<span style="color:violet">Remarque </span> 
Si $F\neq\varnothing$ et $\forall u\in F,\forall\lambda \in \mathbb{K},\lambda u\in F$
Notons $u\in F,$ donc $0\in \mathbb{K}$ donne $0u\in F$, donc $\boxed{0_{E}\in F}$

<span style="color:turquoise">Exemple </span> 
Si $E$ est un $\mathbb{K}$-ev, alors $\begin{cases}E\text{ est un sev de }E \\ \{ 0_{E} \}\text{ est un sev de }E\end{cases}$
