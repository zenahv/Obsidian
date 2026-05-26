[[m - 11 Structures Algébriques (Groupes, Anneaux, Corps)]]
1. Montrer que la composée de deux morphismes de groupes est un morphisme de groupes *ligne 646*

>Soient $f:(G,*_{G})\to(H,*_{H})$ et $g:(H,*_{H})\to(K,*_{K})$ deux morphismes de groupes.
>Soit $h=g \circ f$, on veut montrer que $h$ est bien un morphisme
>$h:G \to K$
>$\begin{align}h(x *_{G} y) & =(g \circ f)(x *_{G}y) \\  & =g(f(x *_{G} y)) \\  & =g(f(x)*_{H}f(y)) \\  & =g(f(x))*_{K}g(f(y)) \\  & =h(x)*_{H}h(y)\end{align}$
>Donc, par définition du morphisme, $\boxed{h\text{ est un morphisme}}$

2. Montrer que la réciproque d’un isomorphisme de groupes est un isomorphisme de groupes *ligne 631*


>Soit $f:(G,*)\to(H,\otimes)$ un morphisme de groupes <u>bijectif</u>
>On a accès à sa réciproque $f^{-1}:H \to G$ qui est également <u>bijective</u>
>Soient $h_{1},h_{2}\in H,$
>On souhaite calculer $f^{-1}(h_{1}\otimes h_{2})$ et faire le lien avec $f^{-1}(h_{1})$ et $f^{-1}(h_{2})$
>Soient $g_{1}=f^{-1}(h_{1})$ et $g_{2}=f^{-1}(h_{2})$
>Comme $f$ est un morphisme :
>$f(g_{1}*g_{2})=f(g_{1})\otimes f(g_{2})=h_{1} \otimes h_{2}$
>On compose par $f^{-1}$ :
>$g_{1}*g_{2}=f^{-1}(h_{1}\otimes h_{2})$
>On remplace $g_{1}$ et $g_{2}$ :
>$f^{-1}(h_{1})*f^{-1}(h_{2})=f^{-1}(h_{1}\otimes h_{2})$
><u><b>Donc</b></u> $f^{-1}$ est un morphisme également

3. Montrer que l’image directe d’un sous-groupe par un morphisme de groupes est un sous-groupe *Ligne 678*

>Soit $f:(G,*)\to(H,\otimes)$ un morphisme de groupes
>Soit $G'$ un sous-groupe de $G$
>On pose $H'=f(G')= \{ f(x)\text{ }|\text{ }x \in G' \}$
   Montrons que $H'$ est un sous-groupe de $H$
> - $H' \subset H$ car $G' \subset G$ et $f(G) \subset H$
> - $G'$ est un sous-groupe de $G$ donc $e_{G}\in G'$
> 	donc $f(e_{G})=e_{H}$
> 	$f$ morphisme donc $e_{H}\in H'$ (qui contient donc le neutre)
> - Stabilité des opérations
Soient $h_{1},h_{2}\in H'$
 Ainsi, il existe $x,y \in G'$ tels que $\begin{cases}h_{1}=f(x) \\ h_{2}=f(y)\end{cases}$ 
 $h_{1} \otimes h_{2}\text{}^{-1}=f(x)\otimes f(y)^{-1}$
$\underset{ f\text{ morph.} }{ = }$ $f(x)\otimes f(y^{-1})$
$\underset{ f\text{ morph.} }{ = }$ $f(x* y^{-1})$ or $G'$ est un sous-groupe donc $x*y^{-1} \in G'$
donc $f(x*y^{-1})\in f(G')=H'$


4. Montrer que l’image réciproque d’un sous-groupe par un morphisme de groupes est un sous-groupe *Ligne 695*
>Soit $f :G \to H$ morphisme
	Soit $H'$ un sous-groupe de $H$.
	L'<u>ensemble image réciproque</u> est $G'=f^{-1}(H')=\{ x\in G |f(x) \in H' \}$
	(tous les antécédents des éléments de $H$)
	Montrons que $G'$ est un sous-groupe de $G$.
> - on a $G' \subset G$
> - $e_{H} \in H'$ car $H'$ sous-groupe de $H$ et $f$ est un morphisme donc $f(e_{G})=e_{H}$
	donc $f(e_{G}) \in H'$
	donc $e_{G} \in f^{-1}(H')$
	donc $e_{G} \in G'$
> - Soient $x,y\in G'$
	Donc $f(x) \in H'$
	et $f(y) \in H'$
	$H'$ est un sous-groupe donc $f(x) \otimes f(y)^{-1} \in H'$
	$f$ est un morphisme donc
	$f(x) \otimes f(y)^{-1}=f(x * y^{-1})$
	donc $f(x * y^{-1}) \in H'$
	donc $x*y^{-1} \in f^{-1}(H')$
	donc $x *y^{-1} \in G'$
	Par caractérisation, $G'$ est bien un sous-groupe



5. Déterminer les sous-groupes de ($\mathbb{Z},+$ ) *Ligne 514*
>* Les $n\mathbb{Z}$ sont des sous-groupes de $\mathbb{Z}$
$\begin{cases}\cdot\text{ }n\mathbb{Z}\subset \mathbb{Z} \\\cdot\text{ }0=0n\in n\mathbb{Z} \\ \cdot\text{ }\forall(k,k')\in \mathbb{Z}^{2},nk-nk'=n(k-k')\in n\mathbb{Z}\end{cases}$
>
>- Ce sont les seuls$\dots$ \*sad music\*
Soit $H$ un sous-groupe de $(\mathbb{Z},+)$
si $H=\{ 0 \}$ alors $H=0\mathbb{Z}$ 
sinon, $\exists x\in H$ tel que $x\neq 0$
	Alors $-x \in H$ donc $|x|\in H$
Posons min$(\mathbb{N}^{*}\cap H)=n$
avec $(\mathbb{N}^{*}\cap H)$ non vide car il contient $|x|$
>
Montrons que $H=n\mathbb{Z}$
Par double inclusion on sait que $n \in H$
alors $\underline{\text{tous les itérés de }n\text{ sont dans }H}$
donc $\forall k \in \mathbb{Z},kn \in H$
donc $n\mathbb{Z} \subset H$
>
Montrons $H \subset n\mathbb{Z}$
Soit $h \in H$
Par division euclidienne de $h$ par $n$
$\exists(q,r)\in \mathbb{Z}^{2}$ tq
$h = nq+r$ avec $0\leqslant r \leqslant n-1$ 
Or, $r=\underset{ \in H }{ h } -\underset{ \in\text{ }n\mathbb{Z}\text{ }\subset\text{ } H }{ nq }$
comme $H$ est un sous-groupe donc $\begin{cases}r \in H \\ r\geqslant 0\end{cases}$
donc $r \in H \cap \mathbb{N}$
et $r < n=$ min$(H\cap \mathbb{N}^{*})$
DONC $r=0$ : $h=nq\in n\mathbb{Z}$


6. Montrer qu’un morphisme de groupes est injectif si et seulement si son noyau est réduit à l’élément neutre 
*Ligne 748*

> $\boxed{\Longrightarrow}$ Supposons $f$ injective. Comme $f$ est un morphisme, $f(e_{G})=e_{H}$ donc $e_{G}\in \mathrm{Ker}(f)$
   Soit $x \in \mathrm{Ker}(f)$, alors $f(x)=e_{H}=f(e_{G})$, donc par injectivité, $x=e_{G}$
   Donc $\mathrm{Ker}(f)=\{ e_{G} \}$
   $\boxed{\Longleftarrow}$ Supposons $\mathrm{Ker}(f)=\{ e_{G} \}$. Montrons que $f$ est injective. Soient $x,y\in G$ tels que $f(x)=f(y)$. Ici $f(y)\in H$ qui est un groupe donc $(f(y))^{-1}\in H$.
   Ainsi, $f(x)\otimes f(y)^{-1}=e_{H}$. Par morphisme, $f(x*y^{-1})=e_{H}$ donc $x*y^{-1}\in \mathrm{Ker}(f)$ donc $x*y^{-1}=e_{G}$ donc $x=y$ donc $f$ est injective

7. Soient H, K deux sous-groupes d’un groupe $(G,\star)$. 
	Montrer que H $\cup$ K est un sous-groupe de G si et seulement si H ⊂ K ou K ⊂ H

