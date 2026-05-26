---
tags:
  - TD_Physique
---

# Exercice 1
1 - 
En régime permanent,
bobine $\iff$ fil donc $u_{L}(\infty)=0$
Condensateur $\iff$ interrupteur ouvert 
Donc $i(\infty)=0$  Donc $u_{R}(\infty)=0$
D'après la loi des mailles : $u_{c}(\infty)+u_{L}(\infty)+u_{R}(\infty)=E$ 
Donc $u_{c}(\infty)=E$

2 - 
D'après la loi des mailles :
$u_{c}(t)+u_{L}(t)+u_{R}(t)=E$
Or, $u_{R}=R\times i$ d'après la loi d'Ohm et $i=C \frac{du_{c}}{dt}$
et $u_{L}=L \frac{di(t)}{dt}=LC \frac{d^{2}u_{c}}{dt^{2}}$
On rassemble et on trouve $LC \frac{d^{2}u_{c}}{dt^{2}}+RC \frac{du_{c}}{dt}+u_{c}=E$
On normalise et on trouve : $\frac{d^{2}u_{c}}{dt^{2}}+\frac{R}{L} \frac{du_{c}}{dt}+\frac{u_{c}}{LC}=\frac{E}{LC}$ 
Comme un oscillateur amorti est de la forme $\ddot{X}+\frac{\omega_{0}}{Q}\dot{X}+\omega_{0}^{2}X=\omega_{0}^{2}X_{eq}$
alors $\omega_{0}=\frac{1}{\sqrt{ LC }}, Q=\frac{1}{R}\sqrt{ \frac{L}{C} }$ et $u_{c}(\infty)=E$

3 - 
Le condensateur est initialement déchargé :
à l$t=0^{-},u_{c}(0^{-})=0$
Par continuité de $u_c$ aux bornes du condensateur,
$u_{c}(0^{+})=u_{c}(0^{-})=0$
Initialement , l'interrupteur est ouvert. Donc $i(0^{-})=0$
Par continuité de l'intensité à travers la bobine $i(0^{+})=i(0^{-})=0$
Or, $i(t)=C \frac{du_{c}}{dt}\iff \frac{du_{c}}{dt}=\frac{1}{C}i(t)$ et $i(0)=0$
Donc $\frac{du_{c}(0)}{dt}=\frac{i(0)}{C}=0$

4 -
$Q=0,1 < \frac{1}{2}\implies$ régime apériodique 
$\omega_{0}=10^{4}rad.s ^{-1}$

5 -
Solution de la forme : 
$u_{c}(t)=Ae^{r_{1}t}+Be^{r_{2}t}+E$
- Conditions initiales : 
à $t=0,u_{c}(0)=0\implies A+B+E=0$
à $t=0, \frac{du_{c}}{dt}(0)=0$
$\frac{du_{c}}{dt}=r_{1}Ae^{ r_{1}t }+r_{2}Be^{ r_{2}t }$
Donc $r_{1}A+r_{2}B=0$
Donc $\begin{cases}A+B=-E \\ r_{1}A+r_{2}B=0\end{cases}$
$\iff \begin{cases}A= \frac{r_{2}}{r_{1}-r_{2}}E \\ B=\frac{r_{2}}{r_{2}-r_{1}}E\end{cases}$


Avec $r_{1}=- \frac{\omega_{0}}{2}\left( \frac{1}{Q} - \sqrt{  \frac{1}{Q^{2}}-4 } \right)$ et $r_{2}=- \frac{\omega_{0}}{2}\left( \frac{1}{Q} + \sqrt{  \frac{1}{Q^{2}}-4 } \right)$ $\to$ admis enft

6 -
Voir correction
7 -
$Q=1> \frac{1}{2} \implies$ Régime pseudo-périodique 
$\omega_{0}+10^{6}rad.s ^{-1}$

8 - 
Solution de la forme : $u_{c}(t)=[A\cos(\Omega t)+B\sin(\Omega t)]\exp(-\alpha t)+E$
avec $\Omega=\omega_{0}\sqrt{ 1- \frac{1}{4Q^{2}} }$

- Conditions initiales 
à $t=0$ $u_{c}(0)=0\iff A=-E$
à $t=0, \frac{du_{c}}{dt}(0)=0$
$du_{c}=-\alpha[A\cos(\Omega t)+B\sin(\Omega t)]e^{ -\alpha t }+\Omega[-A\sin(\Omega t)+B\cos(\Omega t)]e^{ -\alpha t }$
Donc $\frac{du_{c}}{dt}(0)=0=-\alpha A+\Omega B$
donc $D=- \frac{\alpha E}{\Omega}$
 la masse volumique $\rho=$

9-
Voir correction 

# Exercice 2 

1 - 
Loi des mailles : $u_{R}(t)=u_{L}(t)=u_{C}(t)$
Loi des nœuds : $i_{R}(t)+i_{L}(t)+i_{C}(t)=0$
Loi d'Ohm : $u_{R}(t)=R\times i_{R}(t)$
Relation constitutionelle condensateur : $i_{c}(t)=C \frac{du_{c}(t)}{dt}$
Relation constitutionelle bobine $u_{L}=L \frac{di_{L}(t)}{dt}$
[Voir correction](https://cahier-de-prepa.fr/mp2i-janson/docs?rep=912) 

## Exercice 15

1 -  
Système : $\{\text{châssis du véhicule}\}$ assimilé à un point matériel de masse M
Référentiel Terrestre supposé galiléen

Bilan des forces :
- Poids $\vec{P}=M\vec{g}=-Mg\vec{u}_{z}$
- Les forces de rappel identiques
	$\vec{F}=-k(L-L_{0})\vec{u_{z}}$
- Les forces de frottement fluide identiques :
	$\vec{f}=-\lambda\vec{v}=-\lambda \dot{z} \vec{u_{z}}$

à l'équilibre : $M \vec{g}+4 \vec{F}=\vec{0}$
En projetant selon $\vec{u_{z}}$
$-Mg-4k(L_{e}-L_{0})=0$
$\iff L_{e}=L_{0}- \frac{Mg}{4k}$
Or, $z=L+R$
Donc $z_{e}=L_{0}- \frac{Mg}{4k}+k$

2 -
D'après la RFD, $\sum\limits_{}^{}\vec{F}_{ext}=m \vec{a}$
Soit $M \vec{g}+4 \vec{F}+4 \vec{f}=m \vec{a}$
En projetant selon $\vec{u}_{z}$,
$-Mg-4k(z_-k-L_{0})-4\lambda \dot{z}=M \ddot{z}$
$\iff \ddot{z}+ \frac{4\lambda}{M}\dot{z}+\frac{4k}{M}z=-g+\frac{4k}{M}(R+L_{0})$
Forme canonique : 
$\ddot{z}+\frac{\omega_{0}}{Q}\dot{z}+\omega_{0}^{2}z=\omega_{0}^{2}z_{e}$
En posant $\omega_{0}=2\sqrt{ \frac{k}{M} }$
$Q= \frac{\sqrt{ kM }}{2\lambda}$
$z_{e}=L_{0} - \frac{Mg}{4k} + k$

3 - 
Le retour à l'équilibre correspond au régime critique.
$\Delta=\frac{\omega_{0}^{2}}{Q^{2}}-4\omega_{0}^{2}=0$
$Q=\frac{1}{2}$
Soit $\frac{\sqrt{ kM }}{2\lambda}=\frac{1}{2}\iff\lambda=\sqrt{ kM }$

4 -
$r=-\omega_{0}$
Conditions initiales : 
à $t=0,z(0)=z_{e}-h$
$\dot{z}(0)=0$
Solution : 
$z(t)=z_{e}+(A+Bt)e^{ -\omega_{0}t }$
D'après les Conditions initiales $z(0)=z_{e}-h$
donc $z_{e}+A=z_{e}-h$ donc $A=h$
de plus $\dot{z}(t)=h\omega_{0}e^{ -\omega_{0}t }+Be^{ -\omega_{0}t }-\omega_{0}Bte^{ -\omega_{0}t }$
donc $\dot{z}(0)=0=h\omega_{0}+B$ donc $B=-\omega_{0}h$
donc $z(t)=-h(1+\omega_{0}t)e^{ -\omega_{0}t }+z_{e}$

# Exercice 16

1 -
D'après la RFD : 
$\sum\limits_{}^{}\vec{F}_{ext}=m \vec{a}$
Bilan des forces :
Poids $\vec{P}:mg \vec{u}_{z}$
Frottements $\vec{f}:-6\pi \eta r \vec{v}$
Rappel du ressort $\vec{R}:-k(z-L_{0}) \vec{u_{z}}$
$ma=-6\pi \eta r \vec{v}+mg \vec{u_{z}}-kz=m \vec{a}$
En projetant par rapport à $\vec{u_{z}}$:
$m \ddot{z}+6\pi \eta r \dot{z}+kz-mg=0$
$\iff \ddot{z}+\frac{ 6\pi \eta r}{m}\dot{z}+\frac{k}{m}z=g$
$\omega_{0}=\sqrt{ \frac{k}{m} }$
$\frac{\omega_{0}}{Q}=\frac{6\pi \eta r}{m}$
Oscillations $\implies$ régime pseudo-périodique 
Donc $\Delta=\omega_{0}^{2}\left( \frac{1}{Q^{2}}-4 \right)$
$=\left( \frac{6\pi \eta r}{m} \right)^{2}- \frac{4k}{m} <0$
$\omega_{p}=\Omega=\frac{\omega_{0}}{2}\sqrt{ 4- \frac{1}{Q^{2}} }$
$\omega_{p}$ pseudo périodique 
Pseudo-période 
$T_{p}=\frac{2\pi}{\omega p}=\frac{4\pi}{\sqrt{ \frac{4k}{m} - \left( \frac{6\pi \eta r}{m} \right)^{2} }}$
$T_{p}= \frac{2\pi m}{\sqrt{ km-(3\pi \eta r)^{2} }}$

2 - 
Si les frottements sont négligeables, on a un oscillateur harmonique.
$T_{0}=2\pi \sqrt{ \frac{m}{k} }$
$\omega_{p}^{2}=\Omega^{2}=\omega_{0}^{2}- \frac{\omega_{0}^{2}}{4Q^{2}}$
$\frac{4\pi^{2}}{T^{2}}= \frac{4\pi^{2}}{T_{0}^{2}}- \frac{9\pi^{2}\eta^{2}r^{2}}{m^{2}}$
$\eta=?$
Après calculs 
$\eta=\frac{2m}{3r}\sqrt{ \frac{1}{T_{0}^{2}}-\frac{1}{T^{2}} }$

# Exercice 21

1 -
Bilan des forces : 
Poids $\vec{P}=m \vec{g}$
Poussée d'Archimède $\vec{\Pi}=-\rho_{e}V \vec{g}$
avec $V=\frac{4}{3}\pi r^{3}$
Rappel du ressort $\vec{R} = -k(z-\ell_{0}) \vec{u_{z}}$
Frottements $\vec{f}=-6\pi \eta r \vec{v}$
On cherche $\ell_{e}$
$\sum\limits_{}^{}\vec{F}_{ext}=\vec{0}$
à l'équilibre, $\vec{f}=\vec{0}$
En projetant selon $(Oz)$ vers le bas :
$mg-\frac{4}{3}\pi r^{3}\rho_{e}g+k(z_{eq}-\ell_{0})=\vec{0}$
$\iff mg-\frac{4}{3}\pi r^{3} \rho_{e} g + k z_{eq}-k \ell_{0}=0$
$\iff z_{eq}=-\frac{mg}{k}+ \frac{4\pi r^{3}\rho_{e}g}{3k}+\ell_{0}$

2 - 
$X=x-x_{eq}$
D'après la RFD :
$\sum\limits_{}^{}\vec{F}_{ext}=m \vec{a}$
En projetant selon l'axe $(Ox)$
$m \ddot{x}=mg-\frac{4}{3}\pi r^{3}\rho_{e}g-k(z-\ell_{0})-6\pi \eta r \vec{v}$
$\iff \ddot{x}+\frac{6\pi \eta r}{m}\dot{z}+\frac{k}{m}z=g- \frac{6\pi \rho_{e}g}{m}$
$\iff \ddot{x}+\frac{\omega_{0}}{Q} \dot{x}+ \omega_{0}^{2}x=\omega_{0}^{2}x_{eq}$
avec $\omega_{0}=\sqrt{ \frac{k}{m} }$, $Q= \frac{\sqrt{ km }}{6\pi \eta r}$
et $z_{e}=\frac{gm}{k}-\frac{4\pi \rho_{e}g}{k}$


[Voir correction](https://cahier-de-prepa.fr/mp2i-janson/docs?rep=912)

5 - Par lecture graphique, les conditions initiales sont 
$\begin{cases}X(0)=X_{0}=5cm \\ \dot{X}(0)=0\text{ }m.s^{-1}\end{cases}$ 
$X(0)=X_{0}=A$
$\dot{X}(t)=(-\Omega A\sin(\Omega t)+\Omega B\cos(\Omega t))e^{ -t/\tau }-\frac{1}{\tau}(A\cos(\Omega t)+B\sin(\Omega t))e^{ -t/\tau }$
donc $\dot{X}(0)=0$
$\iff \Omega B-\frac{A}{\tau}=0$
$\iff B=\frac{A}{\Omega \tau}$
$X(t)=X_{0}\left[ \cos(\Omega t)+\frac{1}{\Omega \tau}\sin(\Omega \tau) \right]e^{ -t/\tau }$

6 - 
$\delta=\frac{\omega_{0}T}{2Q}$
or $T=\frac{2\pi}{\omega_{0}\sqrt{ 1-\frac{1}{4Q^{2}} }}$
donc $\delta=\frac{\omega_{0}}{2Q}\times \frac{2\pi}{\omega_{0}\sqrt{ 1-\frac{1}{4Q^{2}} }}$

7 - 
Graphiquement, on détermine $X(t+T)\text{ et }X(t)$
$X(0+T)=2,5cm$
$X(0)=5cm$
donc $\delta=\ln\left( \frac{5}{2,5}\simeq 0,6cm \right)$
[Voir correction](https://cahier-de-prepa.fr/mp2i-janson/docs?rep=912)
