---
tags:
---
#### Luna FREMONTIER-MURPHY MP2I

## I - Préliminaires
#### 1) a)
```OCaml
a = [|3; 4; 42; 6; 57; 13; 0; 9; 0; -1; 8|], deb =0, fin=6, pivot=6.

drapeau_neerlandais a 6 i j k

drapeau_neerlandais a 6 0 0 5

drapeau_neerlandais a 6 1 1 5

drapeau_neerlandais a 6 2 2 5
a = [|3; 4; 13; 6; 57; 42; 0; 9; 0; -1; 8|]
drapeau_neerlandais a 6 2 2 4
a = [|3; 4; 57; 6; 13; 42; 0; 9; 0; -1; 8|]
drapeau_neerlandais a 6 2 2 3
a = [|3; 4; 6; 57; 13; 42; 0; 9; 0; -1; 8|]
drapeau_neerlandais a 6 2 2 2

drapeau_neerlandais a 6 2 3 2
```
Qui renvoie `(2,3)`, on obtient à la fin :
```OCaml
a= [|3; 4; 6; 57; 13; 42; 0; 9; 0; -1; 8|]
``` 
avec `i=2` et `j=3`


#### b) 

#### c)
$\forall\text{ }x \in \textlbrackdbl deb, i \textrbrackdbl,a[x]<pivot$
$\forall\text{ }x \in \textlbrackdbl i,j \textrbrackdbl,a[x]=pivot$
$\forall\text{ }x \in \textlbrackdbl j,k \textrbrackdbl,a[x]=\text{ }???$
$\forall\text{ }x \in \textlbrackdbl k,fin \textrbrackdbl,a[x]>pivot$

#### 2)

#### 3)
On sait que $j \leqslant k$
On sait que `drapeau neerlandais` effectue au plus $K_{1}$ opérations atomiques,
On suppose que l'appel à `echange` est de coût constant $K_{2}$,
On note $m_{n}$ l'entier $k-j$ à la $n$-ième itération de la boucle
Dans tous les cas, soit $j$ augmente de $1$, soit $k$ diminue de $1$, donc $m_{n+1}=m_{n}-1$
On note $K_{3}=K_{1}+K_{2}$
De plus, $\mathcal C(0) \leqslant K_{3}$, donc $\mathcal C(m)=K_{3}+C(m-1)$,
Donc $\mathcal C(m)=K_{3}m$,
Donc $\underline{\mathcal C(m)=\Theta(m)}$

#### 4)
Soit $m=fin-deb$,
`tri_aux` effectue au plus $K_{1}$ opérations atomiques,
On sait également que `pivot` à un coût de $K_{2}n$ avec $n$ la taille du tableau