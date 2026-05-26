---
tags:
  - TD_Math
---
## Exercice 9
1) VRAI
$\frac{f(x)}{g(x)} \underset{ x \to a }{ \to } 1> 0$ donc au voisinage de $a$ $f(x)$ et $g(x)$ sont de même signe

2) FAUX

3) VRAI
Si $\frac{f}{g} \to 1$ alors $\sqrt{ \frac{f}{g} } \to 1$ donc $\frac{\sqrt{ f }}{\sqrt{ g }}\to 1$

4) FAUX

## Exercice 10

1) Vrai et pertinent

2) Vrai mais $1 \underset{ x \to 0 }{ \sim } 1+x$ donc pas pertinent 

3) Vrai et pertinente 

4) Vrai mais inutile comme 2)

5) Faux

Le + pertinent : $e^{ x }\underset{ 0 }{ = }1+x+o(x)$

## Exercice 11

1) 
Si $f\underset{ a }{ \sim }g$ et $\ell=\lim\limits_{ 0 }g$ avec $\ell\neq{1}$

Alors $\frac{f}{g}\underset{ a }{ \to }{1}$ 
$\ln\left( \frac{f}{g} \right)\to 0$
$\ln(f)-\ln(g)\to 0$ donc $\ln(f) \underset{ a }{ \cancel{ \sim } } \ln(g)$
On sait que $\ln f=\ln\left( \frac{f}{g} \times g\right)=\ln\left( \frac{f}{g} \right)+\ln(g)$
donc $\frac{\ln(f)}{\ln(g)}=1+ \frac{\ln(f/g)}{\ln(g)}$ 
$\ell\neq1$ donc $\ln(g(x))\underset{ x\to a }{ \cancel{ \to } }0$
Ainsi $\lim\limits_{ x \to a }\frac{\ln(f(x)/g(x))}{\ln(g(x))}=0$
on  $\frac{\ln(f(x))}{\ln(g(x))}\underset{ x \to a }{ \to } 1$

Contre-exemple avec $\ell=1$
$\ln(1+x)\underset{ x \to 0 }{ \sim  }x$


#### Parenthèse 
Comment justifier $\ln(x+1)\underset{ x \to + \infty }{ \sim } \ln x$
Car $\ln(x+1)=\ln(x \times (1+ 1/x))$
$=\ln x+\ln(1 + 1/x)$
donc $\frac{\ln(x+1)}{\ln x}=1+ \frac{\ln(1+1/x)}{\ln x}\underset{ x \to +\infty }{ \to }1$

2) 
$e^{ f }\underset{ a }{ \sim } e^{ g }\iff \frac{e^{ f }}{e^{ g }} \underset{ a }{ \to } 1$
$\iff e^{ f-g }\underset{ a }{ \to } 1$
$\iff f-g \underset{ a }{ \to } 0$
$\iff f-g \underset{ a }{ = } o(1)$
$\iff f \underset{ a }{ = } g +o(1)$

## Exercice 29

$f(x)=\left( 1- \frac{1}{\sqrt{ x }} \right)^{x}$

$f(x)=e^{ x\ln(1- 1/\sqrt{ x }) }$
$u(x)=-\frac{1}{\sqrt{ x }}\underset{ x \to + \infty }{ \to } 0$
$\ln(1+u)\underset{ u \to 0 }{ = }u+o(u)$ 
donc $\ln\left( 1-\frac{1}{\sqrt{ x }} \right) \underset{ x \to +\infty }{ = } -\frac{1}{\sqrt{ x }}+o\left( \frac{1}{\sqrt{ x }} \right)$
donc $x\ln\left( 1-\frac{1}{\sqrt{ x }} \right)=-\sqrt{ x }+o(\sqrt{ x }) \underset{ x \to +\infty }{ \sim }-\sqrt{ x }$
ce qui tend vers $-\infty$ quand $x \to +\infty$
à ce stade on sait que $\lim\limits_{ x \to \infty }-\sqrt{ x }=-\infty$ 
donc $\lim\limits_{ x \to \infty }x\ln\left( 1-\frac{1}{\sqrt{ x }} \right)= -\infty$
donc $\lim\limits_{ x \to \infty }f(x)=0$

$\frac{f(x)}{e^{ -\sqrt{ x } }}=e^{ x\ln(1-\text{ }1/\sqrt{ x }) +\sqrt{ x }}$
$=e^{ -\sqrt{ x } +o(\sqrt{ x })+\sqrt{ x }}$
$=e^{ o(\sqrt{ x }) }$
Trop flou ! 

on améliore le $DL$ du $\ln$
$\ln (1+u)\underset{ u \to 0 }{ = }u- \frac{u^{2}}{2}+o(u^{2})$
$Ainsi$ 
$\ln\left( 1 - \frac{1}{\sqrt{ x }} \right) \underset{ x \to + \infty }{ = } -\frac{1}{\sqrt{ x }} - \frac{1}{2}\left( -\frac{1}{\sqrt{ x }} \right)^{2}+o\left( \frac{1}{x} \right)$
$x\ln\left( 1-\frac{1}{\sqrt{ x }} \right)\underset{ +\infty }{ = }-\sqrt{ x }-\frac{1}{2}+o(1)$
donc $f(x) \underset{ +\infty }{ = } \exp\left( -\sqrt{ x }-\frac{1}{2} +o(1) \right)$
$\underset{ +\infty }{ = } e^{ -\sqrt{ x } } \times e^{ -1/2 }\times e^{ o(1) }$
or $e^{ o(1) } \underset{ x \to +\infty }{ \to } 1$
Bilan $f(x) \underset{ x \to +\infty }{ \sim } e^{ -\sqrt{ x } }\times e^{ -1/2 }$

## Exercice 17

Donner un équivalent en 0 de $f(x)=\sqrt{ 1+2x }-\cos x-\sin x$
lim : $0$ quand $x \to 0$

Rappel : $\sqrt{ 1-u } \underset{ u \to 0 }{ = } 1 + \frac{1}{2}u +\frac{1/2(1/2 -1)}{2!}u^{2}+o(u^{2})$
$\underset{ u \to 0 }{ = } 1+\frac{1}{2}u - \frac{1}{8}u^{2}+o(u^{2})$
Donc $\sqrt{ 1+2x } \underset{ x \to 0 }{ = } 1 + \frac{1}{2}(2x)-\frac{1}{8}(2x)^{2}+o(x^{2})$
$=1+x- \frac{x^{2}}{2}+o(x^{2})$
à ce stade, 
$\sqrt{ 1+2x }-\sin x-\cos x$
$=0+0x+0x^{2}+o(x^{2})$

Bilan 
$\sqrt{ 1+2x }-\sin x-\cos x$
$\underset{ 0 }{ = }\frac{1}{2}x^{3}+o(x^{3})-\left( -\frac{x^{3}}{6} +o(x^{3})\right)$
$= \underbrace{ \frac{2}{3}x^{3} }_{ \text{ouf !} }+o(x^{3})$


## Exercice 16

$DL_{3}(0)$ de $\arctan(e^{ x })$
$\arctan(e^{ x })=\frac{\pi}{4}+\frac{x}{2}-\frac{x^{3}}{12}+o(x^{3})$
$f(x)=\arctan(e^{ x })$
$f'(x)=\frac{e^{ x }}{1+(e^{ x })^{2}}= \frac{e^{ x }}{1+e^{ 2x }}=e^{ x }\times \frac{1}{\lambda \times(1+u(x))}$
Il suffit de trouver $DL_{2}(0)$ pour $f$ !
$e^{ x } \underset{ 0 }{ = } 1+x+ \frac{x^{2}}{2}+o(x^{2})$
$e^{ 2x } \underset{ 0 }{ = } 1+2x+2x^{2}+o(x^{2})$
$\frac{1}{1+e^{ 2x }}= \frac{1}{2+2x+2x^{2}+o(x^{2})}$
$=\frac{1}{2}\times \frac{1}{1+x+x^{2}+o(x^{2})}$
$=\frac{1}{2}\times[1-u(x)+u^{2}(x)+o(u(x)^{2})]$
$=\frac{1}{2}(1-(x+x^{2})+x^{2}+o(x^{2}))$
$=\frac{1}{2}(1-x+o(x^{2}))$
$f'(x)=\left( 1+x+ \frac{x^{2}}{2}+o(x^{2}) \right)\times \frac{1}{2}(1-x+o(x^{2}))$
$\frac{1}{2}\left( 1-\frac{1}{2}x^{2}+o(x^{2}) \right)$
$=\frac{1}{2}-\frac{1}{4}x^{2}+o(x^{2})$
On primitive le $DL$
$f(x) \underset{ x \to 0 }{ = } f(0) + \frac{x}{2} -\frac{1}{12}x^{3}+o(x^{3})$
$=\arctan(1)$
$=\frac{\pi}{4}$

## Exercice 21 

1) 
Déterminer un développement limité au voisinage de 0 à l’ordre 5 de $\frac{\sin(x^{2})}{x}$
$\frac{\sin(x^{2})}{x}$ à précision $o(x^{5})$
$\sin(x^{2})$ à précision $o(x^{6})$
$\sin(u)$ à précision $o(u^{3})$

$\sin(u) = u - \frac{u^{3}}{3} + o(u^{3})$
avec $u(x) = x^{2} \underset{ x \to 0 }{ \to } 0$
$\sin(x^{2}) = x^{2} - \frac{x^{6}}{6} + o(x^{6})$
donc $\frac{\sin(x^{2})}{x} = x - \frac{x^{5}}{6} + o(x^{5})$

2) 
$DL$ à l'ordre 7 de $\sin ^{5}$
$(\sin(x))^{5} \underset{ 0 }{ \sim } x^{5}$
$\left( \frac{\sin x}{x} \right)^{5}\underset{ 0 }{ \sim  }1$
Pour avoir $(\sin x)^{5}$ à l'ordre 7
il faut $\frac{(\sin x)^{5}}{x^{5}}$ à l'ordre 2
donc $\left( \frac{\sin x}{x} \right)^{5}$ à l'ordre 2
donc $\frac{\sin x}{x}$ à l'ordre 2
donc $\sin x$ à l'ordre 3
or $\sin x \underset{ 0 }{ = } x -\frac{x^{3}}{6} +o(x^{3})$
$\underset{ 0 }{ = }x \times\left[ 1- \frac{x^{2}}{6} +o(x^{2}) \right]$
$(\sin x)^{5} \underset{ 0 }{ = } x^{5} \times (1- \frac{x^{2}}{6} + o(x^{2}))^{5}$
$=x^{5} \times\left( 1-\frac{5}{6}x^{2}+o(x^{2}) \right)$
$\underset{ 0 }{ = } x^{5} - \frac{5}{6}x^{7} + o(x^{7})$


#### Parenthèse 
$(\sin x)^{5}=x^{5}\times[DL_{2}]$


## Exercice 18

a)
$e^{ \cos x }\underset{ x \to 0 }{ = }\exp\left[ 1 - \frac{x^{2}}{2} + \frac{x^{4}}{4!} + o(x^{4})\right]$
$=e^{1}\times e^{u(x)}$ avec $u(x)= -\frac{x^{2}}{2}+ \frac{x^{4}}{4!}+o(x^{4})$
$u(x) \underset{ 0 }{ \to } 0$
$u(x) \underset{ 0 }{ \sim } -\frac{x^{2}}{2}$
$(u(x))^{2} \underset{ 0 }{ \sim } \frac{x^{4}}{4}$
Donc un $o(u(x)^{2})$ devient un $o(x^{4})$
or, $e^{ u } \underset{ x\to 0 }{ = } 1 + u + \frac{u^{2}}{2} + o(u^{2})$

Bilan : 
$e^{ \cos(x) } = e \times \left(1+( -\frac{x^{2}}{2}+\frac{x^{4}}{4!})+\frac{1}{2}( -\frac{x^{2}}{2} )^{2}+o(x^{4}) \right)$
$=e\times\left( 1- \frac{x^{2}}{2} +\frac{1}{6}x^{4} +o(x^{4}) \right)$

c)
$\frac{1}{\sin x}-\frac{1}{x} = \frac{x-\sin x}{x\sin(x)}$
$=\underbrace{ (x-\sin x) }_{ x^{3}\times[\dots] } \times \dfrac{1}{x^{2} \times[\dots]}$
$=x \times\underbrace{ [\dots] }_{ DL_{2} }\times \dfrac{1}{\underbrace{ [\dots] }_{ DL_{2} }}$
$\sin x=x - \frac{x^{3}}{6} +\frac{x^{5}}{5!} +o(x^{5})$
$x-\sin x=\frac{x^{3}}{6} -\frac{x^{5}}{5!} +o(x^{5})$
$=x^{3}\left( \frac{1}{6}-\frac{x^{2}}{5} +o(x^{2}) \right)$
$x\sin x=x^{2}\times\left[ 1-\frac{x^{2}}{6}+o(x^{2}) \right]$
or $\dfrac{1}{1- \frac{x^{2}}{6}+o(x^{2})}=1+ \frac{x^{2}}{6}+o(x^{2})$
$\frac{1}{\sin x}-\frac{1}{x} = x \times\left(\left(  \frac{1}{6}- \frac{x^{2}}{5} +o(x^{2})  \right)\times\left( 1+\frac{x^{2}}{6}+o(x^{2}) \right)\right)$

$=x\left( \frac{1}{6} + \left( \frac{1}{36} - \frac{1}{5!} \right)x^{2} +o(x^{2}) \right)$

$\left( \frac{1}{\sin x} -\frac{1}{x}\right) \underset{ 0 }{ = } \frac{x}{6} + (\frac{1}{36}-\frac{1}{5!})x^{3}+o(x^{3})$


g)

i)


$\frac{\sin(x)-x}{\cos(x)-1}$ $DL_{2}(0)$

$\sin 0 \underset{ 0 }{ \sim  }0$
$\cos 0 \underset{ 0 }{ \sim } 1$
on sait que le $DL$ de cos est $1 + \frac{x^{2}}{2}+o(x^{2})$
et que le $DL$ de $\sin$ est $x + \frac{x^{3}}{3!} o(x^{2})$
$(\sin x - x) \underset{ 0 }{ \sim } -\frac{1}{6}x^{3}$
et $(\cos x-1) \underset{ 0 }{ \sim } -\frac{1}{2} x^{2}$
donc $f(x)\underset{ 0 }{ \sim } \frac{1}{3}x$
donc $f(x)\underset{ 0 }{ = }\frac{1}{3}+o(x)$ $DL_{1}(0)$
Or $f(-x) = \frac{\sin (-x)+x}{\cos(-x)-1}=f(-x)$ donc $f$ est impaire
donc $f(x)= \frac{1}{3}x+0x^{2}+o(x^{2})$

$\underline{\text{On veut un }DL_{3}(0)}$
$\cos x-1 \underset{ 0 }{ =  }-\frac{1}{2}x^{2}+\frac{x^{4}}{4!}+o(x^{4})$
$= x^{2} \times (-\frac{1}{2}+ \frac{1}{4!}x^{2}+o(x^{2}))$
$\frac{1}{\cos x-1}= \frac{1}{x^{2}}\times \frac{1}{\left( -\frac{1}{2} \right)}\times \frac{1}{1-\frac{1}{12}x^{2}+o(x^{2})}$
$=- \frac{2}{x^{2}}\times \left[ 1+ \frac{1}{12}x^{2} +o(x^{2}) \right]$
De même, $\sin x-x=-\frac{x^{3}}{6}\left[ 1- \underbrace{ \frac{x^{2}}{20} }_{ * } +o(x^{2}) \right]$
$*$ terme nécessaire car avec terme en $x^{3}$ en facteur, on a un terme en $x^{2}$, nécessaire pour l'ordre 2
Ainsi $f(x)=-x^{3}\times -\frac{2}{x^{2}}\times\left[ 1+ \underbrace{ \left( -\frac{1}{20} +\frac{1}{12} \right) }_{ \frac{1}{30} }x^{2} + o (x^{2}) \right]$
$=\frac{x}{3}+\frac{1}{30}x^{3}+o(x^{3})$ 
