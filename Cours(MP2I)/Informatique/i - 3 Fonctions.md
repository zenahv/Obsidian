---
tags:
  - Info
---
# Fonctions

## I - Pile d'exécution
1) Principe
Appeler une fonction signifie mettre sur la pile d'exécution une frame de cette fonction. La fonction correspond exactement à cet appel: elle est active tant qu'on exécute son code. Quand la fonction termine, la frame est "détruite"

2) Contenu d'une frame
En plus des variables locales et de la valeur de retour, la frame doit contenir l'adresse de l'instruction qui a appelé la fonction et créée la frame. On stocke cette adresse juste avant le saut.
Chaque variable locale est définie par son adresse relativement au sommet de la frame. Tant que la frame est active, l'adresse du sommet de la frame est aussi l'adresse du sommet de la pile, stockée dans le registre `SP`

## II - Fonctions récursives
1) Définition et exemples
Une fonction est dite récursive si son code contient un appel à cette même fonction. On parle d'appel récursif pour désigner un tel appel
On dit que plusieurs fonctions `f1,-,fn` sont mutuellement récursives si `f1` contient un appel à `f2`, ..., `fn` à `f1`

Considérons la fonction mathématique $f:\mathbb{N}\to \mathbb{N},n\mapsto \begin{cases}1\iff n=0\\nf(n-1)\end{cases}$
$\forall n\in \mathbb{N},f(n)=n!$

```C
unsigned int factorielle(unsigned int n) {
	if (n == 0) return 1;
	else return n * factorielle(n-1);
}
```
C'est beaucoup plus proche de la définition mathématique qu'une version itérative

```C
unsigned int factorielle(unsigned int n) {
	unsigned int prod = 1;
	for (int i = 1; i <= n; ++i) {
		prod *= i;
	}
	return prod;
}
```

Remarque: Pour qu'une fonction récursive termine, il est nécessaire mais pas suffisant, qu'il y ait au moins un cas du flot de contrôle où la fonction s'exécute sans appel récursif, on parle de cas de base. Dans le cas contraire, la pile d'exécution va grandir jusqu'à dépasser la limite autorisée par le noyau. On parle de dépassement de pile. (SO)

## III - Preuves de correction et terminaison
1) Rappel sur la spécification
Une spécification donne un domaine (ensemble de valeurs possibles pour les arguments) et des propriétés que doivent vérifier la valeur et/ou les effets de bord en fonction des arguments

Le domaine ne se limite pas au type:
- une fonction qui prend en argument un tableau `t` de taille `n` aura des types d'argument `int* t, int n`, mais le domaine impose que `t` est de taille `n`
- une fonction sur les chaînes de caractères n'attend pas n'importe quelle adresse `char*`: il faut un tableau qui contient le caractère de fin de chaîne
- La recherche dichotomique prend en argument un tableau trié et sa taille

2) Preuves de correction
Définition: On dit qu'une fonction est correcte si pour tout tuple appartenant à son domaine, la valeur éventuellement renvoyée et les effets de bord, sont conformes à la spécification

Remarque: En particulier, une fonction correcte termine toujours pour des arguments dans son domaine

a) Pour des fonctions itératives

On utilise des invariants de boucle, c'est à dire des propriétés sur les valeurs des variables qui sont vraies à chaque passage dans la boucle
On démontre un invariant par récurrence, puis on utilise l'invariant après le dernier passage pour prouver la correction

b) Fonctions récursives

On prouve la correction et donc la terminaison par une récurrence sur les arguments


3) Preuves de terminaison
Usuellement, on prouve directement la correction et donc la terminaison d'un fonction récursive. En revanche, prouver la correction d'une fonction itérative nécessite usuellement un invariant de boucle appliqué après la sortie de la boucle: il faut donc préalablement prouver que la boucle termine.

Pour prouver la terminaison d'une boucle, on utilise un variant de boucle, c'est à dire une fonction des variables:
- entière
- strictement monotone en fonction du nombre de passages dans la boucle
- telle que si cette quantité dépasse un certain seuil, la boucle termine

Comme les suites entière strictement monotones ne sont pas bornée, ceci suffit à conclure

