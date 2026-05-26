---
tags:
  - Info
---
# Représentation des nombres en mémoire

## I) Précision sur les types
En C, si il est important de savoir exactement quelle est la place prise par un entier, ou quel est l'ensemble d'entiers représentables, plutôt que `int`, `long int`, dont la définition peut théoriquement dépendre du compilateur, on utilise les types de la bibliothèque `stdint`.
Dans le cas contraire on se contente de `int`.

## II) Représentation des entiers
1) Rappels sur la base 2
Soit $n \in \mathbb{N}$, alors il existe une unique suite $(b_i)_{i \in \mathbb{N}}$ telle que:
- $\exists k\in \mathbb{N},\forall i\geq k,b_{i}=0$
- $n=\sum\limits_{i=0}^{+\infty}b_{i}2^{i}$
- $\forall in \in \mathbb{N}, b_{i}\in \{ 0;1 \}$

On parle de représentation binaire (petit bout) de $n$ sur $k$ bits

2) Entiers signés
Définition: Soit $k\in \mathbb{N}^{*},n \in \textlbrackdbl -2^{k};-1 \textrbrackdbl$.
On appelle complément à 2 de $n$ sur $k$ bits l'entier $n'=2^k+n\in \textlbrackdbl 0;2^k-1 \textrbrackdbl$
Pour représenter sur $k+1$ bits signés $n\in \textlbrackdbl -2^k ;-1\textrbrackdbl$, on met le bit de poids fort à $1$ et les $k$ autres bits sont la représentation binaire du complément à 2 de $n$ sur $k$ bits

Propriété: la représentation sur $k+1$ bits signés de $n\in \textlbrackdbl -2^k;-1 \textrbrackdbl$ est la représentation non signée sur $k+1$ bits du complément à 2 de $n$ sur $k+1$ bits

Proposition: Soit $(b_{0},\dots,b_{k})$ la représentation de $n\in \textlbrackdbl -2^k+1;2^k-1 \textrbrackdbl$ sur $k+1$ bits signés. Alors on obtient la représentation de $-n$ en faisant les opérations suivantes:
- On inverse tous les bits
- On ajoute $1$ comme sur des entiers signés
- si besoin on jette le bit de poids $2^{k+1}$

Définition: en informatique, on redéfinit ainsi la division euclidienne: Soient $a\in \mathbb{Z},b\in \mathbb{Z}^*$. On appelle quotient et reste de la division euclidienne de $a$ par $b$ les entiers $q$, $r$ tels que $a=qb+r$, $r$ est du signe de $a$, $|r|\in \textlbrackdbl 0;|b|-1 \textrbrackdbl$

3) Transtypage
- `intk_t` $\longleftrightarrow$ `uintk_t` on ne change pas les bits
- `intk_t` $\longleftrightarrow$ `intk'_t` ou `uintk_t` $\longleftrightarrow$ `uintk'_t` il suffit de tronquer les bits de poids $\geq k'$. Si n est un entier négatif représentable sur $k'$ bits signés, alors $n\in \textlbrackdbl -2^{k'-1};-1 \textrbrackdbl$
## III) Nombres à virgule flottante =
1) Principe général: flottants normalisés
Définition: Un nombre à virgule flottante normalisé avec $m$ bits de mantisse et $e$ bits d'exposants est un réel de la forme $s\left( 1+\frac{M}{2^{m}} \right)2^{E-D}$ avec $s=\pm 1$ selon la valeur du bit de signe $S$: si $S=0$ alors $s=1$, sinon $s=-1$
$M \in \textlbrackdbl 0;2^{m}-1 \textrbrackdbl$ entier non signé représenté sur $m$ bits
$D=2^{e-1}-1$ et $E \in \textlbrackdbl 1; 2^{e}-2 \textrbrackdbl$ entier non signé représenté sur $e$ bits, distinct de $0$ et $2^{e}-1$
On dit que $\left( 1+\frac{M}{2^{m}} \right)$ est la mantisse du flottant et $E-D$ son exposant

Remarque: il n'arrive presque jamais de faire des opération arithmétiques sur l'exposant directement. On ne perd rien avec un entier non signé et décalé de $-D$ plutôt qu'un entier signé

Norme IEEE-754:
32 bits (simple précision): $e=8,m=23$
64 bits (double précision): $e=11,m=52$
80 bits (double précision étendue): $e=15,m=64$
128 bits (quadruple précision): $e=15,m=112$

2) Flottants non normalisés
Problème: le plus petit flottant normalisé positif est $2^{-(2^{e-1}-2)}$
On a donc des flottants non normalisés qui correspondent à $E=0$ ou $E=2^{e}-1$
Définition: Si $E=0$, le réel représenté est $s \frac{M}{2^{m}}2^{-D}$
La mantisse est dans $[0;1[$ plutôt que $[1;2[$, on a moins de précision relative. Le plus petit flottant strictement positif est $2^{-m-D}=2^{-150}$ sur 32 bits, et le suivant est exactement le double

Remarque: $+0$ et $-0$ sont deux représentations de $0$. Les deux sont égales mais traitées différemment si on divise par une de ces valeurs

Définition: Si $E=2^{e}-1$ et $M=0$ alors le flottant représenté est $\pm \infty$
Définition: Si $E=2^{e}-1$ et $M\neq 0$, le flottant représenté est `NaN`

Un résultat donne $+\infty$ s'il est positif et dépasse $2^{2^{e}-2^{e-1}}$, $-\infty$ s'il est négatif

$x \times+\infty=+\infty$
$\frac{x}{+0}=+\infty$
$\frac{x}{-0}=-\infty$
$x++\infty=+\infty$
$0\times+\infty=\text{NaN}$
$\frac{0}{0}=\text{NaN}$
$\frac{\infty}{\infty}=\text{NaN}$
$+\infty++\infty=+\infty$
$+\infty-+\infty=\text{NaN}$

Toute comparaison avec NaN est false

3) Erreurs d'arrondi
`0.3 - 0.2 == 0.1`: `false`
Aucun réel qui n'est pas de la forme $\frac{p}{2^{k}}$, avec $p\in \mathbb{Z},k\in \mathbb{N}$ ne peut être représenté en virgule flottante, quelle que soit la précision
Ceci inclut des valeurs décimales!

`x+(1-1) == x+1-1`: `false` pour certaines valeurs de `x`
La mantisse n'a que $m$ bits, avec $m \ll 2^{e}-2$, donc même avec des flottants normalisés, une addition de deux valeurs d'ordre de grandeur très différents peut perdre des bits de la petite valeur
$x=2^{-60}$
$1+x=1+2^{-60}$ est plus proche de $1$ que de $1+2^{-23}$ qui est le flottant suivant
