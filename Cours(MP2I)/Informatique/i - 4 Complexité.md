---
tags:
  - Info
---
# Complexité
## I - Définitions
1) Notion de complexité en temps
Définition: On appelle opération atomique une opération élémentaire réalisée par le processeur

Remarque: En pratique, comme on ne sait pas exactement ce qui est élémentaire pour le processeur, on prend la convention que les opérations arithmétiques, les comparaisons, les lectures et écritures dans la mémoire, les opérations booléennes, le déréférencement d'une adresse, nécessitent toutes un nombre constant non précisé d'opérations atomiques.

Définition: Soit `fun` une fonction prenant en argument `a1`, ..., `ak`, et `n(a1, ..., ak)` un paramètre entier dépendant des arguments. On appelle complexité en temps dans le pire cas de `fun` en fonction de `n` la fonction (mathématique) la fonction qui renvoie le nombre maximum d'opérations atomiques réalisées par `fun(a1, ..., ak)` parmi tous les ensembles de paramètres `(a1, ..., ak)` possibles

2) Notations de Landau
Définition: Soient $f,g:\textlbrackdbl n_{0};+\infty \textlbrackdbl\to \mathbb{R}^{+*}$ pour un certain $n_{0}\in \mathbb{N}$
On note $f(n)=O(g(n))$ pour $\exists k>0,\forall n\geq n_{0},f(n)\leq kg(n)$
On note $f(n)=\Omega(g(n))$ pour $\exists k>0,\forall n\geq n_{0},f(n)\geq kg(n)$
On note $f(n)=\Theta(g(n))$ pour $\exists k_{1},k_{2}>0,\forall n\geq n_{0},k_{1}g(n)\leq f(n)\leq k_{2}g(n)$
On note $f(n)=o(g(n))$ pour $\frac{f(n)}{g(n)}\underset{ n\to +\infty }{ \longrightarrow }0$

Remarques:
- $f=O(g)\iff g=\Omega(f)$
- $f=o(g)\implies f=O(g)$
- $f=\Theta(g)\iff f=O(g)\land f=\Omega(g)$

ATTENTION: ne jamais quantifier le $n$ dans $C(n)=O(g(n))$ car il est déjà quantifié

3) Profils de complexité
Définition: Soit $C$ la complexité de `fun` en fonction d'un paramètre $n$.
On dit que `fun` a une complexité:
- constante si $C(n)=\Theta(1)$
- logarithmique si $C(n)=\Theta(\log n)$
- linéaire si $C(n)=\Theta(n)$
- quasi-linéaire si $\exists k\in \mathbb{N}^{*},C(n)=\Theta(n\log ^{k}n)$
- quadratique si $C(n)=\Theta(n^{2})$
- polynomiale si $\exists k\in \mathbb{N}^{*},C(n)=O(n^{k})$
- exponentielle si $\begin{cases}\log(C(n))=\Omega(n)\\ \exists k\in \mathbb{N}^{*},\log(C(n))=O(n^{k})\end{cases}$
- factorielle si $C(n)=\Theta(n!)$
- **horrible** si $C(n)=\Theta(nn!)$

## II - Calcul de la complexité dans le pire cas

1) Boucles for
- Calculer (en n'explicitant pas les valeurs des constantes) le coût de chaque passage dans la boucle dans le pire cas. Parfois on se contents d'un encadrement
- Sommer sur tous les passages (le coût d'un passage peut dépendre du compteur de boucle)
- Ajouter les coûts (usuellement constants) des opérations hors de la boucle.

1) Boucles while
Pour les boucles while, on procède de même mais il faut quantifier le nombre de passages dans la boucle. Pour cela, on utilise un invariant de boucle comme pour la terminaison. Le coût d'un passage peut aussi dépendre du variant




# $a\uparrow^{n}b=a\uparrow^{n-1}(a\uparrow^{n}(b-1))$
# $a\uparrow^{-1}b=a+b$
# $\forall n>1,a\uparrow^{n}0=1$


# $BB(1)=1$
# $BB(2)=6$
# $BB(3)=14$
# $BB(4)=107$
# $BB(5)=47176870$
# $BB(6)>2\uparrow^{3}5$
# $BB(7)>2\uparrow^{11}(2\uparrow^{11}3)$
# $BB(8)\ggg BB(7)$
