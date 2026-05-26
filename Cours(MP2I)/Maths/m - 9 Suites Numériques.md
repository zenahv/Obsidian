---
tags:
  - Math
---
## I - Généralités sur les suites réelles
1) Définition et opérations
Rappel:
> Une suite réelle est une application de $\mathbb{N}$ dans $\mathbb{R}$
> $u:\mathbb{N}\to \mathbb{R},u:n\mapsto u_{n}$
> L'ensemble des suites réelles est $\mathcal F(\mathbb{N},\mathbb{R})=\mathbb{R}^{\mathbb{N}}$

Notations: Soit $u\in \mathbb{R}^{\mathbb{N}}$
On écrit plutôt $u=(u_{n})_{n\in\mathbb{N}}$ ou encore $(u_{n})$
Fixons $n\in \mathbb{N}$, alors le réel $u_{n}$ est le terme général de la suite de la suite $u$ ou terme d'indice $n$

On peut définir une suite à partir d'un rang $n_{0}$ fixé $u=(u_{n})_{n\geqslant n_{0}}$

Définition:
> Soit $P$ une propriété sur le terme général $u_{n}$ d'une suite.
> On dira que $u$ vérifie $P$ à partir d'un certain rang si:
> $\exists n_{0}\in \mathbb{N},\forall n\geqslant n_{0},P(u_{n})$

Exemple: La suite $(n-10^{142})$ est positive à partir d'un certain rang
En effet, $\forall n>10^{142},n-10^{142}>0$

Définition:
> Soient $u,v\in \mathbb{R}^{\mathbb{N}}$ et $\lambda \in \mathbb{R}$.
> la somme $u+v$ est définie par $\forall n\in \mathbb{N},(u+v)_{n}=u_{n}+v_{n}$
> la multiplication par $\lambda$ par $\forall n\in \mathbb{N},(\lambda u)_{n}=\lambda \times u_{n}$
> le produit $uv$ ou ($u\times v$) défini par $\forall n\in \mathbb{N},(uv)_{n}=u_{n}\times v_{n}$

Définition:
> Soit $u$ une suite réelle.
> $u$ est constante si $\forall n\in \mathbb{N},u_{n}=u_{0}\land u_{n+1}=u_{n}$
> $u$ est stationnaire si $\exists n_{0}\in \mathbb{N},\forall n\geqslant n_{0},u_{n+1}=u_{n}$

2) Suites usuelles
a - Suites arithmétiques
$\begin{cases}u_{0}\in \mathbb{R} \\ \forall n\in \mathbb{N},u_{n+1}=u_{n}+r\end{cases}$

Propriété: $\forall n\in \mathbb{N},u_{n}=u_{0}+nr$
$\forall(n,p)\in \mathbb{N}^{2},n\geqslant p\implies u_{n}=u_{p}+(n-p)r$

Preuve 1: Récurrence
Preuve 2: $\forall n\in \mathbb{N},u_{n+1}-u_{n}=r$
Fixons $p,n\in \mathbb{N}$ avec $p\leqslant n$
Ainsi, $\forall k\in \mathbb{N},u_{k+1}-u_{k}=r$
On somme sur $k\in \textlbrackdbl p,n-1 \textrbrackdbl$
$(n-p)r=\sum\limits_{k=p}^{n-1}r=\sum\limits_{k=p}^{n-1}(u_{k+1}-u_{k})=u_{n}-u_{p}$

b - Suites géométriques
Soit $q\in \mathbb{C}$ et $u_{0}\in \mathbb{C}$
$\forall n\in \mathbb{N},u_{n+1}=qu_{n}$
Alors $\forall n\in\mathbb{N},u_{n}=q^{n}u_{0}$ et $\forall n\geqslant p,u_{n}=q^{n-p}u_{p}$

c - Suites arithmético-géométriques
$\begin{cases}u_{0}\in \mathbb{C} \\ \forall n\in \mathbb{N},u_{n+1}=qu_{n}+r\end{cases}$ avec $(q,r)\in \mathbb{C}^{2}$

Résolution:
- Si $q=1$, on a une suite arithmétique
- Si $q\neq 1$, on cherche une solution constante évidente
  $l=ql+r\iff l=\frac{r}{1-q}$
  $\forall n\in \mathbb{N},u_{n+1}=qu_{n}+r$
  or $l=ql+r$
  Donc par substitution
  $\forall n\in \mathbb{N},(u_{n+1}-l)=q(u_{n}-l)$
  Donc la suite $(u-l)$ est géométrique de raison $q$
  Donc, $\forall n\in \mathbb{N},u_{n}-l=q^{n}(u_{0}-l)$

3) Suites réelles et ordre
Rappel: Soit $u\in \mathbb{R}^{\mathbb{N}}$.
- $u$ est majorée si $\exists M\in \mathbb{R},\forall n\in \mathbb{N},u_{n}\leqslant M$
- $u$ est minorée si $\exists m\in \mathbb{R},\forall n\in \mathbb{N},m\leqslant u_{n}$
- $u$ est bornée si elle est majorée et minorée

Propriété: $u$ est bornée si $\exists k\in \mathbb{R},\forall n\in \mathbb{N},|u_{n}|\leqslant k$, donc $|u|$ est majorée

Preuve:
- Si $\exists k\in \mathbb{R},\forall n\in \mathbb{N},|u_{n}|\leqslant k$
  alors $\forall n\in \mathbb{N},-k\leqslant u_{n}\leqslant k$
  Donc la suite est bornée
- Si $\exists (m,M)\in\mathbb{R}^{2}$ tels que $\forall n\in \mathbb{N},m\leqslant u_{n}\leqslant M$
  On pose $k=\max(|m|,|M|)$
  Ainsi, $M\leqslant|M|\leqslant k$
  $-m\leqslant|m|\leqslant k$
  Donc $-k\leqslant m$
  Donc par transitivité, $\forall n\in\mathbb{N},-k\leqslant m\leqslant u_{n}\leqslant M\leqslant k$
  Donc $|u_{n}|\leqslant k$

Exemple:
- $((-1)^{n})_{n\in \mathbb{N}}$ est bornée
- $\left( \frac{(-1)^{n}\cos n}{3-\sin (2n)} \right)_{n\in \mathbb{N}}$ est bornée
  En effet, $|(-1)^{n}\cos n|=|\cos n|\leqslant 1$
  $|3-\sin(2n)|\geqslant 2$
  Donc $\frac{1}{|3-\sin(2n)|}\leqslant \frac{1}{2}$
  Donc $|\frac{(-1)^{n}\cos n}{3-\sin(2n)}|\leqslant \frac{|(-1)^{n}\cos n|}{|3-\sin(2n)|}\leqslant 1\times \frac{1}{2}=\frac{1}{2}$
- $((-1)^{n}\times n)_{n\in \mathbb{N}}$ n'est ni majorée ni minorée
- $((-3)^{n})_{n\in \mathbb{N}}$ n'est ni majorée ni minorée

Définition: Soit $u\in \mathbb{R}^{\mathbb{N}}$
$u$ est croissante si $\forall n\in \mathbb{N},u_{n+1}\geqslant u_{n}$
$u$ est décroissante si $\forall n\in \mathbb{N},u_{n+1}\leqslant u_{n}$
$u$ est monotone si $u$ est croissante ou décroissante

Ces définitions s'étendent également à partir d'un certain rang

Propriété: Soit $C=\{ u\in \mathbb{R}^{\mathbb{N}}|u\text{ est bornée} \}$
Alors $B$ est stable par addition, produit et multiplication par un réel
c'est à dire, $\forall(u,v)\in B^{2},\forall\lambda \in \mathbb{R},u+v\in B,u\times v\in B,\lambda u\in B$
Preuve: Soient $u,v\in B$ et $\lambda \in \mathbb{R}$
$\exists K_{1},K_{2}\in \mathbb{R}^{+},\forall n\in \mathbb{N},|u_{n}|\leqslant K_{1}\text{ et }|v_{n}|\leqslant K_{2}$
- Alors, $|u_{n}+v_{n}|\leqslant|u_{n}|+|v_{n}|\leqslant K_{1}+K_{2}$ donc $u+v\in B$
- De plus, $|u_{n}\times v_{n}|=|u_{n}|\times |v_{n}|\leqslant K_{1}\times K_{2}$ donc $u\times v\in B$
- Enfin, $|\lambda u_{n}|=|\lambda||u_{n}|\leqslant|\lambda|K_{1}$

## II - Limite d'une suite
1) Convergence
Définition:
> Soit $u\in \mathbb{R}^{\mathbb{N}}$ et $l\in \mathbb{R}$
> On dit que la suite $u$ converge vers $l$ et on note $u\to l$
> si: $\forall\varepsilon>0,\exists n_{0}\in \mathbb{N},\forall n\geqslant n_{0},|u_{n}-l|\leqslant\varepsilon$

ceci est équivalent à $\forall \varepsilon>0,\exists n_{0},\forall n\geqslant n_{0},||u_{n}-l|-0|\leqslant\varepsilon$
c'est à dire $|u_{n}-l|\underset{ n\to+\infty }{ \longrightarrow }0$

Propriété:
Soit $u\in \mathbb{R}^{\mathbb{N}}$ et $l\in \mathbb{R}$
$u\to l\iff |u-l|\to 0$

Exemple: Soit $x \in\left] -1,1 \right[$ et $\forall n\in \mathbb{N},S_{n}=\sum\limits_{k=0}^{n}x^{k}=\frac{1-x^{n+1}}{1-x}$
Ainsi $\forall n\in \mathbb{N},|S_{n}-\frac{1}{1-x}|=|\frac{-x^{n+1}}{1-x}|=\frac{|x|^{n+1}}{1-x}$
Ainsi $S_{n}\underset{ n\to + \infty }{ \longrightarrow } \frac{1}{1-x}$
on écrira $\forall x\in \left] -1,1 \right[,\sum\limits_{k=0}^{+\infty}x^{k}=\frac{1}{1-x}$

Exemple: En utilisant La définition, montrer que $q^{n}\underset{ n\to+\infty }{ \longrightarrow }0$ lorsque $|q|<1$
Soit $\varepsilon>0$. Cherchons un rang $n$ tel que $|q^{n}-0|\leqslant\varepsilon$
c'est à dire $|q|^{n}\leqslant\varepsilon$
Pour $q\neq 0,n\ln |q|\leqslant\ln\varepsilon$ donc $n\geqslant \frac{\ln\varepsilon}{\ln |q|}$
Posons $n_{0}=\max\left(\left\lceil  \frac{\ln\varepsilon}{\ln |q|}  \right\rceil,0\right)$
Ainsi $\forall n\geqslant n_{0}$, on a $|q|^{n}\leqslant\varepsilon$ donc $q^{n}\underset{ n\to +\infty }{ \longrightarrow }0$

Si $q=0$: $(0^{n})_{n\in \mathbb{N}}=(1,0,0,\dots)$ est stationnaire égale à $0$ à partir du rang $1$, et donc converge vers $0$.

Exemple: Si $u\to 0$, alors $u^{2}\to 0$
Soit $\varepsilon>0$. On cherche un rang $n_{0}$ tel que $u_{n_{0}}^{2}\leqslant\varepsilon$
c'est à dire $|u_{n_{0}}|\leqslant\sqrt{ \varepsilon }$
Avec $\varepsilon'=\sqrt{ \varepsilon }>0$, on utilise l'hypothèse $u\to 0$:
$\exists n_{1},\forall n\geqslant n_{1},|u_{n}|\leqslant\varepsilon'$ donc $\exists n_{1},\forall n\geqslant n_{1},u_{n}^{2}\leqslant(\varepsilon')^{2}=\varepsilon$

Exemple: Si $u\to 0$ et $u\in(\mathbb{R}^{+})^{\mathbb{N}}$ alors $\sqrt{ u }\to 0$
Soit $\varepsilon>0$, alors avec $\varepsilon>0,\exists n_{0},\forall n\geqslant n_{0},|u_{n}|\leqslant\varepsilon^{2}$
Or, $u_{n}\in \mathbb{R}^{+}$ donc $u_{n}\leqslant\varepsilon^{2}$ Donc $\sqrt{ u_{n} }\leqslant\varepsilon$
Donc $\sqrt{ u }\to 0$

Théorème:
Soit $u\in \mathbb{R}^{\mathbb{N}}$ telle que $u\to \ell_{1}$ et $u\to \ell_{2}$
avec $(\ell_{1},\ell_{2})\in \mathbb{R}^{2}$, Alors $\ell_{1}=\ell_{2}$
Notation: Si $u\to \ell$, cette valeur $\ell$ est unique. On l'appelle La Limite de la suite $u$ et on note $\ell=\lim u=\lim\limits_{ n \to +\infty }u_{n}$

Preuve: Supposons par l'absurde que $\ell_{1}\neq \ell_{2}$
$u\to \ell_{1}$ donc: $\forall\varepsilon>0,\exists n_{0},\forall n\geqslant n_{0},|u_{n}-\ell_{1}|\leqslant\varepsilon$ et $\exists n_{1},\forall n\geqslant n_{1},|u_{n}-\ell_{2}|\leqslant\varepsilon$
donc $\forall n\geqslant\max(n_{0},n_{1}),\begin{cases}|u_{n}-\ell_{1}|\leqslant\varepsilon \\ |u_{n}-\ell_{2}|\leqslant\varepsilon\end{cases}$
Prenons $\varepsilon=\frac{|\ell_{1}-\ell_{2}|}{3}>0$. Il existe $n_{0}$ et $n_{1}\in \mathbb{N}$ tels que $\forall n\geqslant n_{0},|u_{n}-\ell_{1}|\leqslant\varepsilon$ et $\forall n\geqslant n_{1},|u_{n}-\ell_{2}|\leqslant\varepsilon$
$\forall n\geqslant max(n_{0},n_{1}),3\varepsilon=|\ell_{1}-\ell_{2}|=|\ell_{1}-u_{n}+u_{n}-\ell_{2}|$
$\leqslant|\ell_{1}-u_{n}|+|u_{n}-\ell_{2}|\leqslant\varepsilon+\varepsilon=2\varepsilon$
Donc $3\leqslant 2$ FAUX, donc $\ell_{1}=\ell_{2}$

Définition:
> Soit $u\in \mathbb{R}^{\mathbb{N}}$
> Si $u$ n'est pas convergente, on dit que $u$ diverge.

Exemples:
- $(n^{2})_{n\in \mathbb{N}}$ diverge (minorée et non majorée)
- $((-2)^{n})_{n\in\mathbb{N}}$ diverge (ni minorée ni majorée)
- $((-1)^{n})_{n\in \mathbb{N}}$ diverge (bornée)

Proposition: Toute suite convergente est bornée

Preuve: Soit $u\in \mathbb{R}^{\mathbb{N}}$ et $\ell=\lim u$ avec $\ell \in \mathbb{R}$
Prenons $\varepsilon=1$. Alors $\exists n_{0},\forall n\geqslant n_{0},|u_{n}-\ell|\leqslant 1$
Donc $|u_{n}|=|u_{n}-\ell+\ell|\leqslant|u_{n}-\ell|+|\ell|\leqslant 1+|\ell|$
Avant $n_{0}$, on a un nombre fini de termes
Posons $K=\max(|u_{0}|,|u_{1}|,\dots,|u_{n_{0}-1}|,|\ell|+1)$
Ainsi, $\forall n\in \mathbb{N},|u_{n}|\leqslant K$
Donc $u$ est bornée

Lien entre $u\to \ell$ et $|u|\to |\ell|$
Propriété: Si $u\to \ell$ alors $|u|\to |\ell|$

Preuve: $||u_{n}|-|\ell||\leqslant|u_{n}-\ell|$
si $u\to \ell$ on a $\forall\varepsilon>0,\exists n_{0},\forall n\geqslant n_{0},|u_{n}-\ell|\leqslant\varepsilon$ donc $||u_{n}|-|\ell||\leqslant|u_{n}-\ell|\leqslant\varepsilon$ donc $||u_{n}|-|\ell||\leqslant\varepsilon$ et $|u|\to |\ell|$

Réciproque fausse: $|(-1)^{n}|=1$ donc $|(-1)^{n}|\to 1$ mais $(-1)^{n}$ diverge

2) Limite infinie
Définition: Soit $u\in \mathbb{R}^{\mathbb{N}}$
- On dit que $u\to +\infty$ si $\forall A\in \mathbb{R},\exists n_{0},\forall n\geqslant n_{0},u_{n}\geqslant A$
- On dit que $u\to -\infty$ si $\forall A\in \mathbb{R},\exists n_{0},\forall n\geqslant n_{0},u_{n}\leqslant A$

Remarque: $u\to +\infty \iff-u\to -\infty$
Remarque: si $u\to+\infty$ ou $u\to -\infty$ on dit que $u$ diverge et on note aussi $\lim\limits_{ n\to +\infty }u_{n}=+\infty$ ou $\lim\limits_{ n \to +\infty }u_{n}=-\infty$

Exemples: $((-1)^{n}\times n)_{n}$ n'a pas de limite, $((-2)^{n})_{n}$ n'a pas de limite

3) Limites et ordre
Lemme: Soit $u\in \mathbb{R}^{\mathbb{N}},\ell \in \mathbb{R}$ et $v\in \mathbb{R}^{\mathbb{N}}$ telle que $v\to 0$
Si à partir d'un certain rang, $|u_{n}-\ell|\leqslant v_{n}$, alors $u$ converge vers $\ell$

Preuve: Soit $\varepsilon>0$. $\exists n_{0},\forall n\geqslant n_{0},|u_{n}-\ell|\leqslant v_{n}$
Comme $v\to 0: \exists n_{1},\forall n\geqslant n_{1},|v_{n}|\to\varepsilon$
Donc $\forall n\geqslant \max(n_{0},n_{1}),|u_{n}-\ell|\leqslant v_{n}\leqslant|v_{n}|\leqslant\varepsilon$
Conclusion: on a prouvé $\forall\varepsilon>0,\exists n_{2},\forall n\geqslant n_{2},|u_{n}-\ell|\leqslant\varepsilon$ donc $u$ converge vers $\ell$

Propriété: Soit $u\in \mathbb{R}^{\mathbb{N}}$ qui converge vers $\ell \in \mathbb{R}$
Soit $a\in \mathbb{R}$
- Si $\ell>a$, alors à partir d'un certain rang, $u_{n}>a$
- Si $\ell<a$, alors à partir d'un certain rang, $u_{n}<a$
- Si $\ell\neq a$, alors à partir d'un certain rang, $u_{n}\neq a$

Preuve:
- Cas où $\ell>a$
  Prenons $\varepsilon=\frac{\ell-a}{2}>0$
  Par définition de la limite, $\exists n_{0},\forall n\geqslant n_{0},|u_{n}-\ell|<\varepsilon$
  Donc $u_{n}\geqslant\ell-\varepsilon$
  Or, $\ell-\varepsilon=\ell-\frac{\ell-a}{2}=\frac{\ell+a}{2}>\frac{a+a}{2}$
  Donc $a<\ell-\varepsilon\leqslant u_{n}$

Propriété: Soient $u,v\in \mathbb{R}^{\mathbb{N}}$ telles que $u\to \ell$ et $v\to \ell'$
Si à partir d'un certain rang, $u_{n}\leqslant v_{n}$, alors $\ell\leqslant \ell'$

Preuve: On sait que $\exists n_{0},\forall n\geqslant n_{0},u_{n}\leqslant v_{n}$
On suppose par l'absurde $\ell>\ell'$
Posons $\varepsilon=\frac{\ell-\ell'}{3}>0$
Par définition de la convergence, $\exists n_{1},\forall n\geqslant n_{1},|u_{n}-\ell|\leqslant \varepsilon$ et $\exists n_{2},\forall n\geqslant n_{2},|v_{n}-\ell'|\leqslant\varepsilon$
$\forall n\geqslant n_{2},v_{n}\leqslant\ell'+\varepsilon=\frac{\ell+2\ell'}{3}$
$\forall n\geqslant n_{1},u_{n}\geqslant\ell-\varepsilon=\frac{2\ell+\ell'}{3}$
Or $\ell>\ell'$ donc $\frac{\ell+2\ell'}{3}< \frac{2\ell+\ell'}{3}$
$\forall n\geqslant\max(n_{1},n_{2}),v_{n}\leqslant\ell'+\varepsilon<\ell-\varepsilon\leqslant u_{n}$
Absurde avec $u_{n}\leqslant v_{n}$ à partir d'un certain rang

4) Opérations sur les limites
a - Somme, produit
Lemme: Soient $u,v\in \mathbb{R}^{\mathbb{N}}$
- Si $u$ et $v$ convergent vers 0, alors $u+v$ converge vers 0
- Si $u$ converge vers 0 et si $v$ est bornée, alors $uv$ converge vers 0
- Si $u$ converge vers 0 et $\lambda \in \mathbb{R}$, alors $\lambda u$ converge vers 0

Preuves:
- Soit $\varepsilon>0$
  $u\to 0: \exists n_{0},\forall n\geqslant n_{0},|u_{n}|\leqslant \frac{\varepsilon}{2}$
  $v\to 0: \exists n_{1},\forall n\geqslant n_{1},|v_{n}|\leqslant \frac{\varepsilon}{2}$
  En posant $n_{2}=\max(n_{0},n_{1})$
  $\forall n\geqslant n_{2},|u_{n}+v_{n}|\leqslant|u_{n}|+|v_{n}|\leqslant \frac{\varepsilon}{2}+\frac{\varepsilon}{2}=\varepsilon$
  Donc $u+v$ converge vers 0
- Soit $\varepsilon>0$
  $v$ bornée donc $\exists K\in \mathbb{R},\forall n\in \mathbb{N},|v_{n}|\leqslant K$
  On peut supposer $K>0$
  On utilise $u\to 0$ avec $\frac{\varepsilon}{K}>0$:
  $\exists n_{0},\forall n\geqslant n_{0},|u_{n}|\leqslant \frac{\varepsilon}{K}$
  Donc $|u_{n}v_{n}|=|u_{n}||v_{n}|\leqslant \frac{\varepsilon}{K}\times K=\varepsilon$
- Si $\lambda=0$, c'est trivialement vrai.
  Sinon:
  Soit $\varepsilon>0$
  On utilise $\frac{\varepsilon}{|\lambda|}>0$
  $\exists n_{1},\forall n\geqslant n_{1},|u_{n}|\leqslant \frac{\varepsilon}{|\lambda|}$
  Ainsi, $|\lambda u_{n}|=|\lambda|\times |u_{n}|\leqslant|\lambda|\times \frac{\varepsilon}{|\lambda|}=\varepsilon$

>Théorème:
Si $u$ et $v$ convergent respectivement vers $\ell$ et $\ell'$ et $\lambda,\mu \in \mathbb{R}$
alors $\begin{cases}u+v \\ \lambda u \\ u\times v\end{cases}$ convergent et $\begin{cases}\lim(u+v)=\lim(u)+\lim(v) \\ \lim(\lambda u)=\lambda \lim(u) \\ \lim(uv)=\lim(u)\lim(v)\end{cases}$

Preuves:
- $(u+v)-(\ell+\ell')=(u-\ell)+(v-\ell')\to 0$
- $\upsilon-\lambda \ell=\lambda(u-\ell)\to 0$
- $uv-\ell \ell'=(u-\ell+\ell)v-\ell \ell'=(u-\ell)v+\ell(v-\ell')\to 0$

Conséquence: si $u$ converge et $v$ diverge alors $u+v$ diverge
Par l'absurde, si $u+v$ converge, alors $v=(u+v)-u$

Lemme: Si $u\to +\infty$:
- Si $v$ est minorée, alors $u+v\to +\infty$
- Si à partir d'un certain rang, $v$ est minorée par une réel strictement positif, alors $ux\to +\infty$

Preuves
- $\exists m,\forall n\in \mathbb{N},m\leqslant v_{n}$
  Soit $A\in \mathbb{R}$
  En utilisant $A'=A-m$ dans la définition de $u\to +\infty$:
  $\exists n_{0},\forall n\geqslant n_{0},u_{n}\geqslant A'=A-m$
  Donc $\forall n\geqslant n_{0},u_{n}+v_{n}\geqslant (A-m)+m=A$
- $\exists m\in \mathbb{R}^{+}_{*},\exists n_{0},\forall n\geqslant n_{0},v_{n}\geqslant m$
  Soit $B\in \mathbb{R}$ avec $\frac{B}{m}: \exists n_{1},\forall n\geqslant n_{1},u_{n}\geqslant \frac{B}{m}\geqslant 0$
  Donc $\forall n\geqslant \max(n_{0},n_{1}),u_{n}\times v_{n}\geqslant \frac{B}{m}\times m=B$
  Conclusion: $\forall B\in \mathbb{R}^{+},\exists n_{2},\forall n\geqslant n_{2},u_{n}v_{n}\geqslant B$

Bilan: Si $u\to \ell$ et $v\to \ell'$ avec $\ell,\ell'\in \bar{\mathbb{R}}$
- Si $\ell+\ell'$ est bien définie dans $\bar{\mathbb{R}}$, alors $u+v\to \ell+\ell'$
- Si $\ell \ell'$ est bien définie dans $\bar{\mathbb{R}}$, alors $uv\to \ell \ell'$

b - Inverse
Propriété: Si $u$ converge vers $\ell$ avec $\ell\neq 0$ alors $\frac{1}{u}$ est bien définie à partir d'un certain rang et $\frac{1}{u}$ converge vers $\frac{1}{\ell}$

Preuve: Par propriété précédente, comme $\ell\neq 0$, alors à partir d'un certain rang, $u_{n}\neq 0$ donc à partir d'un certain rang $\frac{1}{u_{n}}$ est bien définie
$\exists n_{1},\forall n\geqslant n_{1},u_{n}\neq 0$ alors $\forall n\geqslant n_{1},|u_{n}|>0$
Cherchons à minorer $|u_{n}|$ à partir d'un certain rang
$u\to \ell$ donc $|u|\to |\ell|>0$
$\exists n_{2},\forall n\geqslant n_{2},|u_{n}|\geqslant \frac{|\ell|}{2}>0$ car $|\ell|\geqslant \frac{|\ell|}{2}$ donc $\frac{1}{|u_{n}|}\leqslant \frac{2}{|\ell|}$
Soit $\varepsilon>0$
Pour $\varepsilon'=\varepsilon \times \frac{|\ell|^{2}}{2}>0$, on utilise $u\to \ell$
$\exists n_{3},\forall n\geqslant n_{3},|u_{n}-\ell|\leqslant\varepsilon'$
Pour $n_{4}=\max(n_{1},n_{2},n_{3})$
$\forall n\geqslant n_{4},\left| \frac{1}{u_{n}}-\frac{1}{\ell} \right|=\frac{|u_{n}-\ell|}{|u_{n}|-|\ell|}\leqslant\varepsilon'\times \frac{1}{|\ell|}\times \frac{2}{|\ell|}=\varepsilon$
Donc $\frac{1}{u}\to \frac{1}{\ell}$

Proposition: Si $u$ est telle que $|u|\to +\infty$ alors $\frac{1}{u}\to 0$

Preuve:
Soit $\varepsilon>0$
Avec $A=\frac{1}{\varepsilon}$ on utilise $|u|\to +\infty$
$\exists n_{1},\forall n\geqslant n_{1},|u_{n}|\geqslant \frac{1}{\varepsilon}$ donc $| \frac{1}{u_{n}}|\leqslant\varepsilon$

Proposition:
- Si $u\to 0$ et si à partir d'un certain rang $u_{n}>0$, alors $\frac{1}{u}\to +\infty$
- Si $u\to 0$ et si à partir d'un certain rang $u_{n}<0$ alors $\frac{1}{u}\to -\infty$
- Si $u\to 0$ et change de signe, alors $\frac{1}{u}$ n'a pas de limite

5) Théorèmes d'existence de limite
a - Par encadrement / par comparaison

Théorème: Soient $u,v,w$ telles que $\begin{cases}\text{à partir d'un certain rang, }u_{n}\leqslant v_{n}\leqslant w_{n} \\ u,v\text{ convergent vers la même limite }\ell \in \mathbb{R}\end{cases}$
alors $v$ converge et sa limite est $\ell$

Preuve: $\exists n_{0},\forall n\geqslant n_{0},u_{n}\leqslant v_{n}\leqslant w_{n}$
$0\leqslant v_{n}-u_{n}\leqslant w_{n}-u_{n}$
Or, $u\to \ell$ et $w\to 0$ donc $w-u\to 0$
Donc la suite $v-u$ converge vers 0
Alors $v=(v-u)+u$ est la somme des suites convergentes donc $v$ converge et $\lim(v)=\lim(v-u)+\lim(u)=0+\ell=\ell$

Exemple: étudier la suite $S_{n}=\sum\limits_{k=1}^{n} \frac{\sin(k)}{n^{2}+k}$
$\forall k\in \textlbrackdbl 1,n \textrbrackdbl,\left| \frac{\sin(k)}{n^{2}+k} \right|=\frac{|\sin(k)|}{n^{2}+k}\leqslant \frac{1}{n^{2}+1}$
$|S_{n}|\leqslant\sum\limits_{k=1}^{n}\left| \frac{\sin(k)}{n^{2}+k} \right|\leqslant\sum\limits_{k=1}^{n} \frac{1}{n^{2}+1}=\frac{n}{n^{2}+1}$
Or, $\lim\limits_{ n \to +\infty } \frac{n}{n^{2}+1}\to 0$ donc par encadrement $|S_{n}|\underset{ n\to +\infty }{ \longrightarrow } 0$ donc $\lim\limits_{ n \to +\infty }S_{n}=0$

Exemple:
Soit $I_{n}=\int_{0}^{1} t^{n}\cos(nt) \, dt$
Déterminer la nature de la suite $I_{n}$
$\forall t\in \left[ 0,1 \right],|t^{n}\cos(nt)|\leqslant t^{n}\times 1$
Ainsi, par croissance de l'intégrale, $\int_{0}^{1} |t^{n}\cos(nt)| \, dt\leqslant\int_{0}^{1} t^{n} \, dt=\left[ \frac{t^{n+1}}{n+1} \right]^{1}_{0}=\frac{1}{n+1}$
Or, $\left|\int_{0}^{1} t^{n}\cos(nt) \, dt\right|\leqslant\int_{0}^{1} |t^{n}\cos(nt)| \, dt\leqslant \frac{1}{n+1}$
$\forall n,|I_{n}|\leqslant \frac{1}{n+1}$ donc par encadrement, $(I_{n})_{n}$ converge vers $0$

Théorème:
Soit $f\in\mathcal C(I,\mathbb{K})$ et $a,b\in I$ avec $a\leqslant b$
Alors $\left| \int_{a}^{b} f \right|\leqslant\int_{a}^{b} |f|$

Théorème:
Si $\exists n_{1},\forall n\geqslant n_{1},u_{n}\leqslant v_{n}$ alors
- $u_{n}\underset{ n\to+\infty }{ \longrightarrow }+\infty\implies v_{n}\underset{ n\to+\infty }{ \longrightarrow }+\infty$
- $v_{n}\underset{ n\to+\infty }{ \longrightarrow }-\infty\implies u_{n}\underset{ n\to+\infty }{ \longrightarrow }-\infty$

Preuve: On suppose qu'à partir d'un certain rang $u_{n}\leqslant v_{n}$
Soit $A\in \mathbb{R}$. Comme $u_{n}\underset{ n\to+\infty }{ \longrightarrow }+\infty$, $\exists n_{0},\forall n\geqslant n_{0},u_{n}\geqslant A$
Donc $\forall n\geqslant \max(n_{0},n_{1}),v_{n}\geqslant u_{n}\geqslant A$

Exemple:
$S_{n}=\sum\limits_{k=1}^{n} \frac{1}{\sqrt{ k }}$
Comportement lorsque $n\to + \infty$ ?
$S_{n+1}-S_{n}=\frac{1}{\sqrt{ n+1 }}>0$
Donc $S_{n}$ est croissante
$\forall k\in \textlbrackdbl 1,n \textrbrackdbl,1\leqslant k\leqslant n$ donc $1\leqslant \sqrt{ k }\leqslant \sqrt{ n }$ donc $\frac{1}{\sqrt{ n }}\leqslant \frac{1}{\sqrt{ k }}\leqslant 1$
En sommant, $\sqrt{ n }=n\times \frac{1}{\sqrt{ n }}=\sum\limits_{k=1}^{n} \frac{1}{\sqrt{ n }}\leqslant S_{n}$
$\forall n\geqslant 1,\sqrt{ n }\leqslant S_{n}$. Par comparaison, $\lim\limits_{ n \to +\infty }S_{n}=+\infty$

b - Théorème de la limite monotone
Théorème:
Si $u$ est monotone à partir d'un certain rang, alors $u$ admet une limite dans $\bar{\mathbb{R}}$

Si $u$ est croissante à partir d'un certain rang $n_{0}$:
- Si $u$ est majorée alors elle converge vers $\underset{ n\geqslant 0 }{ \sup }(u_{n})$
- Sinon, $u$ tend vers $+\infty$

Si $u$ est décroissante à partir d'un certain rang $n_{0}$:
- Si $u$ est minorée alors elle converge vers $\underset{ n\geqslant n_{0} }{ \inf }(u_{n})$
- Sinon, $u$ tend vers $-\infty$

Si $u$ est croissante à partir d'un certain rang $n_{0}$, $\lim u=\underset{ n\geqslant n_{0} }{ \sup } u_{n}$
Si $u$ est décroissante à partir d'un certain rang $n_{0}$, $\lim u=\underset{ n\geqslant n_{0} }{ \inf } u_{n}$

Preuve:
- Si $u$ est croissante à partir d'un certain rang et $u$ majorée
  $\exists n_{0},\forall n\geqslant n_{0},u_{n+1}\geqslant u_{n}$, ainsi $\{ u_{n}|n\geqslant n_{0} \}$ est une partie non vide majorée de $\mathbb{R}$ donc elle admet une borne supérieure dans $\mathbb{R}$. Notons $\ell=\underset{ n\geqslant n_{0} }{ \sup } u_{n}$. $\ell \in \mathbb{R}$
  On veut montrer que $u\to \ell$. $\forall n\geqslant n_{0},u_{n}\leqslant\underset{ n\geqslant n_{0} }{ \sup }u_{n}=\ell$ car $\ell$ est un majorant.
  Soit $\varepsilon>0$. $\ell-\varepsilon<\ell$, $\ell-\varepsilon$ n'est pas un majorant de $\{u_{n}|n\geqslant n_{0}\}$ donc $\exists n_{1}$ tel que $\ell-\varepsilon<u_{n_{1}}$
  Comme $\forall n\geqslant n_{1},u_{n}\geqslant u_{n_{1}}$ par croissance de $u$
  Donc $\forall n\geqslant n_{1},\ell-\varepsilon<u_{n_{1}}\leqslant u_{n}\leqslant \ell<\ell+\varepsilon$
	$-\varepsilon<u_{n}-\ell<\varepsilon$
  Donc $|u_{n}-\ell|\leqslant\varepsilon$
- Si $u$ est croissante à partir d'un certain rang et $u$ non majorée
  On veut montrer $u\to +\infty$
  On sait que $\exists n_{0},\forall n\geqslant n_{0},u_{n}<u_{n+1}$
  Soit $A\in \mathbb{R},\exists n_{1}>n_{0},u_{n_{1}}\geqslant A$
  Par croissance, $\forall n\geqslant n_{1},u_{n}\geqslant u_{n_{1}}\geqslant A$
  Donc $u\to +\infty$

on utilise $-u$. Si $u$ est décroissante à partir d'un certain rang, alors $(-u)$ est croissante à partir d'un certain rang
- Si $u$ est minorée alors $(-u)$ est majorée donc $(-u)$ converge vers $\sup (-u)$ donc $u$ converge vers $-\inf u$
- Si $u$ n'est pas minorée alors $(-u)$ n'est pas majorée donc $(-u)\to +\infty$ et donc $u\to -\infty$

c - Suites adjacentes
Définition:
> Soient $u,v\in \mathbb{R}^{\mathbb{N}}$
> On dit que $u$ et $v$ sont adjacentes si l'une est croissante, l'autre est décroissante, et $\lim\limits_{ n \to +\infty }u_{n}-v_{n}=0$

Théorème:
Deux suites adjacentes convergent vers la même limite

Preuve:
Supposons $\begin{cases}u\text{ croissante} \\ v\text{ décroissante}\end{cases}$
Alors $-v$ est croissante
donc par somme $u-v$ est croissante
Or $\lim(u-v)=0$
Donc $u-v$ converge vers $\sup(u-v)=0$
Donc $0$ est un majorant de $u-v$
Donc $\forall n\in \mathbb{N},u_{n}\leqslant v_{n}$
or $u$ croissante donc minorée par $u_{0}$
$v$ décroissante donc majorée par $v_{0}$
donc $\forall n\in \mathbb{N},u_{0}\leqslant u_{n}\leqslant v_{n}\leqslant v_{0}$
Donc $u$ et $v$ sont bornées et monotones donc les deux convergent

Comme $u$ et $v$ convergent, alors $\lim(u-v)=\lim u-\lim v$ donc $\lim u=\lim v$ et $\forall n\in \mathbb{N},u_{0}\leqslant u_{1}\leqslant \dots\leqslant u_{n}\leqslant u_{n+1}\leqslant \ell\leqslant v_{n+1}\leqslant v_{n}\leqslant \dots\leqslant v_{1}\leqslant v_{0}$

Remarque: Soit $x \in\mathbb{R}$ et $\forall n\in \mathbb{N},d_{n}=\frac{\lfloor 10^{n}x \rfloor}{10^{n}},e_{n}=d_{n}+\frac{1}{10^{n}}$
On a $\forall n\in \mathbb{N},d_{n}\leqslant x\leqslant e_{n}$ avec $e_{n}-d_{n}\underset{ +\infty }{ \longrightarrow } 0$

Pratique: efficace pour des calculs numériques de valeurs approchées de limite

6) Suites extraites
Définition:
> Soit $u\in \mathbb{R}^{\mathbb{N}}$
> On dit que $v\in \mathbb{R}^{\mathbb{N}}$ est une suite extraite de $u$, ou sous-suite si $\exists \varphi \in \mathbb{N}^{\mathbb{N}}$ strictement croissante telle que $\forall n\in \mathbb{N},v_{n}=u_{\varphi(n)}$
> $\varphi$ est appelée fonction extractrice

Exemples:
- Si $\varphi=\mathrm{id}_{\mathbb{N}}$ alors $u$ est une sous-suite de $u$
- Par récurrence, on montre que $\forall n\in \mathbb{N},\varphi(n)\geqslant n$
- Soit $u\in \mathbb{R}^{\mathbb{N}}$ avec $\varphi \in \mathbb{N}^{\mathbb{N}}:n\mapsto 2n$
  On obtient la sous-suite des termes d'indices pairs de $u$: $(u_{2n})_{n\in \mathbb{N}}$
- De la même manière, avec $\varphi_{2}\in \mathbb{N}^{\mathbb{N}}:n\mapsto 2n+1$
  on obtient la sous-suite des termes d'indices impairs

Proposition: Soit $u\in \mathbb{R}^{\mathbb{N}}$ une suite convergente vers $\ell \in \mathbb{R}$. Alors toute suite extraite de $u$ converge encore vers $\ell$

Preuve: Soit $u\in \mathbb{R}r^{\mathbb{N}}$ convergente vers $\ell$ et soit $\varphi \in \mathbb{N}^{\mathbb{N}}$ strictement croissante. On pose $v=(u_{\varphi(n)})_{n\in \mathbb{N}}$
Soit $\varepsilon>0$. Comme $u\to \ell: \exists n_{0},\forall n\geqslant n_{0},|u_{n}-\ell|\leqslant\varepsilon$
Or, $\varphi(n_{0})\geqslant n_{0}$ et $\varphi$ croissante donc $\forall n\geqslant n_{0},\varphi(n)\geqslant\varphi(n_{0})\geqslant n_{0}$ donc $|u_{\varphi(n)}-\ell|\leqslant\varepsilon$. Donc $u_{\varphi(n)}\underset{ n\to +\infty}{ \longrightarrow }\ell$ donc $v_{n}\to \ell$

Remarque: le résultat reste vrai si $u$ diverge vers $\ell \in \{ -\infty,+\infty \}$
$\forall A\in \mathbb{R},\exists n_{0},\forall n\geqslant n_{0},u_{n}\geqslant A$ donc $\forall n\geqslant n_{0},\varphi(n)\geqslant\varphi(n_{0})\geqslant n_{0}$ donc $u_{\varphi(n)}\geqslant A$

Bilan: si $u$ admet une limite alors toute suite extraite de $u$ admet la même limite

Méthode: cela permet de justifier l'absence de limite

Exemple:
- $((-1)^{n})$ n'a pas de limite car $\begin{cases}(-1)^{2n}\underset{ n\to +\infty }{ \longrightarrow }1 \\(-1)^{2n+1}\underset{ n\to +\infty }{ \longrightarrow }-1\end{cases}$
  On a deux sous-suites convergeant vers des limites différentes
- $u=\left( \sin\left( n \frac{\pi}{8} \right) \right)_{n\in \mathbb{N}}$
  $u_{8n}=\sin(n\pi)=0$
  $u_{16n+4}=\sin\left( 2n\pi+\frac{\pi}{2} \right)=1$
  Donc la suite $u$ diverge et n'a pas de limite

Exercice: Montrer que $(\cos n)_{n\in \mathbb{N}}$ et $(\sin n)_{n\in \mathbb{N}}$ n'ont pas de limite
Posons $u_{n}=\cos n$ et $v_{n}=\sin n$
Par l'absurde: Si $u\to \ell_{1}$ et $v\to \ell_{2}$
$\cos(2n)=2\cos ^{2}n-1$
$(\cos(2n))_{n\in \mathbb{N}}$ est extraite de $u$
Par opérations sur les limites de suites, $\ell_{1}=2\ell_{1}^{2}-1$
donc $\ell_{1}=1$ ou $-\frac{1}{2}$
De même: $\sin(2n)=2\sin(n)\cos(n)$
$(\sin(2n))_{n\in \mathbb{N}}$ est extraite de $v$. Par passage à la limite $\ell_{2}=2\ell_{1}\ell_{2}$ donc $\ell_{2}=0$
Donc $\sin(n)\underset{ n\to +\infty }{ \longrightarrow }0$ or $\cos ^{2}(n)+\sin ^{2}(n)=1$ donc $\cos n\underset{ n\to +\infty }{ \longrightarrow }1$
Or, $\sin(n+1)=\sin(n)\cos(1)+\cos(n)\sin(1)$
En passant à la limite
$\ell_{2}=\ell_{2}\cos(1)+\ell_{1}\sin(1)$
donc $\sin(1)=0$: ABSURDE!

Théorème: Soit $u\in \mathbb{R}^{\mathbb{N}}$. Si $u_{2n}$ et $u_{2n+1}$ convergent vers la même limite, alors $u$ converge aussi vers cette limite

Remarque: Si $u_{2n}\to \ell$ et $u_{2n+1}\to \ell$ avec $\ell =\pm \infty$ on a aussi $u\to \ell$

Preuve: Notons $\ell \in \mathbb{R}$ la limite commune de $(u_{2n})$ et $(u_{2n+1})$
Soit $\varepsilon>0$, Alors $\exists n_{1},n_{2}\in \mathbb{N},\forall k\geqslant n_{1},|u_{2k}-\ell|\leqslant \varepsilon$ et $\forall k\geqslant n_{2},|u_{2k+1}-\ell|\leqslant \varepsilon$
Posons $n_{0}=\max(2n_{1},2n_{2}+1)$
Ainsi, $\forall n\geqslant n_{0}$ on a $n\geqslant 2n_{1}$ et $n\geqslant 2n_{2}+1$
Si $n$ est pair, $n=2p$ avec $p\geqslant n_{1}$ donc $|u_{2p}-\ell|\leqslant\varepsilon$ donc $|u_{n}-\ell|\leqslant\varepsilon$
Si $n$ est impair, $n=2p+1$ avec $p\geqslant n_{2}$ donc $|u_{2p+1}-\ell|\leqslant\varepsilon$ donc $|u_{n}-\ell|\leqslant\varepsilon$
Bilan: $\forall n\geqslant n_{0},|u_{n}-\ell|\leqslant \varepsilon$

Théorème: Toute suite bornée admet une sous-suite convergente

Preuve:
- on construit par récurrence deux suites adjacentes $(a_{n})_{n},(b_{n})_{n}$ avec $[a_{n+1},b_{n+1}]\subset \left[ a_{n},b_{n} \right]$, $b_{n+1}-a_{n+1}=\frac{1}{2}(b_{n}-a_{n})$, et l'ensemble $A_{n}=\{ k\in \mathbb{N}|u_{k}\in \left[ a_{n},b_{n} \right] \}$ est infini
Initialisation: $\exists k\in \mathbb{R}^{+},\forall n\in \mathbb{N},|u_{n}|\leqslant k$
On pose $a_{0}=-k$ et $b_{0}=k$
Ainsi, $\forall n\in \mathbb{N},u_{n}\in \left[ a_{0},b_{0} \right]$ Donc $A_{0}=\mathbb{N}$ infini
Hérédité: Supposons le rang $n$ déjà construit. On a $a_{n},b_{n},A_{n}$.
$A_{n}$ est infini et se découpe en $2$. $A_{n}=\left\{  k\in \mathbb{N}|u_{k}\in \left[ a_{n}, \frac{a_{n}+b_{n}}{2} \right]  \right\}\sqcup\left\{  k\in \mathbb{N}|u_{k}\in \left[ \frac{a_{n}+b_{n}}{2},b_{n} \right]  \right\}=A_{n}^{g}\sqcup A_{n}^{d}$
On pose $A_{n+1}=\begin{cases}A_{n}^{g} & \text{si }A_{n}^{g}\text{ est infini} \\ A_{n}^{d} & \text{sinon}\end{cases}$
$a_{n+1}=\begin{cases}a_{n} & \text{si } A_{n}^{g}\text{ est infini} \\ \frac{a_{n}+b_{n}}{2} & \text{sinon}\end{cases}$
$b_{n+1}=\begin{cases} \frac{a_{n}+b_{n}}{2} & \text{si }A_{n}^{g}\text{ est infini} \\ b_{n} & \text{sinon}\end{cases}$
Bilan:
- $\forall n\in \mathbb{N},a_{n}\leqslant a_{n+1}\leqslant b_{n+1}\leqslant b_{n}$
- $b-a$ est géométrique de raison $\frac{1}{2}$ donc $b_{n}-a_{n}=\left( \frac{1}{2} \right)^{n}(b_{0}-a_{0})\to 0$
Donc $a$ et $b$ sont bien deux suites adjacentes
Par théorème, $a$ et $b$ convergent vers la même limite, noté $\ell \in \mathbb{R}$ et $\forall n\in \mathbb{N},a_{n}\leqslant a_{n+1}\leqslant \ell\leqslant b_{n+1}\leqslant b_{n}$
Phase de construction d'une suite extraite
Par récurrence sur $\mathbb{N}$
- $\varphi(0)=0$ on a bien $v_{0}=u_{\varphi(0)}=u_{0}\in \left[ a_{0},b_{0} \right]$
- Ayant déjà construit $\varphi(0)<\varphi(1)<\dots<\varphi(n)$
  On prend $\varphi(n+1)=\min(A_{n+1}\cap \textlbrackdbl 1+\varphi(n),+\infty \textlbrackdbl)$
  Ainsi, $\varphi(n+1)>\varphi(n)$ et $a_{n+1}\leqslant u_{\varphi(n+1)}\leqslant b_{n+1}$
Ainsi:
$\forall n\in \mathbb{N},a_{n}\leqslant u_{\varphi(n)}\leqslant b_{n}$
Par théorème d'encadrement $a_{n}\to \ell$ et $b_{n}\to \ell$ donc $(u_{\varphi(n)})_{n}$ converge vers $\ell$
on a construit une sous-suite convergente

7) Traduction séquentielle de la densité
Rappel: Soit $A\subset \mathbb{R}$. $A$ est une partie dense dans $\mathbb{R}$ si $\forall x \in \mathbb{R},\forall\varepsilon>0,\exists a\in A,|x-a|\leqslant\varepsilon$

Propriété: $A$ est dense dans $\mathbb{R}$ $\iff \forall x \in \mathbb{R},\exists(a_{n})_{n\in \mathbb{N}}\in A^{\mathbb{N}},a_{n}\underset{ n\to +\infty }{ \longrightarrow }x$

Preuve: Soit $x \in \mathbb{R}$ et soit $\varepsilon>0$. Prenons $(a_{n})_{n\in \mathbb{N}}\in A^{\mathbb{N}}$ qui converge vers $x$
Par définition de $a_{n} \underset{ n\to +\infty }{ \longrightarrow }x,\exists n_{0},\forall n\geqslant n_{0},|a_{n}-x|\leqslant\varepsilon$
Donc $a_{n_{0}}\in A$ convient

On suppose $\forall x\in \mathbb{R},\forall\varepsilon>0,\exists a\in A,|x-a|\leqslant\varepsilon$
Soit $x\in \mathbb{R}$
Pour chaque $n\in \mathbb{N}$, on choisit $\varepsilon_{n}=\frac{1}{2^{n}}>0$
Ainsi, il existe $a_{n}\in A,|x-a_{n}|\leqslant\varepsilon_{n}$
Alors $\forall n\in \mathbb{N},|x-a_{n}|\leqslant \frac{1}{2^{n}}$
Donc par théorème d'encadrement, la suite $(a_{n})_{n\in\mathbb{N}}$ converge vers $x$

Exemple: $\mathbb{Q}$ est dense dans $\mathbb{R}$ car en prenant $x\in \mathbb{R}$ et $\forall n\in \mathbb{N},r_{n}=\frac{\lfloor 10^{n}x \rfloor}{10^{n}}$
On a $\lim\limits_{ n \to +\infty }r_{n}=x$ et $r_{n}\in \mathbb{Q}$

$\mathbb{D}=\left\{  \frac{m}{2^{n}}|n\in \mathbb{N},m\in \textlbrackdbl 0,2^{n} \textrbrackdbl  \right\}$
$0=\frac{0}{2}\in \mathbb{D}$, $1=\frac{1}{1}\in \mathbb{D}$

8) Caractérisation séquentielle de la borne supérieure
Soit $A\subset \mathbb{R}$ et $b\in \mathbb{R}$
Rappel: $b=\sup A\iff \begin{cases}b\text{ est un majorant de }A \\ b\text{ est le plus petit des majorants de}A\end{cases}\iff \begin{cases}\forall a\in A,b\geqslant a \\ \forall\varepsilon>0,\exists a\in A,b-\varepsilon<a\end{cases}$

Proposition: $b=\sup A\iff \begin{cases}b\text{ est un majorant de }A \\ \text{il existe une suite }(a_{n})_{n\in \mathbb{N}}\text{ de }A\text{ qui converge vers }b\end{cases}$

Preuve: S'il existe $(a_{n})_{n\in \mathbb{N}}\in A^{\mathbb{N}}$ qui converge vers $b$
Par définition de la convergence, $\forall\varepsilon>0,\exists n_{0}\in \mathbb{N},\forall n\geqslant n_{0},|a_{n}-b|< \frac{\varepsilon}{2}$
$b-\varepsilon< b-\frac{\varepsilon}{2}\leqslant a_{n}\leqslant b+\frac{\varepsilon}{2}$

## III - Extension aux suites de $\mathbb{C}^{\mathbb{N}}$
Définition:
> Soit $(u_{n})_{n\in \mathbb{N}}\in \mathbb{C}^{\mathbb{N}}$ une suite complexe
> on définit:
> $(\mathrm{Re}(u_{n}))_{n\in \mathbb{N}}\in \mathbb{R}^{\mathbb{N}}$
> $(\mathrm{Im}(u_{n}))_{n\in \mathbb{N}}\in \mathbb{R}^{\mathbb{N}}$
> $(|u_{n}|)_{n\in \mathbb{N}}\in(\mathbb{R}^{+})^{\mathbb{N}}$
> $(\arg(u_{n}))_{n\in \mathbb{N}}\in \mathbb{R}^{\mathbb{N}}$
> Et $\forall n\in \mathbb{N},u_{n}=\mathrm{Re}(u_{n})+i\mathrm{Im}(u_{n})=|u_{n}|e^{ i\arg(u_{n}) }$

Définition:
> $u\in \mathbb{C}^{\mathbb{N}}$ est bornée si et seulement si $|u|$ est majoré si et seulement si $\exists k\in \mathbb{R}^{+},\forall n\in \mathbb{N},|u_{n}|\leqslant k$

Propriété: $u$ est bornée si et seulement si $\mathrm{Re}(u)$ et $\mathrm{Im}(u)$ sont bornées

Propriété: Les suites de $\mathbb{C}^{\mathbb{N}}$ bornées sont stables par addition, produit, et multiplication par $\lambda \in \mathbb{C}$

Définition:
> Soit $u\in \mathbb{C}^{\mathbb{N}}$ et $\ell \in \mathbb{C}$.
> On dit que $u$ converge vers $\ell$ si et seulement si
> $\forall\varepsilon>0,\exists n_{0}\in \mathbb{N},\forall n\geqslant n_{0},|u_{n}-\ell|\leqslant\varepsilon$

$\lambda$



