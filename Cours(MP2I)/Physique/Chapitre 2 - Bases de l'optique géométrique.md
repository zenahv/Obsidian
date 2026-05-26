---
tags:
  - Physique
---
#### I- Lumière et sources lumineuses
1) Lumière et ondes électromagnétiques
Propriété: Un champ électromagnétique est créé par des particules chargées en mouvement. La propagation de ce champ électromagnétique correspond à un rayonnement électromagnétique

Propriété: On représente le rayonnement électromagnétique par une onde électromagnétique

Définition: un rayonnement ne contenant qu'une seule fréquence est dit monochromatique

Propriété: la célérité de la lumière dans le vide $c=299792458\text{ms}^{-1}\approx 3.0\cdot 10^{8}\text{ms}^{-1}$

Définition: La longueur d'onde $\lambda$ d'une onde électromagnétique est $\lambda=\frac{c}{\nu}$

Spectre du visible: $400\text{nm}<\lambda<800\text{nm}$

2) Sources lumineuses
Définition:
- Source primaire: source qui émet de la lumière
- Source secondaire: source qui ne produit pas de lumière par elle-même mais ne fait que la réfléchir

a) Sources et lampes thermiques
Propriété: tout corps ou objet de température non-nulle, en Kelvin, émet des ondes électromagnétiques

Définition: Le spectre d'émission d'une source thermique est appelé spectre d'émission du corps noir

b) Sources ou lampes spectrales
Propriété: Le spectre d'une lampe spectrale est discret

c) Laser
Propriété: Le rayonnement émis par un laser est proche d'un rayonnement monochromatique

d) Bilan qualitatif

3) Indice optique
a) Définition
Définition: L'indice optique ou indice de réfraction $n_{\text{milieu}}=\frac{c}{c_{\text{milieu}}}$

b) Milieu dispersif
Propriété: La fréquence $\nu$ d'une onde électromagnétique est indépendante du milieu qu'elle traverse
Définition: Un milieu est dit <u>dispersif</u> lorsque $c_{\text{milieu}}$ et donc $n_{\text{milieu}}$ dépendent de la fréquence $\nu$ de l'onde électromagnétique

Propriété: Soit une onde électromagnétique de longueur dans le vide de $\lambda_{0}$. Sa longueur d'onde $\lambda$ dans un milieu d'indice $n$ s'exprime alors par cette relation $\lambda=\frac{\lambda_{0}}{n}$

#### II - Modèle optique géométrique
1) Notion de rayon lumineux
Définition: un rayon lumineux matérialise la propagation de la lumière. On le représente par un trait muni d'une flèche qui indique le sens de propagation de la lumière.

2) Cadre de l'optique géométrique
On suppose que:
- les milieux traversés
  - transparents
  - homogènes (mêmes propriétés en tout point)
  - isotropes (mêmes propriétés suivant toutes les direction)
- on ne tient pas compte des phénomènes ondulatoires

a) Propagation en ligne droite
Tant qu'ils ne rencontrent pas d'obstacle, les rayons se propagent en ligne droite

b) Indépendance des rayons
Pas de diffraction, pas d'interférence. Les rayons se croisent sans problème

c) Le retour inverse de la lumière
Si un point A éclaire un point B, alors une source de lumière placée en B éclaire A

3) Limites du modèle
- Pas de diffraction, pas d'interférence
- Pas de polarisation
- Pas de description des mirages

#### III - Les lois de Snell-Descartes
1) Énoncé des lois
Définition: On appelle dioptre la surface de séparation entre deux milieux d'indices différents

Définition: la normale à un dioptre en un point est la droite perpendiculaire au plan local du dioptre et passant par ce point.

Lois de Snell-Descartes
Angle d'incidence: $i_{1}$
Angle de réflection: $r$
Angle de réfraction: $i_{2}$

Indice du milieu de départ: $n_{1}$
Indice du milieu d'arrivée; $n_{2}$

Première loi: Tous les rayons sont situés dans le <u>même plan</u>, contenant la normale au dioptre et le rayon incident: c'est le <u>plan d'incidence</u>
Deuxième loi: le rayon réfléchi possède un angle opposé au rayon incident: $r=-i_{1}$
Troisième loi: L'angle du rayon réfracté vérifie $n_{1}\sin i_{1}=n_{2}\sin i_{2}$

Propriété:
Lors d'une réfraction dans un milieu plus réfringent ($n_{2}>n_{1}$), $i_{2}<i_{1}$
Lors d'une réfraction dans un milieu moins réfringent ($n_{2}<n_{1}$), $i_{2}>i_{1}$

3) Les angles limites
a) Angle de réfraction limite
Lors d'une réfraction dans un milieu plus réfringent, l'angle de réfraction limite correspond à un angle d'incidence maximal: $i_{2lim}=\arcsin\left( \frac{n_{1}}{n_{2}} \right)$

b) Phénomène de réflection totale
Définition: l'angle d'incidence limite $i_{1lim}$ est l'angle d'incidence au delà duquel le rayon incident est totalement réfléchi: on parle de réflection totale: $i_{1lim}=\arcsin\left( \frac{n_{2}}{n_{1}} \right)$

4) Principe de Fermat
Pour relier deux points A et B, la lumière suit un chemin dont le temps de parcours est extrémal (minimal ou maximal)

#### IV - Application: la fibre optique à saut d'indice
1) Principe
Propriété: Pour une propagation sans perte, il faut que si $\sin \theta<\sqrt{ n_{\text{coeur}}^{2}-n_{\text{gaine}}^{2} }$
Ouverture numérique: $\text{O.N.}=\sqrt{ n_{coeur}^{2}-n_{\text{gaine}}^{2} }$

2) Dispersion intermodale
La dispersion intermodale est le phénomène d'élargissement temporel des impulsions lors de la propagation

Comparativement à notre oreille pour les ondes sonores, notre œil n'est sensible qu'à une très petite plage de fréquences pour les ondes électromagnétiques

Exercice 9]
1)
```tikz
\begin{document}
\begin{tikzpicture}[scale=1.2]

\draw (-0.5,-2) rectangle (6,0);
\draw (-0.5,0) rectangle (6,3);
\draw[thick] (-0.5,0) -- (6,0);
\draw[dashed] (4,-2) -- (4,3);
\coordinate (S) at (0,2);
\coordinate (P) at (5,-1.5);
\coordinate (X) at (4,0);
\coordinate (s) at (0,0);
\coordinate (p) at (5,0);
\coordinate (sP) at (0,-1.5);
\fill (S) circle (2pt) node[left] {$S$};
\fill (P) circle (2pt) node[right] {$P$};
\draw[very thick,red] (S) -- (X) -- (P);
\draw[dashed] (S) -- (s);
\draw[dashed] (P) -- (p);
\draw[ |-| ] (sP) -- (P);
\draw[ |-| ] (s) -- (X);
\draw (4,-1) arc (-90:-60:1);
\draw (4,0.5) arc (90:155:.5);
\node at (2,-.2) {$x$};
\node at (2.1,1.1) {$l_s$};
\node at (4.7,-.75) {$l_e$};
\node at (2.5,-1.7) {$x_t$};
\node at (-.2,1) {$h_s$};
\node at (5.2,-.75) {$h_e$};
\node at (4.3,-1.3) {$i_e$};
\node at (3.5,.6) {$i_s$};
\end{tikzpicture}
\end{document}
```
 
$T(x)=t_{s}+t_{e}=\frac{l_{s}}{v_{s}}+\frac{l_{e}}{v_{e}}=\frac{\sqrt{ h_{s}^{2}+x^{2} }}{v_{s}}+\frac{\sqrt{ h_{e}^{2}+(x_{t}-x)^{2} }}{v_{e}}$
$\frac{dT(x)}{dx}=\frac{1}{v_{s}} \frac{x}{\sqrt{ h_{s}^{2}+x^{2} }}-\frac{1}{v_{e}} \frac{x_{t}-x}{\sqrt{ h_{e}^{2}+(x_{t}-x)^{2} }}=\frac{\sin(i_{s})}{v_{s}}-\frac{\sin(i_{e})}{v_{e}}$
Or, comme il y a un minimum, $T(m)=\min(T)\implies \frac{dT(p)}{dp}=0$
Donc on cherche $\frac{dT(x)}{dx}=0$
$\frac{\sin(i_{s})}{v_{s}}-\frac{\sin(i_{e})}{v_{e}}=0$
$\frac{\sin(i_{s})}{v_{s}}=\frac{\sin(i_{e})}{v_{e}}$
$v_{e}\sin\left(i_{s} \right)=v_{s}\sin\left( i_{e} \right)$
$\frac{c}{n_{e}}\sin\left( i_{s} \right)=\frac{c}{n_{s}}\sin\left( i_{e} \right)$
$n_{s}\sin\left( i_{s} \right)=n_{e}\sin(i_{e})$

4) Points particuliers
a) Centre optique
Définition: le centre optique est le centre de la lentille, et est noté $O$
Propriété: Tout rayon passant par le centre optique n'est pas dévié

b) Foyers principaux
Définition: l'image $F'$ d'un objet ponctuel $A$ à l'infini dans la direction de l'axe optique est un point unique sur l'axe optique appelé foyer image principal.
Le plan orthogonal à l'axe optique passant par $F'$ est appelé plan focal image

Définition: L'objet ponctuel $F$ dont l'image est à l'infini dans la direction de l'axe optique est appelé foyer objet principal. Le plan orthogonal à l'axe optique passant par $F$ est appelé plan focal objet

c) Symétrie de la lentille
Propriété: $F$ et $F'$ sont symétriques par rapport au centre optique $O$

5) Construction graphique des images
Règles:
- Tout rayon passant par le centre optique n'est pas dévié
- Tout rayon incident parallèle à l'axe optique émerge en passant par le foyer image principal $F'$
- Tout rayon incident passant par le foyer objet principal émerge parallèle à l'axe optique

a) Constructions pour une lentille convergente
- Objet réel avant le foyer objet
- Objet entre le foyer objet et le centre optique
- Objet virtuel

b) Constructions pour une lentille divergente
- Objet réel
- Objet virtuel entre le centre optique et le foyer objet
- Objet virtuel après le foyer objet

6) Objet à l'infini - Foyers secondaires
- Foyer secondaires d'une lentille convergente
- Foyer secondaires d'une lentille divergente

6) En pratique: les aberrations
a) Aberrations géométriques
Il y a un écart trop grand entre les rayons paraxiaux et les rayons réel. On observe une tache au lieur d'une image ponctuelle

b) Aberrations chromatiques

























Un objectif dont le rôle est de ramener l'image d'un astre sur terre. L'objectif est une lentille convergente de grande focale qui projette l'axe dans son plan focal

Un oculaire qui joue le rôle d'une loupe. l'oculaire permet de grossir l'image que donne l'objectif
-                                                                                                                                                                                                                          a















