---
tags:
  - Physique
---
Définition: L'énergie est une grandeur scalaire dont la valeur totale reste constante dans la multitude de transformations que subit la nature

## I - Puissance et travail d'une force
Soit un objet $M$ de masse $m$ qui subit une force $\vec{F}$ dans un référentiel galiléen
1) Puissance d'une force
Définition: C'est la puissance d'une force exercée sur $M$ animée d'une vitesse $\vec{v}$: $P=\vec{F}\cdot \vec{v}$
Unité: watt ($W$)
Du point de vu dimensionnel, $[P]=[\vec{F}][\vec{v}]=ML^{2}T^{-3}=[\text{énergie}]\cdot T^{-1}$

2) Travail d'une force
Définition:
Travail élémentaire $\delta W$ fourni par $\vec{F}$
$\delta W=P \mathrm{d}t=\vec{F}\cdot \vec{v}\mathrm{d}t=\vec{F}\cdot\mathrm{d}\vec{r}$
Car $\mathrm{d}\vec{r}=\vec{v}\mathrm{d}t$
$\delta W=\vec{F}\cdot \mathrm{d}\vec{r}$
unité: Joule ($J$)
C'est la quantité d'énergie fournie à un système qui subit une force $\vec{F}$ le long d'un déplacement
Si $\delta W>0:\vec{F}$ est motrice
Si $\delta W<0:\vec{F}$ est résistante
Si $\delta W=0:\vec{F}$ ne travaille pas

Définition:
$W_{M_{1}\to M_{2}}(\vec{F})=\int_{M_{1}}^{M_{2}} \vec{F} \cdot \mathrm{d}\vec{r}$

Propriété: Pour une force constante $\vec{F}$, $W_{M_{1}\to M_{2}}(\vec{F})=\vec{F}\cdot \overrightarrow{M_{1}M_{2}}$

3) Exemples
a - Travail du poids
$\delta W=\vec{P}\cdot \mathrm{d}\vec{r}$
$=(-mg  \vec{u_{z}})\cdot(\mathrm{d}x  \vec{u_{x}}+\mathrm{d}y  \vec{u_{y}}+\mathrm{d}z  \vec{u_{z}})$
$=-mg\mathrm{d}z$
$W(\vec{P})=\int_{z_{1}}^{z_{2}} -mg \, \mathrm{d}z=mg(z_{1}-z_{2})$
Ici, $z_{1}>z_{2}$, donc $W(\vec{P})>0$
$W(\vec{P})=\vec{P}\cdot\overrightarrow{M_{1}M_{2}}$ car $\vec{P}=\overrightarrow{\text{constante}}$
$W(\vec{P})=\vec{P}\cdot\overrightarrow{M_{1}M_{2}}=||\vec{P}||\cdot ||\overrightarrow{M_{1}M_{2}}||\cos \theta$

b - Travail d'une force de frottement
$P=\vec{T}\cdot \vec{v}<0$ Donc $W(\vec{T})<0$ donc $\vec{T}$ est une force résistante

c - Travail d'une force de frottements fluides
$\vec{F}=-\alpha \vec{v}=\delta W=\vec{F}\cdot \mathrm{d}\vec{r}=\vec{F}\cdot \vec{v}\mathrm{d}t=-\alpha v^{2}\mathrm{d}t$
$W(\vec{F})=-\int_{M_{1}}^{M_{2}} \alpha v^{2} \, dt$
On suppose que $v=v_{0}=\text{cste}$ et on se déplace le long de $L=M_{1}M_{2}$
Donc $t_{2}-t_{1}=\frac{L}{v_{0}}$
$W_{M_{1}\to M_{2}}(\vec{F})=-\int_{M_{1}}^{M_{2}} \alpha v^{2} \, dt=-\alpha v_{0}^{2}(t_{2}-t_{1})=-\alpha v_{0}L<0$
$W$ dépend du chemin suivi
$\vec{F}$ est une force résistante

## II - Théorème de l'énergie cinétique
1) Théorème de la puissance cinétique
Soit un objet $M$ de masse $m$ subissant une force $\vec{F_{i}}$ dans un référentiel galiléen
D'après le PFD, $\sum \vec{F_{i}}=m\frac{d\vec{v}}{dt}$
$\sum\limits_{i}\vec{F_{i}}\cdot\vec{v}=m\frac{d\vec{v}}{dt}\cdot \vec{v}$
$\iff \sum\limits_{i}P_{i}=\frac{d}{dt}\left[ \frac{1}{2}m||\vec{v}||^{2} \right]$

Définition: L'énergie du point $M$: $E_{c}=\frac{1}{2}m||\vec{v}||^{2}$
Théorème de la puissance cinétique: $\frac{dE_{c}}{dt}=\sum\limits_{i}P_{i}$

Exemple: Si le système est pseudo-isolé, $\sum\limits\vec{F}=\vec{0}$
Donc $\sum\limits P=0$
Donc $\frac{dE_{c}}{dt}=0$
Donc $E_{c}=\text{constante}$
Donc $v=\text{constante}$

2) Théorème de l'énergie cinétique
a - Enoncé
Théorème de l'énergie cinétique

Une force FC est dite conservative si son travail entre deux points quelconques ent un système est dit conservatif is les forces qui s'exercent sur lui sont conservatives l'intégrale première du mouvement est l'équation différentielle du premier ordre obtenue par application du TEM pour un systeme conservatif Un système est dit unidimensionnel ou à un degré de liberté si la position du point M est entièrement définie par la donnée d'une seule variable