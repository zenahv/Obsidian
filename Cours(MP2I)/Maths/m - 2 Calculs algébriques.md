---
tags:
  - Math
---
## I) Sommes et produits

1) Symboles $\sum$ et $\prod$
Définition: Soit $I$ un ensemble fini d'indices et soit $(a_{i})_{i\in I}$ une famille de complexes. On note $\sum\limits_{i\in I}a_{i}$ la somme de tous les éléments de la famille, et $\prod\limits_{i\in I}a_{i}$ le produit de ces éléments 

En pratique, si l'ensemble d'indices est $I=[\![0,n]\!]=\{ k\in \mathbb{N}|0\leq k\leq n\}$
on note alors $\sum\limits_{0\leq i\leq n}a_{i}=\sum\limits_{i=0}^na_{i}$
De plus, si $(p,n)\in \mathbb{Z}^{2}$ avec $p\leq n$
$\sum\limits_{i\in[\![p,n]\!]}a_{i}=\sum\limits_{i=p}^na_{i}$

Remarque: si $p\leq n$ deux entiers relatifs, l'ensemble $[\![p,n]\!]$ contient $(n-p+1)$ termes

Pour $n\in \mathbb{N}$, l'ensemble $[\![1,n]\!]$ contient $n$ termes, et l'ensemble $[\![0,n]\!]$ contient $(n+1)$ termes

Remarque: L'indice de sommation est un indice muet: $\sum\limits_{i\in I}a_{i}=\sum\limits_{j\in I}a_{j}=\sum\limits_{k\in I}a_{k}$

Remarque: L'addition est une opération associative $(a+b)+c=a+(b+c)$ donc on peut écrire $a+b+c$ sans ambiguïté 

Remarque: Cas dégénéré si l'ensemble d'indice $I$ est vide on écrira $\sum\limits_{i\in \emptyset}a_{i}=0$
En particulier $\sum\limits_{i=n+2}^na_{i}=0$

Pour le produit, il faut imposer $\prod\limits_{i\in \emptyset}a_{i}=1$

Définition: factorielle. Pour tout entier naturel kn, on définit $n!=\prod\limits_{k=1}^nk$
En particulier $0! =1$

Définition récursive de la factorielle: $\forall n\in \mathbb{N},(n+1)!=(n+1)\times n!$

Exercice important: $\prod\limits_{k=1}^n 2k=2^{n}n!$
et $\prod\limits_{k=1}^n(2k+1)=\frac{(2n+1)!}{2^{n}n!}$

Propriétés de calculs:
$\sum\limits_{i\in I}(a_{i}+b_{i})=\sum\limits_{i\in I}a_{i}+\sum\limits_{i\in I}b_{i}$
$\prod\limits_{i\in I}a_{i}b_{i}=\prod\limits_{i\in I}a_{i}\prod\limits_{i\in I}b_{i}$

Soit $\lambda \in \mathbb{C}$
$\sum\limits_{i\in I}\lambda a_{i}=\lambda \sum\limits_{i\in I}a_{i}$
SI l'ensemble d'indices $I$ contient $N$ termes,
$\prod\limits_{i\in I}\lambda a_{i}=\lambda^{N}\prod\limits_{i\in I}a_{i}$
$\sum\limits_{i\in I}\lambda=N\lambda$

Pour $p\in \mathbb{R}$, $\prod\limits_{i\in I}a_{i}^{p}=\left( \prod\limits_{i\in I}a_{i} \right)^{p}$

2) Relation de Chasles
Prenons $I=[\![p,n]\!]$ avec $p<n$
Soit $m\in[\![p,n]\!]$
Alors $\sum\limits_{k=p}^na_{k}=\sum\limits_{k=p}^ma_{k}+\sum\limits_{k=m+1}^na_{k}$

On a la même chose pour les produits

3) Changement d'indice
$\sum\limits_{k=0}^na_{k}=\sum\limits_{k=1}^{n+1}a_{k-1}$

$\sum\limits_{k=n}^pa_{k+m}=\sum\limits_{j=n+m}^{p+m}\!\!\!a_{j}$
$\sum\limits_{k=n}^pa_{m-k}=\sum\limits_{j=m-p}^{m-n}a_{j}$

$\forall q\in \mathbb{C},q\neq 1,\sum\limits_{k=0}^nq^{k}=\frac{1-q^{n+1}}{1-q}$

4) Sommes télescopiques
Propriété: $\sum\limits_{k=n}^p(b_{k+1}-b_{k})=b_{p+1}-b_{n}$

Extension aux produits télescopiques: $\prod\limits_{k=n}^p\left( \frac{a_{k+1}}{a_{k}} \right)=\frac{a_{p+1}}{a_{n}}$


A connaître:
$\forall n\in \mathbb{N},\sum\limits_{k=1}^nk=\frac{n(n+1)}{2}$
$\forall n\in \mathbb{N},\sum\limits_{k=1}^nk^{2}=\frac{n(n+1)(2n+1)}{6}$
$\forall n\in \mathbb{N},\sum\limits_{k=1}^nk^{3}=\left( \frac{n(n+1)}{2} \right)^{2}$
$\forall n\in \mathbb{N},\forall q\neq 1,\sum\limits_{k=0}^nq^{k}=\frac{1-q^{n+1}}{1-q}$
$\forall n\in \mathbb{N},\forall(a,b)\in \mathbb{C}^{2},a^{n+1}-b^{n+1}=(a-b)\sum\limits_{k=0}^na^{k}b^{n-k}$

Utilisation du logarithme dans les produits
Pour calculer $P_{n}=\prod\limits_{k=0}^na_{k}$
avec $\forall k\in \mathbb{N},a_{k}\in \mathbb{R}_{+}^{*}$
on préférera calculer $\ln(P_{n})$
$\ln(P_{n})=\ln\left( \prod\limits_{k=0}^na_{k} \right)=\sum\limits_{k=0}^n\ln(a_{k})$

## II) Sommes doubles
On se donne $(a_{i,j})$ une famille indexée par 2 indices $i$ et $j$ avec $i\in I$ et $j\in J$
On note $\sum\limits_{(i,j)\in I\times J}a_{i,j}=\sum\limits_{i\in I}\sum\limits_{j\in J}a_{i,j}$

Exemple:
$\sum\limits_{(i,j)\in\textlbrackdbl1,n\textrbrackdbl^{2}}ij=\sum\limits_{i=1}^n\sum\limits_{j=1}^nij=\sum\limits_{i=1}^n\left( i\sum\limits_{j=1}^nj \right)=\sum\limits_{i=1}^n\left( i\times \frac{n(n+1)}{2} \right)=\frac{n(n+1)}{2}\sum\limits_{i=1}^ni=\left( \frac{n(n+1)}{2} \right)^{2}$
Généralisation:
Produit de deux sommes
$\sum\limits_{i\in I}a_{i}\times \sum\limits_{j\in J}b_{j}=\sum\limits_{(i,j)\in I\times J}a_{i}b_{j}$

En effet, $\sum\limits_{(i,j)\in I\times J}a_{i}b_{j}=\sum\limits_{i\in I}\sum\limits_{j\in J}a_{i}b_{j}=\sum\limits_{i\in I}\left( a_{i}\sum\limits_{j\in J}b_{j} \right)=\sum\limits_{j\in J}b_{j}\times \sum\limits_{i\in I}a_{i}$
Remarque: $\left( \sum\limits_{k=1}^na_{k} \right)^{2}=\sum\limits_{i=1}^na_{i}\times \sum\limits_{j=1}^na_{j}=\sum\limits_{i=1}^n\sum\limits_{j=1}^na_{i}a_{j}=2\sum\limits_{i=1}^n\sum\limits_{j=i+1}^na_{i}a_{j}+\sum\limits_{i=1}^na_{i}^{2}$

Bilan: $\left( \sum\limits_{k=1}^na_{k} \right)^{2}=\sum\limits_{k=1}^na_{k}^{2}+2\sum\limits_{i=1}^n\sum\limits_{j=i+1}^na_{i}a_{j}$

b) Sommes triangulaires
Propriété: $\sum\limits_{p\leq i\leq j\leq n}a_{i,j}=\sum\limits_{i=p}^n\sum\limits_{j=i}^na_{i,j}=\sum\limits_{j=p}^n\sum\limits_{i=p}^ja_{i,j}$

Propriété: $\sum\limits_{p\leq i<j\leq n}a_{i,j}=\sum\limits_{i=p}^n\sum\limits_{j=i+1}^na_{i,j}=\sum\limits_{j=p}^n\sum\limits_{i=p}^{j-1}a_{i,j}$

Exemple: $\sum\limits_{1\leq i,j\leq n}\min(i,j)=S_{n}$
$S_{n}=\sum\limits_{i=1}^n\sum\limits_{j=1}^n\min(i,j)$
$=\sum\limits_{i=1}^n\left( \sum\limits_{j=1}^ij+\sum\limits_{j=i+1}^ni \right)$
$=\sum\limits_{i=1}^n\left( \frac{i(i+1)}{2}+i(n-i) \right)=\sum\limits_{i=1}^{n}\left( \left( n+\frac{1}{2} \right)i-\frac{1}{2}i^{2} \right)$
$=\left( n+\frac{1}{2} \right)\left( \sum\limits_{i=1}^{n}i \right)-\frac{1}{2}\sum\limits_{i=1}^{n}i^{2}$
$=\left( n+\frac{1}{2} \right) \frac{n(n+1)}{2}-\frac{1}{2} \frac{n(n+1)(2n+1)}{6}=\frac{n(n+1)(2n+1)}{4}\times\left( 1-\frac{1}{3} \right)=\frac{n(n+1)(2n+1)}{6}$

Découpage d'une somme par paquets
Si l'ensemble d'indices $I$ peut s'écrire $I=J\cup K$ avec $J\cap K=\emptyset$
Alors, $\sum\limits_{i\in I}^{}a_{i}=\sum\limits_{i\in J}^{}a_{i}+\sum\limits_{i\in K}^{}a_{i}$

## III) Coefficients binomiaux
Définition: Pour $n,p \in \mathbb{N}$, le coefficient binomial $\binom{n}{p}=\frac{n!}{p!(n-p)!}=\frac{\prod\limits_{k=n-p}^{n}k}{p!}$
Convention: Si $p>n$, $\binom{n}{p}=0$
Cas particuliers: $\forall n\in \mathbb{N},\binom{n}{0}=1$, $\forall n\in \mathbb{N},\binom{n}{n}=1$, $\forall n\in \mathbb{N}^{*},\binom{n}{1}=n$

Propriétés usuelles:
- Symétrie: $\forall p \in \textlbrackdbl 0,n \textrbrackdbl,\binom{n}{n-p}=\binom{n}{p}$
- Pascal: $\forall n\geq 1,\forall p\geq 1\binom{n}{p}=\binom{n-1}{p}+\binom{n-1}{p-1}$

Formule du chef:
$\forall p,n\geq 1,\binom{n}{p}=\frac{n}{p}\binom{n-1}{p-1}$

Formule du binôme
$\forall n\in \mathbb{N},\forall(a,b)\in \mathbb{C}^{2},(a+b)^{n}=\sum\limits_{k=0}^{n}\binom{n}{k}a^{k}b^{n-k}$

Exemple: $\sum\limits_{k=0}^{n}\binom{n}{k}=2^n$
$\sum\limits_{k=0}^{n}\binom{n}{k}(-1)^k=0^n$
$\sum\limits_{k=0}^{\lfloor n/2 \rfloor}\binom{n}{2k}=2^{n-1}$

