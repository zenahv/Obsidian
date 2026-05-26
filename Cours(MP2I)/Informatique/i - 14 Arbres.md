# Arbres (lmao what, i don't touch grass :v)

# <u>I - Arbres binaires</u>

## <u>1. Définition et propriétés</u>

<u>Déf</u> $\to$
>Soit $E$ un ensemble non vide.
>L'ensemble des arbres binaires d'étiquette $E$ est la structure inductive dont la signature est :
>- Un unique constructeur constant, non typé, noté Vide
>- Un constructeur d'arité 2, typé par $E$, noté Nœud

```OCaml
type 'a arbre_bin = Vide
	|Noeud of 'a * 'a arbre_bin * 'a arbre_bin
```
<u>Exemple</u>
```OCaml
let a=Noeud(42,Noeud(3,Vide,Noeud(0,Vide,Vide))),Noeud(0,Vide,Vide)
```
```avatar
image: Random images/Arbre 1.png
description: |-
  [[Arbre 1.png]]
  Représentation schématique de l'arbre ci dessus
```

<u>Déf</u> $\to$
>Soit $A$ un arbre binaire non vide. Les sous-termes immédiats de $A$ sont appelés 
>le sous-arbre gauche de $A$ et le sous-arbre droit de $A$

<u>Déf</u> $\to$
>Soit $A$ un arbre binaire.
>La taille de $A$ est le nombre de nœuds de $A$,
>c'est-à-dire le nombres d'occurences du constructeur Noeud dans $A$
>La hauteur de $A$ est la quantité définie réursivement par 
>$\begin{cases}h(Vide)=-1 \\ \forall x \in E,A_{g},A_{d} \text{ des arbres binaires, }h(Nœud(x,A_{g},A_{d}))=1+\max(h(A_{g});h(A_{d}))\end{cases}$

<u>Remarque</u> :
taille$(Vide)=0$
taille$(Nœud(x;A_{g};A_{d}))=1+\text{taille}(A_{g})+\text{taille}(A_{d})$

$\boxed{\text{Proposition}}$ :
Soit `A` un arbre binaire, $n$ sa taille et $h$ sa hauteur. Alors $h+1\leqslant n\leqslant 2^{h+1}-1$
De plus, $\forall k\in \textlbrackdbl 1,+\infty \textrbrackdbl$ il existe un arbre de hauteur $h$ et de taille $h+1$, et un arbre de hauteur $h$ et de taille $2^{h+1}-1$

<u>Preuve</u> :
Montrons les inégalités par induction structurelle

<u>Init</u>
Si $A=Vide$, $n=0$, et $h=-1$
Or $-1+1 \leqslant 0 \leqslant 2^{-1+1}-1$

<u>Hérédité</u>
Soit $A=Nœud(x,A_{g},A_{d})$ un arbre non vide
Notons $n_{g},n_{d},h_{g},h_{d}$ les tailles et les hauteurs de $A_{g}$ et $A_{d}$
Supposons $\begin{cases}h_{g}+1\leqslant n_{g} \leqslant 2^{h_{g}+1}-1 \\ h_{d}+1 \leqslant n_{d} \leqslant 2^{h_{d}+1}-1\end{cases}$
Alors $h=\max(h_{g}+1;h_{d}+1)\leqslant h_{g}+h_{d}+2\underset{ \text{Par HI} }{ \leqslant }n_{g}+n_{d}$
Donc $h+1\leqslant n_{g}+n_{d}+1=n$

Supposons SPDG $h_{g} \leqslant h_{d}$
Alors $h=h_{d}+1$
$n=n_{g}+n_{d}+1\leqslant 2^{h_{g}+1}+2^{h_{d}+1}-2+1$
Par HI
Donc $n \leqslant 2 \times 2^{h_{d}+1}-1\leqslant 2^{h_{d}+2}-1=2^{h+1}-1$
On a donc prouvé l'init et l'hérédité
Pour tout arbre binaire $A$ de taille $n$ et de hauteur $h$, $h+1\leqslant n \leqslant 2^{h+1}-1$

De plus posons les familles d'arbres les familles suivants pour $x \in E$ quelconque

Peigne $\iff$ arité $=$ hauteur + 1

$\begin{cases}A_{1}=Vide \\ \forall k\in \mathbb{N},A_{k}=Nœud(x,A_{k-1},Vide)\end{cases}$   $\to$ peigne gauche (cas particulier de peigne)

$\begin{cases}A'_{1}=Vide \\ \forall k\in \mathbb{N},A'_{k}=Nœud(x,A'_{k-1},A'_{h-1})\end{cases}$
On vérifie aisément que $\forall k\in \mathbb{N}\cup \{ -1 \},A_{k}$ et $A'_{k}$ sont de hauteur $h$
et taille $(A_{k})=h+1$, taille $(A'_{k})=2^{h+1}-1$

```avatar
image: Random images/Arbre 2.png
description: "[[Arbre 2.png]]"
```

<u>Déf</u> $\to$
>Soit $A$ un arbre binaire étiqueté par $E$
>-Les sous-arbres de $A$ sont les arbres inférieurs ou égaux à $A$ selon l'ordre structurel
>-Les nœuds de $A$ sont les sous-arbres non vides de $A$ avec leur position dans $A$
>-L'élément de $E$ qui type le constructeur Nœud est l'étiquette d'un nœud

```avatar
image: Random images/Arbre 3.png
description: "[[Arbre 3.png]]"
```


<u>Déf</u> $\to$
>Soit $A$ un arbre binaire, $M$ et $N$ deux nœuds de $A$.
>On dit que $M$ est le parent de $N$ si $N$ est à la position du sous-arbre droit ou gauche de $M$
>Dans ce cas, on dit respectivement que $N$ est l'enfant gauche ou droit de $M$


<u>Remarque</u> :
Soit $A$ un arbre binaire. Tout nœud de $A$ qui n'est pas la racine a un unique parent, la racine n'a pas de parent.
Tout nœud de $A$ a 0,1 ou 2 enfants
(⚠ : il est toujours d'arité 2 car il a un sous-arbre gauche et droit(éventuellements vides ))
Un nœud sans enfant est parfois appelé feuille.
<u>Déf</u>$\to$  
 >Soit $A$ arbre binaire, $N$ un nœud de $A$
 >On appelle profondeur de $N$ dans $A$ la longueur de l'unique chemin de $N$ à la racine de $A$
 >C'est à dire l'unique $p \in \mathbb{N}$ tel qu'il existe $M_{0},\dots,M_{p}$ des nœuds de $A$ 
 >avec $\begin{cases}M_{0}=N \\ M_{p}=\text{racine de }A \\ \forall i\in \textlbrackdbl 0;p-1 \textrbrackdbl,M_{i+1}\text{ est le parent de }M_{i}\end{cases}$
 
$\boxed{\text{Proposition}}$
Soit $A$ un arbre binaire de hauteur $h$, $N$ un nœud de $A$
Alors la profondeur de $N$ dans $A$ est bien définie et est majorée par $h$

<u><span style="color:gold"> Preuve </span></u> 
Montrons par induction structurelle sur $A$ que
pour tout $A$ arbre binaire de hauteur $h$, pour tout nœud $N$ de $A$,
la profondeur de $N$ dans $A$ est au plus $h$

<u>Init.</u>
Si $A=$`Vide`, il n'existe aucun nœud dans $A$ donc la propriété est trivialement vraie

<u>Hérédité</u>
Soit $A=Nœud(x,A_{g},A_{d})$ non vide et de hauteur $h \geqslant 0$
On suppose la propriété vraie pour $A_{g}$ et $A_{d}$
Soit $N$ nœud de $A$
Si $N$ est la racine de $A$, alors sa profondeur dans $A$ est bien définie et est $0\leqslant h$
Sinon, $N$ peut être vu comme $\tilde{N}$ nœud de $A_{g}$ ou de $A_{d}$
Supposons SPDG que c'est un nœud de $A_{g}$
Alors par Hypothèse d'Induction (H.I.), la profondeur de $\tilde{N}$ dans $A_{g}$ est un entier $p'\leqslant h_{g}\leqslant h-1$
Donc il existe $\tilde{N}=\tilde{M_{0}},\tilde{M_{1}},\dots,\tilde{M_{p'}}=$racine de $A_{g}$ une suite de nœuds de $A_{g}$ tel que chaque nœud soit l'enfant du suivant

Or, les $\tilde{M}_{i}$ pour $0\leqslant i \leqslant p'$ correspondant à des nœuds $M_{i}$ pour $0 \leqslant i \leqslant p'$ de $A$.
On pose $M_{p'+1}$ la racine de $A$
Alors $N=M_{0}$ et $\forall i\in \textlbrackdbl 0;p' \textrbrackdbl$, $M_{i}$ est l'enfant de $M_{i+1}$
Donc la profondeur de $N$ dans $A$ est $p'+1\leqslant h$
![[Arbre 5.png]]


<u>Déf</u>$\to$  
 >Soit $h \geqslant -1$ entier et Soit $A$ de hauteur $h$
 >On appelle $A$ parfait si tous les nœuds de $A$ de profondeur $<h$ ont exactement deux enfants
 >On appelle $A$ complet si :
 >- Tous les nœuds de $A$ de profondeur $<h-1$ ont exactement deux enfants
 >- $N$ nœud de $A$ de profondeur $h-1$ a $0$ ou $1$ enfant, alors
 >	- $N$ n'a pas d'enfant droit
 >	- tous les nœuds de profondeur $h-1$ à droite de $N$ n'ont aucun enfant
 
 ---

![[Arbre 6.png]]

$\boxed{\text{Proposition}}$
Soit $A$ arbre binaire de hauteur $h\geqslant -1$
Alors les 3 propositions suivantes sont équivalentes :
- $A\text{}$ est parfait                                                                  <small>(1)</small>
- $A$ est de taille $2^{h+1}-1$                                                  <small>(2)</small>
- Si $A$ est non vide,
	les deux sous-arbres immédiats 
	de $A$ sont parfaits de hauteur $h-1$                         <small>(3)</small>

---
<u><span style="color:gold"> Preuve </span></u> 
 Montrons le par induction structurelle sur $A$
 
<u>Init</u>
Si $A$ est `Vide`, alors
<small>(1)</small> $\iff h=-1$ (car `Vide` est parfait)
<small>(2)</small> $\iff$ $h=-1$ (car $A$ est de taille $0$)
<small>(3)</small> $\iff$ $h=-1$ 

<u>Hérédité</u>
Soit $A=$Nœud$(x,A_{g},A_{d})$ arbre non vide, $h\geqslant 0$ sa hauteur.
Soit $h_{g}\leqslant h-1$ la hauteur de $A_{g}$
Supposons $A_{g}$ parfait 
$\iff$
$A_{g}$ de taille $2^{h}-1$
$\iff$
Si $A_{g}$ est non vide, 
ses deux sous-arbres immédiats de $A_{g}$ sont parfaits de hauteur $h-2$

---
Supposons de même pour $A_{d}$

- (1)$\implies$(3) [sans induction]
Supposons $A$ parfait de hauteur $h$
Alors tous ses nœuds de profondeur $p \in \textlbrackdbl 0;h-1 \textrbrackdbl$ ont <u>exactement deux enfants</u>
Donc tout nœud de profondeur $p'\in \textlbrackdbl 0;h-2 \textrbrackdbl$ dans $A_{g}$ (ou $A_{d}$) 
correspond à un nœud de profondeur $p'+1$ dans $A$ et a <u>exactement deux enfants</u>
$A_{g}$ n'est pas vide si $h\geqslant 1$ car <u>la racine a deux enfants</u>, et donc
Si $h\geqslant 1$, $h_{g}$ $\geqslant h-1$ par ce qui précède $+$ récurrence immédiate,
Sinon $h_{g}$ $-1=0-1$

Or $h_{g}\leqslant h-1$ par définition de la hauteur
Donc $A_{g}$ est de hauteur exactement $h-1$ et tous ses nœuds de profondeur $p'\in \textlbrackdbl 0;h-2 \textrbrackdbl$ ont deux enfants.
$A_{g}$ est parfait de hauteur $h-1$ et de même pour $A_{d}$

- (3) $\implies$ (2) [avec induction]
Supposons $A_{g}$ et $A_{d}$ parfaits de hauteur $h-1$.
Alors par H.I. (1) donc (2) pour ces arbres et $n_{g}=n_{d}=2^{h-1+1}-1=2^{h}-1$
Donc $n=n_{g}+n_{d}+1=2(2^{h}-1)+1=2^{h+1}-1$

- (2) $\implies$ (1) [avec induction]
Supposons $A$ de taille $2^{h+1}-1$
$A_{g}$ et $A_{d}$ sont de taille au plus $2^{h}-1$ (si $h_{g}=h_{d}=h-1$ et que ses arbres sont parfaits)
Or, $2(2^{h}-1)+1=2^{h+1}-1$ donc 
$n_{g}<2^{h}-1$ ou $n_{d}<2^{h}-1$ donnerait $n=n_{g}+n_{d}+1<2^{h+1}-1$, <u><b>ce qui est impossible</u></b>
Nécessairement, $n_{g}=n_{d}=2^{h}-1$ et donc $h_{g}=h_{d}=h-1$
Donc $A_{g}$ et $A_{d}$ vérifient (2).
Donc par H.I. ils sont parfaits,
donc tout nœud de profondeur $p \in \textlbrackdbl 1;h-1 \textrbrackdbl$ dans $A$ est un nœud de profondeur $p'\in \textlbrackdbl 0;h-2 \textrbrackdbl$
dans $A_{g}$ ou $A_{d}$ et a exactement deux enfants
De plus, si $h\geqslant 1,$ alors $A_{g}$ et $A_{d}$ sont de hauteur $h-1\geqslant 0$,
donc <u>non vides</u>, donc la racine de $A$ a deux enfants.
Donc $A$ est bien parfait

---
## 2. <u>Parcours en profondeur d'un arbre binaire</u>
Une fonction récursive sur les arbres qui s'appelle toujours (hors cas de base)
sur le sous-arbre gauche(ou droit) est appelée parcours en profondeur d'un arbre.

Par convention, sauf indication contraire, un parcours en profondeur sera de gauche à droite

Si un algorithme de parcours en profondeur effectue une opération avec effet de bord sur les nœuds qu'il rencontre, cette opération peut se faire :
- Avant les deux appels récursifs <small><span style="color:crimson"> -> parcours préfixe</span></small>
- Après les deux appels récursifs <small><span style="color:crimson"> -> parcours infixe</span></small>
- Entre les deux appels récursifs <small><span style="color:crimson"> -> parcours suffixe</span></small>

![[Arbre 7.png]]

suit la ligne bleue,
1$^{er}$ passage, ordre préfixe, 
2$^{e}$ passage, ordre infixe
3$^{e}$ passage, ordre suffixe

## 3. <u>Parcours en largeur d'un arbre binaire</u>
$\to$ Parcourir un arbre binaire en largeur revient à lire ses nœuds par ordre de profondeur, 
usuellement de gauche à droite sur une profondeur donnée.
Ceci ne correspond pas à la structure inductive des arbres binaires et est rarement fait.
L'algorithme le + simple est le suivant :
```OCaml
type 'a arbre_bin = Vide
	|Noeud of 'a * 'a arbre_bin * 'a * arbre_bin

let bfs (a : 'a arbre_bin) = 
	let f1 = Queue.create() in (*file courante à traiter : ne contient que la racine*)
	let f2 = Queue.create() in (*file des noeuds de la profondeur suivante*)
	Queue.add a f1;
	let rec parcours_niveau courant suiant p = (*suivant vide lors de l'appel, on peut se passer de p, mais est pertinent tout de même*)
	if not Queue.is_empty courant then 
	begin
		while not Queue.is_empty courant do
			match Queue.take courant with
				|Vide -> ()
				|Noeud(x,gauche,droit) ->
					(*opération en fonction de x (et p ?) *)
					Queue.add gauche suivant;
					Queue.add droite suivant
			done;
		parcours_niveau suivant courant (p + 1)
	end
	in parcours_niveau f1 f2 0
	
```
p = 0 :
f1 = $\leftarrow$ $a \leftarrow$
f2 = $\leftarrow\leftarrow$

p = 1 :
f1 = $\leftarrow\leftarrow$
f2 = $\leftarrow(3(0));(0)\leftarrow$

p = 2 :
f1 = $\leftarrow Vide;(0);Vide;Vide\leftarrow$
f2 = $\leftarrow\leftarrow$

p = 3 :
f1 = $\leftarrow\leftarrow$
f2 = $\leftarrow Vide;Vide\leftarrow$

p = 4 :
f1 = $\leftarrow\leftarrow$
f2 = $\leftarrow\leftarrow$
<span style="color:crimson"> fin de l'execution </span>

<span style="color:violet"> Remarque </span> 
 Si $A$ est un arbre complet de taille $n$ (et donc de hauteur $\lfloor \log_{2}(n) \rfloor$)
 alors pour $p \in \textlbrackdbl 0; \lfloor \log_{2}(n) \rfloor \textrbrackdbl$, les nœuds de profondeur $p$ ont pour numéro dans l'ordre d'un BFS les entiers :
 $\textlbrackdbl 2^{p};\min(,;2^{p+1}-1) \textrbrackdbl$
 Si le nœud numéro $i$ a des enfants, son enfant gauche est de numéro $2i$,
 et son enfant droit de numéro $2i+1$.
 Si $i\in \textlbrackdbl 2;n \textrbrackdbl$, le parent du nœud $i$ est le nœud de numéro $\left\lfloor  \frac{i}{2}  \right\rfloor$

Il est donc pratique de représenter un arbre complet pur, les cases d'indices $1$ à $n$ d'un tableau (redimensionnable)
de taille $n+1$.
Ceci permet aussi de faire grossir l'arbre en ajoutant des feuilles (plutôt que via la structure inductive),
ce qui correspond bien aux arbres complets.

# II - <u>Arbres binaires stricts non vides</u> <small>(ABSNV)</small>

## 1. <u>Définition et propriétés</u>
<u>Déf</u>$\to$  
 >Soient $E$ et $F$ des ensembles non vides.
 >L'ensemble des <span style="color:red"><u><span style="color:white">arbres binaires stricts non vides dont les nœuds internes sont étiquetés par E et les feuilles étiquetées par F</span></u></span> <small><span style="color:red"> (E,F)-ABSNV </span></small> est la structure inductive dont la signature est :
 >- Feuille, constructeur constant typé par $F$
 >- Nœud Interne <small>NI</small>, constructeur d'arité $2$ typé par $E$ 
 
```OCaml
type ('a, 'b) absnv = Feuille of 'b
	|NoeudInterne of 'a * ('a,'b)absnv * ('a,'b)absnv
```

<u>Exemple</u> :$E=\{ +;-; /;\times \}$, $F=\mathbb{Z}$
![[Arbre 8.png]]
NI($-$,NI($\times$, Feuille 6, Feuille 8),NI($+$,NI($\times$, Feuille 2, Feuille 2), Feuille 2))

<u>Déf</u>$\to$  
 >Soit $A$ un ABSNV
 >- Les sous-arbres de $A$ sont les ABSNV inférieurs ou égaux à $A$ pour l'ordre structurel
 >- Les nœuds de $A$ sont les sous-arbres <small>(y compris ceux réduits à une feuille)</small> de $A$.
 >- La racine de $A$ est le nœud correspondant à $A$ tout entier <small>(elle existe toujours !)</small>
 >- L'étiquette d'un nœud est le paramètre <small>(de E ∪ F)</small> du constructeur de ce nœud
 >- On garde les mêmes notions de SAG,SAD,parent,enfant et profondeur
 >- La taille de $A$ est le nombre total de nœuds 
 >- La hauteur de $A$ est définie récursivement par $\begin{cases}\forall y\in F,h(\text{Feuille}(y))=0 \\ \forall x \in E,\forall A_{g},A_{d}\text{ des }(E,F)\text{-ABSNV},h(\text{NI}(x,A_{g},A_{d}))=1+\max(h(A_{g});h(A_{d}))\end{cases}$
 
 <span style="color:violet"> Remarque </span> 
 - Chaque nœud a exactement deux enfants si c'est un nœud interne, et aucun si c'est une feuille.
 - Il n'y a pas d'arbre vide

<span style="color:violet"> Remarque </span> 
- Soit $A$ un <b>arbre binaire</b> étiqueté par $E$. Alors on peut voir $A$ comme $\varphi(A)$ un $(E,\{ Vide \})$-ABSNV.
	$\varphi(A)$ est de hauteur $h(A)+1$ et <small>(comme on va le montrer)</small> de taille $2*\text{taille}(A)+1$
	$\varphi:E\text{-arbres binaires}\to(E;\{ Vide \})\text{-ABSNV}$ est une bijection
- Réciproquement, soit $A$ un $(E,F)$-ABSNV.
	Alors on peut voit $A$ comme $\Psi(A)$ un arbre binaire de même taille et même hauteur étiqueté par $E\cup F$:
	toutes les feuilles de $A$ correspondant à des nœuds de $\Psi(A)$ ayant deux sous-arbres vides
	$\Psi:(E,F)\text{-ABSNV}\to(E\cup F)\text{-arbres binaires}$ est injective, mais pas surjective (même si $E=F$)

$\boxed{\text{Proposition}}$
Soit $A$ un ABSNV, $n$ sa taille, $f$ son nombre de feuilles et $i$ le nombre de ses nœuds internes.
Alors $f=i+1$. En particulier $n=f+i$ est impair 

<u><span style="color:gold"> Preuve </span></u> 
 On procède par induction structurelle 
 
<u>Init.</u>
Si $A$=Feuille$(y)$ pour $y\in F,$ alors $f=1$ et $i=0$

<u>Hérédité</u> : Soit $A=$NI$(x,A_{g},A_{d})$ un ABSNV non réduit à une feuille,
$f_{g},f_{d},i_{g},i_{d}$ les nombres de feuilles et de nœuds internes de $A_{g}$ et $A_{d}$. On suppose :

$\begin{cases}f_{g}=i_{g}+1 \\ f_{d}=i_{d}+1\end{cases}$

Or tout nœud de $A$ est la racine de $A$ <small>(qui est par hypothèse un nœud interne)</small>, ou un nœud de $A_{g}$ ou $A_{d}$
Donc $f=f_{g}+f_{d}$ et $i=i_{g}+i_{d}+1$
Donc par HI, $f=i_{g}+1+i_{d}+1=i+1$

$\boxed{\text{Proposition}}$
Soit $A$ un ABSNV de hauteur $h$ et de taille $n$.
Alors $2=h+1\leqslant n \leqslant 2^{h+1}-1$, et de plus, $\forall h\in \mathbb{N},$ il existe un ABSNV de hauteur $2$ et de taille $2h+1,$
et un ABSNV de hauteur $h$ et de taille $2^{h+1}-1$

<u><span style="color:gold"> Preuve </span></u> 
 $\Psi$ mentionnée dans la remarque préserve la taille et la hauteur,
donc $n \leqslant 2^{h+1}-1$ découle directement de la propriété sur les arbres binaires.
De plus, les arbres parfaits non vides sont (aux étiquettes près) dans l'ens. image de $\Psi$,
donc on a également l'existence d'un ABSNV qui atteint la borne.

- Prouvons par induction structurelle que $2h+1\leqslant n$ pour tout $A$ ABSNV.

<u>Init.</u> 
Si $A=$Feuille$(y)$, $h=0,n=1$, $2\times0+1 \leqslant 1$

<u>Hérédité</u>
Soit $A=$NI$(x,A_{g},A_{d})$ un ABSNV non réduit à une feuille, 
$h_{g},h_{d},n_{g},n_{d}$ les hauteurs et les tailles de $A_{g}$ et $A_{d}$. On suppose
$\begin{cases}2h_{g}+1\leqslant n_{g} \\ 2h_{d}+1\leqslant n_{d}\end{cases}$
Or $n=n_{g}+n_{d}+1$ et $h=1+\max(h_{g};h_{d})$ avec $h_{g}$ et $h_{d}$ <span style="color:red"><u><span style="color:white">positifs</span></u></span>
Donc 
$\begin{align}2h+1 & =3+\max(2h_{g};2h_{d}) \\  & \leqslant{3}+2(h_{g}+h_{d}) \\  & \leqslant{1}+2h_{g}+1+2h_{d}+1 \\  & \leqslant{1}+n_{g}+n_{d} \\  & \leqslant n\end{align}$
De plus, on pose
$\begin{cases}A_{0}=\text{Feuille}(42) \\ \forall h \geqslant 1, A_{h}=\text{NI}(42,\text{Feuille}(42),A_{h-1})\end{cases}$
Il est clair que pour tout $h\in \mathbb{N}$, $A_{h}$ est de hauteur $h$ et de taille $2h+1$

## 2. Parcours en profondeur préfixe d'un ABSNV

$\boxed{\text{Proposition}}$
Soient $E$ et $F$ deux ensembles non vides et <b><u>disjoints</u></b>, $\varphi$ la fonction qui à un $(E,F)$-ABSNV 
associe la séquence des étiquettes de ses nœuds dans l'ordre préfixe
Alors $\varphi$ est injective, en particulier, un $(E,F)$-ABSNV est uniquement déterminé par son écriture préfixe

<span style="color:violet">Remarque </span> 
$\varphi$ n'est évidemment pas surjective sur $(E\cup F)^{\mathbb{N}}$
Elle n'est même pas sur $\overset{  }{  \underset{ n\in \mathbb{N} }{ \bigcup } }\{ (t_{1},\dots,t_{2n+1})\in(E\cup F)\text{ }|\text{ }\exists I\subset \textlbrackdbl 1,2n+1 \textrbrackdbl\text{ tq }\mathrm{Card}(I)=n \text{ et }t_{i}\in E\iff i\in I\}$

<span style="color:violet">Remarque </span> 
 Si $E$ et $F$ ne sont pas disjoints, la proposition est clairement fausse 
 car il existe plusieurs $(\{ () \},\{ () \})$-ABSNV de même taille
 
<span style="color:violet">Remarque </span>  (lmao encore$\text{ }|\text{ }$John $\to$🐈)
Ceci est faux pour l'ordre infixe

<u>Lemme</u>
>Soient $E$ et $F$ non vides disjoints, $\varphi$ comme dans la prop,
>Soient $A$ et $B$ des $(E,F)\text{-ABSNV}$ de tailles respectives $m$ et $n$ tels que $\forall i\in \textlbrackdbl 0,\min(m,n)-1 \textrbrackdbl$, $\varphi(A)[i]=\varphi(B)[i]$ Alors $A=B$ (en particulier, $m=n$ et $\varphi(A)=\varphi(B)$

<u><span style="color:gold"> Preuve </span></u> 
 Prouvons le par induction structurelle sur $A$

<u>Init</u>
Soit $A=\texttt{Feuille}(y)$ pour $y\in F$, $B$ qui vérifie l'hypothèse, $m=\texttt{taille}(A)=1$. Si $n=\texttt{taille}(B)=1$, $\varphi(A)=y=\varphi(B)$ donc $B=\texttt{Feuille}(y)=A$ Si $\texttt{taille}(B)\geqslant 3$, $B=\texttt{NI}(x,B_{g},B_{d})$ avec $x\in E$ donc $\varphi(B)[0]=x\neq y$ car $E\cap F=\emptyset$ Hérédité: Soit $A=\texttt{NI}(x,A_{g},A_{d})$ avec $x\in E$. On pose $m_{g}$ et $m_{d}$ les tailles de $A_{g}$ et $A_{d}$, $m=1+m_{g}+m_{d}$  ## III - Arbres d'arité quelconque et forêts Pour un arbre d'arité quelconque, chaque nœud a une liste d'enfants. On a donc des structures mutuellement inductives - Un arbre est le constructeur `Noeud` appliqué à une forêt - Une forêt est soit la liste vide `[]`, soit le constructeur des listes, typé par un arbre, appliqué à une forêt
⁩
```OCaml
type 'a arbre = Noeud of 'a * 'a foret 
and 'a foret = 'a arbre list
```

Définition:
> Soit $A$ un arbre d'arité quelconque.
> On appelle nœud de $A$ les sous-termes de $A$ de type arbre avec leur position dans $A$.
> On défini la taille de $A$ comme le nombre de nœuds, la hauteur de $A$ comme précédemment

$\boxed{Proposition}$
Notons $n,h,a$ et $\ell$ les fonctions qui à une forêt associent respectivement sa taille, sa hauteur, son arité et sa hauteur
Notons $N$ et $H$ les fonctions qui à un arbre binaire associent sa taille et sa hauteur.
Alors, si $\varphi$ est une bijection canonique des forêts vers les arbres binaires pour toute forêt $f$
- $n(f)=N(\varphi(f))$
- $h(f)\leqslant H(\varphi(f))\leqslant h(f)+a(f)$

