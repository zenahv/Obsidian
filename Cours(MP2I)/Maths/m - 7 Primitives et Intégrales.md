---
tags:
  - Math
---
On travaille sur $I$ un intervalle d'intérieur non vide, et les fonctions considérées sont définies sur $I$ et à valeurs dans $\mathbb{K}$ (avec $\mathbb{K}=\mathbb{R}$ ou $\mathbb{K}=\mathbb{C}$)

# I - Primitive
1) Définitions
Définition: Soit $f$ une fonction continue sur $I$ à valeurs dans $\mathbb{K}$. On dit qu'une fonction $F:I\to\mathbb{K}$ est une primitive de $f$ sur $I$ si $F$ est dérivable et $F'=f$

Exemple: Une primitive de $x\mapsto \frac{1}{1+x^{2}}$ sur $\mathbb{R}$ sera $\arctan$

Propriété: Soit $f \in \mathcal{C}(I,\mathbb{K})$ et soit $F$ une primitive de $f$ sur $I$, alors toute primitive de $f$ sur $I$ est de la forme $G=F+\lambda,\lambda \in\mathbb{K}$

Preuve: Soit $G$ une primitive de $f$ sur $I$, alors $(G-F)'=G'-F'=f-f=0$
Sur l'intervalle $I$, la fonction $G-F$ est constante donc $\exists \lambda \in\mathbb{K},G=F+\lambda$
Enfin, on a bien $(F+\lambda)'=F'=f$ donc $F+\lambda$ est bien une primitive.

Exemple: Soit $g:x\mapsto \begin{cases}\ln(-x+3) & \text{si }x<0 \\ \ln(x+7) & \text{si }x>0\end{cases}$
$g$ est définie sur $\mathbb{R}^{*}$, dérivable sur $\mathbb{R}^{*}$ et $\forall x \in \mathbb{R}^{*},g'(x)=\frac{1}{x}$ Donc $g$ est une primitive de $x\mapsto \frac{1}{x}$ sur $\mathbb{R}^{*}$

2) Changement de variable affine
Soir $f$ ayant $F$ comme primitive. Posons $a,b\in \mathbb{R}$ avec $a\neq 0$ et $\lambda \in\mathbb{K}$.
Quelles sont les primitives de $g:x\mapsto \lambda f(ax+b)$
On a comme primitive $x\mapsto \frac{\lambda}{a}F(ax+b)+c,c\in\mathbb{K}$
Car $(F\circ u)'=u'\times(F'\circ u)=u'\times(f\circ u)$

Exemple: $t\mapsto \sqrt{ 2 }\cos (\omega_{0}t+\phi)$ a comme primitive $t\mapsto \frac{\sqrt{ 2 }}{\omega_{0}}\sin(\omega_{0}t+\phi)+c$

Exemple: Primitive de $\frac{1}{\sqrt{ 7x+4 }}=(7x+4)^{-1/2}=\frac{1}{7}\times 7\times(7x+4)^{-1/2}=\frac{1}{7}\times u'(x)\times u(x)^{-1/2}$
Une primitive sera $x\mapsto \frac{1}{7} \frac{u(x)^{-1/2+1}}{-\frac{1}{2}+1}=\frac{2}{7}\sqrt{ 7x+4 }$

3) Reconnaître la forme $u'\times (f\circ u)$
Soit $f$ une fonction ayant $F$ comme primitive et $u$ une fonction dérivable
Alors $u'\times(f\circ u)$ a comme primitive $F\circ u+\text{constante}$
En effet: $(F\circ u)'='\times(F'\circ u)=u'\times f\circ u$

Exemple: Primitive de $\frac{x\mapsto_{1}}{\sqrt{ x }}e^{ \sqrt{ x } }$ sur l'intervalle $I=\mathbb{R}^{+}_{*}$
$e^{ u(x) }$? Si $u(x)=\sqrt{ x }$, $u'(x)=\frac{1}{2} \frac{1}{\sqrt{ x }}$
$\frac{1}{\sqrt{ x }}e^{ \sqrt{ x } }=2u'(x)e^{ u(x) }$
Donc cela se primitive en $2e^{ \sqrt{ x } }$

4) Linéarité
Soient $f,g$ deux fonctions ayant $F,G$ comme primitives. Alors pour $\lambda,\mu \in\mathbb{K}$, la fonction $\lambda f+\mu g$ a pour primitive $\lambda F+\mu G+c,c\in\mathbb{K}$

Preuve: $(\lambda F+\mu G)'=(\lambda F)'+(\mu G)'=\lambda F'+\mu G'=\lambda f+\mu g$

Exemple: Pour $a,b\in \mathbb{R}$ avec $a\neq b$ et $f:x\mapsto \frac{1}{(x-a)(x-b)}$ sur $I=\left]-\infty,a  \right[$ ou $]a,b[$ ou $]b,+\infty[$
On décompose en éléments simples: $\forall x\in \mathbb{R}\setminus \{ a,b \},f(x)= \frac{\frac{1}{a-b}}{x-a}+\frac{\frac{1}{b-a}}{x-b}=\frac{1}{a-b}\times \left[ \frac{1}{x-a}-\frac{1}{x-b} \right]$
Ainsi, une primitive de $f$ sur $I$ sera $F:x\mapsto \frac{1}{a-b}\ln |x-a|-\frac{1}{a-b}\ln |x-b|+c=\frac{1}{a-b}\ln | \frac{x-a}{x-b} |$

Exemple: Primitive de $f:x\mapsto \frac{1}{1-x^{2}}$
Or, $\forall x\neq-1,1, \frac{1}{1-x^{2}}=\frac{1}{(1-x)(1+x)}=\frac{-\frac{1}{2}}{x-1}+ \frac{-\frac{1}{2}}{x+1}$
donc les primitives sont $\frac{1}{2}\ln \left| x+1 \right|-\frac{1}{2}\ln \left| x-1 \right|+c=\ln \sqrt{ \frac{x+1}{x-1} }+c$

5) Primitive de $x\mapsto \frac{1}{x^{2}+px+q}$ avec $(p,q)\in \mathbb{R}^{2}$
Posons le discriminant $\Delta=p^{2}-4q$

Premier cas: Si $\Delta < 0$ alors le trinôme ne s'annule jamais sur $\mathbb{R}$ donc on travaille sur l'intervalle $I=\mathbb{R}$
La forme canonique est utile ici car $x^{2}+px+q=\left( x+\frac{p}{2} \right)^{2}+q-\frac{p^{2}}{4}$
Notons $a=-\frac{p}{2}$ et $b=\sqrt{ \frac{4a-p^{2}}{4} }=\sqrt{ \frac{-\Delta}{4} }$
Ainsi $x^{2}+px+q=(x-a)^{2}+b^{2}$
$\forall x \in \mathbb{R}, \frac{1}{x^{2}+px+q}=\frac{1}{(x-a)^{2}+b^{2}}=\frac{1}{b^{2}\times\left( \left( \frac{x-a}{b} \right)^{2}+1 \right)}$
En posant $u(x)=\frac{x-a}{b},u'(x)=\frac{1}{b}$
$\forall x \in \mathbb{R}, \frac{1}{x^{2}+px+q}=\frac{1}{b} \times \frac{u'(x)}{u(x)^{2}+1}$
On reconnaît la dérivée d'une composée. $\frac{1}{b}\arctan(u(x))$
Ainsi, les primitives sur $\mathbb{R}$ de $x\mapsto \frac{1}{x^{2}+px+q}$ sont de la forme $x\mapsto \frac{1}{b}+\arctan\left( \frac{x-a}{b} \right)+c$

Exemple: $x\mapsto \frac{1}{x^{2}+x+1}$ a des primitives sur $\mathbb{R}$.
$\frac{1}{x^{2}+x+1}=\frac{1}{\left( x+\frac{1}{2} \right)^{2}+\frac{3}{4}}=\frac{1}{\frac{3}{4}\times\left( \frac{4}{3}\left( x+\frac{1}{2} \right)^{2}+1 \right)}=\frac{1}{\frac{3}{4}\times\left( \left( \frac{2x+1}{\sqrt{ 3 }} \right)^{2}+1 \right)}=\frac{2}{\sqrt{ 3 }}\times \frac{ \frac{3}{\sqrt{ 3 }} }{\left( \left( \frac{2x+1}{\sqrt{ 3 }} \right)^{2}+1 \right)}$
Bilan: les primitives de $\frac{1}{x^{2}+x+1}$ sont de la forme $\frac{2}{\sqrt{ 3 }}\arctan\left( \frac{2x+1}{\sqrt{ 3 }} \right)+c$

Deuxième cas: Si $\Delta=0$ alors le trinôme a une unique racine double $r=-\frac{p}{2}$
$\forall x \in \mathbb{R},x^{2}+px+q=\left( x+\frac{p}{2} \right)^{2}$
La fonction $x\mapsto \frac{1}{\left( x+\frac{p}{2} \right)^{2}}$ est continue sur deux intervalles $I=\left]-\infty, -\frac{p}{2}  \right[$ ou $I=\left] -\frac{p}{2},+\infty \right[$
or, $\frac{1}{\left( x+\frac{p}{2} \right)^{2}}=\frac{u'(x)}{(u(x))^{2}}=u'\times u^{-2}$, se primitive en $\frac{u^{-1}}{-1}=-\frac{1}{u}$
Bilan: Les primitives sont $-\frac{1}{x+\frac{p}{2}}+c$

Troisième cas: Si $\Delta>0$ alors on a deux racines réelles distinctes $r_{1},r_{2}=\frac{-p\pm \sqrt{ \Delta }}{2}$ avec $r_{1}<r_{2}$
On travaille sur l'un des trois intervalles: $I=\left] -\infty,r_{1} \right[$, $I=\left] r_{1},r_{2} \right[$, ou $I=\left] r_{2},+\infty \right[$
De plus, $\forall x \in \mathbb{R}, x^{2}+px+q=(x-r_{1})(x-r_{2})$
$\forall x \in I, \frac{1}{x^{2}+px+q}=\frac{1}{(x-r_{1})(x-r_{2})}=\frac{\alpha}{x-r_{1}}+\frac{\beta}{x-r_{2}}$ avec $\alpha=\frac{1}{r_{1}-r_{2}}$ et $\beta=\frac{1}{r_{2}-r_{1}}$

---
On cherche $\alpha,\beta$ tels que $\forall x\neq r_{1},r_{2}$
$\frac{1}{(x-r_{1})(x-r_{2})}=\frac{\alpha}{x-r_{1}}+\frac{\beta}{x-r_{2}}$
$\frac{1}{x-r_{2}}=\alpha+(x-r_{1}) \frac{\beta}{x-r_{2}}$
$\frac{1}{r_{1}-r_{2}}=\alpha+0$
---

Ainsi, $\forall x \in I, \frac{1}{x^{2}+px+q}=\frac{1}{r_{1}-r_{2}}\times\left( \frac{1}{x-r_{1}}-\frac{1}{x-r_{2}} \right)$
cela se primitive sur $I$ en $x\mapsto \frac{1}{r_{1}-r_{2}}\times(\ln |x-r_{1}|-\ln |x-r_{2}|)+c=x\mapsto \frac{1}{r_{1}-r_{2}}\ln \left|\frac{x-r_{1}}{x-r_{2}}\right|$

6) Primitive de $x\mapsto \frac{1}{x-z}$ avec $z=a+ib\in \mathbb{C}$ fixé
Premier cas: si $b=0$ alors $z\in \mathbb{R}$
on se place sur $I=\left] -\infty,a \right[$ ou $I=\left] a,+\infty \right[$
Sur $I$, les primitives sont $x\mapsto \ln |x-a|+c$

Deuxième cas: si $b\neq 0$ alors $z\in \mathbb{C}\setminus\mathbb{R}$
donc $\forall x \in \mathbb{R},x-z\neq 0$
Ainsi on peut travailler sur l'intervalle $I=\mathbb{R}$
Or, $\forall x \in \mathbb{R}, \frac{1}{x-z}=\frac{1}{x-(a+ib)}=\frac{1}{(x-a)-ib}\times \frac{(x-a)+ib}{(x-a)+ib}=\frac{(x-a)+ib}{(x-a)^{2}+b^{2}}=\frac{x-a}{(x-a)^{2}+b^{2}}+i \frac{b}{(x-a)^{2}+b^{2}}=\frac{1}{2}\frac{2(x-a)}{(x-a)^{2}+b^{2}}+i \frac{\frac{1}{b}}{\left( \frac{x-a}{b} \right)^{2}+1}$
Ainsi, sur $\mathbb{R}$, les primitives de $x\mapsto \frac{1}{x-(a+ib)}$ sont $x\mapsto\frac{1}{2}\ln |(x-a)^{2}+b^{2}|+i\arctan\left( \frac{x-a}{b} \right)+c=\ln \sqrt{ (x-a)^{2}+b^{2} }+i\arctan\left( \frac{x-a}{b} \right)+c=\ln |x-z|+i\arctan\left( \frac{x-a}{b} \right)+c$
7) Primitive de $\exp \times \begin{cases}\cos \\ \sin\end{cases}$
$f:t\mapsto e^{ -rt }\cos(\omega_{0}t)$ avec $r \in \mathbb{R}^{+}$ et $\omega_{0}\in \mathbb{R}^{*}_{+}$
Trouver une primitive sur $\mathbb{R}$ de $f$
$f(t)=e^{ -rt }\cos(\omega_{0}t)=e^{ -rt }\mathrm{Re}(e^{ i\omega_{0}t })=\mathrm{Re}(e^{ -rt }e^{ i\omega_{0}t })=\mathrm{Re}(e^{ (-r+\omega_{0})t })=\mathrm{Re}(e^{ \alpha t })$
On cherche les primitives de $t\mapsto e^{ \alpha t }$, on trouve $t\mapsto \frac{1}{\alpha}e^{ \alpha t }$
Les primitives de $f$ sur $\mathbb{R}$ sont $t\mapsto \mathrm{Re}\left( \frac{1}{\alpha}e^{ \alpha t } \right)+c$
or $\frac{1}{\alpha}e^{ \alpha t }=\frac{\bar{\alpha}}{|\alpha|^{2}}e^{ \alpha t }=\frac{-r-i\omega_{0}}{rs+\omega_{0}^{2}}e^{ -rt }e^{ i\omega_{0}t }$
Donc la partie réelle vaut $\frac{e^{ -rt }}{r^{2}+\omega_{0}^{2}}(-r\cos (\omega_{0}t)+\omega_{0}\sin(\omega_{0}t))$

Remarque: $-r\cos (\omega_{0}t)+\omega_{0}\sin(\omega_{0}t)=A\cos(\omega_{0}t+\varphi)$ où $A=\sqrt{ r^{2}+\omega_{0}^{2} }$ et $\varphi=\arctan\left( \frac{\omega_{0}}{r} \right)$

8) Linéarisation en trigonométrie
Idée: On sait facilement faire la primitive d'une sommes. On cherche à transformer des produits en somme.

- Primitive de $\cos ^{2}$ sur $\mathbb{R}$
  $\forall x \in \mathbb{R}, \cos ^{2}(x)=\frac{1+\cos(2x)}{2}=\frac{1}{2}+\frac{1}{2}\cos(2x)$
Ici, une primitive de $\cos ^{2}$ sur $\mathbb{R}$ sera $x\mapsto \frac{1}{2}x+\frac{1}{4}\sin(2x)+c$

Comment faire la primitive de $\cos ^{n}(x)\sin ^{m}(x)$ avec $n,m \in \mathbb{N}$?
Quelques exemples:
Primitive de $\cos ^{2}\times \sin$
Une primitive sera de $-\frac{1}{3}\cos ^{3}$
De même, $\cos ^{n} (x)\times \sin(x)$ se primitive en $-\frac{\cos ^{n+1}}{n+1}$

Mais $x\mapsto \cos ^{n}(x)\times \sin ^{3}(x)$
$\cos ^{n}(x)\times \sin ^{2}(x)\times \sin(x)$
$=\cos ^{n}(x)\sin(x)-\cos ^{n-2}(x)\sin(x)$

Bilan: Pour $\cos ^{n}\times \sin ^{m}$
- Si l'une des puissances est impaire, on se ramène à $\cos \times \sin ^{\alpha}$ ou $\sin \times \cos ^{\alpha}$
- Si les deux puissances sont paires, il faut linéariser

Exemple: Primitive de $\cos ^{2}\sin ^{2}$
$(\cos \times \sin)^{2}=\left( \frac{\sin(2x)}{2} \right)^{2}=\frac{1}{4}\sin ^{2}(2x)$
On linéarise $\sin ^{2}\theta$ par $\frac{1-\cos(2\theta)}{2}$
Ainsi, $\sin ^{2}(2x)=\frac{1-\cos(4x)}{2}$
$\cos ^{2}\sin ^{2}=\frac{1}{8}-\frac{1}{8}\cos(4x)$

# II - Intégrale
Définition: Soit $f:I\to \mathbb{C}$ continue avec $I$ un intervalle de $\mathbb{R}$
Soient $a,b\in I$
L'intégrale de $f$ entre $a$ et $b$ est définie par
$$
\int_{a}^{b} f(t) \, dt \underset{ \text{déf.} }{ = } \int_{a}^{b} \mathrm{Re}(f(t)) \, dt+i\int_{a}^{b} \mathrm{Im}(f(t)) \, dt  
$$
---

### Théorème fondamental de l'analyse:
Soi $f:I\to\mathbb{K}$ continue sur l'intervalle $I$.
Soit $a\in I$
La fonction
$$
x\mapsto \int_{a}^{x} f(t) \, dt 
$$ est l'unique primitive de $f$ sur $I$ qui s'annule en $a$

Conséquences:
- Toute fonction continue sur $I$ admet des primitives sur $I$.
- On sait alors calculer des intégrales grâce aux primitives
  Soit $f$ ayant $F$ comme primitive, alors $\int_{a}^{b} f(t) \, dt=F(b)-F(a)=\left[ F(t) \right]^{b}_{a}$
  Prenons $G$ une autre primitive de $f$, $\int_{a}^{b} f(t) \, dt=G(b)-G(a)=\left[ G(t) \right]^{b}_{a}$
  En effet, $F'=G'=f$ donc $\exists\lambda \in\mathbb{K}$ telle que $G=F+\lambda$ et donc $G(b)-G(a)=(F(b)+\lambda)-(F(a)+\lambda)=F(b)-F(a)$
- Si $f$ est continue sur $I$, alors ses primitives sont de classe $\mathcal C^{1}$ sur $I$
  En effet, soit $F$ une primitive de $f$. Alors $F'=f$. Or $f$ est continue, donc $F'$ est continue sur $I$ donc $F$ est $\mathcal C^{1}$ sur $I$
Il est donc trivial d'étudier la fonction
$$
g:x\mapsto \int_{a}^{x} f(t) \, dt 
$$
Si $f$ est continu sur $I$, alors $g$ est LA primitive de $f$ sur $I$ qui s'annule en $a$
Donc $g$ est dérivable sur $I$ et $\forall x \in I,g'(x)=f(x)$

Exemple: $g:x\mapsto \int_{0}^{x} e^{ -t^{2} } \, dt$
Etudier $g$
$f:t\mapsto e^{ -t^{2} }$ est continue sur sur $\mathbb{R}$
Donc $g$ est la primitive de $f$ sur $\mathbb{R}$ qui s'annule en $0$
$g$ est dérivable sur $\mathbb{R}$ et $\forall x \in \mathbb{R},g'(x)=e^{ -x^{2} }$
donc $g$ est strictement croissante sur $\mathbb{R}$ et $g(0)=0$

Idée de la preuve
$g:x\mapsto \int_{a}^{x} f(t) \, dt$ Sachant que $f$ est continue, montrer que $g$ est dérivable
Fixons $x \in I$
$$
\begin{align}
\forall h\neq 0,\frac{g(x+h)-g(x)}{h} & =\frac{1}{h}\left( \int_{a}^{x+h} f(t) \, dt - \int_{a}^{x} f(t) \, dt  \right) \\
 & =\frac{1}{h}\int_{x}^{x+h} f(t) \, dt  \\

\end{align}$$
on écrit
$$
f(x)=\frac{1}{h}\int_{x}^{x+h} f(x) \, dt 
$$
$$
\begin{align}
\forall h\neq 0,&\frac{g(x+h)-g(x)}{h}-f(x) \\
& = \frac{1}{h}\int_{x}^{x+h} f(t) \, dt - \frac{1}{h} \int_{x}^{x+h} f(x) \, dt \\
& = \frac{1}{h}\int_{x}^{x+h} (f(t)-f(x)) \, dt 
\end{align}
$$
Ainsi, si $h\to 0$ et $t\in \left[ x,x+h \right]$
Si on peut encadrer $|f(t)-f(x)|$ par $\varepsilon$, alors
$$
\left| \frac{1}{h}\int_{x}^{x+h} f(t)-f(x) \, dt  \right| \leqslant \frac{1}{h}\int_{x}^{x+h} \varepsilon \, dt = \frac{1}{h}h\varepsilon=\varepsilon
$$
Ainsi, le taux d'accroissement, de $g$ en $x$ a une limite finie qui vaut $f(x)$
Cela prouve que $g$ est dérivable en $x$ et $g'(x)=f(x)$

Exemple: Etudier $g:x\mapsto \int_{a(x)}^{b(x)} f(t) \, dt$ avec $f$ continue sur $I$
Fixons $F$ une primitive de $f$ sur $I$
$$
\begin{align}
g(x)=\int_{a(x)}^{b(x)} f(t) \, dt =F(b(x))-F(a(x))
\end{align}
$$
Donc $g=F\circ b-F\circ a$
Ainsi, si les fonctions $a$ et $b$ sont dérivable, alors $g$ aussi et
$g'=(F\circ b)'-(F\circ a)'=b'\times(F'\circ b)-a'\times(F'\circ a)=b'\times(f\circ b)-a'\times(f\circ a)$


1) Propriétés de l'intégrale.
Soit $f$ continue sur $I$
- $\forall a \in I,\int_{a}^{a} f=0$
- $\forall a,b\in I,\int_{b}^{a} f=-\int_{a}^{b} f$
- Chasles: $\forall a,b,c\in I,\int_{a}^{b} f+\int_{b}^{c} f=\int_{a}^{c} f$
- Linéarité: $f,g$ continues sur $I$ et $\lambda,\mu \in \mathbb{K}$, $\int_{a}^{b} \lambda f+\mu g=\lambda \int_{a}^{b} f + \mu \int_{a}^{b} g$
- Positivité: Soit $f:I\to \mathbb{R}$ continue et positive, $\forall a,b\in I$ avec $a\leqslant b$:
  $\int_{a}^{b} f(t) \, dt\geqslant 0$
- Croissance: si $\forall a,b\in I,a\leqslant b,\forall t\in \left[ a,b \right],f(t)\leqslant g(t)$ alors $\int_{a}^{b} f(t) \, dt\leqslant\int_{a}^{b} g(t) \, dt$
- Si $f$ est paire sur $I$ et $a\in I$, $\int_{-a}^{a} f(t) \, dt=2\int_{0}^{a} f(t) \, dt$
- Si $f$ est impaire et continue sur $I$ et $a\in I$, $\int_{-a}^{a} f(t) \, dx=0$

2) Intégration par partie
Théorème:
Soient $u,v$ de classe $\mathcal{C}^{1}$ sur un intervalle $I$ et soient $a,b\in I$
$$
\int_{a}^{b} u'(t)v(t) \, dt=\left[ u(t)v(t) \right]^{b}_{a}-\int_{a}^{b} u(t)v'(t) \, dt  
$$
Preuve:
$$
\int_{a}^{b} (uv)'(t) \, dt=\left[ uv \right]^{a}_{b}=u(b)v(b)-u(a)v(a) 
$$
$$
\int_{a}^{b} (uv)'(t) \, dt=\int_{a}^{b} (u'(t)v(t)+u(t)v'(t)) \, dt\underset{ \text{lin.} }{ = }\int_{a}^{b} u'(t)v(t) \, dt+\int_{a}^{b} u(t)v'(t) \, dt    
$$
Exemple: Primitive de $\ln$ sur $\mathbb{R}^{*}_{+}$?
Prenons $x\mapsto \int_{1}^{x} \ln(t) \, dt$
$$
\begin{align}
\int_{1}^{x} 1\times \ln(t) \, dt & \underset{ \text{IPP} }{ = }\left[ t\ln t \right]^{x}_{1}-\int_{1}^{x} t\times \frac{1}{t} \, dt \\
 & =x\ln x-1\ln 1-\int_{1}^{x}  \, dt \\
 & =x\ln x-(x-1) \\
 & =x\ln x-x+1
\end{align}
$$
Exemple: Primitive de $\arctan$ sur $\mathbb{R}$ qui existe car $\arctan$ est continue
$x\mapsto \int_{a}^{x} \arctan(t) \, dt$
$$
\begin{align}
\int_{a}^{x} 1\times \arctan(t) \, dt & \underset{ \text{IPP} }{ = }\left[ t\arctan t \right]^{x}_{a}-\int_{a}^{x} \frac{t}{t^{2}+1} \, dt \\
 & =x\arctan x-\frac{1}{2}\ln(x^{2}+1)+\text{cste}
\end{align}
$$

3) Changement de variable
Théorème: Soit $f\in\mathcal C(I,\mathbb{K})$ et $\varphi \in\mathcal C^{1}(J,I)$
Soient $a,b\in J$
$$
\int_{a}^{b} f(\varphi(t))\varphi'(t) \, dt=\int_{\varphi(a)}^{\varphi(b)} f(u) \, du  
$$
Preuve: $f$ étant continue sur $I$
Notons alors $F$ une primitive de $f$ sur $I$
Alors $F\circ\varphi$ est de classe $\mathcal C^{1}$ sur $J$
et $(F\circ\varphi)'=\varphi'\times(F'\circ\varphi)=varh\pi'\times(f\circ\varphi)$
Ainsi, $$
\begin{align}
\int_{a}^{b} f(\varphi(t))\varphi'(t) \, dt  & =\int_{a}^{b} (F\circ\varphi)' \, dx \\
 & =\left[ (F\circ\varphi)(t) \right]^{b}_{a}  \\
 & =F(\varphi(b))-F(\varphi(a)) \\
 & =\left[ F(u) \right]^{\varphi(b)}_{\varphi(a)}=\int_{\varphi(a)}^{\varphi(b)} f(u) \, du 
\end{align}
$$
En pratique, on dira que l'on a effectué le changement de variable $u=\varphi(t)$
ATTENTION: Il faut tout changer, notamment les bornes de l'intégrale

Exemple:
$$
\begin{align}
\int_{1}^{2} \frac{e^{ \sqrt{ x } }}{\sqrt{ x }} \, dx 
\end{align}
$$
On fait le changement de variable $u=\sqrt{ x }$
$$
\begin{align}
\int_{1}^{2} \frac{e^{ \sqrt{ x } }}{\sqrt{ x }} \, dx  & =\int_{1}^{\sqrt{ 2 }} 2e^{ u } \, du =\left[ 2e^{ u } \right]^{\sqrt{ 2 }}_{1}=2e^{ \sqrt{ 2 } }-2e
\end{align}
$$

Exemple: Trouver une primitive sur $\mathbb{R}^{*}_{+}$ de $x\mapsto \frac{\ln x}{x+x(\ln x)^{2}}$
Notons $f$ cette fonction
Le dénominateur vaut $x \times(1+(\ln x)^{2})$ est bien continu et ne s'annule pas sur $\mathbb{R}^{*}_{+}$ donc $f$ est continue sur $\mathbb{R}^{*}_{+}$
Donc, par le théorème fondamental de l'analyse, une primitive de $f$ sur $\mathbb{R}^{*}_{+}$ sera
$$
F:x\mapsto \int_{1}^{x} f(t) \, dt =\int_{1}^{x} \frac{\ln t}{t+t(\ln t)^{2}} \, dt 
$$
On va faire le changement de variable $u=\ln t$ donc $\frac{du}{dt}=\frac{1}{t}$ donc $\frac{dt}{t}=du$
Bornes: si $t=1,u=\ln 1=0$, et si $t=x,u=\ln x$
Ainsi
$$
\begin{align}
F(x)=\int_{0}^{\ln x} \frac{u}{1+u^{2}} \, du & =\int_{0}^{\ln x} \frac{1}{2}\times \frac{2u}{1+u^{2}}  \, du \\
 & =\left[ \frac{1}{2}\ln(1+u^{2}) \right]^{\ln x}_{0} \\
 & =\frac{1}{2}\ln(1+(\ln x)^{2}) 
\end{align}
$$
Exemple: Primitive sur $\mathbb{R}^{+}$ de $x\mapsto e^{ \sqrt{ x } }$
Notons 
$$F:x\mapsto \int_{0}^{x} e^{ \sqrt{ t } } \, dt $$
On fait le changement de variable $v=\sqrt{ t }\iff t=v^{2}$
$dv=\frac{1}{2\sqrt{ t }}dt$ donc $dt=2vdv$
Bornes: Si $t=0,v=0$ et si $t=x,v=\sqrt{ x }$
$$
\begin{align}
F(x) & =\int_{0}^{\sqrt{ x }} e^{ v }2v \, dv  \\
 & =\int_{0}^{\sqrt{ x }} 2v e^{ v } \, dv  \\
 & \underset{ \text{IPP} }{ = } \left[ 2v e^{ v } \right]^{\sqrt{ x }}_{0}-\int_{0}^{\sqrt{ x }} 2e^{ v } \, dv \\
  & =2\sqrt{ x }e^{ \sqrt{ x } }-2e^{ \sqrt{ x } }+\text{cste}
\end{align}
$$

Remarque: en pratique, le changement de variable $u=\varphi(t)$ est parfois suggéré à l'envers $t=\varphi(u)$
Dans ce cas là, il faut s'assurer que l'on travaille sur des intervalles où $\varphi$ est bijective

Exemple: Calculer une primitive de $x\mapsto \sqrt{ 1-x^{2} }$ sur $\left[ -1,1 \right]$
Par le théorème fondamental de l'analyse, 
$$F(x)=\int_{0}^{x} \sqrt{ 1-t^{2} } \, \frac{d}{dt}  $$ avec $x\in \left[ -1,1 \right]$
Poser $t=\sin \theta \iff \theta=\arcsin t$ avec $t\in \left[ -1,1 \right]$ et $\theta \in \left[ -\frac{\pi}{2}, \frac{\pi}{2} \right]$
Ainsi $\frac{dt}{d\theta}=\cos\theta$ donc $dt=(\cos\theta)d\theta$
Bornes: Si $t=0,\theta=\arcsin(0)=0$ et si $t=x,\theta=\arcsin x$
De plus, $\sqrt{ 1-t^{2} }=\sqrt{ 1-\sin ^{2}\theta }=\sqrt{ \cos ^{2}\theta }=|\cos\theta|=\cos\theta$ car $\theta \in \left[ -\frac{\pi}{2}, \frac{\pi}{2} \right]$
$$
\begin{align}
F(x) & =\int_{0}^{\arcsin x} \cos ^{2}\theta \, d\theta  \\
 & =\int_{0}^{\arcsin x} \frac{1+\cos 2\theta}{2} \, dx  \\
 & =\left[ \frac{1}{2}\theta+\frac{\sin 2\theta}{4} \right]^{\arcsin x}_{0} \\
 & =\frac{1}{2}\arcsin(x)+\frac{1}{4}\sin(2\arcsin x) \\
 & =\frac{1}{2}\arcsin(x)+\frac{1}{2}\sin(\arcsin x)\cos(\arcsin x) \\
 & =\frac{1}{2}\arcsin(x)+\frac{1}{2}x\sqrt{ 1-x^{2} }
\end{align}
$$
Exemple: Primitive de $\frac{1}{\sin}$ sur $\left] 0,\pi \right[$
Par théorème fondamental de l'analyse, elle admet des primitives dont
$$
F:x\mapsto \int_{a}^{x} \frac{d\theta}{\sin \theta}
$$ où $a\in\left] 0,\pi \right[$ fixé
Astuce: $u=\tan\left( \frac{\theta}{2} \right)$
Rappel: $\tan\left( 2\frac{\theta}{2} \right)=\frac{2\tan\left( \frac{\theta}{2} \right)}{1-\tan ^{2}\left( \frac{\theta}{2} \right)}=\frac{2u}{1-u^{2}}$
$\cos\theta=\cos\left( 2\frac{\theta}{2} \right)=2\cos ^{2}\left( \frac{\theta}{2} \right)-1=\frac{2}{1+\tan ^{2}\left( \frac{\theta}{2} \right)}-1=\frac{1-u^{2}}{1+u^{2}}$
$\sin\theta=\tan\theta \cos\theta=\frac{2u}{1+u^{2}}$
$\frac{1}{\sin\theta}=\frac{1+u^{2}}{2u}$
Avec $u=\tan\left( \frac{\theta}{2} \right),\theta=2\arctan(u)$
donc $d\theta=\frac{2}{1+u^{2}}du$

Finalement, $\frac{d\theta}{\sin\theta}=\frac{1+u^{2}}{2u}\times \frac{2}{1+u^{2}}du=\frac{du}{u}$
Bornes: si $\theta=x,u=\tan\left( \frac{x}{2} \right)$
$$
\begin{align}
F(x) & =\int_{\tan\left( \frac{a}{2} \right)}^{\tan(b/2)} \frac{du}{u}  \\
 & =\left[ \ln |u| \right] ^{\tan(b/2)}_{\tan\left( \frac{a}{2} \right)} \\
 & =\ln \tan\left( \frac{x}{2} \right)+c
\end{align}
$$

