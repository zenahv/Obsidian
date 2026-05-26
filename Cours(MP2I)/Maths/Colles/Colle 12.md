## 1. Déterminer tous les polynômes $P$ de $\mathbb{R}[X]$ vérifiant $P(X+1)=P(X)$
$\sum\limits_{i=0}^{n}a_{i}X^{i}=\sum\limits_{j=0}^{m}a_{j}(X+1)^{j}$ 

## 2. Montrer que pout tous $(n,m,k)\in \mathbb{N}^{3},\sum\limits_{i+j=k}^{}\binom{n}{i}\binom{m}{j}=\binom{n+m}{k}$
Ainsi,
$\mathscr {pq}=\sum\limits_{k\in \mathbb{N}}^{}\underbrace{ \left( \sum\limits_{i+j=k}^{}\binom{n}{i}\binom{m}{j} \right) }_{ =c_{k} }X^{k}$
Or $\mathscr p=\sum\limits_{i=0}^{n}\binom{n}{i}X^{i}$ car $\forall i > n, \binom{n}{i}=0$
$\underset{ binome }{ = }(1+X)^{n}$
De même, $\mathscr q=\sum\limits_{j=0}^{m}\binom{m}{j}X^{j}\underset{ binome }{ = }(1+X)^{m}$
Donc $\boxed{\mathscr{pq}}=(1+X)^{n}\times(1+X)^{m}$
$=(1+X)^{n+m}$
$\underset{ binome }{ = }\sum\limits_{k=0}^{n+m}\binom{n+m}{k}X^{k}$
Par égalité des polynômes, $\boxed{c_{k}=\binom{n+m}{k}=\sum\limits_{i+j=k}^{}\binom{n}{i}\binom{m}{j}}$


## 3. Preuve de la formule de Leibniz pour les polynômes (dérivée $n$-ième du produit $PQ$)
$(P\times Q)^{(n)}=\sum\limits_{k=0}^{n}\binom{n}{k}P^{(k)}\times Q^{(n-k)}$
$\to$ Récurrence ?
## 4. Montrer que si $P=\sum\limits_{n=0}^{d}a_{n}X^{n},$ alors $a_{n}=\frac{P^{(n)}(0)}{n!}$, en calculant la dérivée     $k$-ième de $P$ explicitement, En déduire la formule de Taylor pour les polynômes : $\forall a\in \mathbb{K}:P=\sum\limits_{k\geqslant 0}^{}\frac{P^{(k)}(a)}{k!}(X-a)^{k}$

## 5. Montrer la caractérisation de l'ordre de multiplicité par les polynômes dérivés : $a$ est racine de $P$ avec multiplicité $m\in \mathbb{N}^{*}$ $\iff$$(P(a)=P'(a)=\dots=P^{(m-1)}(a)\text{ et }P^{(m)}(a)\neq 0)$
$\to$ Récurrence

## 6. Polynômes de Tchebychev : en admettant l'existence d'une famille $(T_{n})$ de polynômes de degré $n$, de coefficient dominant $2^{n-1}$, à coefficients entiers et vérifiant $\forall\theta \in \mathbb{R},T_{n}(\cos\theta)=\cos(n\theta)$. Résoudre $T_{n}(x)=0$ sur $[-1,1]$ et en déduire les racines et une factorisation de $T_{n}$

## 7. Montrer que si $P$ et $Q$ sont deux polynômes de degré inférieur ou égal à $n$ qui coïncident en $n+1$ points distincts, alors $P=Q$

## 8.Soit (a0, . . . , an) ∈ Kn+1 des scalaires deux à deux distincts.
Montrer que pour tout i ∈ π0, n∫, il existe un unique polynôme Li ∈ Kn[X ] tel que :
pour tout j ∈ $\textlbrackdbl 0,n \textrbrackdbl$, Li (aj ) = δi, j .
On fixe également une famille (b0, . . . , bn) ∈ Kn+1.
En déduire l’existence d’un unique polynôme P de Kn[X ] vérifiant ∀i ∈ $\textlbrackdbl 0,n \textrbrackdbl$ P(ai ) = bi .