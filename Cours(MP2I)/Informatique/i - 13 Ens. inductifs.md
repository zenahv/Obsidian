# Ensembles inductifs

# I - Ensembles inductifs (lmao wtf)
1) Rappels sur les ordres <small>ensembles inductifs</small>
<u>Déf</u> $\to$
> Soit $E$ un ensemble, 
> $\preceq$ est une relation d'ordre sur $E$
> si les 3 propriétés sont vérifiées :
> - $\forall x \in E,x\preceq x$ 
> - $\forall x,y\in E,(x \preceq y \land y \preceq x)\implies x = y$
> - $\forall x, y, z \in E,(x \preceq y \land y\preceq z)\implies x \preceq z$
> On dit de plus que $\preceq$ est une relation d'ordre total si :
> $\forall x,y\in E, x \preceq y \lor y \preceq x$

<u><small>Note : une relation d'ordre non total est dite partielle</small></u>

<u>Notations</u> :
On note $x \prec y$ pour $x\preceq y \land y\not\preceq x$ 
Pour une relation d'ordre (pas un pré-ordre) ceci est équivalent à $x \preceq y \land x \neq y$

<u>Remarque</u> :
Si $\preceq$ est partiel, $x\prec y$ n'est pas la négation de $y \preceq x$.
Par exemple, pour l'ordre $\subset$ dans $\mathscr P(\mathbb{N})$, on a 
	$\{ 1 \}\not \subset \{ 2 \}$ mais $\{ 2 \}$ n'est pas strictement inclus dans $\{ 1 \}$ non plus
	$A \subsetneq B \implies B \not \subset A$ mais la réciproque est fausse

2) Ordre bien fondé

<u>Déf</u> $\to$
> Soit $(E, \preceq)$ un ensemble muni d'une relation d'ordre, 
> On dit que $\preceq$ est bien fondée si toute partie $F \subset E$ non vide admet des éléments minimaux
> En d'autres termes :
> $\forall F \in \mathscr P(E) \setminus \{ 0 \},\exists x \in F, \forall y\in F, y \not\prec x$
> Si $\preceq$ est un ordre total et bien fondé, on dit que c'est un bon ordre et que $(E,\preceq)$ est ordonné
> $(E,\preceq)$ est appelé <u><b>ensemble inductif</b></u> si $\preceq$ est bien fondé

<u>Exemples</u> :
- $(\mathbb{N},\leqslant)$ est bien ordonné

- $(\mathbb{N},\text{ }|\text{ })$ est un ensemble inductif
En effet,pour tout $F \subset \mathbb{N}$ non vide, si $F \neq \{ 0 \}, n$ le minimum de $F \setminus \{ 0 \}$ pour l'ordre $\leqslant$ est un élément minimal,
et si $F=\{ 0 \}, 0$ l'unique élément est minimum,

- $(\mathscr P(A),\subset)$ où $A$ est un ensemble 
Soit $F \subset \mathscr P(A)$ non vide
Soit $n=\underset{ X \in F }{ \min }(Card(X))$
Soit $X \in F$ de cardinal $n$
Alors $X$ est un élément minimal de $F$

- $(\mathscr P(\mathbb{N}),\subset)$ n'est pas inductif
En effet, $F=\{ \textlbrackdbl n;+\infty \textrbrackdbl \}_{n\in \mathbb{N}}$ n'a pas d'élément minimal

- $(\mathbb{Z},\leqslant)$ n'est pas inductif
En effet, $\mathbb{Z}$ n'a pas d'élément minimal <span style="color:red"><small>(pas de minimum) </small></span>

- $([0;1],\leqslant)$ n'est pas inductif
En effet, $]0;1]$ n'a pas d'élément minimal <small><span style="color:red"> (pas de minimum)  </span></small>

<u>Proposition</u> :
Soient $(E_{1}, \preceq_{1})$ et $(E_{2},\preceq_{2})$ deux ensembles inductifs
On note $\preceq$ l'ordre lexicographique sur $E_{1}\times E_{2}$ :
$(x_{1},x_{2})\preceq(y_{1},y_{2})$ $\iff$ $(x_{1} \prec_{1} y_{1})$ $\lor$ $((x_{1}=y_{1})\land(x_{2}\preceq_{2}y_{2}))$
Alors $(E_{1}\times E_{2},\preceq)$ est inductif 

<u><b>Preuve</b></u> >:3
Soit $F$ une partie non vide de $E_{1}\times E_{2}$
Soit $F_{1}=\{ x_{1}\in E_{1}\text{ }|\text{ }\exists x_{2}\in E_{2},(x_{1},x_{2})\in F^{2} \}$
$F_{1}$ non vide car $F \neq 0$
$F_{1}$ admet un élément minimal $x_{1}$
Posons $F'=F \cap \{ x_{1} \}\times E_{2},F' \neq \varnothing$ 
$F_{2} = \{ y_{2} \in E_{2} \text{ }|\text{ } (x_{1},y_{2})\in F \}$ est la projection de $F'$ sur la 2$^{e}$ coordonnée et est non vide
Donc $F_{2}$ admet un élément minimal $x_{2}$

<b>Montrons</b> que $(x_{1},x_{2})$ est minimal dans $F$ 
Supposons par l'absurde qu'il existe $(y_{1},y_{2})\in F,(y_{1},y_{2})\prec(x_{1},x_{2})$
Alors $(y_{1}\prec_{1}x_{1})\lor((y_{1}=x_{1})\land(y_{2}\preceq_{2}x_{2}))$
Or $(y_{1},y_{2})\in F$, donc $y_{1}\in F_{1}$ donc $y_{1}\not\prec_{1}x_{1}$
Donc $y_{1}=x_{1}$ et $y_{2}\prec_{2} x_{2}$
Or $(x_{1},y_{2})\in F$, donc $y_{2}\in F_{2}$, donc $y_{2}\not\prec_{2}x_{2}$: contradiction!

---
## 3) Descente infinie 

>Le principe de descente infinie s'applique aux ensembles inductifs,  puisque si $(u_{n})_{n\in \mathbb{N}}$ est une suite de $E$,
$\{ u_{n} \}_{n\in \mathbb{N}}$ est une partie non vide de $E$ et a donc un élément minimal

<u>Exemple</u>
On peut prouver par descente infinie sur $\mathbb{N}^{2}$ que cette fonction termine 
```OCaml
let rec ack m n = match (m,n) with
	|(0,_)->n+1
	|(_,0)->ack (m-1) 1
	|(_,_)->ack (m-1) (ack m (n-1))
```

Supposons par l'absurde qu'il existe $m$ et $n$ tels que `ack m n ` ne termine pas 
$(\mathbb{N}^{2},\leqslant)$ est inductif, soient $(m,n)$ minimal tel que `ack m n` ne termine pas

$(m, n-1)<(m,n)$
Donc `ack m (n-1)` termine. Soit $k$ sa valeur.
$(m-1,k)<(m,n)$
Donc `ack (m-1) k` termine
Or, `ack m n` $=$ `ack (m-1) k`,
donc `ack m n` termine : <u><b>contradiction !</b></u>

$\boxed{Théorème}$ <small>que l'on admettra</small>
> Soit $(E, \preceq)$ un ensemble muni d'une relation d'ordre.
> Alors $E$ est inductif $\iff$ $\not\exists$ de suite strict. décroissantes dans $E$

$(E,\preceq)$ inductif $\iff$ $\forall(x_{n})_{n\in \mathbb{N}}\in E^{\mathbb{N}},\exists i \in \mathbb{N},x_{i+1} \not\prec x_{i}$

<u>Corollaire</u> : Tout ensemble muni d'une relation d'ordre est inductif

---

## 4) Principe d'induction 

$\boxed{Théorème}$
>Soit $(E,\preceq)$ inductif, $P$ une propriété sur les éléments de $E$ telle que :
> - Pour tout $x$ minimal dans $E$, $P(x)$
> - Pour tout $x$ non minimal dans $E$, $(\forall y\in E, y\prec x \implies P(y))\implies P(x)$
>Alors $\forall x \in E,P(x)$

Remarque: Si $x$ est minimal, alors $\forall y\in E,(y\prec x\implies P(y))$ est trivialement vrai. Donc $(\forall y\in E,y\prec x\implies P(y))\implies P(x)$ revient à $P(x)$
On peut donc reformule le principe d'induction en $(\forall x\in E,(\forall y\in E,y\prec x\implies P(y))\implies P(x))\implies(\forall x\in E,P(x))$

<u>Preuve</u> : Soient $(E, \preceq)$ e $P$ comme dans l'énoncé. 
Supposons par l'absurde 
$F= \{ x \in E \text{ }|\text{ } \neg P(x) \}\neq \varnothing$
Soit $x$ élément minimal de $F$.
Soit $y\in E$ tel que $y \prec x$
$y \not\in F$ par minimalité de $x$, donc $P(y)$
On a donc $\forall y\in E,y\prec x \implies P(y)$
Donc par hypothèse, $P(x)$
Or, $x \in F$ donc $\neg P(x)$ : contradictoire

<u>Autre preuve</u> :
Supposons par l'absurde qu'il existe $x \in E$ tel que $\neg P(x)$
On définit $(x_{n})_{n\in \mathbb{N}}$ ainsi :
$\begin{cases}x_{0}=x \\ \forall n \geqslant 0, x_{n+1}\text{ est tel que } x_{n+1} \prec x_{n} \text{ et }\neg P(x)\end{cases}$

En effet, si $\neg P(x)$, alors nécessairement $\exists y \in E, y \prec x_{n} \land \neg P(y)$
On prend un tel $y$ pour $x_{n+1}$
Alors $(x_{n})_{n\in \mathbb{N}}$ est une suite strictement décroissante de $E$ :
impossible par principe de descente infinie

# II - Structures inductives

Les structures inductives correspondent aux types définis à partir d'eux-mêmes à l'aide de constructeurs

<u>Par exemple</u> : On pourrait redéfinir un type équivalent aux listes `OCaml` 
```OCaml
type 'a maListe = Vide
	|Cons of 'a  *  'a maListe
```
Exemple :
```OCaml
[1;2;3]=1::(2::(3::[]))
équivaut ici à
Cons(1,Cons(2,Cons(3, Vide)))
```
```C
struct Maillon {
	int val;
	struct Maillon* next;
	}
```
---
## 1) <u>Définition</u>

<u>Déf</u> $\to$ 
>Soit $k\in \mathbb{N}$ et $k+1$ ensemble de symboles $C_{0},C_{1},\dots,C_{k}$
>2 à 2 disjoints et disjoint de l'ensemble $\{$<span style="color:crimson">,</span> , <span style="color:crimson"> ( </span>, <span style="color:crimson"> ) </span> $\}$
>Pour $0 \leqslant i \leqslant k$, on appelle $C_{i}$ ensemble des constructeurs d'arité $i$
>$C_{0}$ est aussi appelé ensemble des contructeurs constants.

On définit la suite d'ensembles $(T_{k})_{k\in \mathbb{N}}$, croissante au sens de l'inclusion ainsi : $*$
$$
\begin{cases}
T_{0}=C_{0} \\
\forall k\geqslant 1, T_{k}=T_{k-1} \cup\left( \underset{ i=1 }{ \bigcup }^{k} \{ c(t_{1},\dots,t_{k}) \}_{c\in C_{i};t_{1},\dots,t_{i}\in T_{k-1}} \right)
\end{cases} 
$$
$\text{que l'on peut réécrire :}$
$$
\overset{ k }{  \underset{ i=1 }{ \bigcup } }\left( \overset{  }{  \underset{ c\in C_{i};t, \dots, t_{i}\in T_{k-1} }{ \bigcup } }\{ c(t_{1},\dots,t_{i}) \} \right)
$$
$T_{k}$ est appelé ensemble des termes de hauteur au plus $h$
On pose de plus $T=\underset{ k\in \mathbb{N} }{ \bigcup }T_{k}$
$T$ est aussi appelé la structure inductive de signature $(C_{i})_{0 \leqslant i \leqslant k}$ et ses éléments appelés termes
 <u>Exemples</u> : 
 - Les listes chaînées d'élément de $E$ sont une structure inductive de signature $\begin{cases}C_{0}=\{\text{ }[\text{ }]\text{ }\} \\ C_{1}=\{ x::\text{ } \}_{x \in E}\end{cases}$
$T_{0}=\{ \text{ }[\text{ }]\text{ } \}$
$T_{1}=\{ \text{ }[\text{ }]\text{ } \}$ $\cup$ $\{ x::[\text{ }] \}_{x \in E}$
correspond à $\{ \text{ }[\text{ }]\text{ } \}$ $\cup$ $\{ [x] \}_{x \in E}$
$T_{2}=T_{1} \cup \{ y::(t) \}_{\begin{align}&y\in E \\ &t\in T_{1}\end{align}}$
$T_{2}$ correspond aux listes de longueur 0, 1 ou 2

- L'ensemble des expressions booléennes en `C`<span style="color:cyan">(*) (**)</span> est une structure inductive de signature 
- $C_{0}=\{ \text{true,false} \}$
- $C_{1}=\{ ! \}$
- $C_{2}=\{ \mathcal|\mathcal|,\&\& \}$

<span style="color:cyan"> (*) </span> : <span style="color:cyan"> ne faisant pas intervenir d'expressions non booléennes ni de fonctions </span>
<span style="color:cyan"> (**) </span> : <span style="color:cyan"> on rajoute (pour l'instant) des parenthèses superflues. On change l'ordre infixe des préfixes</span>

$T_{1}=\{ \text{true,false} \}\cup \overset{ i=1 }{ \{ !(\text{true}),!(\text{false}) \} }$ $\overset{ i=2 }{ \cup\{ ||(\text{true,false}),\&\&(\text{true,false}),==(\text{true,false}) \},\dots,||(\text{true,false}),\dots)\} }$

- Notons - pour l'opposé (unaire) et $-$ pour la soustraction (binaire)
Alors l'ensemble des expressions arithmétiques préfixe sur les entiers est une structure inductive de signature :
$\begin{cases}C_{0}=\mathbb{N} \\ C_{1}=\{ \text{-} \} \\ C_{2}=\{ +,-,\times,/ \}\end{cases}$

$T_{0}=\mathbb{N}$
$T_{1}=\mathbb{N}\cup \{ \text{-}(x) \}_{x \in \mathbb{N}}\cup \{ \diamondsuit(x,y) \}_{\begin{align}&\diamondsuit\in \{ +,-,\times,/ \} \\& x,y\in \mathbb{N}\end{align}}$
$T_{2}=T_{1} \cup \{ \text{-}(t) \}_{t\in T_{1}}\cup \{ \diamondsuit(t,t') \}_{\begin{align}&\diamondsuit\in \{ +,-,\times,/ \} \\ &t,t'\in T_{1}\end{align}}$
$T_{2}=T_{1}\cup \{ \text{-}(\text{-}(x)) \}_{x \in \mathbb{N}}\cup \{ \text{-}(\diamondsuit(x,y)) \}_{\begin{align}&\diamondsuit\in \{ +,-,\times,/ \} \\& x,y\in \mathbb{N}\end{align}}\cup \{ \diamondsuit(\text{-}(x),y) \}$$_{\begin{align}&\diamondsuit\in \{ +,-,\times,/ \} \\& x,y\in \mathbb{N}\end{align}}\cup\overset{ \text{encore 7 fois} }{ \dots }$


```tikz 
\begin{document}
\begin{tikzpicture}
  \node {-}
    child { node {+}
      child { node {4} }
      child { node {2} }
      }
      ;
\end{tikzpicture}
\end{document}
``` 
représente $\text{-}(+(4,2))=\text{-}(4+2)$

***Compléter*** (16 janvier 2026)


```OCaml
type truc=Youpi of int*truc
	|Tralala of float*truc
	|Fini of unit 
```

## 2) Induction structurelle
### a) Ordres structurels
<u>Déf</u> $\to$
>Soit $T$ une structure inductive de signature $(C_{0},\dots,C_{k}),t,u\in T$
>On dit que $t$ est un sous-terme immédiat de $u$, et on note $t \prec_{i}u$
>Si $\exists i\in \textlbrackdbl 1;k \textrbrackdbl, c\in C_{i}\text{ },\text{ }t_{1},--,t_{i}\in T$et $j\in \textlbrackdbl 1;i \textrbrackdbl$ tels que
>$\begin{cases}t=t_{j} \\ u=c(t_{1},\dots,t_{i})\end{cases}$


<u>Exemple</u> : 
Sur les listes d'éléments de $E$, $\textlbrackdbl 1;k \textrbrackdbl=\{ 1 \}$ donc $\ell'\prec_{i}\ell$ ssi 
$\exists c\in C_{1}$ tel que $\ell=c(\ell')$,
en d'autres termes,
$\ell'\prec_{i}\ell$ ssi $\exists x \in E$ tel que $\ell=x:\ell'$
$\ell'\prec_{i}\ell \iff \ell'\text{ est la queue de }\ell$ 

<u>Déf</u> $\to$
>Soit $T$ une structure inductive.
>On définit la relation $\preceq$ sur $T$ comme la clôture réflexive-transitive
>de la relation $\prec_{i}$, c'est à dire :
>$\forall t,u\in T,t\preceq u\iff \exists n\in \mathbb{N},\exists t_{0},\dots,t_{n}\in T,\begin{cases}t_{0}=t \\ t_{n}=u \\ \forall j\in \textlbrackdbl 0;n-1 \textrbrackdbl,t_{j}\prec_{i}t_{j+1}\end{cases}$

<span style="color:turquoise"> Remarque </span> : 
Si $t=u,n=0$ convient
Si $t \prec_{i}u,n=1$ convient

$\boxed{\text{Proposition}}$ : 
$\preceq$ est un ordre bien fondé sur $T$, $\preceq$ est appelé l'ordre structurel

<u>Exemple</u> :
Sur les listes d'éléments de $E$
$\ell'\preceq \ell$ $\iff \exists \ell_{0},\dots,\ell n$ listes tq $\begin{cases}\ell_{0}=\ell' \\ \ell_{n}=\ell \\ \forall j\in \textlbrackdbl 0;n-1 \textrbrackdbl,\exists x_{j},\ell_{j+1}=x_{j}::\ell_{j}\end{cases}$
$\iff \exists x_{0},$

### b) Principe d'induction structurelle
$\boxed{Théorème}$

>Soit $T$ une structure inductive de signature $(C_{0},\dots,C_{k})$, $P$ une propriété sur les termes de $T$,
>Si $\begin{cases}\forall t\in C_{0},P(t) \\ \forall t\in T \setminus C_{0},(\forall u\in T, u \prec_{i}t\implies P(u))\implies P(t)\end{cases}$
>alors $\forall t\in T,P(t)$

<u>Exemple</u> :
Prouvons que pour tout $f:$`'a`$\to$`'b`
$\ell:$`'a list`$=[x_{0};\dots;x_{n-1}]$
`map f l` $=$ $[$ `f` $x_{0}$;`f` $x_{1}$;$\dots$;`f` $x_{n-1}$$]$ par induction structurelle
Soit $f:$ `'a` $\to$ `'b`

<u>Initialisation</u> :
Si `l` $=$ `[]`
`map f []` $=$ `[]`

<u>Hérédité</u>
Soit `l`$=$$[x_{0};\dots;x_{n-1}$ avec $n \geqslant 1$. Supposons que `map f [x1;---;xn-1]`$=$  $[$ `f` $x_{0}$;`f` $x_{1}$;$\dots$;`f` $x_{n-1}$$]$
Alors `map f l`$=$`f`$x_{0}$ `::` $[$`f`$x_{1}$;$\dots$;`f`$x_{n-1}$$]$
$=$$[$`f`$x_{0}$;$\dots$;`f`$x_{n-1}$$]$

Soit $T$ une structure inductive de signature $(C_{i})_{0\leqslant i\leqslant k}$ .
![[Inductif 1.png]]


`::` est :
$-$ opérateur d'arité $2$ 

$-$ constructeur d'arité 2 du point de vue des motifs en OCaml.

$-$ du point du vue des structures inductives, c'est un constructeur d'arité 1 typé par `'a`

c'est-à-dire :
pour tout $x$ de type `'a`, `x::` est un constructeur d'arité $1$ pour les `'a list`.

```OCaml
type expr_arith = Val of int
	|Oppose of expr_arith
	|Somme of expr_arith * expr_arith
	|Soustraction of expr_arith * expr_arith
	|Multiplication of expr_arith * expr_arith
	|Division of expr_arith * expr_arith
	
```
$\begin{array}{rcl}f_{0}:\mathbb{N}&\to& C_{0} \\ n &\mapsto &Val(n)\end{array}$

$\begin{array}{rcl}f_{1}:\{ () \}&\to& C_{1} \\ () &\mapsto &Oppose\end{array}$
$\vdots$

Soit $T$ une structure inductive de signature $(C_{0};\dots;C_{k})$, $P$ une propriété sur les termes de $T$ telle que :
	-$\forall t\in C_{0},P(t)$     <small><span style="color:red"> (init) </span></small>
	-$\forall t\in T\setminus C_{0},(\underbrace{ \forall u\in T,\prec_{i}t \implies P(u) }_{ \text{Hypothèse d'induction} })\implies P(t)$      <small><span style="color:red"> (hérédité) </span></small>
	-Alors $\forall t\in T,P(t)$

<u>Preuve</u> : (hérédité)
On rappelle que si <span style="color:blue"> A </span>$\implies P$, alors pour toute proposition $C$,$($<span style="color:red"> B </span>$\implies C)\implies($<span style="color:blue"> A </span>$\implies C)$
Soient $u,t$ des termes,
Par définition de l'ordre structurel, 

![[Inductif 2.png]]


Comme on a la même initialisation, $(C_{0}\text{ est l'ensemble des éléments minimaux de }(T,\preceq))$,
si $P$ vérifie l'init. & l'hérédité de l'induction structurelle, alors a fortiori, $P$ vérifie les hypothèses du principe d'induction.
Or $(T,\preceq)$ est inductif.
Donc $\forall t\in T,P(t)$

## <u>3. Structures mutuellement inductives</u>

```OCaml
type zig = Zig of zag | Foo
and zag = Zag of zig | Bar
```
`and` est utilisé pour définir deux types mutuellement inductifs ou 2 fonctions mutuellement récursives

$zig=\{ Foo;Zig(Bar);Zig(Zag(Foo));Zig(Zag(Zig(Bar)))\dots \}$
$zag=\{ Bar;Zag(Foo);Zag(Zig(Bar));Zag(Zig(Zag(Foo)))\dots \}$
