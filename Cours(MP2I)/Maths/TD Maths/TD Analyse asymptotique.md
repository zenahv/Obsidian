---
tags:
  - TD_Math
---
Exercice 1
$\frac{1}{e^{n}}\ll \frac{1}{n^{2}\ln n}\ll \frac{1}{n^{2}} \ll \frac{\ln n}{n^{2}}\ll \frac{1}{n\ln n}\ll \frac{1}{n}\ll \frac{\ln n}{n}$

$\sqrt{ n }\ll \frac{n}{\ln n}\ll n\ll n \ln n\ll  \frac{n^{2}}{\ln n}\ll n^{2} \ll e^{ n } \ll n! \ll n^{n}$

Exercice 2
$(n^{2}+1)\sim n^{2} \cancel{ donc } \ln(n^{2}+1)\sim n^{2}$, les deux sont vrais mais le donc est faux !
(a)$\ln(n^{2}+1)=\ln\left( n^{2}\times\left[ 1+\frac{1}{n^{2}} \right] \right)$
$=\ln(n^{2})+\ln\left( 1+\frac{1}{n^{2}} \right)$
$=2\ln(n)+o(\ln n)$ (grossier mais assez pour conclure)
$\sim{2}\ln n$
Pour être précis, on fait
$=2\ln n+\frac{1}{n^{2}}+o\left( \frac{1}{n^{2}} \right)$


$C_{n}\sim \frac{n^{5}}{n^{3}}\sim n^{2}$

$F_{n}=\frac{1}{n-1}- \frac{1}{n+1}=\frac{\frac{2}{(n+1)(n-1)}\sim_{2}}{n^{2}}$
$\sqrt{ n-1 }-\sqrt{ n+1 }=\frac{(n+1)(n-1)}{\sqrt{ n+1 }-\sqrt{ n-1 }}=\frac{2}{\sqrt{ n }+o(\sqrt{ n })+\sqrt{ n }+o(\sqrt{ n })}$
$=\frac{2}{2\sqrt{ n }+o(\sqrt{ n })}\sim \frac{1}{\sqrt{ n }}$

$I_{n}=\sin\left( \frac{1}{\sqrt{ n+1 }} \right)\underset{ 0 }{ \sim } \frac{1}{\sqrt{ n+1 }}\sim \frac{1}{\sqrt{ n}}$

$J_{n}=\ln\left( \sin\left( \frac{1}{n} \right) \right)=\ln,$ or, $\sin \left( \frac{1}{n} \right)\underset{ n\to +\infty }{ \sim } \frac{1}{n}$
$\sin\left( \frac{1}{n} \right)=\frac{1}{n}+ o\left( \frac{1}{n} \right)$ donc $\ln\left( \sin\left( \frac{1}{n} \right) \right)=\ln\left( \frac{1}{n} +o \left( \frac{1}{n} \right)\right)$
$o\left( \frac{1}{n} \right)=\frac{1}{n}\times o(1)$
$=\ln\left( \frac{1}{n} \times[1+o(1)]\right)=\ln\left( \frac{1}{n} \right)+\ln (1+o(1))$
$=-\ln n+o(1)$ donc $\ln\left( \sin\left( \frac{1}{n} \right) \right)\sim-\ln$

$K_{n}=\left( 1-\cos\left( \frac{1}{n} \right) \right)\sim \frac{1}{2}\times\left( \frac{1}{n} \right)^{2}=\frac{1}{2n^{2}}$

$L_{n}= \frac{\ln(n+1)-\ln(n)}{\sqrt{ n+1 }-\sqrt{ n }}=\frac{\ln\left( 1+\frac{1}{n} \right)}{\frac{1}{\sqrt{ n+1 }+\sqrt{ n }}}\sim \frac{\frac{1}{n}}{\frac{1}{2\sqrt{ n }}}\sim \frac{2}{\sqrt{ n }}$

Exercice 3
$a_{n}=n\sqrt{ \ln\left( 1+ \frac{1}{n^{2}+1} \right) }$
comme $\ln(1+u_{n}) \sim u_{n}$ quand $u_{n}\to 0$
donc $\sqrt{ \ln\left( 1+ \frac{1}{n^{2}+1} \right) }\sim \frac{1}{\sqrt{ n^{2}+1 }}\sim \frac{1}{n}$
donc $a_{n}\sim 1$
donc $a_{1} \to 1$

$b_{n}=\left( 1+\sin\left( \frac{1}{n} \right) \right)^{n}=e^{ n\ln(1+\sin(1/n)) }$
$\ln\left( 1+\sin\left( \frac{1}{n} \right) \right)\sim \sin\left( \frac{1}{n} \right)\sim \frac{1}{n}$
donc $n\ln\left( 1+\sin\left( \frac{1}{n} \right) \right)\sim {1}$ donc $b_{n}\to e$

$c_{n}=n\sin \frac{1}{n}$ comme $\frac{1}{n}\to {0}$ alors $c_{n}\sim n \frac{1}{n}\sim 1$

$d_{n}=n^{2}((n+1)^{1/n}-n^{1/n})=n^{2}\left( 1-\left( \frac{n}{n+1} \right)^{1/n} \right)(n+1)^{1/n}$
$1-\left( \frac{n}{n+1} \right)=1-e^{\frac{\ln(n/n+1)}{n}}\sim \frac{\ln\left( \frac{n+1}{n} \right)}{n}\sim \frac{\frac{1}{n}}{n}\sim \frac{1}{n^{2}}$

$(n+1)^{1/n}=e^{(\ln(n+1))/n}=e^{\frac{\ln(n)+\ln(1+1/n)}{n}}=e^{\ln(n)/n}\times e^{\ln(1+n)/n}\to 1$
donc $(n+1)^{1/n}\sim 1$ Ainsi $d_{n}\sim 1$

Exercice 7
$$
I_{n}=\int_{n^{2}}^{n^{3}}  \, \frac{dt}{1+t^{2}}\sim \frac{1}{n^{2}}
$$
$I_{n}=[\arctan]^{n^{3}}_{n^{2}}=\arctan(n^{3})-\arctan(n^{2})$
$=\frac{\pi}{2}-\arctan\left( \frac{1}{n^{3}} \right)-\frac{\pi}{2}+\arctan\left( \frac{1}{n^{2}} \right)$ , or $\arctan\left( \frac{1}{n^{2}} \right)=\frac{1}{n^{2}}+o\left( \frac{1}{n^{2}} \right)$ (idem pour $n^{3}$)
donc $I_{n}=\frac{1}{n^{2}}\underbrace{ -\frac{1}{n^{3}} }_{ o\left( \frac{1}{n^{2}} \right) }+o\left( \frac{1}{n^{2}} \right)+\underbrace{ o\left( \frac{1}{n^{3}} \right) }_{ o\left( \frac{1}{n^{2}} \right) }=\frac{1}{n^{2}}+o\left( \frac{1}{n^{2}} \right)$
donc $I_{n}\sim \frac{1}{n^{2}}$
