---
tags:
  - Info
---
# Programmation fonctionnelle en OCaml
### I - Introduction

Il existe plusieurs paradigme de programmation:
- Programmation impérative: suite d'instructions modifiant l'état de la mémoire pour arriver au résultat voulu
  -> Programmation structurée: le flot de contrôle d'un programme impératif est structuré par des boucles, des conditions, et des fonctions
- Programmation Orientée objet
- Programmation fonctionnelle: Plutôt que de donner une suite d'instructions, on redéfinit le problème afin que le résultat soit simplement l'image d'une fonction sans effet de bord.
  -> Programmation fonctionnelle typée

3 grandes caractéristiques d'OCaml (dans ses aspects purement fonctionnels):
1) Toute variable est immuable
2) Les fonctions sont des variables comme les autres (sauf qu'elles n'ont pas de valeur numérique)
3) Les expressions sont fortement typées avec une inférence de type

### II - Structure d'un programme OCaml
1) Phrases
Définition: Un programme OCaml est constitué d'une succession de phrases qui sont de l'une des formes suivantes:
- `let <motif> = <expr>` où `motif` sera, pour l'instant, un identifiant et `expr` une expression
- `type <type> = <expr de type ou constructeur>`
- `exception <exception> of <expr de type>`

Une fonction peut s'écrire comme l'expression
```ocaml
fun motif -> expr
```

Par exemple,
```ocaml
fun x -> x+1
```
est une expression qui à un entier `x` associe `x+1`

On peut écrire 
```ocaml
let f = fun x -> x + 1
```
ou
```ocaml
let f x = x + 1
```

Si on définit successivement par 2 phrases deux variables de même nom, il s'agit de deux variables différentes, mais la deuxième cache la première
```ocaml
let a = 42
let f x = x + a
let a = 0
let y = f a
```

Pour une fonction récursive, on doit utiliser le mot clé `rec` après `let`
```ocaml
let rec f n =
	if n = 0 then 42
	else f (n - 1) + 2
```

2) Déclaration locale de variables
On peut déclarer localement les variables d'un motif avec "`let ... in`" ou 
"`match ... with ...`"

Définition: On appelle environnement d'une expression l'ensemble des variables avec leur valeurs qui sont définies lorsqu'on évalue l'expression, et des variables sans valeurs dites liées qui sont des arguments de fonction dont l'expression fait partie de l'image.

```ocaml
let x = <expression1> in <expression2>
```
est une expression
Sa valeur dans l'environnement $E$ est la valeur de `expression2` évaluée dans l'environnement $E\cup \{$`x`$:=v\}$ où $v$ est la valeur de `epression1` dans $E$
On dit que `x` est une variable locale dont la portée est `expression2`
S'il existe une variable de même nom dans $E$, `x` ne la masque que dans l'évaluation de `expression2`

```ocaml
let a = 42
let f x =
	let a = x - 2 in
	a * x
let y = f a
```

3) Expressions, opérateurs courants
Définition: Une expression OCaml peut être:
- une constante
- l'identificateur d'une variable dans l'environnement
- une expression obtenue en ajoutant la définition d'un motif dans l'environnement avec `let in` ou `match with`
- une expression de fonction, obtenue avec `fun`
- une expression formée à partir d'une ou plusieurs expressions et d'un opérateur ou d'un constructeur

Opérateurs courants par ordre de priorité:
- l'espace est l'opérateur d'application d'une fonction. On peut le remplacer par des parenthèses autour de l'argument. ATTENTION: Si l'argument est une expression composée, il faut des parenthèses
- `-` et `-.` opérateurs unaires d'opposé
- `**` opérateur binaire d'exponentiation sur les flottants
- `*`, `/`, `mod`, `*.`, `/.`
- `+`, `-`, `+.`, `-.`
- `=`, `<>` égalité et différence. `==` et `!=` existent mais ont un autre sens
- `&&`
- `||`
- `,`: n-aire, constructeur des tuples
- `if ... then ... else ...`

### III - Typage en OCaml
1) Un typage dynamique
Les types de base sont `int`, `float`, `bool`, `char`, `string`, `unit`
Etant donnés `'a` et `'b` deux types représentants les ensembles $A$ et $B$.
On a les types:
- `'a * 'b` qui représente $A\times B$
- `'a -> 'b` qui représente $B^{A}$
On a également des types pour les tuples d'arité $\geqslant 3$

Ceci permet de contraindre les types des variables dans l'environnement de toute expression et donc d'évaluer le type de l'expression.

Exemple:
```ocaml
let f = fun x -> x + 1
```

2) Motifs
Définition: Un motif peut être:
- Une constante
- identificateur d'une nouvelle variable
- constructeur appliqué à un ou plusieurs motifs qui ne partagent aucuns identificateurs sauf éventuellement `_`

Exemples de motifs:
```ocaml
x
(x,y)
(x,42)
42
(x,_)
(_,_)
```
Ne sont pas des motifs:
```ocaml
(x,x)
(x+y)
```

Lorsqu'on écrit `let [motif] = [expr] (in [expr])`, on déconstruit `expr` pour affecter à chaque constante ou variable du motif une sous-expression

Exemple:
```ocaml
let x = ((42, true), false)
  val x: ((int*bool)*bool)
let ((y,_),z) = x;;
  val y: int = 42
  val z: bool = false
```

Quand on veut reconnaître un motif qui ne couvre pas toutes les valeurs du type de ce motif, on utilise un filtrage

```ocaml
match <expr> with
  | <motif 1> -> <expr 1> 
  | <motif 2> -> <expr 2>
  ... 
  | <motif i> -> <expr i> 
```

Pour évaluer cette expression dans l'environnement $E$:
- On évalue `<expr>` dans $E$, soit $v$ sa valeur
- On cherche `<motif i>` le premier motif qui capture $v$
- On évalue `<expr i>` dans $E \cup \{$`<motif i>`$:=v \}$
  Ceci est la valeur de l'expression
Si dans un `let` ou dans un `match`, aucun motif ne capture la valeur, on a un warning à la compilation et une erreur à l'exécution

3) Listes
Définition: Soit `'a` un type, le type `'a list` est composé des valeurs suivantes:
- `[]` la liste vide
- Pour tout `x` de type `'a` et `l` de type `'a list`, `x :: l`
Sucre syntaxique:
`[x0; x1; ...; xn-1]` signifie `x0::x1::...::xn-1::[]`

`::` est un constructeur binaire dont le premier terme est de type `'a` et le second de type `'a list`. `x :: l` est la liste dont la valeur de tête est `x` et `l` est la queue

### IV - Fonctions curryfiées, fonctions d'ordre supérieur
1) Fonctions curryfiées
Définition: Soient $A,B,C$ trois ensembles et $f:A\times B\to C$ une fonction. On note donc $f\in C^{A\times B}$
On appelle curryfication de $f$ la fonction $g:(C^{B})^{A}$ définie par $g:x\mapsto g_{x}$ telle que $\forall x \in A,\forall y\in B,g_{x}(y)=f(x,y)$.

Proposition: La curryfication est une bijection de $C^{A\times B}$ dans $(C^{B})^{A}$

Preuve: Notons $\varphi:C^{A\times B}\to(C^{B})^{A}$ la curryfication et $\psi:g\mapsto(f:(x,y)\mapsto(g(x))(y))$
Montrons $\varphi\circ\psi=\mathrm{id}_{(C^{B})^{A}}$ et $\psi\circ \varphi=\mathrm{id_{C^{A\times B}}}$
Soit $g\in(C^{B})^{A}$. Soient $x \in A,y\in B$
$(((\varphi\circ\psi)(g))(x))(y)=((\varphi(f:(x,y)\mapsto(g(x))(y)))(x))=(g_{x}:y\mapsto(g(x))(y))(y)=(g(x))(y)$
Donc $\forall x \in A,\forall y\in B,(((\varphi\circ\psi)(g))(x))(y)=(g(x))(y)$, $\forall x \in A,((\varphi\circ\psi)(g))(x)=g(x)$, $(\varphi\circ\psi)(g)=g$, $\varphi\circ\psi=\mathrm{id}_{(C^{B})^{A}}$

Réciproquement, // TODO

En OCaml, le type d'une fonction curryfiée est de la forme `'a -> 'b -> 'c`
L'associativité du symbole `->` est à droite, pour représenter le fait qu'une fonction curryfiée de $(C^{B})^{A}$ est le cas le plus courant

2) Fonctions d'ordre supérieur
Définition: On appelle fonction d'ordre supérieur une fonction dont au moins un des arguments doit être de type fonction

Exemple: La fonction `List.map` qui à une fonction `f` et une liste
`[x0; ...; xn-1]` associe `[f(x0); ...; f(xn-1)]`

Sa définition est la suivante:
```ocaml
let rec map f l =
  match l with
  | [] -> []
  | x :: xs -> f x :: map f xs
```

```ocaml
let rec foldl f l s =
  match l with
  | [] -> s
  | x::xs -> foldl f xs (f s x)
```

```ocaml
let rec foldr f l s =
  match l with
  | [] -> s
  | x::xs -> f x (foldr f xs s)
```

### V - Aspects impératifs
1) Type `unit`
Définition: Le type `unit` est le singleton dont l'unique élément est la "constante unit", noté `()`

- Toute expression qui n'a que des effets de bords est de type `unit`. Sa valeur est donc connue à l'avance et peut être ignorée
- `let () = ...` est une phrase qui évalue une expression de type `unit
'a -> 'b qui représente 
On a également des types pour les tuples d'arité `
- `()` est utilisé comme fonction "sans argument"

Si `<expr>` est de type `unit`, on peut vouloir évaluer `<expr>` seulement sous une certaine condition
`if <bool expr> then <expr>` est du sucre syntaxique pour `if <bool expr> then <expr> else ()`

`;` est l'opérateur de séquençage. `<expr1>;<expr2>` sera évaluée en évaluant `<expr1>`, ignorant le résultat, évaluant `<expr2>`, dont la valeur sera la valeur de l'expression entière

2) Variables mutables
a - Tableaux
Pour tout type `'a`, `'a array` désigne le type des tableaux dont les éléments sont de type `'a`

`Array.make: int -> 'a -> 'a array`
`Array.make n x` crée et renvoie un nouveau tableau de taille `n` dont tous les éléments sont `x`
Si `x` est mutable, le même `x` sera dans chaque case

`Array.length: 'a array -> int` renvoie la longueur d'un tableau

Opérateur binaire `_.(_)`
`t.(i)` renvoie la valeur de la case d'indice `i` de `t` si $0\leqslant$`i`$<$`Array.length t` et lève une exception sinon

Opérateur ternaire `_.(_) <- _`
`t.(i) <- x` affecte à la case d'indice `i` de `t` (si $0\leqslant$`i`$<$`Array.length t`) la valeur `x`
Si on n'a pas $0\leqslant$`i`$<$`Array.length t` alors lève une exception

`Array.copy: 'a array -> 'a array`

`Array.make_matrix: int -> int -> 'a -> 'a array array`
`Array.make_matrix m n x` crée un tableau de `m` tableaux différents de `n` cases toutes contenant `x`

```ocaml
[|x0; ...; xn-1|]
```
crée un nouveau tableau dont les éléments sont `x0`, ..., `xn-1`

b - Enregistrements nommées
Les enregistrements nommés sont une généralisation des tuples: ils peuvent être mutables, chaque terme (champ) a un identificateur

```ocaml
type nomDuType = {
	(mutable)? nomDuChamp: typeDuChamp;
	...
	...
}
```

Exemple:
```ocaml
type 'a tab_rd = {
	mutable taille: int;
	mutable data: 'a array;
}
```
Ceci définit le type Ocaml d'une implémentation des tableaux redimensionnables

Si `<expr>` est d'un type enregistrement nommé, et `<champ>` est le nom d'un champ de type `'t` de ce type, `<expr>.<champ>` est la valeur du champ pour cette expression. Si de plus, le champ est mutable et `<expr2>` est de type `'t`, `<expr>.<champ> <- <expr2>` est de type `unit` et modifie la valeur du champ dans `<expr>`

`{champ1 = valeur1; ...; champn = valeurn}` définit un nouvel enregistrement nommé

```ocaml
let trd_creer n x =
    {taille = max 1 n;
     data = Array.make (max 1 n) x}
     
let trd_ajouter t x =
  if Array.length t.data = t.taille
  then
    begin
    ...
    end;
  t.data.(t.taille) <- x;
  t.taille <- t.taille + 1
```

c - Références
Les références sont des types enregistrement nommés prédéfinis avec du sucre syntaxique
```ocaml
type 'a ref = {mutable contents: 'a}

ref: 'a -> 'a ref
let ref x = {contents = x}
```

Sucre syntaxique:
- `!<expr>` pour `<expr>.contents`
- `<expr1> := <expr2>` pour `<expr1>.contents <- <expr2>`
- `let incr n = n := !n + 1`
- `let decr n = n := !n - 1`

3) Boucles
Le corps d'une boucle en Ocaml doit être de type `unit`

```ocaml
for <id> = <expr> to <expr2> do
	<expr3>
done
```
`expr3` va être évalué successivement avec `<id>` qui prend toutes les valeurs entières de `<expr1>` à `<expr2>` (inclus)

les expressions des bornes sont évaluées une seule fois, avant d'évaluer le reste de la boucle.
On peut remplacer `to` par `downto` pour une boucle `for` décroissante
 
```ocaml
while <expr1> do
	<expr2>
done
```
`<expr1>` est évaluée, si elle est vraie, `<expr2>` est évaluée puis on revient au début de la boucle































```ocaml
let a f l=List.map(fun g->List.fold_left(+)0(List.map g l))f
```




















```ocaml
let rec conct l1 l2 =
  match l1 with
  | [] -> l2
  | x :: xs -> x :: conct xs l2
```

```haskell
conct :: ['a] -> ['a] -> ['a]
conct [] l = l
conct x:xs l = x : conct xs l
```

```lisp
(defun conct (l1 l2)
    (if (= l1 '())
        l2
        (cons '((first l1)) (conct (rest l1) l2))))
```





