## I - Syntaxe
Définition:
> On appelle domaine un triplet d'ensembles deux à deux disjoints $(X,S_{f}, S_{p})$ tels que
> - $X,S_{f},S_{p}$ sont aussi disjoints de $\{ (,,,),.,\land,\lor,\to,\leftrightarrow,\forall,\exists \}$
> - $X$ est infini dénombrable
> - $S_{f}$ et $S_{p}$ sont munis d'arités. Pour $k\in \mathbb{N}$, on note $S_{f}^{k}$ l'ensemble des symboles de fonctions d'arité $k$, et $S_{p}^{k}$ l'ensemble des symboles de prédicats d'arité $k$
> - $S_{p}^{0}=V\cup \{ \bot, \top \}$, où $V$ est l'ensemble des symboles de variables propositionnelles. $S_{f}^{0}$ est appelé ensemble des constantes

Exemple:
On souhaite exprimer, étant donné $a$ un tableau d'entiers de taille $\geqslant 4$, que les valeurs d'indice $0$ à $3$ de $a$ sont paires
Alors $a$ doit être une constante, de même que $0$ et $3$ (probablement constantes, car les entiers sont des constantes): $S_{f}^{0}=\mathbb{N}\cup \{ a \}$
On doit avoir une fonction qui à un tableau et un entier associe la cas d'indice cet entier: $S_{f}^{2}=\{ \mathrm{get} \}$
On doit également pouvoir comparer des entiers, et vérifier la parité d'un entier: $S_{p}^{1}=\{ \mathrm{estPair} \}$ et $S_{p}^{2}=\{ \leqslant \}$

Défnition:
> On appelle ensemble des termes et on note $T(X,S_{f})$, la structure inductive de signature
> $C_{0}=X\cup S_{f}^{0}$ et $\forall k\in \mathbb{N}^{*},C_{k}=S_{f}^{k}$

Exemple: $\mathrm{get}(a,3)$ est un terme, $\mathrm{get}(3,\mathrm{get}(a,a))$ aussi, même si à priori ce terme n'aura pas de valeur dans la représentation qu'on envisage

Définition:
> Soient $k\in \mathbb{N},p \in S_{p}^{k},t_{1},\dots,t_{k}\in T(X,S_{f})$
> On appelle formule atomique la séquence de symboles $p{\color{red}(}t_{1}{\color{red},}\dots{\color{red},}t_{k}{\color{red})}$

Exemple:
$\bot$ et $\top$ sont des variables formules atomiques
$\leqslant(\mathrm{get}(a,2),0)$ est une formule atomique. On écrira plutôt les prédicats binaires de façon infixe: $\mathrm{get}(a,2)\leqslant 0$

Définition:
> On appelle ensemble des formules du premier ordre et on note $F(X,S_{f},S_{p})$ la structure inductive de signature
> - $C_{0}=$ ensemble des formules atomiques
> - $C_{1}=\{ \neg \}\cup \{ \forall x. \}_{x\in X}\cup \{ \exists x. \}_{x\in X}$
> - $C_{2}=\{ \land,\lor,\to,\leftrightarrow \}$

Remarque: Comme en logique propositionnelle, on écrit les connecteurs logiques binaires de façon infixe. On garde les mêmes priorités: Tous les connecteurs logiques sont prioritaires sur les quantificateurs. Evidemment, les fonctions sont prioritaires sur les prédicats, et les prédicats sont prioritaires sur les connecteurs logiques

Exemple:
La formule logique qui correspond à l'affirmation au début de l'exemple, est $\forall i.(0\leqslant i\land i\leqslant 3)\to \mathrm{estPair}(\mathrm{get}(a,i))$

Exemple:
Les axiomes d'une relation d'ordre, pour le symbole de prédicat $\leqslant$ sont
$\forall x.x\leqslant x$
$\forall x.\forall y.(x\leqslant y \land y\leqslant x) \to x=y$
$\forall x.\forall y.\forall z.(x\leqslant y\land y\leqslant z)\to x\leqslant z$

Remarque: On peut définir un domaine avec le symbole de prédicat binaire $\in$, mais il ne sera pas directement associé à un quantificateur. Pour préciser dans quel ensemble une variable quantifiée est prise, on utilise un prédicat dont la sémantique sera l'appartenance à un ensemble:
Au lieu de $\forall x\in \mathbb{N},\dots$,  on écrira $\forall x.\mathrm{estEntier}(x)\to(\dots)$
Au lieu de $\exists x\in \mathbb{N},\dots$, on écrira $\exists x.\mathrm{estEntier}(x)\land(\dots)$

## II - Variables libres et liées, renommage, substitution
Définition:
> Soient $x\in X,\varphi \in F(X,S_{f},S_{p})$
> On dit qu'une occurence dans $\varphi$ du symbole de variable $x$ est libre qi ni $\forall x.$ ni $\exists x.$ ne sont dans ses ancêtres
> Une occurence non libre est dite liée

Définition:
> Soient $x\in X,\varphi \in F(X,S_{f},S_{p}),\psi=\forall x.\varphi$
> $\varphi$ est la porté de $x$ dans $\psi$

Remarque: $\varphi$ peut contenir des occurences liées de $x$, mais c'est peu souhaitable. Le but du renommage est de faire en sorte qu'une variable liée dans $\psi$ soit libre dans sa portée

***
Il manque genre 2 défs
***
