---
tags:
  - Info
---
# Structures de données séquentielles (P1)
## I - Structures de données abstraites et implémentation

1) Définition
Définition: Une SDA est un ensemble muni d'opérations, c'est à dire de fonctions dont le domaine ou l'image est cet ensemble ou un produit avec cet ensemble

2) Implémentation
Définition: On appelle implémentation d'une SDA $\mathcal F$ un type S et des fonctions qui la réalisent, c'est à dire que pour chaque $x \in \mathcal F$, il existe y de type S qui lui correspond et qu'on peut appliquer les fonctions de l'implémentation à y pour obtenir un résultat correspondant à celui des opérations sur $x$

Définition: On dit qu'une implémentation de la SDA $\mathcal F$ est mutable si les valeurs de type S sont modifiées (par effet de bord) par les fonctions correspondent à une opération dont le résultat contient y $\in\mathcal F$
On dit qu'une implémentation est immuable si les valeurs de type S ne sont jamais modifiées par les fonctions de l'implémentation, et celles-ci renvoient si nécessaires de nouvelles valeurs.

3) Complexité
Avec une SDA, on a normalement une notion de "bonne" complexité pour les opérations. Les implémentations doivent si possible respecter cette complexité (plus ou moins).

4) Barrière d'abstraction
Une implémentation d'une SDA a vocation à être utilisée par du code client.
Ce code client n'est pas forcément écrit par la même personne et n'a pas besoin de connaître les détails de l'implémentation pour fonctionner. L'interface de l'implémentation est la spécification des types et fonctions définies par rapport à la SDA.

La barrière d'abstraction signifie notamment que le type utilisé pour l'implémentation sera déclaré mais pas défini dans l'interface. Ceci impose de le manipuler par adresse (même s'il est immuable)

## II - Exemples de structures de données séquentielles
On parle de SD séquentielle pour des SDA dont l'ensemble est $E^{(\mathbb{N})}$, avec $E$ non vide

1) Tableaux
2) Tableaux redimensionables
Définition: Soit $E$ non vide. Les tableaux redimensionables de $E$ sont les tuples de $E$ munis de:
- créer, lire, écrire comme pour les tableaux
- ajouter qui ajoute une valeur à la fin d'un tuple
- taille
- restreindre qui projette le tableau redimensionnable sur les m premières coordonnées


Deux problèmes:
- Allouer un tableau plus grand dans la mémoire change l'adresse du tableau. Il faut donc passer l'adresse du tableau "par adresse": On va l'encapsuler dans une structure sur le tas.
  Solution: allouer un nouveau tableau qui remplace l'ancien `t->data`
- Si on gère l'ajout de cette façon, on recopie `data` en entier pour ajouter une valeur: le coût est linéaire
  Solution: On alloue un espace deux fois plus grand chaque fois qu'on réalloue `data` et on distingue la capacité de `t` (taille de `t->data`) de sa taille (nombre de valeurs utilisées dans `t->data`)


La complexité constante de lecture, écriture, taille, et restriction, sont évidentes par le dessin
En revanche, on voit que dans le pire cas (`t->capacité == t->taille`), l'ajout à un tableau redimensionnable de taille n a une complexité $\Theta(n)$
Cependant, la complexité amortie est constante.

Définition: Soit `op` une fonction qui prend en argument une structure mutable `t` et $n$ un paramètre dépendant de `t` utilisé pour étudier la complexité d'`op`
Alors la complexité en temps amortie d'`op` en fonction de $n$ est $\lim\limits_{ k \to +\infty } \frac{C_{k}(n)}{k}$ où $C_{k}(n)$ est la complexité en temps dans le pire case de $k$ appels successifs à `op` sur `t` initialement de paramètre $n$.

Concrètement, on va se donner un tableau redimensionnable de taille $n$ et montrer que faire $k$ ajouts sur ce tableau a un coût linéaire en $k$ où la constante ne dépend pas de $n$. On aura $C_{k}(n)\leqslant Kk+K'n$
Donc $\frac{C_{k}(n)}{k}\leqslant K+\frac{K'n}{k}\underset{ k\to +\infty }{ \to }K$

Proposition: Avec l'implémentation décrite plus haut, `ajouter` a une complexité amortie $\Theta(1)$ en fonction de $n$ la taille du tableau redimensionnable.

Preuve: Soit $n\geqslant 1$, `t` tableau redimensionnable initialement de taille $n$ et de capacité $c$. Soit $i\geqslant 1$, on s'intéresse au coût du i-ème ajout successif à `t`
Cas 1: avant le i-ème ajout, on a `t->capacité`$\geqslant n+i$. Alors ils suffit de modifier `t->taille` et `t->data[n+i-1]`. Coût constant
Cas 2: `t->capacité`=`t->taille` alors il faut allouer un nouveau tableau de taille $(n+i-1)\times 2$, lire $n+i-1$ valeurs dans l'ancien tableau, écrire $n+i$ valeurs dans le nouveau et modifier `t->taille`, `t->capacité`, `t->data`. Le coût est linéaire.
On remarque que les capacités successives de `t` sont $c,2\mathbf{c}..,2^{j}c$
Donc on est dans le second cas ssi il existe $j\in \mathbb{N},2^{j}c=n+i-1$
C'est à dire ssi $\log_{2}\left(\frac{n+i-1}{c}\right)\in \mathbb{N}$

3) Listes chainées
### 1) SDA
Soit $E$ un ensemble non vide, les listes chaînées de $E$ sont les tuples de $E$ munis de:
- La liste vide $()\in E^{0}$. Si l'implémentation est mutable, on dispose d'une fonction qui renvoie une nouvelle liste vide. Si elle est immuable, la liste vide est une constante
- `est_vide(l)` qui est vraie ssi `l` est la liste vide
- `cons(x, (l0, ..., ln-1))` qui renvoie `(x, l0, ..., ln-1)`
- `tete`, `queue`

Opérations non essentielles à la notion:
- `longueur(l)` qui associe à `l` son nombre d'éléments
- `ieme((l0, ..., ln-1), i)` qui renvoie `li`

### 2) Implémentation immuable
Une liste est un pointeur vers son maillon de tête (ou un pointeur nul si elle est vide). Un maillon est constitué d'une valeur et d'un pointeur vers le maillon suivant (ou pointeur nul).
On représente par $\perp$ un pointeur nul.












