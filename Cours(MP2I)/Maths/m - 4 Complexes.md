---
tags:
  - Math
---
## I - Nombres complexes
1) $\mathbb{C}$
Définition: On définit $\mathbb{C}$ un ensemble qui contient $\mathbb{R}$, muni des opérations $+$ et $\times$ qui prolongent les opérations sur $\mathbb{R}$ et leurs propriétés
- $\mathbb{C}$ possède un élément $i$ vérifiant $i^{2}=-1$
- $\forall z\in \mathbb{C},\exists!(x,y)\in \mathbb{R}^{2},z=x+iy\implies\mathrm{Re}(z)=x\land \mathrm{Im}(z)=y$

Soit $\varphi:\mathbb{R}^{2}\to \mathbb{C},(x,y)\mapsto x+iy$
$\varphi$ est bijective car $\forall z\in \mathbb{C},\exists!(x,y)\in \mathbb{R}^{2},z=x+iy$
et sa réciproque $\varphi^{-1}:\mathbb{C}\to \mathbb{R}^{2},z\mapsto(\mathrm{Re}(z),\mathrm{Im}(z))$

Ainsi tout point $M$ de $\mathbb{R}^{2}$ de coordonnées $(x,y)\in \mathbb{R}^{2}$
est identifié au complexe $z=x+iy$ appelé affixe du point $M$

On identifie également le vecteur $\vec{OM}$ de coordonnées $\binom{x}{y}$ avec son affixe $z=x+iy$ 

Propriété: $z\in \mathbb{C}$
- $z\in \mathbb{R}\iff \mathrm{Im}(z)=0$
- $z\in i\mathbb{R}\iff \mathrm{Re}(z)=0$

Addition dans $\mathbb{C}$
Soient $z=a+ib$ et $z'=c+id$
avec $(a,b,c,d)\in \mathbb{R}^{4}$
$z+z'=(a+ib)+(c+id)=(a+c)+i(b+d)$

Ainsi, $\forall (z,z')\in \mathbb{C}^{2},\mathrm{Re}(z+z')=\mathrm{Re}(z)+\mathrm{Re}(z'),\mathrm{Im}(z+z')=\mathrm{Im}(z)+\mathrm{Im}(z')$

Multiplication par un réel $\lambda \in \mathbb{R}$
Soit $z\in \mathbb{C},\lambda \in \mathbb{R}$
Ainsi $\exists!(x,y)\in \mathbb{R}^{2},z=x+iy$
et $\lambda z=\lambda(x+iy)=\lambda x+i\lambda y$

Multiplication dans $\mathbb{C}$
Définition: Soient $z=a+ib$ et $z'=c+id$
$z\times z'=ac-bd+i(ad+bc)$

$\times$ est commutative, associative, de neutre $1$, et distributive sur l'addition

Peut-on diviser?
Soit $z\in \mathbb{C}$ avec $z=x+iy$
trouver $z'$ tel que $zz'=1$

Remarque: $(x+iy)(x-iy)=x^{2}+y^{2}$
$x^{2}+y^{2}=0\iff x=y=0$
Ainsi, $\forall z\in \mathbb{C},z\neq 0\implies \mathrm{Re}(z)^{2}+\mathrm{Im}(z)^{2}>0$

Avec $z=x+iy$, on a donc $(x+iy)\left( \frac{x-iy}{x^{2}+y^{2}} \right)=1$
Ainsi tout complexe $z\neq 0$ admet un inverse $\frac{1}{z}=\frac{\mathrm{Re}(z)}{\mathrm{Re}(z)^{2}+\mathrm{Im}(z)^{2}}-i \frac{\mathrm{Im}(z)}{\mathrm{Re}(z)^{2}+\mathrm{Im}(z)^{2}}$

2) Conjugaison dans $\mathbb{C}$
Définition: Pour tout $z=x+iy$, on définit $\bar{z}=x-iy$ son conjugué

Propriétés:
- $\forall z\in \mathbb{C},\bar{\bar{z}}=z$
- $\forall (z,z')\in \mathbb{C}^{2},\overline{z+z'}=\bar{z}+\bar{z'}$
- $\forall(z,z')\in \mathbb{C}^{2},\overline{z\times z'}=\bar{z}\times  \bar{z'}$

Corollaires:
- $\overline{z-z'}=\bar{z}-\bar{z'}$
- $z'\neq 0\implies\overline{\left( \frac{z}{z'} \right)}=\frac{\bar{z}}{\bar{z'}}$

Fait:
$z=x+iy\implies \bar{z}=x-iy$
$z+\bar{z}=2x$
$z-\bar{z}=2iy$

Formules d'Euler:
$\frac{z+\bar{z}}{2}=\mathrm{Re}(z)$
$\frac{z-\bar{z}}{2i}=\mathrm{Im}(z)$

Propriété:
- $z\in \mathbb{R}\iff \mathrm{Im}(z)=0\iff \bar{z}=z$
- $z\in i\mathbb{R}\iff \mathrm{Re}(z)=0\iff \bar{z}=-z$

3) Module d'un complexe
Si $z=x+iy$
$z\times \bar{z}=(x+iy)(x-iy)=x^{2}+y^{2}\in \mathbb{R}^{+}$
Définition: Le module de $z$ est $|z|=\sqrt{ \mathrm{Re}(z)^{2}+\mathrm{Im}(z)^{2} }$

Fait: $z\times \bar{z}=|z|^{2}$

Ainsi si $z\neq 0,|z|\in \mathbb{R}^{*}_{+}$ donc $\frac{1}{z}=\frac{\bar{z}}{|z|^{2}}$

Remarque: $\frac{1}{z}=\bar{z}\iff z\bar{z}=1\iff |z|^{2}=1\iff |z|=1$

Opérations et module:
- $\forall z\in \mathbb{C},|\bar{z}|=|z|=|-z|$
- $\forall z\in \mathbb{C},|z|=0\iff z=0$
- $\forall z\in \mathbb{C}\setminus\{ 0 \},|z|=\mathbb{R}^{*}_{+}$
- $\forall z\in \mathbb{C},\mathrm{Re}(z)\leq |\mathrm{Re}(z)|\leq |z|$
- $\forall z\in \mathbb{C},\mathrm{Im}(z)\leq |\mathrm{Im}(z)|\leq |z|$
- $\forall(z,z')\in \mathbb{C}^{2},|zz'|=|z||z'|$

Corollaires
$\forall n\in \mathbb{N},|z^{n}|=|z|^{n}$
$\forall z\in \mathbb{C},\forall z'\in \mathbb{C}\setminus\{ 0 \}, | \frac{z}{z'}|=\frac{|z|}{|z'|}$

Théorème: $\forall(z,z')\in \mathbb{C}^{2},|z+z'|\leq |z|+|z'|$
De plus il y a égalité si et seulement si $(z=0\,\lor\,\exists k\in \mathbb{R}^{+},z'=kz)$

## II - Complexes de module 1 et trigonométrie
1) Le cercle trigonométrique $\mathbb{U}$
Définition: On note $\mathbb{U}=\{ z\in \mathbb{C},|z|=1 \}$
Propriétés:
- $1\in \mathbb{U}$
- $\forall z\in \mathbb{U}, \frac{1}{z}\in \mathbb{U}$
- $\forall(z,z')\in \mathbb{U}^{2},zz'\in \mathbb{U}$

Paramétrisation de $\mathbb{U}$: Soit $z\in \mathbb{U},\exists!(x,y)\in \mathbb{R}^{2},z=x+iy\implies z\bar{z}=1\implies x^{2}+y^{2}=1$

$\exists!\theta \in \left[ 0;2\pi \right[,\begin{cases}\cos \theta=x\\sin \theta=y\end{cases}$
$\theta$ est appelé argument du complexe $z=x+y=\cos \theta+i\sin \theta$

Remarque: si $z_{1},z_{2}\in \mathbb{U}$, alors $\exists \theta,\varphi \in \left[ 0,2\pi \right[,z_{1}=\cos \theta+i\sin \theta,z_{2}=\cos \varphi+i\sin \varphi$
On sait que $z_{1}z_{2}\in \mathbb{U}$
or, $z_{1}z_{2}=\left[ \cos \theta \cos \varphi-\sin \theta \sin \varphi \right]+i\left[ \cos \theta \sin \varphi+\sin \theta \cos \varphi \right]=\cos(\theta+\varphi)+i\sin(\theta+\varphi)$
On note $\forall \theta,e^{ i\theta }=\cos \theta+i\sin \theta$

Formules d'Euler:
$\forall \theta \in \mathbb{R},\begin{cases}\cos \theta=\frac{e^{ i\theta }+e^{ -i\theta }}{2}\\sin \theta=\frac{e^{ i\theta }-e^{ -i\theta }}{2i}\end{cases}$

Formule de Moivre: $\forall \theta \in \mathbb{R},\forall n\in \mathbb{Z},(e^{ i\theta })^{n}=e^{ in\theta }$

4) Fonction tangente
Définition: Pour tout $x\in \mathbb{R},x\not\equiv \frac{\pi}{2}\left[ \pi \right]$, on a $\cos x\neq 0$ et on peut définir $\tan x=\frac{\sin x}{\cos x}$

Propriétés:
- $\tan$ est impaire
- $\tan$ est $\pi$-périodique
- $\tan$ est dérivable sur $\mathbb{R}\left\{  \frac{\pi}{2}+k\pi,k\in \mathbb{Z}  \right\}$
  $\tan'=1+\tan ^{2}=\frac{1}{\cos ^{2}}$
- $\tan$ est strictement croissante sur $\left] -\frac{\pi}{2}, \frac{\pi}{2} \right[$
- $\tan$ est continue sur $\left] -\frac{\pi}{2}, \frac{\pi}{2} \right[$
- $\tan(\left] -\frac{\pi}{2}, \frac{\pi}{2} \right[)=\mathbb{R}$
- $\tan$ convexe sur $\left[ 0, \frac{\pi}{2} \right[$
- $\tan$ concave sur $\left] -\frac{\pi}{2},0 \right]$

Propriété: $\tan(\pi-x)=-\tan(x)$
Pour $x\not\equiv 0\left[ \frac{\pi}{2} \right],\tan\left( \frac{\pi}{2}-x \right)=\frac{1}{\tan(x)}$

## III - Forme trigonométrique
Définition: $\forall z\in \mathbb{C}^{*},\exists!r\in \mathbb{R}_{+}^{*},\exists \theta \in \mathbb{R},z=re^{ i\theta }$
- $r=|z|$
- $\theta=\arg(z)$

Remarque: Pour $z=0:\forall \theta \in \mathbb{R},0=0e^{ i\theta }$

Propriétés de l'argument:
Soit $z\in \mathbb{C}^{*}$
$z\in \mathbb{R}_{+}^{*}\iff\arg(z)\equiv 0\,\,[2\pi]$
$z\in \mathbb{R}^{*}_{-}\iff \arg(z)\equiv \pi\,\,[2\pi]$
$z\in \mathbb{R}^{*}\iff \arg(z)\equiv_{0}\,\,[\pi]$
$z\in i\mathbb{R}^{*}\iff\arg(z)\equiv \frac{p}{2}\,\,[\pi]$
$\arg(\bar{z})=-\arg(z)$
$\arg(-z)=\arg(z)+\pi$
$\arg\left( \frac{1}{z} \right)=-\arg(z)$
$\arg(zz')\equiv\arg(z)+\arg(z')\,\,[2\pi]$
$\forall n\in \mathbb{Z},\arg(z^{n})\equiv n\arg(z)\,\,[2\pi]$

$z=z'\iff \begin{cases}\mathrm{Re}(z)=\mathrm{Re}(z')\\\mathrm{Im}(z)=\mathrm{Im}(z')\end{cases}\iff \begin{cases}\arg(z)\equiv \arg(z')\,\,[2\pi]\\|z|=|z'|\end{cases}$

## IV - Exponentielle complexe
Définition: Soit $z\in \mathbb{C}$ avec $z=a+ib$ avec $(a,b)\in \mathbb{R}^{2}$
On définit $e^{ z }=e^{ a }e^{ ib }$

Propriété: $\forall (z,z')\in \mathbb{C}^{2},e^{ z+z' }=e^{ z }e^{ z' }$
Ainsi, $e^{ -z }=\frac{1}{e^{ z }}$
Propriété: $\forall z\in \mathbb{C},$
- $\mathrm{Re}(e^{ z })=e^{ \mathrm{Re}(z) }\cos (\mathrm{Im}(z))$
- $\mathrm{Im}(e^{ z })=e^{ \mathrm{Re}(z) }\sin(\mathrm{Im}(z))$
- $|e^{ z }|=e^{ \mathrm{Re}(z) }$
- $\arg(e^{ z })\equiv \mathrm{Im}(z)\,\,[2\pi]$

Remarque: $\forall z\in \mathbb{C},|e^{ z }|=e^{ \mathrm{Re}(z) }\in \mathbb{R}^{*}_{+}$ donc $|e^{ z }|\neq 0$
Ainsi, $\exp:\mathbb{C}\to \mathbb{C}$ n'est pas surjective car $e^{ z }=0$ n'a pas de solution
On sait que $e^{ \mathbb{C} }\subset\mathbb{C}^{*}$

Montrons que $e^{ \mathbb{C} }=\mathbb{C}^{*}$
Soit $\alpha \in \mathbb{C}$
On cherche $z\in \mathbb{C}$ tel que $e^{ z }=\alpha$
Posons $\alpha=re^{ i\theta }$ avec $\begin{cases}r\in \mathbb{R}^{*}_{+},r=|\alpha|\\ \theta \in \mathbb{R}\text{ un argument de }\alpha\end{cases}$
Cherchons $z$ sous forme algébrique $z=a+ib,a,b\in \mathbb{R}$
$e^{ z }=\alpha \iff e^{ a+ib }=re^{ i\theta }\iff e^{ a }e^{ ib }=re^{ i\theta }\iff \begin{cases}e^{ a }=r\iff a=\ln r\\b\equiv \theta\,\,[2\pi]\end{cases}$
Le complexe $\alpha \in \mathbb{C}^{*}$ a pour antécédents par $\exp$
$\{ \ln r+i(\theta+2k\pi)|k\in \mathbb{Z} \}$
Ainsi, $\mathbb{C}^{*}\subset e^{ \mathbb{C} }$
conclusion: $e^{ \mathbb{C} }=\mathbb{C}^{*}$
On ne définira pas de $\ln$ complexe car $\exp$ n'est pas bijective

## V - Equations dans $\mathbb{C}$
1) Racines carrées dans $\mathbb{C}$
Propriété: Tout complexe non nul admet exactement deux racines carrées opposées

Soit $z\in \mathbb{C}^{*}$
On pose $z=re^{ i\theta }$. On cherche $\alpha \in \mathbb{C}$ tel que $\alpha^{2}=z$
Cherchons $\alpha$ sous forme $\alpha=\rho e^{ i\phi }$
$\alpha^{2}=z\iff \rho^{2} e^{ i_{2}\phi }=re^{ i\theta }\iff \rho e^{ i\phi }=\pm\sqrt{ r }e^{ i\theta/2 }$

Si $z$ est donné sous forme algébrique, comment calculer ses deux racines carrées?
On a $z=x+iy$ avec $(x,y)\in \mathbb{R}^{2}$
On cherche $\omega=a+ib$ tel que $\omega^{2}=z$
$\omega^{2}=z\iff a^{2}-b^{2}+2iab=x+iy \iff\begin{cases}x=a^{2}-b^{2}\\y=2ab\end{cases}$
Or, $a^{2}+b^{2}=|\omega|^{2}=|\omega^{2}|=|z|=\sqrt{ x^{2}+y^{2} }$
Ainsi $a^{2}=\frac{1}{2}(x+\sqrt{ x^{2}+y^{2} })$ et $b^{2}=\frac{1}{2}(-x+\sqrt{ x^{2}+y^{2} })$

il reste ensuite à exploiter le signe de $ab$ pour trouver les deux solutions.

2) Équation de second degré à coefficients complexes
Théorème: Soient $(a,b,c)\in \mathbb{C}^{3}$ tels que $a\neq 0$
$$
(E)\quad az^{2}+bz+c=0
$$
On pose $\Delta=b^{2}-4ac$ le discriminant de $(E)$
- premier cas:
  Si $\Delta=0$, $(E)$ a une unique solution qui vaut $-\frac{b}{2a}$
- deuxième cas:
  Si $\Delta\neq 0$, notons $\delta \in \mathbb{C}$ tel que $\delta^{2}=\Delta$
  $(E)$ admet deux solutions distinctes $\frac{-b\pm \delta}{2a}$

2) Racines n-ièmes de l'unité
Définition: Soit $n\in \mathbb{N}^{*}$
L'ensemble des racines n-ièmes de l'unité est $\{ z\in \mathbb{C},z^{n}=1 \}$
On le note $\mathbb{U}_{n}$

Remarque: $\mathbb{U}_{n}\subset \mathbb{U}$

Remarque: en notant $\omega=e^{ 2i\pi/n }$
On a $\mathbb{U}_{n}=\{ e^{ 2i\pi k/n} ,k\in \textlbrackdbl 0,n-1 \textrbrackdbl \}$

4) Racines n-ièmes d'un complexe

Soit $n\in \mathbb{N}^{*}$ et $a\in \mathbb{C}$
On cherche à résoudre $z^{n}=a$

Etape 1: Deviner une solution. Écrivons $a$ sous forme trigonométrique avec $r=|a|$ et $\theta=\arg(a)$, $a=re^{ i\theta }=(\sqrt[n]{ r }e^{ i\theta/n })^{n}$
Notons $z_{0}=\sqrt[n]{ r }e^{ i\theta/n }$

Etape 2: Trouver toutes les solutions
$z^{n}=a\iff z^{n}=z_{0}^{n}\iff \frac{z^{n}}{z_{0}^{n}}=1\iff \left( \frac{z}{z_{0}} \right)^{n}=1\iff \frac{z}{z_{0}}\in \mathbb{U}_{n}$

Proposition: Soit $a=re^{ i\theta }$ un complexe avec $r>0$, l'équation $z^{n}=a$ admet exactement $n$ solutions $\{ \sqrt[n]{ r }e^{ i\theta/n }e^{ 2ik\pi/n }|k\in \textlbrackdbl 0,n-1 \textrbrackdbl \}$

5) Complexes et géométrie
Soit $(O,\vec{i},\vec{j})$ un repère orthonormé direct du plan. Soit $\vec{u}$ un vecteur du plan. En utilisant $z$ l'affixe du vecteur $\vec{u}$, on a $\arg(z)$ correspondant à l'angle formé entre $\vec{i}$ et $\vec{u}$

Prenons trois points $A,B,C$ d'affixes $a,b,c$
Comment calculer l'angle $\angle{BAC}$?
C'est l'angle entre les vecteurs $\vec{AB}$ et $\vec{AC}$
$\angle(\vec{AB},\vec{AC})=\angle(\vec{i},\vec{AC})-\angle(\vec{i},\vec{AB})$ = $\arg(c-a)-\arg(b-a)=\arg\left( \frac{c-a}{b-a}\right)$
Or $| \frac{c-a}{b-a} |=\frac{|c-a|}{|b-a|}=\frac{||\vec{AC}||}{||\vec{AB}||}$

- $A,B,C$ sont alignés $\iff\frac{c-a}{b-a}\in \mathbb{R}$
- $(AB)\perp(AC)\iff \frac{c-a}{b-a}\in i\mathbb{R}$

Transformations du plan:
- Translation: $t_{a}(z)=z+a$
- Homothétie: De centre $\omega$ et de rapport $\lambda \in \mathbb{R}^{*}$: $h_{\omega,\lambda}(z)=(z-\omega)\lambda+\omega$
- Rotation: De centre $\omega$ et d'angle $\theta \in \mathbb{R}$: $r_{\omega,\lambda}(z)=(z-\omega)e^{ i\theta }+\omega$
- Symétrie centrale: De centre $\omega$: $s_{\omega}(z)=2\omega-z$

Remarque: ces transformations sont de type $z\mapsto az+b\quad(a,b)\in \mathbb{C}^{2}$
Définition: On appelle similitude directe toutes les applications $z\mapsto az+b$
