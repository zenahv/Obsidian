---
tags:
  - Info
---
# Tables de hachage
Soient $K$ ensemble des clés, $V$ ensemble des valeurs, $D_{K,V}$ ensemble des tableaux associatifs
# I - Principe de l'implémentation

1) Pourquoi un tableau ne convient pas
	Si $K$ est fini, et inclus dans $\mathbb{N}$ (ou s'injecte dans $\textlbrackdbl  0\text{ };\text{ } N-1\textrbrackdbl$ avec $N=\text{card}(K))$, on pourrait implémenter un tableau associatif comme un tableau de taille $N$ à valeurs dans $V\text{ }\cup\text{ }\{None\}$
	Sur des cas pratiques, $N$ est largement supérieure à la taille de la mémoire, alors que le nombre d'associations (de clés effectivement utilisées) sera beaucoup plus petit.

2) Utilisation d'une fonction de hachage, notion de collision.
	On admet que $\forall\text{ }m\in \mathbb{N}^{*}$ (en pratique, m raisonnable taille du tableau), on dispose d'une fonction de hachage $h_{m}:K\to \textlbrackdbl 0;\text{ m-1} \textrbrackdbl$ telle que :
	- $\forall\text{ }k\in K,\text{ }h_{m}(k)$ se calcule en temps constant
	- $h_{m}$ répartit bien les valeurs de $K$, c'est à dire que si on choisit $X\in K$ aléatoire (uniformément si $K$ est fini, selon une disposition raisonnable sinon), $\forall\text{ }i\in \textlbrackdbl 0;\text{ }m-1 \textrbrackdbl$, $P(h_{m}(X)=i)\simeq\frac{1}{m}$
	
	L'idée est de stocker les associations dans un tableau de taille m dont toutes les cases sont initialement $None$.
	Pour ajouter l'association $(k,v)$, on calcule $h_{m}(k)$, puis on change $t[h_{m}(k)]$ à $Some\text{ }(k,v)$
	Que fait-on de l'ancienne valeur $Some(k',v')$ dans cette case quand $k'\neq k$ mais $h_{m}(k)=h_{m}(k')$ ?
	On parle de collision

2) Résolution des collisions par chaînage
	Pour avoir un nombre quelconque (y compris 0) d'associations dans une case d'un tableau, on y stocke une liste de couples clé-valeur.
	$\underline{\text{Exemple avec 7 clés : }}$
	$h_{4}:\begin{cases}k_{1}\mapsto{0} \\ k_{2}\mapsto{2} \\ k_{3}\mapsto{3} \\ k_{4}\mapsto{0}\\ k_{5}\mapsto{3} \\ k_{6}\mapsto{3} \\ k_{7}\mapsto{2}\end{cases}$
	***Voir schéma 1***
	```schéma
	t->[p_0][p_1][p_2][p_3] //t initialement vide, on ajoute       successivement les (k_i|v_i)
	
	p_0 -> k_1|v_1 -> k_4|v_4 -> 
	p_1 -> 
	p_2 -> k_2|v_2 -> k_7|v_7 ->
	p_3 -> k_3|v_3 -> k_5|v_5 -> k_6|v_6 ->
	```
	La présence de la clé $k$ permet de retrouver la bonne association si on cherche l'association correspondant à $k$ et que $t[h_{m}(k)]$ contient une liste de longueur $\geqslant 2$
	$\underline{\text{Problème :}}$ La recherche d'une association (y compris pour l'ajout car on doit vérifier si on a déjà la clé) consiste alors en :
	- calcul de $h_{m}(k)$ : coût "constant"
	- accès à $t[h_{m}(k)]$ : coût constant
	- parcours de $t[h_{m}(k)]$ : coût linéaire en la taille de la liste
	Il faut donc garantir que les listes du tableau sont de taille au + constantes : on utilise pour cela un tableau redimensionable.

3) Facteur de charge et rehachage
	$\underline{\text{Remarque :}}$ Quelle que soit la qualité des fonctions $h_{m}$ pour répartir les clés, si il existe $n$ associations, alors il existe au moins une case du tableau (un "$Some$") avec au moins $\lceil \frac{n}{m} \rceil$ associations
	
	Définition: On appelle charge d'une table de hachage la valeur $\alpha=\frac{n}{m}$
	On appelle facteur de charge la valeur maximale de la charge avant d'augmenter $m$ et de rehacher la table.
	En pratique, pour la résolution des collisions par chaînage, 2 est un bon facteur de charge 
	***Voir schéma poly***
	 $\underline{\text{Remarque :}}$ 
	 Si $m$ est assez grand, la probabilité que la + longue liste soit de longueur $\geqslant 3\alpha m\log(m)$ est majorée par $\frac{1}{m^{2}e}$

# II - Quelques remarques sur les fonctions de hachage

Une manière courante de définir $h_{m}$ et de trouver une "bonne" fonction $h :K\to \mathbb{N}$ (ou $h:K\to \textlbrackdbl0\text{ };\text{ }M-1 \textrbrackdbl$, avec $M$ grand) et de poser $\forall\text{ } k\in K,\text{ }\forall\text{ }m\in \mathbb{N}^{*}(\text{ou }\textlbrackdbl 1\text{ ; } M-1\textrbrackdbl),\text{ }h_{m}=h(k)[m]$
- Il y a une seule "bonne" fonction à trouver. Si $h$ répartit bien les valeurs, tous les $h_{m}$ aussi.
- On peut stocker le triplet $(h(k),k,v)$ plutôt que le couple $(k,v)$. Ceci simplifie le rehachage (au prix d'un coût supplémentaire en espace)
- Si on rehache pour diminuer $m$ quand la charge est très petite et on veut libérer de la mémoire, on aura $h_{m}(k)=h_{2m}(k)[m]$

Typiquement, on aura, pour une chaîne de caractères $s$ de longueur $\ell$ :  $h:s \mapsto \sum\limits_{i=0}^{\ell-1}p^{\ell-i-1}s[i]$
avec $p\geqslant 2$ premier avec tous les m utilisés (si $m$ est une puissance de 2, p impair suffit)