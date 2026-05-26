---
tags:
  - Info
---
# Compléments sur OCaml

## I - Gestion des erreurs
1) Assertions
`assert: bool -> unit` ne fait rien si son argument est vrai, sinon interrompt le programme en levant une exception
Particularité: l'expression `assert False` est de type `'a` et non `unit`
Utilités:
- Pendant qu'on programme un filtrage long et compliqué 
- Pour compléter un match avec un cas dont on a prouvé qu'il est impossible qu'il survienne

1) Exceptions
Une exception en OCaml se compose d'un identificateur qui commence par une majuscule, et éventuellement, de paramètres. Son type est `exn` mais ce n'est pas une expression normale

prédéfinies:
- `Invalid_argument of string`
- `Failure of string`
- `Exit`
- `Division_by_zero`
- `Stack_overflow`
- `Out_of_memory`
- `End_of_file`

Pour lever une exception, on utilise `raise: exn -> 'a`

exemple:
`raise Exit`
`raise (Invalid_argument "pile vide")`
Remarque:
`let invalid_arg s = raise (Invalid_argument s)`
`let fail_with s = raise (Failure s)`

On peut également définir une exception:
`exception MonException`
ou
`exception MonException of type`

3) Rattrapage d'exceptions
La syntaxe `try ... with ...` est un filtrage particulier

```ocaml
try expr0
with
  | Motif1 -> expr1
  ...
  | Motifn -> exprn
```

## II - Types sommes
Ces types représentent les unions nécessairement disjointes
Plutôt que d'écrire $E\cup F$ sans garantie que $E\cap F=\emptyset$, on écrira $E\times \{ 0 \}\cup F\times \{ 1 \}$
Un type somme est une union de types (éventuellement `unit` qu'on ne précise pas), chacun muni d'un constructeur différent


## III - Sur poly (pas nécessaire)


## IV - Gestion de la mémoire

1) Fonctions récursives terminales

Définition :
>	Soient $\text{f}$ et $\text{g}$ deux fonctions telles que la définiton de $\text{f}$ contient un appel à $\text{g}$ .
>	Si l'évaluation d'une expression image de $\text{f}$ qui utilise cet appel à $\text{g}$ revient exactement à évaluer cet appel, l'appel est dit terminal.
>	Une fonction récursive dont tous les appels sont terminaux est dite récursive terminale.

Quand un appel est terminal, la frame appelante se contente de récupérer le résultat de la frame appelée, de là le mettre à la place de son propre résultat, puis de se détruire.

```ocaml 
let rec for_all p l =
	match l with
	|[]->true
	|x::q-> p x && for_all p q 

for_all (fun x -> x > 0) [1;2;3]
```
***Voir schéma 1***

Quand une fonction récursive fait un nombre constant d'opérations dans une frame, mais nécessite un nombre liéaire d'appels récursifs, sa complexité en temps $\underline{\text{et en espace}}$ est $\Theta(n)$ et cet espace est utilisé sur la pile. Ceci peut être prohibitif en espace, la taille de la pile étant en pratique plus limitée que celle du tas (et par ailleurs le problème se pose même si la fonction n'utilise pas le tas).
Avec l'optimisation des appels terminaux sur la frame est d'abord détruite (sauf PC) et remplacée par la pile appelée 
***Voir schéma 2***

```ocaml
let rec factorielle_1 n =
	if n = 0 then 1
	else n * factorielle_1 (n-1)
(*factorielle_1(4)  = 4 * factorielle_1(3) =
	                = 4*(3*(2*(1*1)))                      *)

let rec factorielle_2 n =
	let rec aux n acc =
		if n = 0 then acc
		else aux (n-1) (n * acc)
	in
		aux n 1
(*aux 4 1 = aux 3 4
		  = aux 2 3*4
		  = 1*(2*(3*4))                                    *)
```

2) Gestion du tas

Les valeurs numériques en `OCaml` sont réparties en 3 catégories :
- Les entiers et assimilés
	-int
	-bool
	-char
	-constructeurs, exceptions...
Ces valeurs sont représentées par des entiers $n \in \textlbrackdbl -2^{62} ;2^{62}-1 \textrbrackdbl$

- Les flottants, tableaux de flottants et enregistrements nommés ne contenant que des flottants
	-tout est dit x)

- Tout le reste
	-tableaux (hors flottants)
	-chaînes de caractères
	-tuples
	-enregistrements nommés (hors 100% flottants)
	-application d'un constructeur non constant
	(tout est comme un tuple xptdr)

Une valeur entière n est représentée par le mot mémoire $2n+1$ 
(la représentation sur 63 bits signés de $n$, suivie d'un 1 de poids faible)
Toute autre valeur est représentée par un pointeur vers un bloc de $k+1$ mots mémoire, où $k$ est le nombres de termes dans le tuple. Le premier mot mémoire contient :
- la taille du bloc
- un drapeau indiquant si c'est un bloc de flottants
- un drapeau utile pour le **G**arbage **C**ollector (ou **GC**)

- ***Voir schéma 3***
	```ocaml
	let n = 42
	let p = (n, -3, true)
	let l = [3; 4; 5]
	let t = [| []; [n]; l; [] |]
	```

Le **GC** part de la pile et suit chaque pointeur qui mène sur le tas, si le bloc est déjà visité, on l'ignore, sinon on le marque comme visité puis on suit chacun de ses pointeurs. À la fin, il suffit de libérer tous les blocs du tas (le **GC** en a une liste) qui n'ont pas été visités