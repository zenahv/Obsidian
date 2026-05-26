---
tags:
  - Info
---
## Gestion de la mémoire en C
### I - Adresses et pointeurs
1) Les l-values
Définition: Une l-value est une expression qui peut être placée à gauche de l'opérateur d'affectation =. Ceci revient à dire qu'elle correspond à un emplacement de la mémoire ou au contenu d'un emplacement précis de la mémoire

Exemples: Si x est une variable déclarée, alors x est une l-value
```C
int x = 42;
x = 0;
```
En revanche, les constantes ne sont pas des l-values
De même les expressions arithmétiques ou booléennes non réduites à une variable ne sont pas des l-values
```C
42 = x;
x + y = 42;
x && y = true;
```
Une l-value est stockée sur un ou plusieurs octets contigus (par exemple `int` sur 4 octets)
Son adresse est le premier de ces octets
Une l-value est caractérisée par son adresse et sa taille, la taille étant déterminée par son type

2) Passage par valeur
Définition: On dit qu'un argument x d'une fonction f est passé par valeur si l'exécution de f ne modifie pas la valeur de l'expression passée en argument.
On dit au contraire que l'argument x est passé par adresse si f modifie la valeur de l'expression en argument.

Exemple: Si évaluer `f(x)` a pour effet d'incrémenter x, alors x est passée par adresse
Mais alors `f(42)` n'a aucun sens
En C, les arguments des fonctions sont toujours passés par valeur. On peut simuler un passage par adresse comme on le verra

La fonction C ci-dessous ne marche pas comme on voudrait
```C
void incremente(int x) {
	x++;
}
```

La fonction ne fait que modifier la variable x **locale**, dont la valeur initiale est une copie de la valeur de l'expression en argument.

3) Opérateurs d'adresse et déréférencement
& est l'opérateur (unaire, placé à gauche de l'opérande) d'adresse. L'opérande doit être une l-value et l'expression &\<expr\> a pour valeur l'adresse de \<expr\>

\* est l'opérateur de déréférencement ou opérateur d'indirection (unaire, placé à gauche). \*\<expr\> est la l-value d'adresse \<expr> si elle existe, sinon UB (sans doute segfault)

Remarque: une adresse a toujours un type de la forme \<type\>\*, qui indique que la l-value correspondante est de type \<type\>, et donc sa taille

Exemple:
```C
int x = 42;
int *p = &x;
```

Remarque: Si x est une variable, `*(&x)` est une l-value non réduite à un nom de variable (c'est la même l-value que x)

Défintion: Un pointeur est une l-value dont la valeur est une adresse

4) Passage par adresse
Exemple:
```C
void incremente(int *p) {
	(*p)++;
}
```

```C
int x = 42;
incremente(x);
```

La variable x a alors pour valeur 43

On peut simuler un passage par adresse en passant par argument de la fonction l'adresse de l-value qui doit être modifiée.

C'est de cette façon que scanf fonctionne

|     | a   | b   | \*p | \*q | \*r | p   | q   | r   |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| l.5 | 10  | 42  | 10  | 42  | &a  | &a  | &b  | &p  |
| 6   | 10  | 42  | 42  | 42  | &b  | &b  | &b  | &p  |
| 7   | 10  | 52  | 52  | 52  | &b  | &b  | &b  | &p  |
| 8   | 10  | 52  | 52  | 10  | &b  | &b  | &a  | &p  |
| 9   | 10  | 52  | 52  | 10  | &a  | &b  | &a  | &q  |
| 10  | 0   | 52  | 52  | 0   | &a  | &b  | &a  | &q  |

## II - Structures
Les structures permettent de définir des types "produits" en C, c'est à dire des types dont les valeurs sont des tuples de valeurs d'autres types

Exemple:
```C
struct Complexe {
	double re;
	double im;
};
```

Syntaxe: 
```C
struct <nom de la structure> {
	<type champ 1> <nom champ 1>;
	<type champ 2> <nom champ 2>;
	...
};
```

On peut déclarer un complexe et éventuellement l'initialiser ainsi:
```C
struct Complexe z = {1.0, 2.0}; // z represente 1+2i
```


Avec cette déclaration, `z` n'est pas une l-value. En revanche, chaque champ de `z` est une l-value. Si on veut modifier la variable `z` pour représenter $3-5i$Alors on écrit
```C
z.re = 3.0;
z.im = -5.0;
```

Pour éviter de répéter le mot clé `struct`, on peut définir un alias avec `typedef`

```C
typedef struct Complexe complexe;
```

On peut ensuite utiliser `complexe` comme un alias de `struct Complexe`
```C
complexe z = {1.0, 2.0};
```

On peut écrire des fonctions qui prennent en argument ou renvoient ce nouveau type

```C
complexe conjugue(complexe z) {
	complexe w = {z.re, -z.im};
	return w;
}
```

ATTENTION: `.` est prioritaire sur `*`
Donc si `p` est de type `complexe*`, `*p.re` ne veut rien dire Pour avoir la partie réelle de `*p`, on écrit `(*p).re` ou on utilise le sucre syntaxique `p->re`

## III - Tableaux statiques
Définition: Un tableau est un tuple de valeurs toutes de même type stocké à des adresses consécutives.
On associe un tableau à l'adresse de sa première valeur.

Un tableau statique est un tableau dont la taille est une constante connue à la compilation

1) Déclaration
```C
int t[3] = {42, 13, 0};

int t[] = {42, 13, 0}; // la logueur est déterminée automatiquement

int t[3] = {42, 13}; // les valeurs manquantes par rapport à la taille du tableau sont 0

int t[3]; // déclaration
t = {42, 13, 0}; // initialisation
```

2) Accès aux éléments
Définition: Les valeurs d'un tableau sont à priori, si le tableau est un type de l-value, des l-values. Elles sont d'indices 0 à n-1 où n est la taille du tableau et l'expression pour y accéder est `<nom du tableau>[<indice>]`

ATTENTION: un accès à un indice non entre 0 et n-1 mène à du UB

3) Arithmétique des pointeurs
Un tableau est assimilé à l'adresse de sa première valeur, donc si on déréférence cette adresse, on retrouve la première valeur, donc `*t` et `t[0]` ont le même sens
`t[i]` est en fait du sucre syntaxique pour `*(t + i)`, où `t+i` désigne l'adresse de même type que `t`, à l'octet `t + i * sizeof(*t)`

Comme `t` est traduit par le compilateur en une adresse relative, on ne peut pas changer `t`. Les tableaux statiques ne sont pas des l-values. De plus, cette adresse relative est présente dans la frame de la fonction où `t` est défini: la renvoyer hors de cette frame n'a pas de sens

4) Chaînes de caractères
Définition: Une chaîne de caractères en C est un tableau de caractères qui contient la valeur `'\0'`, appelé caractère de fin de chaîne.
Grâce à cette garantie, on peut parcourir les indices d'une chaîne de caractères jusqu'à trouver la valeur `'\0'` et on ne risque pas d'avoir du UB

On peut initialiser une chaîne de caractères avec un un string literal

```C
char s[] = "Hello, world!";
```
est équivalent à
```C
char s[] = {'H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!', '\0'};
```
On peut préciser une taille plus grande 
```C
char s[20] = "Hello, world!";
char s[] = {'H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!', '\0', '\0', '\0', '\0', '\0', '\0', '\0'};
```

## IV - Allocation dynamique de tableaux
1) Limites des tableaux statiques
Deux limites:
- Une fonction ne peut pas renvoyer un tableau statique créé par elle-même
- On ne peut peux pas créer un tableau statique dont la taille dépend d'un paramètre non connu à la compilation
Toutes les variables locales d'une fonction sont stackées sur la pile dans la frame d'une fonction récursive. La frame a une taille fixée à la compilation, don impossible d'y mettre un tableau de taille variable. De plus, la frame est détruite et potentiellement remplacée par une autre à la fin de l'exécution, donc renvoyer un tableau qui est une adresse dans cette frame n'a pas de sens.
Définition: l'allocation dynamique consiste en l'allocation de mémoire au processus lors de son exécution en dehors de la mémoire allouée pour la pile et pour le programme ou les données. On appelle tas la zone de la mémoire où on alloue ces blocs

```C
void* malloc(size_t nombre_d_octets)
```
`malloc` prend en argument un nombre d'octets entier non signé et renvoie (si le noyau accède à la requête) le numéro du premier octet du bloc alloué sur le tas, de la taille demandée
Si on veut un tableau `t` d'éléments `type` avec `n` valeurs:
```c
type* t = malloc(n * sizeof(type))
```
Ceci crée notre tableau d'éléments `type`, mais n'initialise aucune de ses valeurs! Il faut utiliser une boucle for pour initialiser les `t[i]` pour $0\leq i<n$

Remarque: On peut parfaitement allouer l'espace pour une seule valeur de type `type`. Ceci permet de renvoyer l'adresse d'une telle l-value qui persiste au-delà de la frame qui l'a créée.

Remarque: `malloc` permet d'obtenir une addresse qui ne correspond pas à une l-value existente

Remarque: Quand on déclare un pointeur, si on ne l'initialise pas à l'adresse d'une l-value ou au résultat d'un malloc, on doit l'initialiser à `NULL`. Ceci permet de tester si ce pointeur peut être déréférencé.

3) Libérer la mémoire
La mémoire allouée avec `malloc` n'est jamais automatiquement libérée. Il faut le faire explicitement avec la fonction `void free(void* t)`. Il faut en particulier libérer la mémoire avant d'écrire par dessus l'unique pointeur vers ce bloc. On n'a pas naturellement accès à la table des blocs alloués.

