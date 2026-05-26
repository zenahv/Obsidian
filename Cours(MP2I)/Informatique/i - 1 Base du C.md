---
tags:
  - Info
---

## Bases de la programmation en C
1978: K&R C
80s: explosion des extensions
1989: ANSI C
Depuis, ISO a repris C99, C11, C17, C23

### I) La compilation
Définition: On se donne deux langages de programmation, un langage source et un langage cible ou objet. On se donne également une norme qui précise quels programmes sont autorisés dans le langage source. Un compilateur est un programme qui prend en argument un programme $P$ dans le langage source qui respecte la norme, et renvoie $P'$ dans le langage cible tel que pour toute entrée $x$, $P(x)$ et $P'(x)$ renvoient le même résultat. On dit que le compilateur préserve la sémantique du programme. Si $P$ ne respecte pas la norme, on a un comportement indéfini:
- La compilation peut échouer
- La compilation peut renvoyer $P'$ sémantiquement équivalent à $P$
- La compilation peut renvoyer $P'$ non sémantiquement équivalent à $P$

## II) Unité lexicale du C
Définition: Une unité lexicale est une suite de caractères dans un programme qu'on ne peut pas diviser en parties ayant un sens indépendant. (C'est l'équivalent d'un mot en langue naturelle)

Il y a 6 types d'unités lexicales:
- les identificateurs: nom de variable, fonction, type, etc...
  Uniquement composés de lettres, chiffres, et \_, ne commençant pas par un chiffre. Commence conventionnellement par une lettre minuscule.
- les mots-clés (34 en C99). Ils sont interdits pour les identificateurs. Ils servent principalement pour spécifier les types et pour structurer le flot de contrôle.
- les constantes et les chaînes de caractères littérales
- les opérateurs
- les signes de ponctuation: ils déterminent les limites entre instructions et entre fonctions
- Commentaires

## III) Structure d'un programme C
```
#directives préprocesseur

déclaration de variable globales;
déclarations/définition de fonctions secondaires;

int main(void) {
	déclarations de variable locales;
	instructions;
}
```

1) Directives préprocesseur
`#include <bibliothèque standard.h>`
`#include "ma bibliothèque.h"`
Les fichiers d'en-tête contiennent des déclarations qui sont copiées dans le fichier source par le préprocesseur

`#define NOM_DE_CONSTANTE constante`
interdit *:(* : `#define NOM_DE_MACRO(x) expression_avec(x)`
Toutes les occurrences de `NOM_DE_CONSTANTE` seront remplacées par la constante à l'étape de préprocessing

2) Expression, instruction, et déclarations
Définition: une expression est une séquence syntaxiquement correcte d'identificateurs, opérateurs, constantes, et parenthèses

Exemples d'expressions:
`x`, `x+42`, `x && (42 > y) || true`,  `f(3, x)`, `x = 42`

Définition: une instruction simple est une expression suivie de `;`
Ceci signifie "évaluer maintenant cette expression".
Une instruction composée peut être formée avec plusieurs instructions entourée par des `{}`. On parle aussi de bloc. Les structure de contrôle comme `for`, `while`, `if` permettent de former des instructions composées.

Exemples:
`x;`, `42;` (inutiles)
`x = 42;`
`f(3);` (peut être utile ou non selon `f`)
`{x = 42; y = 2 * x;}`
`while (x > 0) {y++; x /= 2;}`

Définition: Une déclaration est un type suivi d'une liste d'identificateurs séparés par des virgules. Ceci déclare une ou plusieurs variable dans le bloc actuel. Cette/ces variable peut ensuite recevoir une affectation.

Exemples:
`int x;`
`float a, b;`

ATTENTION: une variable déclarée mais non affectée ne doit pas être évaluée (sinon UB).

Pour éviter ceci, on peut initialiser les variables lors de leur déclaration

Exemples:
`int x = 42;`
`float a = 0., b = 3.5;`

ATTENTION: on ne peut pas déclarer une variable déjà déclarée dans le même bloc

3) structures de contrôle
a) Fonctions
Une fonction est déclarée avec
- son identificateur
- son type de retour
- les types de ses arguments + id de variables locales pour ces arguments

```C
type_retour id_fontion(type1 arg1, type2 arg2) {
	déclaration de variables locales;
	instructions;
}
```
On peut aussi déclarer une fonction sans la définir pour la définir plus bas dans le code

b) Instructions conditionnelles
```C
if (expression) {
	instruction 1;
} else {
	instruction 2;
}
```

`if (!p) exp;` is dead :,(

c) Boucles
```C
while (condition) {
	instruction;
}
```
Le while consiste à évaluer l'expression booléenne. Si elle est fausse, on a fini. Si elle est vraie, évaluer l'instruction/le bloc. Puis recommencer

ATTENTION: éviter les effets de bord dans l'expression booléenne, mieux vaut les avoir comme instruction. Il faut évidemment des effets de bord quelque part pour sortir de la boucle, sauf si on utilise break

break est une instruction qui sort de la boucle la plus profonde où l'exécution du programme se trouve.

On peut aussi écrire une boule for lorsque le variant de boucle (la variable qui change de valeur pour affecter la condition de la boucle) est incrémenté ou décrémenté toujours de la même façon sans dépendre du reste.

```C
for (initialisation; condition; incrémentation) {
	instruction;
}
```
est du sucre syntaxique pour
```C
{initialisation;
while (condition) {
	{instruction;}
	incrémentation;
}}
```
## IV) Types de base
`char`: entier de $-128$ à $127$, représente un caractère ASCII si il est entre 0 et 127, morceau de caractère UTF-8 sinon
`unsigned char`: entier de $0$ à $255$
`int`: sur 32 bits
`unsigned int`: sur 32 bits 
`long int`: sur 64 bits
`unsigned long int`: sur 64 bits

nombres en virgule flottante stockés sur 32/64/128(80) bits
`float`, `double`, `long double`

`void`: type de retour pour les fonctions ne renvoyant pas de valeur.

Dans `stdbool.h` (ou de base en C23), on dispose du type `bool` avec deux constantes `true` et `false`

## V) Fonctions d'entrée et sortie
1) printf
`printf(chaîne de contrôle, ..., ...)` autant d'argument supplémentaires que de spécificateurs de format
Affiche la chaîne de contrôle en remplaçant tout les spécificateurs de format par la représentation sous le format spécifié de l'argument correspondant

2) scanf
`scanf(chaîne de contrôle, addresse)` adresse est en pratique &var où var est le nom de la variable à affecter

