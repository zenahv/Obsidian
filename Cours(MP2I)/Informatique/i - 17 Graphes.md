# Graphes non pondérés

# I - Definition et 1$^{ères}$ propriétés

## 1 - Graphes orientés

<u>Déf</u>$\to$  
 >On appelle <b>graphe orienté</b> un coupe $(S,A)$ où $S$ est un ensemble fini et $A\subset S^{2}$ 
 >$S$ est l'ensemble des sommets et $A$ est l'ensemble des arcs
 >Pour $(s,t)\in A,$ on note $s\to t$

<span style="color:red">⚠ Pour un graphe orienté <b>arcs</b> pour un graphe non orienté <b>arrêtes</b> !!</span>


```avatar
image: Random images/Graphe 1.png
description: "[[Graphe 1.png]] "
```


<u>Déf</u>$\to$  
 >Soit $(S,A)$ un graphe orienté, $s\in S$
 >Les predecesseurs de $s$ sont les $r\in S$ tels que $r\to s$
 >Les successeurs de $s$ sont les $t\in S$ tels que $s\to t$
 >On note $\mathrm{d}^{-}(s)$ et on appelle degré entrant de $s$ le nombre de ses predecesseurs
 >On note $\mathrm{d}^{+}(s)$ et on appelle degré sortant de $s$ le nombre de ses successeurs 
 
 <span style="color:turquoise">Exemple </span> 
$\mathrm{d}^{+}(0)=1$ $\mathrm{d}^{+}(1)=3$
$\mathrm{d^{-}}(0)=2$ $\mathrm{d^{-}}(1)=1$
$\mathrm{d}^{+}(3)=2$ $\mathrm{d}^{+}(4)=2$
$\mathrm{d}^{-}(3)=5$ $\mathrm{d}^{-}(4)=0$

<u>Propriété</u>
Soit $(S,A)$ un graphe orienté
Alors $\sum\limits_{s\in S}^{}\mathrm{d}^{+}(s)=\sum\limits_{s\in S}^{}\mathrm{d}^{-}(s)=\mathrm{Card}(A)$

<u><span style="color:gold"> Preuve </span></u> 
$\sum\limits_{s\in S}^{}\mathrm{d}^{+}(s)=\sum\limits_{s\in S}^{}\mathrm{Card}\{ (r,t)\in A\text{ }|\text{ }r=s \}$
Or ces ensembles sont trivialement 2 à 2 disjoints 

Donc $\sum\limits_{s\in S}^{}\mathrm{d}^{+}(s)=\mathrm{Card}\left( \overset{  }{  \underset{ s\in S }{ \bigcup } }\{ (r,t)\in A\text{ }|\text{ }r=s \} \right)$
$=\mathrm{Card}(A)$
De même pour $\sum\limits_{s\in S}^{}\mathrm{d}^{-}(s)$

### a - Chemins et cycles 
<u>Déf</u>$\to$  
 >Soit $(S,A)$ un graphe orienté, $s,t\in S$
 >On appelle chemin de $s$ à $t$ un tuple $(s_{0},-,s_{n})\in S^{n+1}$ pour un certain $n\in \mathbb{N}$ tel que :
 >$\begin{cases}s_{0}=s \\ s_{n}=t \\ \forall i\in \textlbrackdbl 0;n-1 \textrbrackdbl,s_{i}\to s_{i+1}\end{cases}$
 >Dans ce cas, on dit que $\gamma=(s_{0},-,s_{n})$ est un chemin de longueur $n.$
 >On note $s\to*t$ si il existe un chemin de $s$ à $t$, On dit que $s$ est <b>accessible</b> depuis $s$
 
 <span style="color:violet">Remarque </span> 
- Il existe un chemin de longueur nulle de $s$ à $t$ ssi $s=t$
	Donc en particulier, $\forall s\in S,s\to^*s$
- La relation $\to^*$ "est accessible depuis" est la clôture (le plus petit ensemble tel que "ça vérifie la même propriété) réflexive-transitive de la relation $\to$ "est successeur de"

<u>Déf</u>$\to$  
 >Soit $(S,A)$ un graphe, $\gamma=(s_{0},-,s_{n})$ un chemin dans ce graphe.
 >On dit que $\gamma$ est simple si :
 >$\forall i,j\in \textlbrackdbl 0;n-1 \textrbrackdbl,i\neq j \implies (s_{i},s_{i+1})\neq(s_{j},s_{j+1})$
 >On dit que $\gamma$ est un cycle si 
 >$\begin{cases}\gamma\text{ est simple} \\ n\geqslant 1 \\ s_{0}=s_{n}\end{cases}$
 
 <span style="color:turquoise">Exemple </span> 
$G$ a $8$ cycles distincts
(sans compter ceux obtenus par permutation circulaire des arcs)
- $(0,1,0)$
- $(0,1,3,0)$
- $(0,1,3,3,0)$
- $(0,1,2,3,0)$
- $(0,1,2,3,3,0)$
- $(0,1,2,5,3,0)$
- $(0,1,2,5,3,3,0)$
- $(3,3)$

<u>Proposition</u>
>Soit $(S,A)$ un graphe orienté, $s,t \in S$ tels que il existe un chemin de longueur non nulle de $s$ à $t$.
>Alors il existe un chemin simple de longueur non nulle de $s$ à $t$

<u><span style="color:gold"> Preuve </span></u> 
Procédons par récurrence sur $n$ la longueur du chemin de $s$ à $t$

- <u>Init</u> 
	Si $n=1$, $s\to t$ et $(s,t)$ est un chemin simple
- <u>Hérédité</u>
	Soit $n\geqslant 2$. Supposons que pour tout $n'\in \textlbrackdbl 1;n-1 \textrbrackdbl$, s'il existe un chemin de longueur $n'$ de $s$ à $t$,
	alors il existe un chemin simple de longueur non nulle de $s$ à $t$
	Soit $\gamma=(s_{0},-,s_{n})$ chemin de $s$ à $t$
	Si $\gamma$ est simple, on a fini.
	Sinon, il existe $i<j$ dans $\textlbrackdbl 0;n-1 \textrbrackdbl$ tels que $s_{i}=s_{j}$ et $s_{i+1}=s_{j+1}$
	Prenons un tel couple
	$\gamma'=(s_{0},-,s_{i},s_{j+1},s_{n})$ est encore un chemin car $(s_{i}=s_{j})\to s_{j+1}$. 
	Son origine est $s$ et sa destination $t$
	Or $\gamma'$ est de longueur $n-j+i,$ avec $1\leqslant j-i\leqslant n-1$
	Donc par H.R., il existe un chemin simple de longueur non nulle de $s$ à $t$


<u>Déf</u>$\to$  
 >Soit $G=(S,A)$ un graphe orienté, $s,t\in S$
 >On appelle distance de $s$ à $t$, et on note $\mathrm{dist}(s,t)$ la longueur du plus court chemin de $s$ à $t$
 >Si $s\cancel{ \to* }t$, on pose $\mathrm{dist}(s,t)=+\infty$
 >Le diamètre de $G$ est $\underset{ (s,t)\in S^{2} }{ \mathrm{max} }\mathrm{dist}(s,t)$
 >(pas de convention si $S=\varnothing$)
 

### b - Sous-graphe, composante fortement connexe

<u>Déf</u>$\to$  
 >Soit $G=(S,A)$ un graphe orienté.
 >On dit que $G$ est <b>fortement</b> connexe si $\forall s,t\in S,s\to*t$
 
<u>Déf</u>$\to$  
 >Soit $G=(S,A)$ un groupe orienté, $C\subset S$
 >On appelle sous-graphe de $G$ induit par $C$ le graphe $G'=\left( C,A\cap C^{2} \right)$
 
 <u>Déf</u>$\to$  
 >Soit $G=(S,A)$ un graphe orienté, $C\subset S$
 >On dit que $C$ est une composante fortement connexe de $G$ si 
 >- le sous graphe induit par $C$ est fortement connexe 
 >- pour tout $C'$ tel que $C \subsetneq C' \subset S,$ le sous-groupe induit par $C'$ n'est <b>pas</b> fortement connexe

```avatar
image: Random images/Graphe 2.png
description: "[[Graphe 2.png]]"
```


## 2 - Graphes non orientés

<u>Déf</u>$\to$  
 >On appelle graphe non orienté un couple $(V,E)$ 
 >où $V$ est un ensemble fini et $E\subset \{ e\in \mathcal P(V) \text{ }|\text{ } \mathrm{Card}(e)=2 \}$
 >- $V$ est l'ensemble des sommets      ($V$ pour "[vertex](https://silentblue.remywiki.com/VERTeX)") 🐈<- the original       kat 
 >- $E$ est l'ensemble des arrêtes          ($E$ pour "edge")
 
 <u>Déf</u>$\to$  
 >Soit $G=(S,A)$ un graphe orienté
 >On appelle graphe non orienté sous-jacent le graphe non orienté :
 >$\tilde{G}=(S,\{ \{ u;v \} \}_{u\neq v}^{(u,v)\in A \text{ ou }(v,u)\in A})$
 >Ceci définit une surjection des groupes orientés vers les groupes non orientés
 
 <span style="color:violet">Remarque </span> 
Si $G=(V,E)$ est un graphe non orienté, on peut le comme le graphe orienté $(V,\{ (u,v) \}_{\{ u,v \}\in E})$

<span style="color:turquoise">Exemple </span> 
```avatar
image: Random images/Pasted image 20260309093902.png
description: "[[Random images/Pasted image 20260309093902.png]]"
```


<u>Déf</u>$\to$  
 >Soit $G=(V,E)$ un graphe non orienté, $u\in V$
 >On appelle voisins de $u$ les $v\in V$ tels que $\{ u,v \}\in E$
 >On appelle degré de $u$ et on note $\mathrm{d}(u)$ le nombre de ses voisins
 
 <span style="color:violet">Remarque </span> 
Si on voit $G$ comme un graphe orienté, alors $\mathrm{d}^{+}(u)=\mathrm{d}^{-}(u)$ est le degré (non orienté) de $u$

<u>Proposition</u>
Soit $G=(V,E)$ non orienté
Alors $\sum\limits_{u\in V}\mathrm{d}(u)=2\mathrm{Card}(E)$

<u><span style="color:gold"> Preuve </span></u> 
Soit $G'=(S,A)$ avec $S=V$
$A=\{ (u,v) \}_{\{ u,v \}\in E}$ la version orientée de $E$
$\sum\limits_{u\in V}^{}\mathrm{d}(u)=\sum\limits_{u\in S}^{}\mathrm{d}^{+}(u)=\mathrm{Card}(A)$
Or pour tout $e=\{ u,v \}\in E$, il existe deux arcs distincts $(u,v)$ et $(v,u)$ dans $A$
Donc $\mathrm{Card}(A)=2\mathrm{Card(E)}$

<span style="color:turquoise">Exemple </span> 
Dans le graphe précédent, 
$\mathrm{d}(0)=2,\mathrm{d}(1)=3,\mathrm{d}(2)=4$,
$\mathrm{d}(3)=5,\mathrm{d}(4)=2,\mathrm{d}(5)=2$

<u>Déf</u>$\to$  
 >Un chemin dans un graphe non orienté est un chemin dans le graphe orienté qui lui correspond.
 >On note toujours $u\to*v$ si il existe un chemin de $u$ à $v$
 
<u>Proposition</u>
Soit $G=(V,E)$ un graphe non orienté.
Alors $\to*$ est une relation d'équivalence sur $V$

<u>Déf</u>$\to$  
 >Les classes d'équivalences de $\to*$ sont appelées les composantes connexes de $G$.
 >$G$ est dit connexe si il a une unique composante connexe, en d'autres termes
 >si il existe un chemin entre toute paire de sommets

<u>Proposition</u>
Soit $G$ un graphe non orienté, $C$ une composante connexe de $G$.
Alors le sous-graphe de $G$ induit par $C$ est connexe.

<u>Déf</u>$\to$  
 >Soit $G=(V,E)$ graphe non orienté.
 >On appelle chemin simple dans $G$ un chemin $\gamma=(u_{0},-,u_{n})$ tel que 
 >$\forall(i,j)\in\textlbrackdbl 0;n-1 \textrbrackdbl,i\neq j \implies \{ u_{i};u_{i+1}  \}\neq \{ u_{j};u_{j+1}  \}$
>En d'autres termes, un chemin simple est un chemin que ne repasse jamais par la même arrête.
>Si de plus $n\geqslant 1$ et $u_{n}=u_{0}$, on dit que $\gamma$ est un cycle

<big><span style="color:red">⚠ </span></big> 
Soit $G=(V,E)$ non orienté,
$u,v\in V$ tels que $u\to v$.
Alors $(u,v,u)$ est un cycle de longueur $2$ dans le graphe <u><b>orienté</b></u> correspondant à $G$,
mais pas dans le graphe non orienté $G$.
En effet, $\{ u;v \}=\{ v;u \}$ donc ce chemin n'est pas simple


```avatar
image: Random images/Graphe 4.png
description: |-
  [[Graphe 4.png]]

  Différence entre graphe orienté et non orienté pour un cycle
```

# II - Implémentation des graphes

Voir [[TP 21]]

# III - Parcours de graphe

## 1 - Parcours en profondeur

Un parcours en profondeur de $G=(S,A)$ à partir d'une source $s\in S$ 
et utilisant un tableau de $|S|$ booléens (visités) consiste à :
- Si $s$ est déjà visité, on ne fait rien
- Sinon :
	- On marque $s$ comme visité
	- Pour tout $t$ tel que $s\to t$ : parcours en profondeur à partir de $t$

```avatar
image: Random images/Graphe 5.png
description: |-
  [[Graphe 5.png]]
  Execution de l'algorithme à la main sur un exemple

  Deux graphes techniquement identiques 
  <small>(car on n'a pas identifié la raicine)</small>
```


<u>Propriété</u>
On se donne un algorithme de Parcours en profondeur sur les graphes qui fait uniquement 
des opérations de coût constant sur les sommets visités, en plus du parcours en profondeur.
Pour un graphe à $n$ sommets et $m$ arcs :
- Si le graphe est représenté par des listes d'adjacence,
	   le coût de l'algorithme est $\Theta(n+m)$ dans le pire cas
- Si il est représenté par une matrice d'adjacence, 
	   son coût est $\Theta(n^{2})$ dans le pire cas.

<u><span style="color:gold"> Preuve </span></u> 
Il est clair que le pire cas est atteint si tous les sommets sont accessibles depuis la source $s$.
Ceci n'est possible que si $m\geqslant n - 1$, sinon le coût est $\Theta(n)$ car il faut créer le tableau des sommets visités.

Dans le pire cas, on fait un appel récursif pour chaque arc du graphe.

De plus, la boucle <b><u>pour</u></b> a autant d'étapes de coût constant (sauf appel récursif) que d'appels qu'elle initie.

Enfin, il y a exactement un appel non trivial pour chaque sommet.


Coût d'un appel non trivial<small>(sur un sommet non visité)</small> sur $s$ avec des listes d'adjacence :
$K+K'\mathrm{d}^{+}(s)+$coûts appels récursifs

Coût d'un appel trivial sur $s$ : $K''$

Coût total = coût d'appel initial $+\sum\limits_{(t,v)\in A}^{}$coût d'appel sur $v$ depuis $t$
$=\sum\limits_{t\in S}$ coût d'appel non trivial sur $t+(m-n+1)K''$
$=\sum\limits_{t\in S}^{}(K+K'\mathrm{d}^{+}(t))+(m-n+1)K''$
$=Kn+K'n+(m-n+1)K''$
$=(K-K'')n+(K'+K'')m+K''$



Coût d'un appel non trivial<small>(sur un sommet non visité)</small> sur $s$ avec <span style="color:red">une matrice d'adjacence </span> :
$K{\color{red}n}+K'\mathrm{d}^{+}(s)+$coûts appels récursifs ($n$ coût du calcul des successeurs)

Coût d'un appel trivial sur $s$ : $K''$

Coût total = coût d'appel initial $+\sum\limits_{(t,v)\in A}^{}$coût d'appel sur $v$ depuis $t$
$=\sum\limits_{t\in S}$ coût d'appel non trivial sur $t+(m-n+1)K''$
$=\sum\limits_{t\in S}^{}(K{\color{red}n}+K'\mathrm{d}^{+}(t))+(m-n+1)K''$
$=Kn{\color{red}^{2}}+K'n+(m-n+1)K''$   ${\color{red}\in[Kn^{2};(K+K'+K'')n^{2}]}$

## 2 - Parcours en largeur

Un parcours en largeur d'un graphe $G=(S,A)$ à partir d'un sommet $s$ consiste à se donner une file $f$, 
initialement ne contenant que $s$, et un tableau des sommets visités.

Tant que $f$ n'est pas vide : 
	$t=$défiler($f$)
	Si $t$ n'est pas déjà visité : 
	- marquer $t$ comme visité 
	- Pour tout $v$ successeur de $t$ :
		Enfiler $v$ dans $f$


```avatar
image: Random images/Graphe 6.png
description: |-
  [[Graphe 6.png]]

  Parcours en largeur d'un graphe
```

<u>Proposition</u>
>Soit $(S,A)$ un graphe orienté, $s\in S$
>L'ensemble des sommets visités par un parcours en largeur/profondeur du graphe depuis $s$ 
>est l'ensemble des sommets accessibles depuis $s$

<span style="color:yellow">Essayer de prouver cette proposition </span>
- On peut utiliser le fait que l'algo se finit

# IV - Applications

## 1 - Composantes connexes

<u>Prop</u>
>Soit $G=(V,E)$ graphe non orienté
>Alors, en effectuant un parcours (en largeur ou profondeur) 
>depuis chaque sommet de $V$ avec le même tableau des sommets visités, 
>à chaque étape on visite une composante connexe de $G$ ou bien aucun nouveau sommet.

<u><span style="color:gold"> Preuve </span></u> 
Montrons le par récurrence sur $u\in V=\textlbrackdbl 0;n-1 \textrbrackdbl$

<u>Init</u>
Le parcours depuis le premier sommet $0$ visite tous les sommets $v$ tels que $0 \to^{*} v$
Or $G$ est non-orienté, donc $\to ^{*}$ est une relation d'équivalence et l'ensemble visité 
est la composante connexe qui contient $0$

<u>Hérédité</u>
Soit $u\in\textlbrackdbl 1;n-1 \textrbrackdbl$ tel que les parcours depuis $0,1,\dots,u-1$ 
aient visité une union de composantes connexes $C_{1}\cup\dots \cup C_{m}$

Si $u\in C_{1}\cup\dots \cup C_{m},u$ est déjà visité et un parcours depuis $u$ ne visite rien.

Sinon, $\forall i\in\textlbrackdbl 1;m \textrbrackdbl,\forall v\in C_{i},u\not\in C_{i}$ donc $u \cancel{ \to ^{*} }v$
En effet sinon $u$ et $v$ seraient dans la même classe d'équivalence $C_{i}$ pour la relation $\to ^{*}$
Donc le parcours depuis $u$ ne va jamais tenter de visiter $v\in C_{1}\cup\dots \cup C_{m}$
Donc le statut déjà visité de ces sommets ne change rien :
comme dans l'init, on visite exactement la composante connexe de $G$ qui contient $u$.


<u>Algorithme</u>
	<u>Entrée</u> : $G=(V,E)$ avec $V=\textlbrackdbl 0;n-1 \textrbrackdbl$
	<u>Sortie</u> : Un tableau de $n$ éléments dans $\textlbrackdbl 1;m \textrbrackdbl$ tel que $(\{ u\in V\text{ }|\text{ }t[u]=i \})_{1\leqslant i \leqslant m}$ 
	soit la famille des composantes connexes de $G$
	
---

$t_{i}=$ tableau de $n$ fois $0$ 
$=1$
Pour $u\in V:$ 
	Si $t[u]=0$
		dfs$(u,t,i)$
		$i++$
Renvoyer $t$

---

avec :
	dfs($u,t,i$) :
		Si $t[u]=0$
			$t[u]=i$
			Pour $v$ voisin de $u$ : 
				dfs$(v,t,i)$


## 2 - Détection de cycle

<u>Prop</u>
>Un parcours en profondeur qui marque les sommets comme visités de façon suffixe (plutôt que préfixe)
>termine sans visiter deux fois le même sommet <b><u>ssi</u></b> 
>l'ensemble des sommets accessibles depuis $s$ ne contient aucun cycle
>Si cet ensemble contient un cycle, un tel parcours ne termine pas

<u><span style="color:gold"> Preuve </span></u> 
Soit $s=s_{0}\to s_{1}\to\dots \to s_{m}=t$ un chemin simple et 
$t=s_{0}\text{}'\to s_{1}\text{}'\to\dots \to s_{m'}\text{}'=t$ un cycle $(m'\geqslant 1)$
Supposons par l'absurde qu'un dfs suffixe depuis $s$ termine.

Sans perte de généralité, supposons que $t$ est le premier sommet du cycle $t=s_{0}\text{}'\to s_{1}\text{}'\to\dots \to s_{m'}\text{}'=t$ 
visité par ce parcours. (Nécessairement un tel sommet existe car $s\to ^{*}t$)

Montrons qu'il existe $(t_{j})_{j\geqslant 0}$ telle que $t_{0}=t=s_{0}\text{}'$ et $\forall j \geqslant 0,$ 
dfs_aux_suffixe($t_{j}$) appelle $t_{j+1}$ qui est dans le cycle et est tel que aucun sommet du cycle n'est marqué visité

En effet, dfs_aux_suffixe($s_{0}\text{}'$) appelle dfs_aux_suffixe($s_{1}\text{}'$).
Soit $k$ tel que $s_{k}\text{}'$ soit le premier sommet du cycle où dfs_aux_suffixe est appelé récursivement
<small>(éventuelement de façon indirecte)</small> 

Alors, comme $s_{0}\text{}'=t$ est le premier sommet du cycle sur lequel la fonction est appelée,
nécessairement $s_{j}\text{}'$ n'a jamais été visité

Ceci définit $t_{1}=s_{k_{1}}\text{}'$ 
On procède de même sur $t_{i}:$ aucun appel de dfs_aux_suffixe n'a été fait
sauf sur $t_{0},\dots,t_{i}$, et ces appels ne sont pas finis.

Donc le premier élément du cycle appelé récursivement depuis $s_{k_{i}}\text{}'=t_{i}$ est tel qu'aucun élément du cycle n'a jamais été marqué visité.

Donc on fait une infinité d'appels récursifs et le parcours ne termine pas

```avatar
image: Random images/Graphe 7.png
description: |-
  [[Graphe 7.png]]

  Schéma annexe à la preuve 
```

Réciproquement, supposons qu'il n'existe aucun cycle
Soit $t\in S$ tel que dfs_aux_suffixe($t$) soit appelé plusieurs fois
Soient $\begin{align}&\gamma=\overset{ =s_{0}\text{}' }{ s }\to s_{1}\to\dots \to s_{m}=t \\ &\gamma'=\overset{ =s_{0} }{ s }\to s_{1}\text{}'\to\dots \to s_{m'}\text{}'=t\end{align}$
les deux chemins qui mènent à des appels successifs de dfs_aux_suffixe($t$)

Nécessairement, il n'existe aucun $i\in\textlbrackdbl 0;m'-1 \textrbrackdbl$ tq $s_{i}\text{}'=t$
Donc $\exists j\in\textlbrackdbl 0;\min(m,m')-1 \textrbrackdbl$ tel que 
$\begin{cases}s_{j+1}\text{}'\neq s_{j+1} \text{ (sinon }j'\text{ contient }j\text{ et donc un autre }t\text{)} \\ s_{j}'=s_{j}\end{cases}$
Alors $t$ est visité une première fois par dfs_aux_suffixe($s_{j+1}$)

Pour qu'on appelle dfs_aux_suffixe($s_{j+1}'$) à partir de $s_{j}=s_{j}'$, 
il faut que dfs_aux_suffixe($s_{j+1}$) soit terminé :
tous les sommets accessibles depuis $s_{j+1},$ dont $t,$ sont donc marqués visités.


```avatar
image: Random images/Graphe 8.png
description: |-
  [[Graphe 8.png]]

  Schéma annexe à la preuve 
```
On peut donc  :
- déterminer si un graphe orienté a un cycle en faisant dfs depuis chaque sommet avec $3$ "couleurs" : non visité, en cours de visite (vu de façon préfixe mais non suffixe), visité
- déterminer si un graphe non orienté a un cycle en faisant de même mais avec un argument supplémentaire au dfs : on retient le sommet dont on vient afin de ne pas faire un chemin de la forme $u\to v\to u$ 

## 3 - Tri topologique

<u>Proposition :</u> 
>Soit $G=(S,A)$ un graphe orienté sans cycle (DAG)
>Alors $\to ^{*}$ définit une relation d'ordre sur $S$

<u><span style="color:gold"> Preuve </span></u> 
$\to ^{*}$ est par construction réflexive et transitive.
Soient $s,t\in S$ tels que $s\to ^{*}t\to ^{*}s$
Alors si $t \neq s,$ il existe un chemin de longueur $\geqslant 1$ de $s$ à $t$ et de même de $t$ à $s$.
Donc il existe un chemin de longueur non nulle de $s$ à lui-même.
D'après ce qu'on a vu dans [[#a - Chemins et cycles]], 
il existe un chemin simple de longueur non nulle de $s$ à lui-même, i.e. un cycle.
Or $G$ est acyclique, donc $s=t$ ,$\to ^{*}$ est antisymétrique, c'est donc une relation d'ordre

<u>Déf</u>$\to$  
 >Soit $G=(S,A)$ un DAG, $S=\textlbrackdbl 0;n-1 \textrbrackdbl$
 >On appelle tri topologique une permutation de $(s_{0},\dots,s_{n-1})$ sommets de $G$
 >telle que $\forall i,j\in\textlbrackdbl 0;n-1 \textrbrackdbl,i<j\implies s_{i \cancel{ \to ^{*} }}s_{j}$
 >En d'autres termes, c'est une permutation non-croissante pour la relation d'ordre $\to ^{*}$
 
```avatar
image: Random images/Graphe 9.png
description: |-
  [[Graphe 9.png]]

  Cours de plongée ?
```

```avatar
image: Random images/Graphe 10.png
description: |-
  [[Graphe 10.png]]

  Exemple de tri topologique
```

<u>Proposition</u>
>Soit $G$ un graphe non orienté, $s$ sommet de $G$.
>Alors la composante connexe de $G$ qui contient $s$ contient un cycle <b><u>ssi</u></b>
>un parcours en profondeur de $G$ à partir de $s$ atteint un sommet déjà visité <b>autre</b>
>que le sommet deux appels au dessus sur la pile
>c'est à dire
>$\exists\text{ }t\in \mathcal V,s\to ^{*}t$ et de de plus, si $s_{0}=s\to\dots \to s_{k}=t$ est ce chemin, alors
>il existe $i\in\textlbrackdbl 0;k-2 \textrbrackdbl$ tel que $s_{i}\to ^{*}t$ sans passer par $s_{i+1},\dots,s_{-1}$ et $s_{k-2}\neq t$

<u><span style="color:gold"> Preuve </span></u> 
Supposons d'abord que $G$ ne contient pas de cycle. Alors pour tous $s,t$ sommets de $G$, si $s\to ^{*}t$, il existe un unique chemin simple de $s$ à $t$.
Montrons-le par récurrence sur la longueur d'un tel chemin simple

Initialisation: 
Si il existe un chemin simple de longueur $0$ de $s$ à $t$, alors $s=t$. Si on a un autre chemin simple, il est de longueur non nulle de $s$ à $s$, donc c'est un cycle: contradiction

Hérédité: 
Supposons que pour tous sommets $s,t$ du graphe tels qu'il existe un chemin de longueur $\leqslant k-1$ de $s$ à $t$, alors il existe un unique chemin simple de $s$ à $t$. Soient $s,t$ sommets de $G$ tels qu'il existe un chemin simple $s=s_{0}\to\dots\to s_{k}=t$. Par HR, $s_{1}\to\dots\to s_{k}=t$ est simple et de longueur $k-1$ donc il existe un unique chemin simple de $s_{1}$ à $t$. Supposons qu'il existe un autre chemin simple $s=s_{0}'\to s_{1}'\to\dots\to s'_{k'}=t$. 

Nécessairement $s_{1}'\to\dots\to s'_{k'}=t$ est simple et distinct de $s_{1}\to..\to s_{k}=t$ donc $s_{1}'\neq s_{1}$. Soit $i$ le plus petit entier de $\textlbrackdbl 1,k \textrbrackdbl$ tel qu'il existe $i'\in \textlbrackdbl 1,k' \textrbrackdbl,s'_{i'}=s_{i}$. $i'$ est unique car sinon $s'_{0}\to\dots\to s'_{k'}$ contient un cycle car c'est un chemin simple avec deux fois le même sommet, de plus $(i,i')\neq(1,1)$. Donc on a deux chemins simples $s=s_{0}\to\dots\to s_{i}:\gamma$ et $s=s'_{0}\to\dots\to s'_{i'}=s_{i}:\gamma'$ tels que les sommets intermédiaires soient deux à deux distincts. Montrons que $\gamma'':s_{0}\to\dots\to s_{i}\to s'_{i-1}\to\dots s'_{0}=s$ est un cycle. Pour ceci il suffit de montrer qu'il est simple.

SPDG, on suppose $i\geqslant 2$. Soit $e$ un arête de $\gamma''$
- Si $e=\{ s_{j},s_{j+1} \}$ alors $e\not\subset \{ s'_{j'} \}_{j'\in \textlbrackdbl 0,i' \textrbrackdbl}$. De plus $\gamma$ est simple, donc $e$ n'apparaît pas ailleurs dans $\gamma$
- Si $e=\{ s'_{j'},s'_{j'+1} \}$, alors $e$ napparaît pas ailleurs dans $\gamma'$ car $\gamma'$ est simple et n'apparaît pas dans $\gamma$ par ce qui précède
Donc $\gamma''$ est simple et de longueur $\geqslant 3$ non nulle: c'est un cycle. Ceci contredit $G$ sans cycle (dans la CC de $s$). Or tout chemin correspondant à un appel récursif de dfs depuis $s$ est simple ou bien se termine par $t\to u\to t$. Comme on a exclu ce dernier cas, on ne visite pas deux fois le même sommet $t$.

Réciproquement, soit $t=t_{0}\to t_{1}\to\dots\to t_{k}=t$ un cycle accessible depuis $s$. Nécessairement $k\geqslant 3$ car un graphe non orienté n'a pas de cycle de longueur 1 ou 2. Alors $\texttt{dfs}(s)$ va appeler $\texttt{dfs}(t)$ car $s\to ^{*}t$. SPDG $t$ est visité avant le reste du cycle. Alors $\texttt{dfs}(t)$ appelle $\texttt{dfs}(t_{0})$, si celui-ci n'est pas déjà visité, il appelle $\texttt{dfs}(t_{1})$, et ainsi de suite

<u>Proposition</u>
>Soit $G=(S,A)$ graphe orienté acyclique
>On pose $\tilde{G}=(S\cup \{ \text{source} \},A\cup \{ \text{source},s \}_{s\in S})$
>$\tilde{G}$ est aussi un DAG et l'algo suivant renvoie un tri topologique de $\tilde{G}$

```Pseudo-Code
visites <- tableau de (n+1) false
tri <- liste vide
dfs(s):
  si s est non visité
    Pour t ∈ successeurs(s):
      dfs(t)
      tri <- s :: tri
      visites.(s) <- true
    dfs(source)
    renvoyer renversé(tri)
```

Preuve: 
Ceci revient à dire que `dfs(source)` produit une liste tri telle que si $s\to ^{*}t$, alors $s$ est avant $t$ dans tri. Le renversé de tri sera alors non-croissant donc un tri topologique. Soient $s,t$ deux sommets de $\tilde{G}$ tels que $s\to ^{*}t$. Tout sommet est accessible depuis source donc `dfs(source)` fait au moins un appel `dfs(s)`. $\to ^{*}$ est un ordre donc $t\cancel{ \to ^{*} }s$ donc aucun appel `dfs(t)` n'est sur la pile quand `dfs(s)` est appelé.
Cas 1: `dfs(t)` a déjà été appelé. Or il n'est plus sur la pile, donc tri contient $t$. Donc nécessairement après l'appel `dfs(s)`, $s$ sera placé en tête de tri donc avant $t$
Cas 2: `dfs(t)` n'a jamais été appelé avant. Or $s\to ^{*}t$, donc `dfs(t)` avant de terminer. Donc $t$ va être ajouté en tête de tri avant que $s$ ne le soit

```OCaml
let tri_topologique g =
	let g_tilde = ... in
	let visites = Array.make (n+1) false
	let rec dfs tri s =
		if not (visites.(s)) then 
			let nv_tri = List.fold_left dfs tri (succ s)
			visites.(s) <- true;
			s::nv_tri
		else tri 
	in 
	match dfs source [] with
	|s::tri when s = source -> List.rev tri
	|_ -> assert false	
```

