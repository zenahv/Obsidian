
# I - Dérivabilité
1) Définitions
Définition:
> Soit $f:I\to \mathbb{R},I\subseteq \mathbb{R}$ et $a,b\in I$
> la droite passant par $(a,f(a))$ et $(b,f(b))$ a pour coefficient directeur $\frac{f(b)-f(a)}{b-a}$
> Le taux d'accroissement en $a$ est $\tau_{a}:x\mapsto \frac{f(x)-f(a)}{x-a}$
> $\tau_{a}$ est bien définie sur $I\setminus\{ a \}$
> On dit que $f$ est dérivable en $a$ si $\tau_{a}$ admet une limite finie en $a$
> Dans ce cas, on note $f'(a)$ la valeur de cette limite: $f'(a)=\lim\limits_{ x \to a } \frac{f(x)-f(a)}{x-a}=\lim\limits_{ h \to 0 } \frac{f(a+h)-f(a)}{h}$

Rappel: Soit $f:I\to \mathbb{R}$ et $a\in I$. $f$ est dérivable en $a$ si et seulement si $f$ admet un $\text{DL}_{1}(a)$
$f(x)\underset{ x\to a }{ = }f(a)+l\times(x-a)+o(x-a)$. Dans ce cas, $l=f'(a)$
$\frac{f(x)-f(a)}{x-a}\underset{ x\to a }{ = }l+o(1)$
On retrouve la tangente en $a$: $(T_{a})$ d'équation $y=f(a)+f'(a)(x-a)$

Propriété: $f$ est dérivable en $a\iff f$ est continue en $a$ car $\mathrm{DL}_{1}(a)\implies \mathrm{DL}_{0}(a)$ donc $f(x)\underset{ x\to a }{ = }f(a)+o(1)$ donc $\lim\limits_{ x \to a }f(x)=f(a)$

Notations: $f'(a)=\frac{df}{dx}(a)=\mathcal{D}(f)(a)=\dot{f}(a)$
# <span style="color:red">MAIS JAMAIS</span> $\color{red}(f(a))'$

Définition:
> Soit $f:I\to \mathbb{R}$
> $f$ est dérivable sur $I$ si $\forall a\in I,f$ est dérivable en $a$
> On note $f':I\to \mathbb{R},x\mapsto f'(x)$

Exemples:
- $\sqrt{ \cdot }$ est dérivable sur $\mathbb{R}_{+}^{*}$
- $|\cdot|$ est dérivable sur $\mathbb{R}^{*}$
- $\arcsin$ est dérivable sur $\left] -1,1 \right[$

Définition:
> Soit $f:I\to \mathbb{R}$ et $a\in I$
> On dit que $f$ est dérivable à droite en $a$ si $f_{|_{I\cap \left] I,+\infty \right[}}$ est dérivable en $a$
> Si tel est le cas, on note $f_{d}'(a)=\lim\limits_{ x \to a^{+} } \frac{f(x)-f(a)}{x-a}$
> Similaire pour la dérivabilité à gauche avec $f_{g}'(a)$

Remarque: $f$ est dérivable en $a$ si et seulement si $f$ est dérivable à gauche et à droite et $f_{d}'(a)=f'_{g}(a)$

2) Dérivées successives
Définition:
> Soit $f:I\to \mathbb{R}$
> On définit la $k$-ième pour $k\in \mathbb{N}$:
> $f^{(0)}=f$
> Soit $k\in \mathbb{N},$ si $f^{(k)}$ est dérivable sur $I$, on note $f^{(k+1)}=(f^{(k)})'$

Notations: $f^{(n)}=\mathcal{D}^{n}(f)=\frac{d^{n}f}{dx^{n}}$

Notations:
- $\mathscr{C}^{n}(I,R)$ est l'ensemble des fonctions $n$ fois dérivable sur $I$ telles que la dérivée $n$-ième est continue $I$
- $\mathscr{C}^{\infty}(I,\mathbb{R})=\bigcap\limits_{n\in \mathbb{N}}\mathscr{C}^{n}(I,\mathbb{R})$ ensemble des fonctions infiniment dérivables sur $I$
Remarque: $\mathscr{C}^{\infty}(I,\mathbb{R})\subset \mathscr{C}^{n+1}(I,\mathbb{R})\subset \mathscr{C}^{n}(I,\mathbb{R})\subset \mathscr{C}^{0}(I,\mathbb{R})$

Méthode: Pour montrer que $f\in \mathscr{C}^{\infty}(I,\mathbb{R})$ on montre $\forall n\in \mathbb{N},f\in \mathscr{C}^{n}(I,\mathbb{R})$

3) Opérations
Propriété: $\mathscr{C}^{n}(I,\mathbb{R})$ est stable par combinaison linéaire

Corollaire: $\mathscr{C}^{\infty}(I,\mathbb{R})$ est stable par combinaison linéaire
