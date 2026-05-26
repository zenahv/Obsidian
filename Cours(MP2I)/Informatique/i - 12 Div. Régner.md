---
tags:
  - Info
---
# Diviser pour régner 

# I - Principe 

1) Définition

>Diviser pour régner est une technique algorithmique qui consiste à écrire un algorithme récursif qui divise un problème (hors cas de base) en sous-problèmes <u>indépendants entre eux</u> et <u>de même structure que le problème initial</u>

En pratique, en dehors du cas de base, on a les étapes :
- <u>Diviser</u> : définir au + $a$ sous-problèmes $qn+  \mathcal O(1)$ avec $a\in \mathbb{N}^{*},q\in[0;1[$ $(\text{q = } \dfrac{1}{2}\text{ le cas le + courant})$
- <u>Régner</u> : résoudre par $a$ appels récursifs chacun des sous-problèmes
- <u>Rassembler</u> : à partir des solutions des sous-problèmes, calculer la solution du problème initial  

2) Analyse de complexité

$\underline{\text{Théorème :}}$ (Théorème du maître) On considère un algorithme "Diviser pour régner" tel que  :
	- $\exists n_{0}\in \mathbb{N}$ tel que $\forall n\geqslant n_{0}$, chaque problème de taille $n$ est divisé en $a$ sous-problèmes
	- La taille de chacun de ses sous-problèmes est majorée par $\dfrac{n}{b}+K,$ avec $b\geqslant 2$ entier $K$ constante
	- La complexité des phases Diviser et Rassembler est au total $\mathcal O(n^{\gamma})$, avec $\gamma \in \mathbb{R}_{+}$

Soit $\mathcal C(n)$ la complexité de l'algo.
Alors : 
- Si $\log_{b}(a)>\gamma,$ alors $\mathcal C(n)=\mathcal O(n^{\log_{b}(a)})$
- Si $\log_{b}(a)<\gamma,$ alors $\mathcal C(n)=\mathcal O(n^{\gamma})$
- Si $\log_{b}(a)=\gamma,$ alors $\mathcal C(n)=\mathcal O(n^{\gamma}\log_{b}(n))$
--- 
$\underline{\text{Remarque :}}$ Pour atteindre une valeur $\leqslant n_{0}$
on doit diviser $n$ par $b$, environ $\log_{b}(\dfrac{n}{n_{0}})$ fois
Donc on a $\sum\limits_{i=0}^{\log_{b}(n/n_{0})}a_{i}$ appels effectués.
Si $a \geqslant 2$, ceci est environ $\frac{a^{\log_{b}\left( \frac{n}{n_{0}} \right)+1}}{a-1}$
$\simeq a^{\log_{b}(n)}=n^{\log_{n}(a)\times \log_{b}(n)}$
$=n^{\log_{b}}(a)$
Le premier cas correspond à une complexité de l'ordre de grandeur du nombre d'appels récursifs

$\underline{\text{Schéma de preuve :}}$
On se place pour simplifier dans le cas $n=b^{m},$ $K=0,n_{0}=b$
Chaque sous-problème est de taille $b^{m-1}$
Soit $K'>0$ tel que la complexité des phases Diviser et Rassembler soient majorés par $K'n^{\gamma}$
$\forall m\geqslant 1$, $\mathcal C(b^{m})\leqslant a \underbrace{ \mathcal C(b^{m-1}) }_{ \underset{ \text{d'un sous problème de taille }b^{m-1} }{ \text{majore la complexité } } } +K'b^{m\gamma}$
On pose $\alpha=b^{\gamma}$
$\forall m\geqslant{1}$, $\mathcal C(b^{m})\leqslant a\mathcal C(b^{m-1})+K'\alpha^{m}$
$\dfrac{\mathcal C(b^{m})}{\alpha^{m}}\leqslant \dfrac{a}{\alpha}\times \dfrac{\mathcal C(b^{m-1})}{\alpha^{m-1}}+K'$

$\underline{\text{Cas 1 :}}\log_{b}(a)>\gamma$. Donc $\alpha=b^{\gamma}<b^{\log_{b}(a)}=a$. Donc $\dfrac{a}{\alpha}>1$
Donc $(\dfrac{\mathcal C(b^{m})}{\alpha^{m}})_{m \geqslant{0}}$ est majorée par une suite arithmético-géométrique de raison $\dfrac{a}{\alpha}>1$
Donc $\forall m\geqslant 0,\dfrac{\mathcal C(b^{m})}{\alpha^{m}}\leqslant(\dfrac{a}{\alpha})^{m}K_{1}+K_{2}$
Donc $\forall m\geqslant{0},\mathcal C(b^{m})\leqslant a^{m}K_{1}+\alpha^{m}\times K_{2}$. Donc $\mathcal C(b^{m})=\mathcal O(a^{m})=\mathcal O((b^{m})^{\log_{b}(a)})$

$\underline{\text{Cas 2 :}}\log_{b}(a)<\gamma$ Alors $\alpha>a, 0 < \dfrac{a}{\alpha}<1$
Donc $(\dfrac{\mathcal C(b^{m})}{\alpha^{m}})_{m\geqslant 0}$ est majorée par une suite arithmético-géométrique de raison $\dfrac{a}{\alpha}\in[0,1[$
Donc elle est majorée par une constante $K''$
$\forall m \geqslant{0}, \mathcal C(b^{m})\leqslant K''\alpha^{m}=K''(b^{m})^{\gamma}$. Donc $\mathcal C(b^{m})=\mathcal O((b^{m})^{\gamma})$

$\underline{\text{Cas 3 :}}\log_{b}(a)=\gamma$. Alors $\dfrac{a}{\alpha}=1$
$(\dfrac{\mathcal C(b^{m})}{\alpha^{m}})_{m\geqslant 0}$ est majorée par une suite arithmétique de raison $K'$.
Donc $\forall m\geqslant 0$, $\dfrac{\mathcal C(b^{m})}{\alpha^{m}} \leqslant K'm+constante$
$\forall m \geqslant{0},$ $\mathcal C(b^{m})\leqslant K'm\alpha^{m}+cste\times\alpha^{m}$
Donc $\mathcal C(b^{m})=\mathcal O(m(b^{m})^{\gamma})$
$=\mathcal O((b^{m})^{\gamma}\log_{b}(b^{m}))$
---
exemple : 
- $a=1,b=2,\gamma=0$
- $a=2,b=2,\gamma=1$
---

# II - Exemples déjà connus

1) Exponentiation rapide 

```OCaml
let rec puissance x n =
	if n = 0 then 1. (*cas de base*)
	else 
		let y = puissance x (*Diviser*)(n / 2)(*Diviser*) in (*Régner*)
		y *. y *. (if n mod 2 = 0 then 1. else x) (*Rassembler*)
```

Soit $\mathcal C(n)$ la complexité dans le pire cas de ```puissance x n``` pour $x \in \mathbb{R}$.
$\mathcal C(0)$ est bien fini 
Pour tout $n \geqslant 1,$ les phases Diviser et Rassembler ont un coût au plus constant $K$
Donc $\forall n\geqslant 1, \mathcal C(n)\leqslant \mathcal C(\lfloor \dfrac{n}{2} \rfloor)+K$

Soit $K' =\text{max}(\mathcal C(2);\mathcal C(3);K)$, montrons $\forall n\geqslant 2, \mathcal C(n)\leqslant K'\log_{2}(n)$. $\begin{cases}\mathcal C(1)\leqslant \mathcal C(0)+K  \\\mathcal C(2)\leqslant \mathcal C(1)+K  \\ \mathcal C(3)\leqslant \mathcal C(1)+K  \end{cases}\text{ }\text{ }\text{ sont finis}$
$\underline{\text{Initialisation :}}$
Par définition de $K'$,
	$\mathcal C(2)\leqslant K'=K'\log_{2}(2)$
	$\mathcal C(3)\leqslant K' < K'\log_{2}(3)$

$\underline{\text{Hérédité :}}$
Soit $n \geqslant 4$. On suppose $\forall n'\in \textlbrackdbl 2;n-1 \textrbrackdbl$, $\mathcal C(n')\leqslant K'\log_{2}(n')$
	Alors $\mathcal C(n)\leqslant \mathcal C(\lfloor \dfrac{n}{2} \rfloor)+K$
	Or $n\geqslant 4$ donc $\lfloor \dfrac{n}{2} \rfloor\in \textlbrackdbl 2;n-1 \textrbrackdbl$ 
	Donc par HR, $\mathcal C(n)\leqslant K'\log_{2}(\lfloor \dfrac{n}{2} \rfloor)+K$
	Donc $\mathcal C(n)\leqslant K'(\log_{2}(n)-1)+K$
	$\leqslant K' \log_{2}(n)$ car $K'\geqslant K$

---

```OCaml
let recherche_dicho t x =
	let rec aux deb fin =
	(*Cas de base*)
		if deb >= fin then None 
		else 
			let pivot = (deb + fin)/2 in (*Diviser*)
			if t.(pivot)=x then Some(pivot)
	(*Cas de base*)
			else (*Diviser*)if t.pivot > x(*Diviser*) then (*Régner*)aux deb pivot(*Régner*)
			else (*Régner*)aux ((*diviser*)pivot+1(*diviser*)) fin(*Régner*)
	in
	aux 0 (Array.length t)
```


# III - Algorithmes de tri 

1) Tri fusion

Le tri fusion est un algorithme "Diviser pour Régner" qui trie un $n$-uplet (pour $n\in \mathbb{N}$) ainsi :
Si $n\leqslant 1,$ c'est fait, sinon :
- Diviser : On sépare le $n$-uplet en un $\left\lfloor  \frac{n}{2}  \right\rfloor-$uplet et un $\left\lceil  \frac{n}{2}  \right\rceil$-uplet
- Régner : On trie ces deux tuples par deux appels récursifs
- Rassembler : Soient $t_{1},t_{2}$ les deux tuples triés obtenus à l'étape précédente
On construit leur fusion $t$ en parcourant $t_{1}$ et $t_{2}$ en parallèle,
en sélectionnant à chaque fois le plus petit des deux termes (si égalité, on prend celui de $t_{1}$), puis en avançant uniquement dans le tuple où on a sélectionné un terme.
Si on a fini le parcours d'un des deux tuples, on copie simplement tous les termes restants de l'autre.
$\underline{\text{Exemple :}}$
$n=8$
```
7 3 1 9 6 5 1 2
```
- Diviser (partition)
```
7 3 1 9                6 5 1 2
```

```
7 3     1 9            6 5     1 2 
```

```
7      3             1      9              6      5               1      2 
```

```
3 7     1 9            5 6      1 2 
```

```
1 3 7 9                1 2 5 6
```
- Rassembler (fusion)
``` 
1 1 2 3 5 6 7 9 
```
"compare successivement les deux tuples, de droite à gauche, si égal prend $t_{1}$"

$\underline{\text{Complexité}}$ : Soir $\mathcal C(n)$ la complexité dans le pire cas pour un $n-$uplet
Il est clair que $\mathcal C(0)$ et $\mathcal C(1)$ sont finis.
Si $n\geqslant 2$

(1) Diviser dépend de la structure de données utilisée.
Peut-on calculer des indices de début/fin comme sur un tableau ou faut-il recopier chaque valeur dans un des tuples $t_{1},t_{2}$. Dans tous les cas, complexité au plus $K{n}$ avec $K$ constante.

(2) Régner a une complexité dans le pire cas de au plus $\mathcal C\left( \left\lfloor  \frac{n}{2}  \right\rfloor \right)+\mathcal C\left( \left\lceil  \frac{n}{2}  \right\rceil \right)$
On peut facilement se convaincre qu'il s'agit d'une égalité : le pire cas dépend uniquement de la permutation des valeurs.

(3) Rassembler nécessite de parcourir chacun des tuples $t_{1}$ et $t_{2}$ et de faire au moins $\left\lfloor  \frac{n}{2}  \right\rfloor$ comparaisons, au plus $n-1$.
La complexité de la phase rassembler est encadrée par $K'n$ et $K''n$ avec $K',K''>0$
$\forall n\geqslant 2,\underbrace{ K'n }_{ K_{1} }+\mathcal C\left( \left\lfloor  \frac{n}{2}  \right\rfloor \right)+\mathcal C\left( \left\lceil  \frac{n}{2}  \right\rceil \right)\leqslant \mathcal C(n)$
	$\mathcal C(n)\leqslant \underbrace{ (K+K') }_{ K_{2} }n+\mathcal C\left( \left\lfloor  \frac{n}{2}  \right\rfloor \right)+\mathcal C\left( \left\lceil  \frac{n}{2}  \right\rceil \right)$
$\gamma=1,a=2,b=2$
( $\log_{b}(a)=\gamma$ donc $\mathcal C(n)=\mathcal O(n\log n)$ )

### Montrons de deux façons différentes que $\mathcal C(n)=\Theta(n\log n)$

$\underline{\text{1re façon}}$ : (Fonctionne toujours)
Soit $K_{3} = min \left( \frac{\mathcal C(2)}{2}, \frac{\mathcal C(3)}{3\log_{2}(3)}, \frac{2K_{1}}{3}  \right), K_{4} = max\left(  \mathcal C(2),\mathcal C(3), \frac{8K_{2}}{3} \right)$
Montrons par récurrence sur $n$ que $\forall n\geqslant 2,K_{3}n\log_{2}(n)\leqslant \mathcal C(n)\leqslant K_{4}n\log_{2}(n)$

$\underline{\text{Initialisation :}}$
$K_{3}\times{2}\leqslant \mathcal C(2) \leqslant K_{4} \times 2$
$K_{3}\times 3\log_{2}(3)\leqslant \mathcal C(3)\leqslant K_{4}\times 3\log_{2}(3)$

$\underline{\text{Hérédité :}}$
Soit $n\geqslant 4.$ On suppose $\forall n'\in \textlbrackdbl 2;n-1 \textrbrackdbl$, $K_{3}n'\log_{2}(n')\leqslant\mathcal C(n')\leqslant K_{4}n'\log_{2}(n')$
Or $K_{1}n+\mathcal C\left( \left\lfloor  \frac{n}{2}  \right\rfloor \right)+\mathcal C\left( \left\lceil  \frac{n}{2}  \right\rceil \right)\leqslant \mathcal C(n)\leqslant K_{2}n +\mathcal C\left( \left\lfloor  \frac{n}{2}  \right\rfloor \right)+\mathcal C\left( \left\lceil  \frac{n}{2}  \right\rceil \right)$
$n\geqslant 4$ donc $\left\lfloor  \frac{n}{2}  \right\rfloor\in \textlbrackdbl 2;n-1 \textrbrackdbl$ et $\left\lceil  \frac{n}{2}  \right\rceil=n-\left\lfloor  \frac{n}{2}  \right\rfloor\in \textlbrackdbl 2;n-1 \textrbrackdbl$
Donc, par HR
$K_{1}n+K_{3}\left\lfloor  \frac{n}{2}  \right\rfloor\log_{2}\left( \left\lfloor  \frac{n}{2}  \right\rfloor \right)+K_{3}\left\lceil  \frac{n}{2}  \right\rceil\log_{2}\left( \left\lceil  \frac{n}{2}  \right\rceil \right)      \leqslant \mathcal C(n)\leqslant      K_{2}n+K_{4}\left\lfloor  \frac{n}{2}  \right\rfloor\log_{2}\left( \left\lfloor  \frac{n}{2}  \right\rfloor \right)+K_{4}\left\lceil  \frac{n}{2}  \right\rceil\log_{2}\left( \left\lceil  \frac{n}{2}  \right\rceil \right)$
$K_{1}n+K_{3}\left\lfloor  \frac{n}{2}  \right\rfloor\log_{2}\left( \left\lfloor  \frac{n}{2}  \right\rfloor \right)+K_{3}\left\lceil  \frac{n}{2}  \right\rceil\log_{2}\left( \left\lceil  \frac{n}{2}  \right\rceil \right) \underbrace{ +K_{3}\left\lfloor  \frac{n}{2}  \right\rfloor \log_{2} (\frac{2\lceil \frac{n}{2} \rceil}{n})   }_{ \text{terme correctif ou }f(n) }    \leqslant \mathcal C(n)$
$\leqslant      K_{2}n+K_{4}\left\lfloor  \frac{n}{2}  \right\rfloor\log_{2}\left( \left\lfloor  \frac{n}{2}  \right\rfloor \right)+K_{4}\left\lceil  \frac{n}{2}  \right\rceil\log_{2}\left( \left\lceil  \frac{n}{2}  \right\rceil \right)+\underbrace{ K_{4}\left\lceil  \frac{n}{2}  \right\rceil\log_{2} \left( \frac{2\left\lceil  \frac{n}{2}  \right\rceil}{n} \right) }_{ g(n) }$
$K_{1}n+K_{3}n(\log_{2}(n)-1)+f(n)\leqslant \mathcal C(n)\leqslant K_{2}n+K_{4}n(\log_{2}(n)-1)+g(n)$
---
On veut majorer $-f(n)$ et $g(n)$ en fonction de $K_{3}$ et $K_{4}$ respectivement
$f(n)=K_{3}\left\lfloor  \frac{n}{2}  \right\rfloor\log_{2}\left(  \frac{2\left\lfloor   \frac{n}{2}   \right\rfloor}{n}  \right)$ avec $2\left\lfloor  \frac{n}{2}  \right\rfloor \in\{n-1;n\}$
$\geqslant K_{3}\left\lfloor  \frac{n}{2}  \right\rfloor\log_{2}\left( 1-\frac{1}{n} \right)$ vu que $\log_{2}\left( 1-\frac{1}{n} \right)<0$ alors
$\geqslant \frac{K_{3}n}{2}\log_{2}\left( 1-\frac{1}{n} \right)\geqslant \frac{K_{3}n}{2}\log_{2}\left( \frac{3}{4} \right)$ car $n\geqslant 4$
$\geqslant - \frac{K_{3}n}{2}$
---
$g(n)=K_{4}\left\lceil  \frac{n}{2}  \right\rceil\log_{2}\left(\frac{2\left\lfloor   \frac{n}{2}   \right\rfloor}{n} \right)$ avec $2\left\lfloor  \frac{n}{2}  \right\rfloor \in\{n;n+1\}$
$\leqslant K_{4}\left( \frac{n+1}{2} \right)\log_{2}\left( 1+\frac{1}{n} \right)$
$<K_{4} \frac{n+1}{2}$ car $\log_{2}\left( 1+\frac{1}{n} \right)\leqslant\log_{2}\left( \frac{5}{4} \right)<1$
$\leqslant \frac{5K_{4}}{8}n$
Donc $\left( K_{1}-K_{3}- \frac{K_{3}}{2} \right)n+ K_{3}n\log_{2}(n)\leqslant \mathcal C(n)$
$\mathcal C(n)\leqslant (K_{2}-K_{4}+\frac{5K_{4}}{8})n+K_{4}\log_{2}(n)$
$\underbrace{ \left( K_{1}- \frac{3K_{3}}{2} \right) }_{ \geqslant0 }n+K_{3}n\log_{2}\leqslant\mathcal C(n)\leqslant\underbrace{ \left( K_{2} - \frac{3K_{4}}{8} \right) }_{ \leqslant 0 }n+K_{4}n\log_{2}(n)$
$K_{3}n\log_{2}(n)\leqslant \mathcal C(n) \leqslant K_{4}\log_{2}(n)$
On a donc montré que $\forall n\geqslant 2, K_{3}n\log_{2}(n)\leqslant \mathcal C(n)\leqslant K_{4}n\log_{2}(n)$
donc $\mathcal C(n)=\Theta(n\log (n))$


$\underline{\text{2e façon :}}$ (Méthode plus simple)
On définit pour $n\in \mathbb{N}, \mathcal C'(n)=\underset{ i\in \textlbrackdbl 0;n \textrbrackdbl }{\text{ max }} \mathcal C(i)$
$\mathcal C'$ est croissante sur $\mathbb{N}$
De plus, on vérifie aisément qu'on a toujours
$\forall n\geqslant 2,K_{1}n+C'\left( \left\lceil  \frac{n}{2}  \right\rceil \right)+C'\left( \left\lfloor  \frac{n}{2}  \right\rfloor \right)\leqslant \mathcal C'(n)\leqslant K_{2}n+\mathcal C'\left( \left\lceil  \frac{n}{2}  \right\rceil \right)+\mathcal C'\left( \left\lfloor  \frac{n}{2}  \right\rfloor \right)$
Montrons par récurrence sur $m$ que $\forall m\geqslant 1$, $K_{1}m2^{m}\leqslant \mathcal C'(2^{m})\leqslant K_{2}m 2^{m}+\mathcal C'(1)2^{m}$

$\underline{\text{Initialisation :}}$
$\mathcal C'(2^{0})=\mathcal C'(1)\geqslant 0 = K_{1}\times 0\times {2}^{0}$
$\mathcal C'(1)\leqslant 0 +\mathcal C'(1)=K_{2}\times{0}\times 2^{0}+\mathcal C'(1)$

$\underline{\text{Hérédité :}}$
Soit $m \geqslant {1}$. Supposons $K_{1}(m-1)2^{m-1}\leqslant \mathcal C'(2^{m-1})\leqslant K_{2}(m-1)2^{m-1}+\mathcal C'(1)2^{m-1}$
$m\geqslant 1,$ donc $2^{m}\geqslant 2$
Donc $K_{1}2^{m}+2\mathcal C'(2^{m-1})\leqslant \mathcal C'(2^{m})\leqslant K_{2}2^{m}+2\mathcal C'({2}^{m-1})$
Donc par HR
$K_{1}2^{m}+2K_{1}(m-1)2^{m-1}\leqslant \mathcal C'(2^{m})\leqslant K_{2}2^{m}+2K_{2}(m-1)2^{m-1}+2\mathcal C'(1)2^{m-1}$
$K_{1}2^{m}(1+m-1)\leqslant\mathcal C'(2^{m})\leqslant K_{2}2^{m}(1+m-1)+\mathcal C'(1)2^{m}$
$K_{1}m{2}^{m}\leqslant\mathcal C'(2^{m})\leqslant K_{2}m 2^{m}+\mathcal C'(1)2^{m}$
---
Or $\mathcal C'$ est croissante
Donc $\forall n\geqslant 1,$ on a $\underbrace{ K_{1}\lfloor \log_{2}(n) \rfloor {2}^{\lfloor \log_{2}(n) \rfloor} }_{ K_{1}(\log_{2}(n)-1) \frac{n}{2} }\leqslant\mathcal C'(2^{\lfloor \log_{2}(n) \rfloor})\leqslant\mathcal C'(n)\leqslant\mathcal C'(2^{\lceil \log_{2}(n) \rceil})\leqslant\underbrace{ (K_{2}\lceil \log_{2}(n) \rceil+\mathcal C'(1))2^{\lceil \log_{2}(n) \rceil} }_{ \leqslant{2}K_{2}n\log_{2}(n)+2n(K_{2}+\mathcal C'(1)) }$
Donc $\mathcal C'(n)=\Theta(n\log_{2}(n))$

##### Prouvons la correction du tri fusion 
Algorithme :
```OCaml
let rec diviser l =
  match l with
  | []        -> ([], [])
  | [x]       -> ([], [x])
  | x2::x1::q -> 
      let (l1, l2) = diviser q in
      (x1::l1, x2::l2)

let rec fusion l1 l2 =
  match (l1, l2) with
  | ([], _)          -> l2
  | (_, [])          -> l1
  | (x1::q1, x2::q2) ->
      if x1 <= x2 then x1 :: fusion q1 l2
      else             x2 :: fusion l1 q2

let rec tri_fusion_liste l =
  if l = [] || List.tl l = [] then l
  else
    let (l1, l2) = diviser l in
    fusion (tri_fusion_liste l1) (tri_fusion_liste l2)
```
Correction du tri fusion sur les listes 

Montrons que `tri_fusion_liste l` est une permutation de `l` triée par ordre croissant, pour toute liste `l`

$\underline{\text{Lemme 1}}:$ $\forall$`l` liste, `diviser l`=`(l1,l2)` tels que `l1@l2` est une permutation de `l` et |`longueur(l1)-longueur(l2)`|$\leqslant{1}$

$\underline{\text{Preuve}}$ par récurrence sur `n` la longueur de `l` (`diviser`)

$\underline{\text{Init}}$
Si `n`=0, `diviser [] = ([],[])`,
`[]@[]=[]` et les longueurs sont égales.
Si `n`=1, `diviser [x]=([],[x])`
`[]@[x]=[x]` et |`longueur([])-longueur([x])`| = 1

$\underline{\text{Hérédité}}$
Soit $n$ $\geqslant 2$. Supposons que pour toute liste $l'$ de longueur $n-2$,
`diviser(l')=(l1',l2')` avec `l1'@l2'` permutation de `l'` et |`longueur(l1')-longueur(l2')`|$\leqslant 1$
Soit `l=x2::x1::l'` de longueur `n`
`diviser l=(x1::l1',x2::l2')`
`(x1::l1')@(x2::l2')` est une permutation de `x2::x1::(l1'@l2')`
qui par HR est une permutation de `x1::x2::l'=l`
De plus,
|`longueur(x1::l1')-longueur(x2::l2')`|
$=$ |`longueur(l1')-longueur(l2')`|$\leqslant 1$ par HR

---

$\underline{\text{Lemme 2}}:$ Pour toutes listes `l1,l2` triées,
`fusion l1 l2` est une permutation triée de `l1@l2`

$\underline{\text{Preuve}}$ par récurrence sur `n=longueur(l1)+longueur(l2)`

$\underline{\text{Init}}$ 
Si `n`=0 ou `n`=1, l'une des deux listes est vide
`fusion [] l2` = `l2` = `[]@l2` 
`fusion l1 []` = `l1` = `l1@[]`

$\underline{\text{Hérédité}}:$
Soit`n` $\geqslant 2$. Supposons que pour toutes listes `l1',l2'` triées telles que
`longueur(l1')+longueur(l2')=n-1`
On a `fusion l1' l2'` qui est une permutation triée de `l1@l2`

Soit `l1,l2` des listes triées telles que `longueur(l1)+longueur(l2)=n`
Si `l1=[]` ou `l2=[]`, on est dans le cas déjà étudié et `fusion` correcte

On suppose donc `l1=x1::q1, l2=x2::q2`

$\underline{\text{Cas 1}}:$
`x1` $\leqslant$`x2`
Par HR, `fusion q1 l2` est une permutation triée de `q1@l2`
Soit `y` élément de `q1`, `x1` $\leqslant$ `y` car `l1` est triée.
Sinon, `y` est un élément de `l2` qui est triée, donc `x2` $\leqslant$ `y` et donc `x1` $\leqslant$ `y`
Donc `x1` minore `q1@l2` et `x1::fusion q1 l2` est une permutation triée de `x1::(q1@l2)=l1@l2`

$\underline{\text{Cas 2}}:$ `x1`>`x2`. Preuve similaire
##### 
---
Par récurrence sur `n`= longueur(`l`)

$\underline{\text{Init}}:$
Si `n`$=0$ ou `n`$=1$, `l` est déjà triée et `tri_fusion l` $=$ `l`

$\underline{\text{Hérédité}}:$
Soit $n$ $\geqslant 2$
On suppose $\forall n'\in \textlbrackdbl 0;n-1 \textrbrackdbl$,  $\forall \ell'$ de longueur $n'$,
`tri_fusion l'` est une permutation triée de $\ell'$
Soit $(\ell_{1},\ell_{2})=$ `diviser l`
|longueur(`l1`) $-$ longueur(`l2`)| $\leqslant 1 < n$
et longueur(`l1`) $+$ longueur (`l2`) $=n$            d'après le $\underline{\text{Lemme 1}}$
Donc longueur(`l1`) $\leqslant n-1$, longueur (`l2`) $\leqslant n-1$
Donc par HR,
`tri_fusion l1` est une permutation triée de `l1`.
`tri_fusion l2` est une permutation triée de `l2`.
Donc, d'après le $\underline{\text{Lemme 2}}$, comme `tri_fusion l` et `tri_fusion l2` sont triées,
`tri_fusion l` est donc une permutation triée de `l1@l2`.
Or d'après le $\underline{\text{Lemme 1}}$, `l1@l2` est une permutation de `l`
Donc `tri_fusion l` est une permutation triée de `l`



2) Tri rapide 


Algorithme : 
```OCaml
let echange t i j =
  (* échange les valeurs d'indice i et j dans a *)
  if (i <> j) then
    begin
      let temp = t.(i) in
      t.(i) <- t.(j);
      t.(j) <- temp  
    end

let diviser t pivot deb fin =
  let rec aux i j k =
  (* 
    effectuera la partie "Diviser" de l'algorithme entre des valeurs deb et fin
    la fonction est appelée telle que on ait :
        
    deb        i          j        k          fin
     |         |          |        |           |
    +---------+----------+----------+---------+
    | < pivot |   pivot  |   ????   | > pivot |
    +---------+----------+----------+---------+

    L'appel de la fonction a pour effet de bord de placer t.(j) au bon endroit, en maintenant la propriété.
    Puis un appel récursif sur les nouvelles valeurs de i, j, k est fait
    Si j > k, alors t.(j) est déjà bien placé et il n'y a plus rien à faire.

    La fonction renvoie i et j tels que :

    deb        i          j        fin
     |         |          |         |
    +---------+----------+---------+
    | < pivot |   pivot  | > pivot |
    +---------+----------+---------+
  *)
  if j > k then (i, j)
  else
    if t.(j) = pivot      then aux i (j + 1) k
    else if t.(j) > pivot then (
      echange t j k; 
      aux i j (k - 1)
    )
    else                       (
      echange t i j; 
      aux (i + 1) (j + 1) k
    )
  in
  aux deb deb (fin - 1)

let tri_rapide t =
  (* trie a *)
  let rec tri_aux deb fin =
    (* trie le tableau entre debut inclus et fin exclus *)
    if deb < fin - 1 (* si le tableau a 0 ou 1 élément, il n'y a rien à trier *)
    then 
      let pivot = t.(deb) in
      let (i, j) = diviser t pivot deb fin in

      (* RÉGNER *)
      tri_aux deb i;
      tri_aux j fin

      (* Il n'y a rien à faire pour la phase RASSEMBLER *)
    in
    tri_aux 0 (Array.length t)
```

Le tri rapide (ou tri pivot) est un tri en place (sans allouer de nouveau tableau), qui n'a d'effet de bord sur le tableau que en échangeant des valeurs.

Pour prouver la correction de ce tri, il suffira donc de prouver que le tableau est trié à la fin.
Les valeurs sont par correction de l'échange, toujours les mêmes.

$\underline{\text{Diviser}}:$ Si $n\geqslant 2,$ à l'aide d'échanges, répartit les éléments dans la portion à trier de la façon suivante. [Voir ligne 360]
$$
deb\leqslant i \leqslant j \leqslant fin
$$
pivot est une valeur présente dans la portion du tableau, que l'on peut par exemple fixer à la valeur initiale de `t.(deb)`
Après la phase Diviser,
toutes les valeurs d'indice $\ell \in \textlbrackdbl i\text{ };\text{ }j-1 \textrbrackdbl$ sont bien placées.
En effet, il existe exactement $i$ - $deb$ valeurs < $pivot$ dans les valeurs de la partie considérée du tableau. Donc il est correct de placer des valeurs égales à pivot à partir du rang $i$

$\underline{\text{Régner}} :$
- trier les valeurs de gauche (entre $deb$ et $i-1$)
- trier les valeurs de droite (entre $j$ et $fin-1$)
[Voir ligne 376]

$\underline{\text{Preuve de correction}}$
   (On admet la correction de diviser)
Par récurrence sur $n=fin-deb$ la taille de la portion à trier.

$\underline{\text{Init}}:$
Si $n=0$ ou $n=1$
la portion est triée et l'algo ne fait rien

$\underline{\text{Hérédité}}:$ 
Soit $n\geqslant 2$ tel que $\forall n' \in \textlbrackdbl 0;n-1 \textrbrackdbl$, $\forall deb',fin'\leqslant taille(t)$ tels que $n'=fin'-deb'$, `tri_aux deb' fin'`
trie la portion du tableau entre deb' et fin'-1

Soit deb, fin $\leqslant$ taille(t) tels que fin - deb = n
On applique `diviser t t.(deb) deb fin`  (avec t.(deb) le pivot)
On obtient [ligne 380] avec deb $\leqslant$ i $\leqslant$ j $\leqslant$ fin
Donc en particulier $j-deb<n$
				$fin-i<n$
Donc par HR,
- `tri_aux deb i` trie la portion entre les indices `deb` et `i-1`
	$deb'=deb$                                $fin'=i$
- `tri_aux j fin` trie la portion entre les indices `j` et `fin-1`
	$deb'=j$                                   $fin'=fin$
Donc la portion entre les indices `deb` et `fin-1` est triée.
En effet, soit $k<\ell$ dans $\textlbrackdbl deb;fin-1 \textrbrackdbl$
- Si $k,\ell \in \textlbrackdbl deb; i-1 \textrbrackdbl$,
	$t.(k)\leqslant t.(\ell)$ car la $1^{\text{e}}$ portion est triée

- Si $k,\ell \in \textlbrackdbl j;fin-1 \textrbrackdbl$,
	$t.(k)\leqslant t.(\ell)$ car la $3^{\text{e}}$ portion est triée

- Sinon $k\in \textlbrackdbl deb;j-1 \textrbrackdbl$ et $\ell \in \textlbrackdbl i;fin-1 \textrbrackdbl$
	Donc $t.(k)\leqslant pivot \leqslant t.(\ell)$

## Complexité du tri rapide
$\boxed{\text{Proposition}}$

On suppose qu'à chaque appel récursif de `tri_rapide` entre les indices $deb$ et $fin-1$, 
on choisit de façon uniforme aléatoire parmi les $t.(i)$, $deb \leqslant i < fin$
Alors l'espérance de la complexité de `tri-rapide` sur 
un tableau de $n$ éléments $\underset{ \text{non nécessaire mais simplifie la preuve} }{ \text{deux-à-deux distincts} }$ est $\mathcal O(n\log(n))$.

### <u>Preuve</u>
On suppose SPDG <small>(sans perte de généralité)</small> que $t$ est une permutation de $\textlbrackdbl 0;n-1 \textrbrackdbl$

Notons $\mathcal C(k)$ <u>l'espérance</u> de la complexité sur une portion du tableau de taille $fin-deb=k$

$\boxed{\text{Soit }k\geqslant2}$

On considère un appel `tri_aux t deb fin` avec $fin-deb=k$
Comme le tri rapide est correct et qu'il n'y a <b>pas</b> de phase <u>Rassembler</u>,

Au début de cet appel, les valeurs de $t.(deb)\dots t.(fin-1)$ sont <u>aussi</u> 
les valeurs qui seront aux <b>indices</b> $deb$ à $fin-1$ dans le tableau <b>trié</b>

<u>D'après la supposition plus haut</u>, ce sont $\textlbrackdbl deb;fin-1 \textrbrackdbl$

On a une <u>probabilité</u> de $\dfrac{1}{k}$ de choisir chaque élément comme <b>pivot</b>

Si on a $pivot \in \textlbrackdbl deb;fin-1 \textrbrackdbl$, alors les <b>appels récursifs</b> ont pour <u>espérance de compléxité</u> :
$$
\mathcal C(pivot-deb) \text{ et } \mathcal C(fin-pivot-1)
$$
 En posant $i=\texttt{pivot}-\texttt{deb}$, on a donc $C(i)$ et $C(k-i-1)$ 


De plus, le <u>coût de "Diviser"</u> est <b>majoré</b> par $Ak$ avec $A$ une constante
$$
\begin{align}
\text{Donc }\mathcal C(k) & \leqslant Ak+\sum\limits_{i=0}^{k-1}P(pivot=deb+i)\times \mathbb{E}(\text{compléxité des appels récursifs}) \\
 & \leqslant Ak+\sum\limits_{i=0}^{k-1} \frac{1}{k}(\mathcal C(i)+\mathcal C(k-i-1)) \\
 & \leqslant Ak + \frac{1}{k} \left( \sum\limits_{i=0}^{k-1}\mathcal C(i)+ \sum\limits_{i'=0}^{k-1}\mathcal C(i') \right) \\
 & \leqslant Ak + \frac{2}{k} \sum\limits_{i=0}^{k-1}\mathcal C(i)
\end{align}
$$

<u>Posons maintenant</u>

$\begin{cases}u_{0}=\mathcal C(0) \\ u_{1}=\mathcal C(1) \\ \forall k \geqslant 2, u_{k}=Ak + \frac{2}{k} \sum\limits_{i=0}^{k-1}u_{i}\end{cases}$

<b>Par une récurrence immédiate</b>, $\forall k\geqslant 0,C(k)\leqslant u_{k}$ $\forall k\geqslant 2,ku_{k}=Ak^{2}+2\sum\limits_{i=0}^{k-1}u_{i}$ 
$$
\begin{align}
\forall k\geqslant 3,ku_{k}-(k-1)u_{k-1}=Ak^{2}+2\sum\limits_{i=0}^{k-1}u_{i}-A(k-1)^{2}-2\sum\limits_{i=0}^{k-2}u_{i}=A(k^{2}-(k-1)^{2})+2u_{k-1}=A(2k-1)+2u_{k-1} \\

\forall k\geqslant 3,ku_{k}-(k-1)u_{k-1}-2u_{k-1}=A(2k-1)$ $\forall k\geqslant 3,ku_{k}-(k+1)u_{k-1}\leqslant 2Ak
\forall k\geqslant 3,\frac{u_{k}}{k+1}-\frac{u_{k-1}}{k}\leqslant \frac{2A}{k+1}
\end{align}
$$
Donc en faisant une <u>nouvelle somme télescopique</u>
$$
\forall k\geqslant 2, \frac{u_{k}}{k+1}-\frac{u_{2}}{3}=\sum\limits_{i=3}^{k} \frac{u_{i}}{i+1}-\frac{u_{i-1}}{i}\leqslant\sum\limits_{i=3}^{k} \frac{2A}{i+1}\leqslant 2A\int_{3}^{k+1} \frac{\mathrm{d}x}{x}
$$
<u><b>Donc</b></u> 
$$
\begin{align}
\forall k\geqslant 2,C(k)  \leqslant u_{k} & \leqslant (k+1)\left( \frac{u_{2}}{3}+2A\ln \frac{k+1}{3} \right) \\
 & =\underline{\Theta(k\log k)}
\end{align}

$$
3) <u>Remarques sur les tris quasi-linéaires</u>

## Complexité moyenne/pire cas 
$\to$ $cf.$ [[DM n°2]]

## Tri stable

<u>Déf</u> $\to$
> Soit $E$ un ensemble.
> On dit que $\preceq$ est un pré-ordre sur $E$ si :
> 	$\cdot$  $\forall\text{ }x \in E, x \preceq x$  <small><span style="color:cyan"> réfléxivité </span></small>
> 	$\cdot$  $\forall\text{ }(x,y,z)\in E^{3}, (x \preceq y \text{ }et\text{ } y\preceq z)\implies x \preceq z$ <small><span style="color:cyan"> transitivité </span></small>
> Si de plus, $\forall(x,y)\in E^{2}$, $x \preceq y$ ou $y \preceq x$, 
> on parle alors de <u><b>pré-ordre total</b></u>
  
<u>Un algorithme de tri</u> basé sur les <u>comparaisons</u> utilise en fait un <b>pré-ordre total</b> qui n'est pas forcément un ordre.
Les cas possibles sont $x\prec y$, $y\prec x$, et $x\approx y$ 

<u>Déf</u> $\to$ 
>On dit qu'un <u>algorithme de tri</u> selon un pré-ordre total $\preceq$ est <b>stable</b>,
><u>si</u> pour tout tableau $t$ d'éléments 2 à 2 distincts, <u><b>alors</b></u> $i<j$ et $t[i]\approx t[j]$, 
>alors une fois le tableau trié, $x$ est encore à gauche de $y$

```OCaml
	float -> float
let comp_f f1 f2 =
	compare (f1 0.) (f2 0.)

let t = [| sin; cos; tan; exp; sqrt |]

let () = Array.stable_sort comp_f t
```
`t` vaut désormais `[| sin; tan; sqrt; cos; exp |]`

$\boxed{\text{Proposition}}$
Le <b>tri fusion</b> sur les tableaux est <u>stable</u>
<small>(en prenant la valeur de gauche lors de la fusion si il y a égalité)</small>

## Optimalité des tris de complexité quasi-linéaire 
$\boxed{\text{Proposition}}$
Un <u>Algorithme de tri</u> qui ne lit les valeurs du tableau à trier <b>que</b> pour les comparer 
à d'autres valeurs du tableau à une <b>complexité en temps</b> $\Omega(n\log(n))$ dans le pire cas

### <u>Preuve</u>
Soit $\sigma$ une <u>permutation</u> de $\textlbrackdbl 0;n-1 \textrbrackdbl$

On note $t_{\sigma}$ le tableau de <b>couples d'entiers</b> de taille $n$ tel que 
$$
\forall \text{ }i \in \textlbrackdbl 0;n-1 \textrbrackdbl , t_{\sigma}.(i)=\underline{(\sigma(i),i)}
$$ 
<u>Exemple</u> 
$\begin{align}\sigma  :\text{ } & 0\mapsto 3 \\  & 1 \mapsto 1 \\  & 2 \mapsto 0  \\  & 3 \mapsto 2\end{align}$             $t_{\sigma}=\textlbrackdbl (3,0); (1,1); (0,2); (2;3) \textrbrackdbl$

Si on trie $t_{\sigma}$ selon le <u>pré-ordre</u> du premier terme, on obtient donc
$$
\forall i \in \textlbrackdbl 0;n-1 \textrbrackdbl, t_{\sigma}.(i)=(i,\sigma ^{-1}(i))
$$
En d'autres termes, en faisant <b>uniquement</b> des comparaisons sur les <u>premiers termes</u>,
trier $t_{\sigma}$ revient à calculer $\sigma ^{-1}$
```OCaml
let t_sigma n sigma =
	Array.make n (fun i -> (sigma i,i) )

let inverse n sigma i =
	let t = t_sigma n sigma in
	Array.sort compare t;
	fun i -> snd i
```

Soit $C(n)$ le nombre de comparaisons entre éléments du tableau effectuées dans le pire cas pour trier $t_{\sigma}$ de taille $n$

Si $\sigma$ et $\sigma'$ donnent exactement les mêmes comparaisons, alors après tri, $t_{\sigma}$ et $t_{\sigma'}$ auront effectué les mêmes échanges, donc auront les mêmes deuxièmes termes, donc $\sigma ^{-1}=\sigma'^{-1}$, donc $\sigma=\sigma'$
Or, le nombre de résultats possibles pour l'ensemble des comparaisons effectuées, sachant qu'il n'y a pas d'égalité dans $t_{\sigma}$, est au plus $2^{C(n)}$
Donc $\mathrm{Card}(\mathfrak{S}_{n})\leqslant 2^{C(n)}$
$n! \leqslant 2^{C(n)}$
$C(n)\geqslant \ln(n!)\sim n\log n$
Or $n!\sim \left( \frac{n}{e} \right)^{n}\sqrt{ 2\pi n }$
Donc $\ln(n!)\sim n(\ln(n)-1)+\ln(\sqrt{ 2\pi n })\sim n\ln n$
