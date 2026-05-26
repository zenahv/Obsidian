---
tags:
  - Info
---
# Structures de données séquentielles (partie 2)

## I - Piles
1) SDA
Les piles sont une structure de donnée séquentielle qui correspondent à une pile de documents, où on va poser sur le dessus de la pile et traiter le document sur le dessus en premier

Définition: Soit $E$ ensemble non vide. Les piles de $E$ sont $E^{(\mathbb{N})}$ munis de:
- `pile vide` = `()` est une constante pour les piles immuables, et une fonction qui crée une pile vide pour les piles mutables
- `est_vide` qui à une pile associe si cette pile est vide
- `empiler/push` qui à `[x0,...,xn-1] y` associe `[y,x0,...,xn-1]`
- `depiler/pop` qui à `[x0,...,xn-1]` associe `[x1,...xn-1], x0` si `n`$\geqslant 1$

2) Implémentations
1 - En encapsulant une liste
En OCaml, on peut faire de même avec une référence de liste: seul le pointeur vers le sommet de la pile doit être modifié

```ocaml
type 'a pile = 'a list ref

let creer () = ref []
let empiler p x = p := x :: !p
let depiler p = let o = hd !p in p := tl !p; o
```

2 - Avec un tableau redimensionnable
Il suffit de mettre à l'indice `i` le `(i+1)`ème élément de la pile en partant du fond
A tout instant, le sommet de la pile est l'élément d'indice `taille-1` du tableau redimensionnable

## II - Files
1) SDA
Si les piles sont LIFO, les files sont FIFO. Elles représentent ce qu'on entend usuellement par une file d'attente

Définition: Soit $E\neq \emptyset$, les files de $E$ sont les éléments de $E^{(\mathbb{N})}$ munis de:
- `file vide = ()`
- `est_vide
- `enfiler/add/enqueue` qui à `[x0,...,xn-1] y` associe `[y,x0,...,xn-1]`
- `defiler/take/dequeue` qui à `[x0,...,xn-1]` associe `[x0,...xn-2], xn-1` si `n`$\geqslant 1$ 

2) Implémentations
1 - Avec deux piles
```ocaml
type 'a file = {
	sortie: 'a pile;
	entree: 'a pile
}

let defiler f =
	if est_vide f.sortie
	then
		while not (est_vide f.entree) do
			empiler f.sortie (depiler f.entree)
		done;
	depiler f.sortie
```

3 - Implémentation des files en encapsulant une liste chaînée mutable

Idée. On déconstruit la liste chaînée pour défiler. Pour enfiler on modifie le pointeur du dernier maillon pour rajouter un maillon supplémentaire à la fin.
Il faut donc une encapsulation qui indique le maillon de tête et le dernier maillon.

```C
typedef struct {
	struct Maillon* out;
	struct Maillon* in;
} queue;
```

ATTENTION! L'information contenue dans le champ entrée est redondante et est seulement stockée pour éviter une recherche linéaire. Par conséquent, quand on enfile dans une file vide, ou qu'on défile d'une file à un seul élément, il faut faire un cas à part: les deux champs entrée et sortie 

## III - Tableaux associatifs
Définitions: Soient $K,V$ des ensembles non vides. On appelle tableau associatif à clés dans $K$ et valeurs dans $V$ un tuple $t$ de couples $(k, v)\in K\times V$ tel que $\forall k\in K,\forall v,v'\in V,((k,v)\in t \land(k,v')\in t)\implies v=v'$
muni de:
- le tableau associatif vide $\emptyset$, une constante si immuable, sinon la fonction créer
- `est_cle` qui indique si une clé est présente dans le tableau
- `trouver` qui renvoie l'unique $v$ tel que $(k,v)\in t$
- `ajouter` si $t,k,v$ sont tels que $\forall v'\in V,(k,v')\not\in t$, renvoie $t\cup \{ (k,v) \}$
- `retirer` si $t,k$ sont tels que $\exists v\in V,(k,v)\in t$, renvoie $t\setminus\{ (k,v) \}$

- `remplacer` $\forall t,k,v,$ si $\exists v'\in V,(k,v')\in t$: renvoie $(t\setminus\{ (k,v') \})\cup \{ (k,v) \}$ sinon renvoie $t\cup\{ (k,v) \}$

Toutes ces opérations sont de coût au plus logarithmique en $\mathrm{card}(t)$

