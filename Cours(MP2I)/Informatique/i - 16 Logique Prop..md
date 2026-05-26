# Logique Propositionnelle

# I - Ensembles des formules logiques

## 1. Syntaxe

<u>Déf</u>$\to$  
 >On se donne $\mathcal V$ ensemble infini dénombrable de symboles (distincts des symboles qui suivent)
 >$\mathcal V$ est appelé ensemble des variables propositionnelles. 
 >On appelle ensemble des formules propositionnelles et on note $\mathcal F$ la structure inductive de signature
 >$C_{0}=\mathcal V\cup \{ \top,\bot \}$ respectivement symbole de tautologie et d'antilogie
 >$C_{1}=\{ \neg \}$ symbole de négation
 >$C_{2}=\{ \land,\lor,\to,\leftrightarrow \}$ symboles de conjonction, disjonction, implication et équivalence
 
 <span style="color:turquoise">Exemple </span> 
$f=\to(\neg(X),\land(X,\neg(Y)))$ est une formule logique

<span style="color:violet">Remarque </span> 
On préfère écrire les formule logiques en ordre infixe,
on aurait alors $f=\neg(X)\to(X\land \neg(Y))$
De plus, on va omettre les parenthèses avec les règles de priorité suivantes :
- $\neg$ prioritaires sur tout
- $\leftrightarrow$ et $\to$ sont prioritaires sur $\land$ et $\lor$
- $\land,\lor$ et $\leftrightarrow$ sont associatifs à gauche  
- $\to$ est associatif à droite 

On écrirait donc $f=\neg X\to(X\land \neg Y)$

```mehrmaid
graph TD;
T1 --> T2 --> X1
T3 --> X2
T1 --> T3 --> T4 --> Y

T1(("$\to$"))
T2(("$\neg$"))
T3(("$\land$"))
X1["$X$"]
X2["$X$"]
Y["$Y$"]
T4(("$\neg$"))
```



⚠ C'est juste une règle pour simplifier l'écriture, $(X\land Y)\land Z$ s'écrira $X\land Y\land Z$
mais est une formule distincte de $X\land(Y\land Z)$
Les deux formules sont en revanche équivalentes

$\neg(X\to {\color{crimson}(}\top\to Z{\color{crimson})})$
```mehrmaid
graph TB;
T1 --> T2 --> X1
T3 --> Top
T2 --> T3 --> Z

T1(("$\neg$"))
T2(("$\to$"))
T3(("$\to$"))
X1["$X$"]
Top["$\top$"]
Z["$Z$"]
```


```mehrmaid
graph TD;


```

On n'écrit pas $X\lor Y\land Z$ mais $\begin{align} & (X\lor Y)\land Z \\  & X\lor(Y\land Z)\end{align}$

<u>Déf</u>$\to$  
 >Soit $f\in \mathcal F$. On appelle ensemble des variables de $f$ et on note $\mathrm{Var}(f)$ l'ensemble défini récursivement par :
 >- $\forall x\in \mathcal V,\mathrm{Var}(x)=\{ x \}$
 >- $\mathrm{Var}(\top)=\mathrm{Var}(\bot)=\varnothing$
 >- Si $f=\neg f',\mathrm{Var}(f)=\mathrm{Var}(f')$
 >- Si $f=f_{1}\diamondsuit f_{2}$  avec $\diamondsuit\in \{ \land,\lor,\to,\leftrightarrow \},\mathrm{Var}(f)=\mathrm{Var}(f_{1})\cup \mathrm{Var}(f_{2})$
 
 <span style="color:violet">Remarque </span> 
$\mathrm{Var}(f)$ est évidemment l'ensemble des variables propositionnelles utilisées dans $f$

<u>Déf</u>$\to$  
 >Soit $f\in \mathcal F$. On appelle taille de $f$ l'entier défini par 
 > - $\forall f\in \mathcal V\cup \{ \top,\bot \}$, $\mathrm{taille}(f)=0$
 > - Si $f=\neg f',\mathrm{taille}(f)=1+\mathrm{taille}(f')$
 > - Si $f=f_{1}\diamondsuit f_{2}$ avec $\diamondsuit\in \{ \land,\lor,\to,\leftrightarrow \},\mathrm{taille}(f)=1+\mathrm{taille}(f_{1})+\mathrm{taille}(f_{2})$
 
 <span style="color:violet">Remarque </span> 
La taille d'une formule logique est le nombre de constructeurs non constants (ou de nœuds internes de l'arbre) dans la formule

## 2. Sémantique 
<u>Déf</u>$\to$  
 >On appelle valuation une fonction  $v:\mathcal V\to \mathbb{B}$
 >Soit $f\in \mathcal F,v\in \mathbb{B}^{\mathcal V}$
 >On définit récursivement la valeur de vérité de $f$ sous $v$, notée $[f]_{v}$ par :
> - $\forall x\in \mathcal{V},[x]_{v}=v(x)$
> - $[\top]_{v}=\texttt{true}$
> - $[\bot]_{v}=\texttt{false}$
> - Si $f=\neg f',[f]_{v}=\texttt{not}([f']_{v})$
> - Si $f=f_{1}\land f_{2},[f]_{v}=[f_{1}]_{v}\texttt{ \&\& }[f_{2}]_{v}$
> - Si $f=f_{1}\lor f_{2},[f]_{v}=[f_{1}]_{v}\texttt{ || }[f_{2}]_{v}$
> - Si $f=f_{1}\to f_{2},[f]_{v}=\texttt{not}([f_{1}]_{v})\texttt{ || }[f_{2}]_{v}$
> - Si $f=f_{1}\leftrightarrow f_{2},[f]_{v}=([f_{1}]_{v}\texttt{ \&\& }[f_{2}]_{v})\texttt{ || }(\texttt{not}[f_{1}]_{v}\texttt{ \&\& }\texttt{not}[f_{2}]_{v})$
 
<span style="color:turquoise">Exemple </span> 
Si $f=X\lor(Y\to X)$ et $v$ est tel que $v(X)=v(Y)=\texttt{false}$
$\begin{align}[f]_{v} & =[X]_{v}\text{ }\texttt{||}\text{ }[Y\to X]_{v} \\  & =\cancel{ \texttt{false} }\text{ }\texttt{||}\text{ }(\texttt{not}[Y]_{v}\text{ }\texttt{||}\text{ }[X]_{v}) \\  & =\texttt{not}(\texttt{false})\text{ }\texttt{||}\text{ }\texttt{false} \\  & =\texttt{true}\text{ }\texttt{||}\text{ }\cancel{ \texttt{false} }=\texttt{true}\end{align}$ 
---
<u>Proposition</u> : 
Soit $f\in \mathcal F$, $v,v'\in \mathbb{B}^{\mathcal V}$ telles que $v_{|_{\mathrm{Var}(f)}}=v'_{|_{\mathrm{Var}(f)}}$
Alors $[f]_{v}=[f]_{v'}$

<u>Déf</u>$\to$  
 >Soit $f\in \mathcal F$. On appelle table de vérité l'unique fonction 
 >$T_{f}:\mathbb{B}^{\mathrm{Var}(f)}\to \mathbb{B}$ telle que $\forall v\in \mathbb{B}^{\mathcal V},[f]_{v}=T_{f}(v_{|_{\mathrm{Var}(f)}})$
 
 ${\color{red}T_{f}\in \mathbb{B}^{(\mathbb{B}^{Var(f)})}}$

<span style="color:turquoise">Exemple </span> 
$f=X\lor(Y\to X),\mathrm{Var}(f)=\{ X,Y \}$


$T_{f}:\begin{array}{c|c|c|c} v(X) & v(Y) & [Y\to X]_{v} & [f]_{v} \\ \hline \mathrm{V} & \mathrm{V} & \mathrm{V} & \mathrm{V} \\ \mathrm{V} & \mathrm{F} & \mathrm{V} & \mathrm{V} \\ \mathrm{F} & \mathrm{V} & \mathrm{F} & \mathrm{F} \\ \mathrm{F} & \mathrm{F} & \mathrm{V} & \mathrm{V} \end{array}$

$f=(X\land Y)\lor(Y\to Z)$
$T_{f}:\begin{array}{c|c|c|c|c}v(X) & v(Y) & v(Z) & [X\land Y]_{v} & [Y\to Z]_{v} & [f]_{v} \\ \hline \mathrm{V} & \mathrm{V} & \mathrm{V} & \mathrm{V} & \mathrm{V} & \mathrm{V} \\ \mathrm{V} & \mathrm{V} & \mathrm{F} & \mathrm{V} & \mathrm{F} & \mathrm{V}  \\ \mathrm{V} & \mathrm{F} & \mathrm{V} & \mathrm{F} & \mathrm{V} & \mathrm{V} \\ \mathrm{V} & \mathrm{F} & \mathrm{F} & \mathrm{F} & \mathrm{V} & \mathrm{V} \\ \mathrm{F} & \mathrm{V} & \mathrm{V} & \mathrm{F} & \mathrm{V} & \mathrm{V} \\ \mathrm{F} & \mathrm{V} & \mathrm{F} & \mathrm{F} & \mathrm{F} & \mathrm{F} \\ \mathrm{F} & \mathrm{F} & \mathrm{V} & \mathrm{F} & \mathrm{V} & \mathrm{V} \\ \mathrm{F} & \mathrm{F} & \mathrm{F} & \mathrm{F} & \mathrm{V} & \mathrm{V}\end{array}$

Définition:
> Soient $f\in \mathcal{F},v\in \mathbb{B}^{\mathcal{V}}$
> Si $[f]_{v}=\texttt{true}$, on dit que $v$ satisfait $f$, ou encore que $v$ est un modèle de $f$, et on note $v \models f$

Définition:
> Soit $f\in \mathcal{F}$
> - Si $\exists v\in \mathbb{B}^{\mathcal{V}},v\models f$, on dit que $f$ est satisfiable
> - Si $\exists v\in \mathbb{B}^{\mathcal{V}},v\not\models f$, on dit que $f$ est falsifiable
> - Si $\forall v\in \mathbb{B}^{\mathcal{V}},v\models f$, on dit que $f$ est tautologique
> - Si $\forall v\in \mathbb{B}^{\mathcal{V}},v\not\models f$, on dit que $f$ est antilogique

# II - Formules équivalentes
## 1) Définition et exemples
Définition:
> Soient $f,g\in \mathcal{F}$.
> On dit que $f$ et $g$ sont équivalentes et on note $f\equiv g$ si $\forall v\in \mathbb{B}^{\mathcal{V}},[f]_{v}=[g]_{v}$

<span style="color:violet">Remarque </span> 
L'équivalence est une relation d'équivalence sur $\mathcal F$

<span style="color:turquoise">Exemple </span> 
Soit $f=X\lor(Y\to X)$ et $g=X\lor \neg Y$
$f$ et $g$ sont équivalentes car 
$\forall v\in \mathbb{B}^{\mathcal V},[f]_{\mathcal v}=\texttt{false}\iff v(X)=\texttt{false}$ et $v(Y)=\texttt{true}$
$\forall v\in \mathbb{B}^{\mathcal V},[g]_{\mathcal v}=\texttt{false}\iff v(X)=\texttt{false}$ et $v(Y)=\texttt{true}$

$X\equiv X\lor(Y\land \neg Y)$
En effet, $\forall v \in \mathbb{B}^{\mathcal V},[Y\land \neg Y]=v(Y) \texttt{\&\&}\text{ }\texttt{not}[v(Y)]=\texttt{false}$
Donc $\forall v\in \mathbb{B}^{V},[X\lor(Y\land \neg Y)]_{v}=[X]_{v}\texttt{|| false}=[X]_{v}$

<u>Proposition</u> : 
Soient $f,g\in \mathcal F$  telles que $\mathrm{Var}(f)=\mathrm{Var}(g)$
Alors $f\equiv g$ si et seulement si $T_{f}=T_{g}$

<u><span style="color:gold"> Preuve </span></u> 
Supposons $T_{f}=T_{g}$. Alors $\forall v\in \mathbb{B}^{\mathcal{V}},[f]_{v}=T_{f}(v_{|_{\mathrm{Var}(f)}})=T_{g}(v_{|_{\mathrm{Var}(g)}})=[g]_{v}$ donc $f\equiv g$
Réciproquement, supposons $f\equiv g$.
Soit $w:\mathrm{Var}(f)\to \mathbb{B},\text{ avec }v\in \mathbb{B}^{\mathcal{V}}$ qui prolonge $w$
$T_{f}(w)=[f]_{v}=[g]_{v}=T_{g}(v_{|_{\mathrm{Var}(g)}})$. Or $\mathrm{Var}(f)=\mathrm{Var}(g)$, donc $v_{|_{\mathrm{Var}(g)}}=w$
Donc $\forall w\in \mathbb{B}^{\mathrm{Var}(f)},T_{f}(w)=T_{g}(w)$


<u>Proposition</u>: Soient $f,g,h\in \mathcal{F}$. On a les équivalences:
- $f\land g\equiv g\land f$
- $f\land (g\land h)\equiv f\land g\land h$
- $f\land\top\equiv f$
- $f\land\bot\equiv\bot$
- $f\land f\equiv f$
---
- $f\lor g=g\lor f$
- $f\lor(g\lor h)=f\lor g\lor h$
- $f\lor\top=\top$
- $f\lor\bot=f$
- $f\lor f=f$
- $f\land(g\lor h)=(f\land g)\lor(f\land h)$
- $f\lor(g\land h)=(f\lor g)\land(f\lor h)$
---
- $\neg(f\land g)\equiv \neg(f)\land \neg(g)$
- $\neg(f\lor g)\equiv \neg(f)\lor \neg (g)$
- $f\to (g\to h)\equiv (f\land g)\to h$
- $f\to g\equiv \neg(f)\lor g$
- $f\leftrightarrow g\equiv (f\to g)\land(g\to f)$
- $f\to g\equiv \neg(g)\to \neg(f)$
- $\neg(\neg(f))\equiv f$
- $\neg(f)\lor f\equiv f\lor \neg(f)\equiv \top$
- $\neg(f)\land f\equiv f\land \neg(f)\equiv \bot$ 

$\forall f\in \mathcal F,f\lor \neg f\equiv \top$
$(X\land Y)\lor \neg(X\land Y)\equiv \top$
$((X\land Y)\lor \neg X)\lor \neg Y\equiv \top$
	$\equiv (X\land Y)\lor(\neg X\lor \neg Y)$
	$\equiv (X\land Y)\lor \neg(X\land Y)\equiv \top$

## 2. Substitution d'une formule à une variable

<u>Déf</u>$\to$  
 >Soient $f,g\in \mathcal F,x\in \mathcal V.$ 
 >On appelle substitution de $g$ à $x$ dans $f$, la formule notée $f^{\{ x\leftarrow g \}}$ définie par :
 > - Si $f=x,x^{\{ x\leftarrow g \}}=g$
 > - Si $f\in(\mathcal V \cup \{ \top,\bot \})\setminus \{ x \},f^{\{ x \leftarrow g \}}=f$
 > - Si $f = \neg f', f^{\{ x \leftarrow g \}}=\neg(f'^{\{ x \leftarrow g \}})$
 > - Si $f=f_{1} \diamondsuit f_{2}$ avec $\diamondsuit\in \{ \land,\lor ,\to,\leftrightarrow \},f^{\{ x \leftarrow g \}}=f_{1}^{\{ x \leftarrow g \}}\diamondsuit f_{2}^{\{ x \leftarrow g \}}$
 
 <span style="color:violet">Remarque </span> 
Pour éviter les confusions, il est d'usage de choisir $x \not\in \mathrm{Var}(g)$
Comme on le verra, c'est toujours possible

<span style="color:turquoise">Exemple </span> 
$f=(X\lor Y)\to(X\lor Z)$ et $g=\mathcal W_{1}\land \mathcal W_{2}$
Alors $f^{\{ X \leftarrow g \}}=((\mathcal W_{1} \land \mathcal W_{2})\lor Y)\to((\mathcal W_{1} \land \mathcal W_{2})\lor Z)$

$\boxed{\text{Théorème}}$  <span style="color:red">⚠ à revoir ⚠ </span> 
> - Soient $f_{1},f_{2},g\in \mathcal F$ telles que $f_{1}\equiv f_{2}, x\in \mathcal V$
>    Alors $f_{1}^{\{ x \leftarrow g \}}\equiv f_{2}^{\{ x \leftarrow g \}}$
> - Soient $f,g_{1},g_{2}\in \mathcal F$ telles que $g_{1}\equiv g_{2}$
>    Alors $f^{\{ x \leftarrow g_{1} \}}\equiv f^{\{ x \leftarrow g_{2} \}}$

<u>Lemme</u>
Soient $f,g\in \mathcal F,x\in \mathcal V,v\in \mathbb{B}^{\mathcal V}$
On pose $v':y\in \mathcal V\mapsto \begin{cases}v(y)\text{ si } y\neq x \\ [g]_{v}\text{ sinon}\end{cases}$
Alors $[f^{\{ x \leftarrow g \}}]_{v}=[f]_{v'}$

<u><span style="color:gold"> Preuve </span></u>  (Lemme)
 Procédons par induction structurelle sur $f$
 <u>Init</u>
Si $f=x,x^{\{ x \leftarrow g \}}=g$, et on a bien $[g]_{v}=v'(x)=[x]_{v'}$
Si $f\in(\mathcal V\setminus \{ x \}),f^{\{ x \leftarrow g \}}=f$ et $[f]_{v}=v(f)=v'(f)=[f]_{v'}$
Enfin, si $f\in \{ \top,\bot \},f^{\{ x \leftarrow g \}}=f$ et 
$[f]_{v}$ ne dépend pas de $v$

<u>Hérédité</u>
Soit $f$ formule de taille $\geqslant 1$
Supposons la propriété vérifiée pour toute sous formule immédiate de $f$
Si $f= \neg f'$, $H.I.$ nous donne que 
$[f'^{\{ x \leftarrow g \}}]_{v}=[f']_{v}$
Or $f^{\{ x \leftarrow g \}}=\neg(f'^{\{ x \leftarrow g \}})$
$\begin{align}\text{Donc, }[f^{\{ x \leftarrow g \}}]_{v}&=\mathrm{not}([f'^{\{ x \leftarrow g \}}]_{v}) \\&=\mathrm{not}([f']_{v'}) \\ &=[f]_{v'}\end{align}$

De même, si $f=f_{1}\diamondsuit f_{2}$, par $H.I.$
on a $[f_{1}^{\{ x \leftarrow g \}}]_{v}=[f_{1}]_{v}$ et $f_{2}^{\{ x \leftarrow g \}}]_{v}=[f_{2}]_{v}$
Or $f^{\{ x \leftarrow g \}}=f_{1}^{\{ x \leftarrow g \}}\diamondsuit f_{2}^{\{ x \leftarrow g \}}$
Si $\diamondsuit=\land,$ on a $[f^{\{ x \leftarrow g \}}]_{v}=[f_{1}^{\{ x \leftarrow g \}}]_{v}\text{ }\&\& [f_{2}^{\{ x \leftarrow g \}}]=[f_{1}]_{v'}\&\&[f_{2}]_{v'}=[f]_{v}$
De même pour les 3 autres possibilités de $\diamondsuit$

<u><span style="color:gold"> Preuve </span></u> (Théorème)
Soient $f_{1},f_{2},g\in \mathcal F,x\in \mathcal V$ tels que $f_{1}\equiv f_{2}$
Soit $v\in \mathbb{B}^{\mathcal V}$. On pose $v':y\in \mathcal V\mapsto \begin{cases}v(y)\text{ si }y\neq x \\ [g]_{v} \text{ sinon}\end{cases}$
Alors d'après le lemme, $[f_{1}^{\{ x \leftarrow g \}}]_{v}=[f_{1}]_{v'}$ et $[f_{2}^{\{ x \leftarrow g \}}]_{v}=[f_{2}]_{v'}$ 
Or par équivalence, de $f_{1}$ et $f_{2}$, $[f_{1}]_{v'}=[f_{2}]_{v'}$
Donc $[f_{1}^{\{ x \leftarrow g \}}]_{v}=[f_{2}^{\{ x \leftarrow g \}}]_{v}$
Comme ceci vaut pour tout $v$, $f_{1}^{\{ x \leftarrow g \}}\equiv f_{2}^{\{ x \leftarrow g \}}$

Soient $f,g_{1},g_{2} \in \mathcal F, x \in \mathcal V$ tels que $g_{1}\equiv g_{2}$
Soit $v \in \mathbb{B}^{\mathcal V}.$ On pose $v' : y \in \mathcal V\mapsto \begin{cases}v(y)\text{ si }y\neq x \\ [g_{1}]_{v}\text{ sinon}\end{cases}$
Or $g_{1}\equiv g_{2}$ donc $v'(x)\equiv [g_{1}]_{v}=[g_{2}]_{v}$
Donc d'après le lemme,
$[f^{\{ x \leftarrow g_{1} \}}]_{v}=[f]_{v'}=[f^{\{ x \leftarrow g_{2} \}}]_{v}$
Ceci vaut pour toute valuation $v$ donc 
$f^{\{ x \leftarrow g_{1} \}}\equiv f^{\{ x \leftarrow g_{2} \}}$

<span style="color:turquoise">Exemple </span> 
$\varphi=(X\lor Y)\lor((Z\land \mathcal W)\to \neg X)\lor \neg(Z\to Y)$

En utilisant des substitutions pour faire apparaître plus de termes dans une grande disjonction, montrer que $\varphi=\top$

${\color{lime}\begin{align}(Z\land\mathcal W)\to \neg X&\equiv Z\to \mathcal W\to \neg X \\ &\equiv \neg Z\lor(\mathcal W\to \neg X)\end{align}}$
<span style="color:lime">De plus, </span>${\color{lime}\mathcal W\to \neg X\equiv \neg \mathcal W\lor \neg X}$
<span style="color:lime">Donc, </span>${\color{lime}(Z\land \mathcal W)\to \neg X\equiv \neg Z\lor(\neg \mathcal W \lor \neg X)}$
<span style="color:lime">par substitution de  </span>${\color{lime}(\neg \mathcal W\lor \neg X)}$<span style="color:lime"> et </span>${\color{lime}(\mathcal W \to \neg X)}$ <span style="color:lime">à </span>${\color{lime}U}$ <span style="color:lime">dans </span>${\color{lime}\neg Z\lor U}$
<span style="color:lime">Donc par substitution de </span>${\color{lime}(Z\land \mathcal W)\to \neg X}$<span style="color:lime"> et </span>${\color{lime}\neg Z\lor(\neg \mathcal W\lor \neg X)}$<span style="color:lime"> à </span>${\color{lime}U}$<span style="color:lime"> dans </span>${\color{lime}(X\land Y)\lor U\land \neg(Z\to Y)}$
<span style="color:lime">On a </span>${\color{lime}\varphi\equiv (X\land Y)\lor(\neg Z\lor(\neg \mathcal W\lor \neg X))\lor \neg(Z\to Y)}$
<span style="color:lime">De même, </span>${\color{lime}Z\to Y\equiv \neg Z\lor Y}$<span style="color:lime"> donc </span>${\color{lime}\neg(Z\to Y)\equiv \neg(\neg Z\lor Y)\equiv \neg(\neg Z)\land \neg Y\equiv Z\land \neg Y}$
<span style="color:lime">Donc </span>${\color{lime}\varphi\equiv (X\land Y)\lor(\neg Z\lor(\neg \mathcal W \lor \neg X))\lor(Z\land \neg Y)}$
<span style="color:lime">En utilisant associativité et commutativité de la disjonction</span>
${\color{lime}\varphi\equiv ((X\land Y)\lor \neg X)\lor((Z\land \neg Y)\lor \neg Z)\lor \neg \mathcal W}$
<span style="color:lime">Or </span>${\color{lime}(X\land Y)\lor \neg X\equiv (X\lor \neg X)\land(Y\lor \neg X)\equiv \top \land(Y\lor \neg X)\equiv Y\lor \neg X}$
${\color{lime}(Z\land \neg Y)\lor \neg Z\equiv (Z\lor \neg Z)\land(\neg Y\lor \neg Z)\equiv \neg Y\lor \neg Z}$
<span style="color:lime">Donc</span>${\color{lime}\varphi\equiv (Y\lor \neg X)\lor(\neg Y\lor \neg Z)\lor \neg \mathcal W}$
${\color{lime}\equiv Y\lor \neg Y\lor \neg X\lor \neg Z\lor \neg \mathcal W}$
${\color{lime}\equiv \top\lor \neg X\lor \neg Z\lor \neg \mathcal W}$
${\color{lime}\equiv \top}$

## 3. Algorithme de Quine

L'algorithme de Quine est un algorithme de retour sur trace qui, étant donné une formule $f$, caractérise tous les modèles de $f$
On peut également (cas le + fréquent) l'interrompre dès qu'on a $v\vDash f$

<u>Quine</u>



<u>Entrée</u> : $g\in \mathcal F,w:\mathcal W\to \mathbb{B}$ où $\mathcal W \subset \mathcal V\setminus \mathrm{Var}(g)$

<u>Sortie</u> : Si il existe $v\in \mathbb{B}^{\mathcal V}$ tel que $v \vDash g,$ renvoie un tel $v$ qui vérifie $v_{|_{w}}=w$
	Sinon, indique que $g\equiv \bot$

<u>Algo</u> : 
```Pseudo-Code
g' <- Simplifier(g)
Si g' = Top alors :
	Renvoyer une extension de W à Var(g) union W
Sinon si g' = Bot alors :
	Renvoyer que g === Bot
Sinon :
	Choisir x dans Var (g')
	Soit w1 : y dans W union {x} union (Var(g)privé deVar(g'))->
		w(y) si y dans W
		true si y = x
		valeur quelconque sinon
	Si Quine(g'^{ {x<-T} },w1) donne v \vDash g'^{ {x<-T} }
		Renvoyer v
	Sinon :
		Soit w2 : y dans W union {x} union (Var(g) privé de Var(g')) -> 
			false si y = x
			w1(y) sinon
		Renvoyer Quine (g'^{ {x<-T} },w2)
```


# III - Conséquences logiques

<u>Déf</u>$\to$  
 >Soient $f,g\in \mathcal F,$ on dit que $g$ est conséquence logique de $f$, et on note $f\vDash g$
 >si, $\forall v\in \mathbb{B}^{\mathcal V},v \vDash f\implies v \vDash g$          ${\color{lime}[f]_{v}\leqslant[g]_{v}}$
 
 <span style="color:violet">Remarque </span> 
$\forall f,g\in \mathcal F,$
$f\equiv g \iff \begin{cases}f \vDash g \\ g \vDash f\end{cases}$

<span style="color:violet">Remarque </span> 
Toute formule est conséquence logique de $\bot$
De même, pour toute formule $f,f\vDash\top$

<u>Déf</u>$\to$  
 >Soit $\Gamma \subset \mathcal F,g\in \mathcal F$
 >On dit que $g$ est conséquence logique de $\Gamma$ et on note $\Gamma \vDash g$ si 
 >$\forall v \in \mathbb{B}^{\mathcal V},(\forall f \in\Gamma,v \vDash f)\implies v \vDash g$
 
 <span style="color:violet">Remarque </span> 
$\Gamma \vDash g$ ssi $\left( \overset{  }{  \underset{ f\in\Gamma }{ \bigwedge } }f \right) \vDash g$ 
Si $\Gamma = \varnothing,$ $\overset{  }{  \underset{ f\in\Gamma }{ \bigwedge } }f=\top$
Seules les tautologies sont conséquences logiques de l'ensemble vide d'axiomes

$\boxed{\text{Théorème}}$
>Soient $f_{1},f_{2},g \in \mathcal F$ telles que $f_{1} \vDash f_{2},x \in \mathcal V$
>Alors $f_{1}^{\{ x \leftarrow g \}} \vDash f_{2} ^{\{ x \leftarrow g \}}$

<span style="color:violet">Remarque </span> 
On n'a pas d'analogue de la seconde partie du théorème pour les équivelences.
En effet, $\bot \vDash \top$ mais $(\neg X)^{\{ X \leftarrow \bot \}}\not\vDash(\neg X)^{\{ X \leftarrow \top \}}$

# IV - Formes normales 
## 1. Forme normale négative
<u>Déf</u>$\to$  
 >On appelle littéral une formule qui est de la forme $x$ ou de la forme $\neg x$, avec $x \in \mathcal V$
 
 <span style="color:violet">Remarque </span> 
Lorsqu'on implémente un algorithme sur les formules propositionnelles, 
on représente usuellement les littéraux par des entiers $:$ 
	$x_{i}$ pour $i\in \mathbb{N}^{*}$ est représenté par $i$
	$\neg x_{i}$ pour $i\in \mathbb{N}^{*}$ est représenté par $-i$
On évite donc d'avoir une variable $x_{0}$

<u>Déf</u>$\to$  
 >Soit $f\in\mathcal F$. On dit que $f$ est une forme normale négative ou NNF si l'une des conditions suivantes est vraie :
 > - $f$ est un littéral, ou $f\in \{ \top,\bot \}$
 > - $f = f_{1}\diamondsuit f_{2}$, avec $\diamondsuit\in \{ \land,\lor \}$
 >
 >et $f_{1},f_{2}$ des NNF distinctes de $\top$ et $\bot$
 >
 >Ceci revient à dire que $f$ est soit $\top$ ou $\bot$, 
 >soit une formule utilisant uniquement $\land,\lor,$ et des littéraux

$\text{ }$ 
 $\boxed{\text{Théorème}}$
 >Soit $f\in \mathcal F.$ Il existe $f'$ une NNF telle que $f'\equiv f$
 
 <u>Lemme</u> :
 Soit $f\in \mathcal F.$ Il existe $f' \in \mathcal F$ telle que $f'$ ne contienne ni $\to$, ni $\leftrightarrow$ et $f'\equiv f$

<br>

<u><span style="color:gold"> Preuve </span></u> (lemme)
On procède par induction structurelle sur $f \in \mathcal F$

<u>Initialisation</u>
Si $f\in \mathcal V \cup \{ \top,\bot \}$, $f'=f$ convient

<u>Hérédité</u> :
Soit $f$ de taille $\geqslant 1$ telle que toute sous-formule immédiate de $f$ est équivalente à une formule sans $\to$ ni $\leftrightarrow$.
Si $f=\neg f'$ avc $f' \in \mathcal F$, il existe par HI $f''$ telle que $f'\equiv f''$ et $f''$ ne contient ni $\to$ ni $\leftrightarrow$
Alors $f\equiv \neg f''$ et $\neg f''$ convient 
Sinon, $f= f_{1} \diamondsuit f_{2}$ avec $f_{1},f_{2}\in \mathcal F$ et $\diamondsuit \in \{ \land,\lor,\to,\leftrightarrow \}$. 
Alors par HI, il existe $f_{1}',f_{2}'$ sans $\to$ ni $\leftrightarrow$ telles que $f_{1}\equiv f_{1}'$ et $f_{2}\equiv f_{2}'$
Si $\diamondsuit\in \{ \land,\lor \},f\equiv f_{1}'\diamondsuit f_{2}',$ qui convient 
Si $\diamondsuit=\to,f\equiv \underbrace{ \neg f_{1}'\lor f_{2}' }_{ \text{élimination de }\to }$ qui convient
Sinon $\diamondsuit = \leftrightarrow,$
$\begin{align} f&\equiv (f_{1}' \to f_{2}')\land(f_{2}'\to f_{1}') \\& \equiv (\neg f_{1}' \lor f_{2}')\land(\neg f_{2}'\lor f_{1}')\end{align}$ qui convient



<u><span style="color:gold"> Preuve </span></u>  (théorème) <br>
 Grâce au lemme, on peut supposer que $f$ est sans $\to$ ni $\leftrightarrow$. 
 Montrons par récurrence sur $h$ que $\forall h\in \mathbb{N},\forall f$ formule de hauteur $h$ sans $\to$ ni $\leftrightarrow$,
 il existe $f'$ une NNF telle que $f'\equiv f$
 
<u>Initialisation</u>:
Si $h=0$, alors $f\in \mathcal{V}\cup \{ \bot,\top \}$, $f$ est un littéral ou est $\bot$ ou $\top$, donc $f$ est une NNF

<u>Hérédité</u>: Soit $h\geqslant 1$ tel que toute formule $\to$ ni $\leftrightarrow$ de hauteur au plus $h-1$ soit équivalente à une NNF et $f$ de hauteur $h$ 

Cas 1: 
	$f=f_{1}\diamond f_{2}$ avec $\diamond\in \{ \land,\lor \}$. Alors $\mathrm{hauteur}(f_{1}),h\mathrm{hauteur}(f_{2})\leqslant h-1$ 
	Donc par HR, il existe $f_{1}',f_{2}'$ des NNF telles que $f_{1}\equiv f_{1}'$ et $f_{2}\equiv f_{2}'$
	 Si ni $f_{1}'$ ni $f_{2}'$ ne sont dans $\{ \bot,\top \}$, alors $f_{1}'\diamond f_{2}'\equiv f$ convient. 
	Sinon, si $f_{1}'=\bot$ ou $f_{2}'=\bot$ et $\diamond=\land$, $f\equiv\bot$ Sinon, si $f_{1}'=\top$ et $\diamond=\land$, $f\equiv f_{2}'$ De même pour les autres cas 

Cas 2:
$f=\neg f'$ avec $f'$ formule sans $\to$ ni $\leftrightarrow$ 

Cas 2a: 
$f'\in \mathcal{V}$, alors $f$ est un littéral 

Cas 2b: 
$f'\in \{ \top,\bot \}$, alors $\neg\top=\bot$ et $\neg\bot=\top$ 

Cas 2c: 
$f'=\neg f''$ avec $f''$ formule sans $\to$ ni $\leftrightarrow$. Alors $\mathrm{hauteur}(f'')=h-2$ et $f=\neg \neg f''\equiv f''$ Donc par HR, il existe $f'''$ une NNF telle que $f''\equiv f'''$, donc $f\equiv f'''$ 

Cas 2d:
$f'=f_{1}'\diamond f_{2}'$ avec $f_{1}',f_{2}'$ sans $\to$ ni $\leftrightarrow$ et $\diamond\in \{ \land,\lor \}$ Supposons pour simplifier $\diamond=\lor$ (sinon, raisonnement analogue) Alors posons $f_{1}=\neg f_{1}'$ et $f_{2}=\neg f_{2}'$ Donc $\mathrm{hauteur}(f_{1})=1+\mathrm{hauteur}(f_{1}')\leqslant\mathrm{hauteur}(f')=h-1$ et $\mathrm{hauteur}(f_{2})=1+\mathrm{hauteur}(f_{2}')\leqslant\mathrm{hauteur}(f')=h-1$ Alors par HR, il existe $f_{1}''$ et $f_{2}''$ des NNF telles que $f_{1}''\equiv f_{1},f_{2}''\equiv f_{2}$ Donc $f=\neg(f_{1}'\diamond f_{2}')\equiv \neg f_{1}'\lor \neg f_{2}'\equiv f_{1}\lor f_{2}\equiv f_{1}''\lor f_{2}''$ Si $f_{1}'',f_{2}''\not\in \{ \top,\bot \}$, alors cette formule convient. Sinon, on procède comme dans le cas 1

<u>Proposition</u>
Soit $f$ une formule de taille $n$ sans $\leftrightarrow.$
Alors avec l'algo décrit par la preuve du théorème, on calcule en temps $\Theta(n)$ une NNF,
$f'$ de taille au plus $3n$ telle que $f'\equiv f$

<span style="color:violet">Remarque </span> 
La mise sous NNF est la bonne simplification pour l'algo de Quine.
- après la 1$^{re}$ étape, il n'y a pas de $\neg$ à rentrer ni de $\to$ à éliminer, donc la taille ne fait que diminuer
- Voir qu'une variable $x$ est associée positivement à $\land$ et/ou négativement à $\lor$ 
	signifie qu'on peut beaucoup simplifier en lui substituant $\bot$
	(resp., négativement à $\land,$ positivement à $\lor$, substituer $\top$)

## 2. Formes normales conjonctives et disjonctives 

<u>Déf</u>$\to$  
 >On appelle clause disjonctive une formule de la forme $C=\overset{ n }{  \underset{ j=1 }{ \bigvee } }\ell_{j}$ avec $n\in \mathbb{N}$ et les $\ell_{j}$ des littéraux
 >On appelle clause conjonctive une formule de la forme $C=\overset{ n }{  \underset{ j=1 }{ \bigwedge } }\ell_{j}$ avec $n\in \mathbb{N}$ et les $\ell_{j}$ des littéraux

<u>Déf</u>$\to$  
 >On appelle forme normale conjonctive une formule de la forme $f=\overset{ m }{  \underset{ i=1 }{ \bigwedge } }C_{i}=\overset{ m }{  \underset{ i=1 }{ \bigwedge } }(\overset{ n_{i} }{  \underset{ j=1 }{ \bigvee } }\ell_{i,j})$ 
 >où les $C_{i}$ sont des clauses disjonctives
 >On appelle forme normale disjonctive une formule de la forme $f=\overset{ m }{  \underset{ i=1 }{ \bigvee } }C_{i}=\overset{ m }{  \underset{ i=1 }{ \bigvee } }(\overset{ n_{i} }{  \underset{ j=1 }{ \bigwedge } }\ell_{i,j})$ 
 >où les $C_{i}$ sont des clauses conjonctives

$\text{ }$
$\boxed{Théorème}$
> Soit $f\in \mathcal F$
> Alors il existe $f'$ DNF et $f''$ CNF telles que $f\equiv f'\equiv f''$

<u><span style="color:gold"> Preuve </span></u> 
Soit $f$ une formule, $x_{1},\dots ,x_{n}$ ses variables,
Soit $T_{f}$ sa table de vérité $\texttt{true}$ a $\underline{m\in \textlbrackdbl 0;2^{n} \textrbrackdbl}$ antécédents par $T_{f}$, tous dans $\mathbb{B}^{\text{Var}(f)}\simeq \mathbb{B}^{n}$
Soient $w_{1},-,w_{m}$ ces <b>antécédents</b>

On pose pour $\underline{i\in \textlbrackdbl 1;m \textrbrackdbl,j\in \textlbrackdbl 1;n \textrbrackdbl},\ell_{i,j}=\begin{cases}x_j\text{ si }w_{i}(x_{j})=\texttt{true} \\ \neg x_{j}\text{ sinon}\end{cases}$
Alors $f'=\overset{ m }{  \underset{ i=1 }{ \bigvee } }(\overset{ n }{  \underset{ j=1 }{ \bigwedge } }\ell_{i,j})$ est une DNF et on a $f'\equiv f$
En effet, soit $v\in \mathbb{B}^{\mathcal V}$
$[f']_{v}=[\overset{ n }{  \underset{ j=1 }{ \bigwedge } }\ell_{1,j}]_{v}||\dots||[\overset{ n }{  \underset{ j=1 }{ \bigwedge } }\ell_{m,j}]_{v}$
Or $[\overset{ m }{  \underset{ i=1 }{ \bigwedge } }\ell_{i,j}]_{v}$ est vrai ssi $v(x_{1})=w_{i}(x_{1}),\dots,$ et $v(x_{n})=w_{i}(x_{n})$
		  est vrai ssi $v_{|_{Var(f)}}=w_{i}$ 
Donc $[f']_{v}$ est $\texttt{true}$ ssi $v_{|_{Var(f)}}\in T_{f}^{-1}(\{ \texttt{true} \})$
En d'autres termes, $[f']_{v}$ est $\texttt{true}$ ssi $v \vDash f$
Donc $f'\equiv f$

<b>⚠ c'est une très mauvaise DNF</b> 🐈 $\leftarrow$ Jon

D'après ce qu'on a montré, il existe $\tilde{f}=\widetilde{\overset{ m }{  \underset{ i=1 }{ \bigvee } }}(\overset{ n }{  \underset{ j=1 }{ \bigwedge } }\tilde{\ell_{i,j}})$ une DNF telle que $\tilde{f}\equiv \neg f$
Alors $f\equiv \neg(\neg f)$
$\equiv \neg(\widetilde{\overset{ m }{  \underset{ i=1 }{ \bigvee } }}(\overset{ n }{  \underset{ j=1 }{ \bigwedge } }\tilde{\ell_{i,j}}))$
$\equiv \widetilde{\overset{ m }{  \underset{ i=1 }{ \bigwedge } }}(\overset{ n }{  \underset{ j=1 }{ \bigvee } }\neg\tilde{\ell_{i,j}})\equiv\underbrace{ \widetilde{\overset{ m }{  \underset{ i=1 }{ \bigwedge } }}(\overset{ n }{  \underset{ j=1 }{ \bigvee } }{\ell'_{i,j}}) }_{ \text{CNF} }$

<u>Déf</u>$\to$  
 >On appelle DNF-SAT (repectivement CNF-SAT) le problème consistant,
 >étant donnée une formule $f$ DNF(resp. CNF) à déterminer s'il existe $u\in \mathbb{B}^{\mathcal V}$ 
 >telle que $v \vDash f,$ et le cas échéant à trouver un tel $v$
 
 <u>Proposition</u>
 $\boxed{\begin{align}\text{DNF-SAT peut se résoudre en temps } \\ \text{linéaire en la taille de la formule }\text{ }\text{ }\end{align}}$

Voir poly pour la suite (preuve)
