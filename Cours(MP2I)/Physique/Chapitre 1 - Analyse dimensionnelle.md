---
tags:
  - Physique
---


I - Dimensions et unités
1) Définitions
Dimension: La dimension d'une grandeur est l'expression de la dépendance d'une grandeur par rapport aux grandeurs de base

Homogénéité: Deux grandeurs physiques ont la même dimension si elles peuvent être comparées entre elles. On dit alors qu'elles sont homogènes

Unité: L'unité est une grandeur de référence, se trouvant après une valeur numérique, qui est choisie arbitrairement afin de servir de terme de comparaison aux autres grandeurs de même espèce

Remarque 1: On ne peut pas donner de valeur numérique sans unités
Remarque 1 bis: Une même grandeur peut être exprimée selon plusieurs unités différentes (Exemple: 1kWh = $3.6\times 10^{6}$J)
Remarque 2: Il existe des grandeurs physiques sans dimensions:
- angles
- rapports de grandeurs
- $\pi$, $\sqrt{ 2 }$, $e$

Remarque 3: Une grandeur sans dimension n'est pas forcément sans unité

Propriété: Une formule physique (sous la forme d'une égalité) doit nécessairement être homogène, c'est à dire que les deux membres de l'égalité doivent avoir la même dimension

2) Le système international (SI)
En 2019

| Grandeur             | Symbole  | Unité |
| -------------------- | -------- | ----- |
| Masse                | M        | kg    |
| Longueur             | L        | m     |
| Temps                | T        | s     |
| Température          | $\Theta$ | K     |
| Quantité de matière  | N        | mol   |
| Intensité électrique | I        | A     |
| Intensité lumineuse  | J        | cd    |

Propriété: La dimension de toute grandeur physique est un produit de ces 7 dimensions fondamentales

Exemple: 
[Surface] = $L^{2}$
[vitesse] = $LT^{-1}$
[accélération] = $LT^{-2}$

Équation aux dimensions: on appelle équation aux dimensions l'écriture de la dimension d'une longueur physique en fonction des 7 dimensions de base du système international

Analyse dimensionnelle: L'étude d'une relation physique en termes de dimensions est appelée analyse dimensionnelle

Exemples:
[énergie] : $E=mc^{2}$, $\left[ E \right]=[\text{masse}]\times \left[ vitesse \right]=ML^{2}T^{-2}$
[puissance] : $E=P\times\Delta t\iff P=\frac{E}{\Delta t}$, $\left[ P \right]=ML^{2}T^{-3}$
[charge électrique] : $[Q]=IT$

unités dérivées
$1J=1\text{kgm}^{2}\text{s}^{-2}$
$1W=1\text{kgm}^{2}\text{s}^{-3}$
$1c=1\text{As}$

Trouver unité de $G$: constante gravitationnelle
$[G]=M^{-1}L^{3}T^{-2}$

3) Opérations mathématiques sur les grandeurs dimensionnées
A) Somme et différence
Propriété: Tous les termes d'une somme ou d'une différence ont la même dimension; le résultat aussi

B) Produit et quotient
Propriété: La dimension d'un produit est le produit des dimensions, et la dimension d'un quotient est le quotient des dimensions

C) Dérivation
En physique, $f'(x)=\frac{df(x)}{dx}$
Exemple: vitesse $v=\frac{dx}{dt}$

Propriété: La dimension d'une grandeur $F(x)$ par rapport à $x$
$\left[ \frac{dF(x)}{dx} \right]=\frac{[F]}{\left[ x \right]}$

Exemple:$a=\frac{dv}{dt}$

d) Intégration
Propriété: deux grandeurs $F(x)$ et $x$
$\left[ \int F(x)\,dx \right]=\left[ F \right]\left[ x \right]$

e) fonctions transcendantes
Définition: Le terme fonction transcendante englobe les fonctions exponentielles, logarithme, fonctions trigonométriques

Propriétés:
- L'argument d'une fonction transcendante est sans dimension
- Une fonction transcendante est sans dimension

Exemples: 
- $f(t)=e^{ -t/\tau }$ 
  $\left[ f(t) \right]=1$
  $\left[ \frac{t}{\tau} \right]=\frac{\left[ t \right]}{\left[ \tau \right]}=1$
  $\left[ \tau \right]=T$
- $g(x)=\cos(kx+\varphi)$
  $\left[ g(x) \right]=1$
  $\left[ kx+\varphi \right]=1$
  $\left[ k \right]=L^{-1}$
  $\left[ \varphi \right]=1$

II - Présentation d'un résultat en physique
1) Calcul numérique et calcul littéral
Commandement n°1: Tous les calculs sont effectués de manière littérale. Ensuite, on met l'application numérique

2) Ordre de grandeurs et chiffres significatifs
Définition: Les chiffres significatifs d'un résultat numérique correspondent aux chiffres comptés à partir du premier chiffre non nul en partant de la gauche

Propriété: Sans indication autre, le nombre de chiffre significatifs d'un résultat numérique doit correspondre à celui possédant le plus petit nombre de chiffres significatifs.

Définition: L'ordre de grandeur d'un résultat numérique correspond à la puissance de $10$ la plus proche de sa valeur numérique dans une unité donnée

3) Discussion d'un résultat numérique
Commandement n°2: Il faut toujours avoir un regard critique par rapport à une formule théorique ou à un résultat numérique
Vérification: homogénéité, cohérence de l'expression, cohérence de l'application numérique

III - L'analyse dimensionnelle comme outil de prédiction
1) Principe
Définition: Deux grandeurs sont dites indépendantes si on ne peut pas construire de grandeurs sans dimensions à partir d'un produit de ces dernières comportant au moins un exposant non nul

Propriété: Si une grandeur $X$ est susceptible de dépendre d'un certain nombre de grandeurs dimensionnées $A,B,C,D$ caractéristiques du problème et dimensionnellement indépendantes, alors $X=kA^{\alpha}B^{\beta}C^{\gamma}D^{\delta}$ où $\alpha,\beta,\gamma,\delta$ sont des exposants

2) Applications
Méthode:
- 1) Déterminer la grandeur recherchée $X$ de dimension $\left[ X \right]$
- 2) Lister les grandeurs caractéristiques $A,B,C,D$ de dimensions $\left[ A \right],\left[ B \right],\left[ C \right],\left[ D \right]$
- 3) On suppose que $X$ peut s'écrire sous la forme $X=kA^{\alpha}B^{\beta}C^{\gamma}D^{\delta}$
- 4) Utiliser l'équation aux dimensions $\left[ X \right]=\left[ A \right]^{\alpha}\left[ B \right]^{\beta}\left[ C \right]^{\gamma}\left[ D \right]^{\delta}$ pour trouver $\alpha,\beta,\gamma,$ et $\delta$
- 5) Ecrire la formule trouvée

2) Limitations
a) Oubli d'une grandeur caractéristique
Propriété: Si l'on oublie une grandeur caractéristique, l'équation aux dimensions n'admet généralement pas de solution

b) Grandeur caractéristique sans dimension
Il peut arriver que $X$ s'écrive à l'aide d'une fonction sans dimension
$X=k\!\!\!\!\!\!\!\!\underbrace{ f(\eta) }_{ \text{Sans dimension} }\!\!\!\!\!\!\!\!A^{\alpha}B^{\beta}C^{\gamma}D^{\delta}$

Formules de base à connaître:
- Mécanique:
  - vitesse: $v=\frac{d}{t}$
  - accélération: $a=\frac{v}{t}$
  - force: $F=ma$ (2e loi de Newton)
  - force d'interaction gravitationnelle $F=G\frac{m_{1}m_{2}}{d^{2}}$
  - $G=$ constante gravitationnelle $=6.67\cdot 10^{-11}\text{m}^{3}\text{kg}^{-1}\text{s}^{-2}$
  - Force d'interaction électrostatique $F_{e}=\frac{1}{4\pi\varepsilon_{0}} \frac{q_{1}q_{2}}{d^{2}}$, $\varepsilon_{0}=9\cdot10^{-12}\text{Fm}^{-1}$
- Electricité:
  - définition de l'intensité: $I=\frac{Q}{\Delta t}$
  - loi d'Ohm: $U=RI$
  - puissance électrique: $P=UI$
  - Pour une résistance, $P=RI^{2}$ (effet Joule)
  - Ondes: $f=\frac{l}{T}$
  - Autres: $E=P\Delta t$, $E=mc^{2}$
  - Pression: $P=\frac{F}{s}$
  - Loi des gaz parfaits: $PV=nRT$

