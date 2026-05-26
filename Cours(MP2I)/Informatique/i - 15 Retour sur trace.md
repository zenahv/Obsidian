# I - Problème de satisfaction de contrainte

<u>Déf</u>$\to$  
 >Soit $E$ ensemble non vide ne contenant pas le symbole $\bot$, $m\in \mathbb{N}^{*}$
 >$S$ une partie de $(E\cup \{ \bot \})^{m}$
 >On appelle les éléments de $S$ états et on se donne $S^{(0)}$ un état initial.
 >On se donne également une fonction de rejet `EstCorrect` $:S\to \mathbb{B}$ telle que $\forall s,s'\in S$
 >$(\forall i\in \textlbrackdbl 0;m-1 \textrbrackdbl,s_{i}\in \{ s_{i}\text{}',\bot \})\implies$`EstCorrect`$(s)\geqslant\text{ }$`EstCorrect`$(s')$
 
 (En remplaçant des $\bot$ par des éléments de $E$, on ne peut jamais rendre correct un état incorrect (rejeté) )
 On dit qu'un état est complet si il est dans $E^{m}$
 Le problème consistant, étant donnés $S$, $S^{(0)}$ et `EstCorrect`, à trouver les état complets et corrects (les solutions)
 est un problème de satisfaction de contraintes
 
 ---

<span style="color:turquoise">Exemple </span> 

| 1   | 2   | 3   | 4   |
| --- | --- | --- | --- |
| 4   | 3   | 2   | 1   |
| 3   | 1   | 4   | 2   |
| 2   | 4   | 1   | 3   |
 est un CSP (Problème de satisfaction de contrainte)
 avec $S=\{ (x_{0},\dots,x_{15})\in(\textlbrackdbl 1;4 \textrbrackdbl\cup \{ \bot \})^{15} \text{ }|\text{ }x_{0}=1,x_{6}=2,x_{13}=4,x_{15}=3\}$
 et `EstCorrect` vérifie que chaque ligne, colonne, et petit carré 2 $\times$ 2 en gras a une seule fois chaque de $1$ à $4$
# II - Algorithme de retour sur trace 

<u>Déf</u>$\to$  
 >Etant donné un CSP, on appelle fonction d'instanciation une fonction $f:S\to \mathcal P(S)$ telle que 
 >- $\forall s\in S,s\not\in f(s)$
 >- $\forall s\in S,\forall s'\in f(s),\forall i\in \textlbrackdbl 0;m-1 \textrbrackdbl,s_{i}\in \{ \bot,s_{i}\text{}' \}$
 >- $\forall s\in S,\exists n\in \mathbb{N},\exists s^{(1)},\dots s^{(n-1)}\in S$ tels que 
 >	$\begin{cases}s^{(n)}=s \\ s^{(0)}=\text{état initial du CSP} \\ \forall i\in \textlbrackdbl 0;n-1 \textrbrackdbl,s^{(n+1)}\in f(s^{(i)})\end{cases}$
 
 Le cas le + simple est que pour $s=(s_{0},-,s_{i-1},\bot,\bot,\_\_\_\bot)$ tel que $s_{0},-,s_{i-1}\in E$,
 $f(s)=\{ (s_{0},-,s_{i-1},s_{i}\text{}',\bot,\bot,\_\_\_\bot) \}_{s_{i}\text{}'\in E}$
 
Fonction $\mathrm{Backtrack}(s)$ :
```Pseudo-Code
si EstCorrect(s):
	si EstComplet(s):
		Afficher(s)
	sinon:
		Pour s' ∈ f(s):
			Backtrack(s')
```

<u>Proposition</u> :
$\mathrm{Backtrack}(s^{(0)})$ termine en temps fini et affiche toutes les solutions du problème

Preuve: Commençons par montrer par récurrence sur $k$ le nombre de $\bot$ dans $s$ que $\forall s\in S,\texttt{Backtrack(s)}$ termine
- Initialisation: Si $k=0$, on a $s\in E^{n}$, donc $s$ est complet. Si $s$ est correct, $\texttt{Backtrack}(s)$ affiche $s$ et termine, sinon, $\texttt{Backtrack}(s)$ termine
- Hérédité: Soit $k\in \textlbrackdbl 1,n \textrbrackdbl$. Supposons pour tout $s'$ avec au plus $k-1$ occurrences de $\bot$, $\texttt{Backtrack}(s')$ termine. Soit $s \in S$ avec $k$ occurrences de $\bot$.
  Si $s$ n'est pas correct, $\texttt{Backtrack}(s)$ termine.
  Supposons $s$ correct. $s$ n'est pas complet car $k\geqslant 1$ termes de $s$ sont $\bot$.
  Soit $s'\in f(s)$. $s'\neq s$ et $\forall i\in \textlbrackdbl 0;n-1 \textrbrackdbl,s_{i}\in \{ \bot,s_{i}' \}$.
  Donc il existe $i$ tel que $s_{i}=\bot$, $s_{i}'\in E$, et $\forall j\in \textlbrackdbl 0;n-1 \textrbrackdbl,s_{j}'=\bot \implies s_{j}=\bot$
  Donc $s'$ a au plus $k-1$ occurrences de $\bot$, donc par hypothèse de récurrence, $\texttt{Backtrack}(s')$ termine.
  Or, $f(s)\subseteq S$ est fini donc $\texttt{Backtrack}(s)$ termine
Montrons maintenant que $\texttt{Backtrack}(s^{(0)})$ affiche bien les solutions du CSP.
Il est clair que tout état affiché par `Backtrack` est solution
Soit $s$ solution, $s \in S\cap E^{n}$, donc par définition de la fonction d'instanciation, il existe $m\in \mathbb{N},s ^{(1)},\dots,s ^{(m)}\in S$ tel que $s ^{(m)}=s$ et $\forall i\in \textlbrackdbl 0;m-1 \textrbrackdbl, s ^{(i+1)}\in f(s ^{(i)})$
Or $s$ est correct, donc $s ^{(m-1)}$ et donc tous les $s ^{(i)}$ par une récurrence descendante
Se plus, si $i<m,f(s^{(i)})\neq \emptyset$ donc $s ^{(i)}$ n'est pas complet, donc $\forall i\in \textlbrackdbl 0;m-1 \textrbrackdbl,\texttt{Backtrack}(s ^{(i)})$ appelle $\texttt{Backtrack}(s ^{(i+1)})$
Donc par une récurrence immédiate en utilisant le fait que $\texttt{Backtrack}$ termine toujours, $\texttt{Backtrack}(s ^{(0)})$ appelle $\texttt{Backtrack}(s ^{(i)})$ pour tout $i\in \textlbrackdbl 1;m \textrbrackdbl$
En particulier, pour $i=m$, $\texttt{Backtrack}(s ^{(0)})$ appelle $\texttt{Backtrack}(s)$ qui affiche $s$
