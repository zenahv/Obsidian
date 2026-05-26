(Algorithmes Gloutons)

# I - Définitions et reformulations d'un problème

<u>Déf</u>$\to$  
 >- Soit $E$ un ensemble fini non vide, 
 >- $C:E^{(\mathbb{N})}\to \mathbb{B}$ une fonction représentant les contraintes
 >- $\chi:E^{(\mathbb{N})}\to \mathbb{Z}$ une fonction objectif.
 >Le problème d'optimisation de contrainte $C$ et d'objectif $\chi$ consiste à trouver un tuple $t_{0}$ tel que : 
 >- $C(t_{0})$ est vrai 
 >- $\chi(t_{0})=\underset{ \large{t\in C^{-1}(\{ \texttt{true} \})} }{ \min (\chi(t))}$

<span style="color:violet">Remarque </span> 
Ceci n'est évidemment possible que si $C^{-1}(\{ \texttt{true} \})$ est non vide et que $\chi$ a un minimum dessus
Cependant, dans la plupart des cas, $C^{-1}(\{ \texttt{true} \})$ est trivialement vide et fini.

<span style="color:lime"><u><span style="color:green">Exemples</span></u></span> 
- On se donne $E\subset \mathbb{N}^{*}$ fini tel que $1\in E$
	On se donne $N\in \mathbb{N}$
	On cherche $(x_{1},\dots,x_{k})\in E^{(\mathbb{N})}$ tel que $\sum\limits_{i=1}^{k}x_{i}=N$
	et on veut minimiser $k$
	${\color{turquoise}C(x_{1},\dots,x_{k})}$ <span style="color:turquoise">est vrai ssi</span> ${\color{turquoise}\sum\limits_{i=1}^{k}x_{i}=N}$
	${\color{turquoise}\chi(x_{1},\dots,x_{k})=k}$ 
	En pratique, si $k>N,C(x_{1},\dots,x_{k})$ est faux car $\sum\limits_{i=1}^{k}x_{i}\geqslant k> N$
	Donc on cherche dans $\overset{ N }{  \underset{ k=0 }{ \bigcup } }E^{k}$ qui est fini
	De plus, $(\underbrace{ 1,\dots,1 }_{ N\text{ fois} })$ est trivialement solution, donc il existe une solution optimale

- Soit $G$ un graphe non orienté à $n$ sommets $\textlbrackdbl 0:n-1 \textrbrackdbl$
	On cherche à colorier les sommets de $G$ de sorte que deux sommets voisins 
	soient toujours de couleur distinctes et en minimisant le nb total de couleurs
	<span style="color:turquoise">On cherche dans </span>${\color{turquoise}\mathbb{N}^{n}}$ <span style="color:turquoise">(en pratique </span> ${\color{turquoise}\textlbrackdbl 0;n-1 \textrbrackdbl^{n}}$<span style="color:turquoise">) </span>
	${\color{turquoise}C(x_{0},\dots,x_{n-1})}$<span style="color:turquoise"> vrai ssi </span>${\color{turquoise}\forall i,j\in\textlbrackdbl 0;n-1 \textrbrackdbl,i\to j\implies x_{i}\neq x_{j}}$
	${\color{turquoise}\chi(x_{0},\dots,x_{n-1})=\underset{ 0\leqslant i<n }{ \max(x_{i}) }}$
	En pratique, $(0,1,\dots,n-1)$ est trivialement solution donc toute solution qui n'est pas
	dans $\textlbrackdbl 0;n-1 \textrbrackdbl^{n}$ n'est pas optimale. Il existe donc une solution optimale

<u>Déf</u>$\to$  
 >Soit $E$ un ensemble fini non vide 
 >Soit $C:E^{(\mathbb{N})}\to \mathbb{B}$ une fonction <u>décroissante</u> par l'instanciation telle que $C()$ est vraie sur le tuple vide
 >c'est à dire que $\forall k\in \mathbb{N},\forall(x_{1},\dots,x_{k},x_{k+1})\in E^{k+1},C(x_{1},\dots,x_{k+1})\implies C(x_{1},\dots x_{k})$
>Soit $\chi:E^{(\mathbb{N})}\to \mathbb{Z}$ une fonction objectif
>L'algorithme glouton pour le problème de contrainte $C$ et d'objectif $\chi$ consiste à appliquer l'algo récursif suivant au tuple vide
>Glouton : Entrée : tuple $t\in E^{(\mathbb{N})}$ tel que $C(t)$
>		Sortie : $t'\in E^{(\mathbb{N})}$ tel que $C(t'),$  avec $t'$ qui étend $t$
>---
>Algorithme : 
>Soit $(x_{1},\dots \times_{k})=t$
>Soit $S=\{ y\in E\text{ }|\text{ }C(x_{1},\dots,x_{k},y) \}$
>Si $S=\varnothing$
>	Renvoyer $t$
>Sinon 
>	Soit $(m,x_{k+1})$ tel que $x_{k+1}\in S,m=\chi(x_{1},\dots,x_{k},x_{k+1})=\underset{ y\in S }{ \min }(\chi(x_{1},\dots,x_{k},y))$
>	Renvoyer Glouton $(x_{1},\dots,x_{k+1})$


Pour définir un algorithme glouton sur un problème d'optimisation, qui en général n'a pas $C$ décroissante, on va relâcher les contraintes de façon à avoir $\tilde{C}$ décroissante, 
et modifier la fonction objectif de façon à ce que les solutions optimales du nouveau problème soient les solutions optimales de l'ancien problème
Pour définir un algorithme glouton sur un problème d'optimisation, 
qui en général n'a pas $C$ décroissante, on va relâcher les contraintes de façon à avoir $\tilde{C}$ décroissante, et modifier la fonction objectif de façon à ce que les solutions optimales du nouveau problème soient les solutions optimales de l'ancien problème

Concrètement, pour résoudre un problème avec un algo glouton.
- On relâche les contraintes qu'elles soient décroissantes
- On réordonne éventuellement les paramètres afin de faire les choix gloutons dans un ordre pertinent
- On définit, pour toute solution partielle (c'est à dire solution qui satisfit seulement les contraintes relâchées) le choix glouton
$\to$ Ceci permet d'écrire un algo glouton
Normalement, le problème est tel que vérifier $\tilde{C}(x_{1},\dots,x_{j},y)$ et calculer le choix glouton parmi les $y$ 
peut se faire en temps constant <small>ou rapide en tout cas</small> si on a calculé au fur et à mesure un sous-problème dépendant de $(x_{1},\dots,x_{j})$
-> Pour le ravitaillement on retient $(d_{i,j},i_{j})$
-> Pour le rendu de monnaie, on retient $\sum\limits_{i=1}^{j}x_{i}$
- Ceci nous définit une sous-structure pour le problème.
	On montre que cette sous-structure est optimale
- On montre que pour une solution $(x_{1},\dots,x_{k})$ optimale, on peut toujours remplacer 
	$x_{1}$ par le choix glouton $\to$ <span style="color:turquoise">importance de l'ordre des choix </span>
- On montre par récurrence sur $k$ la taille des solutions optimales
	que l'algo glouton calcule une solution optimale au problème

