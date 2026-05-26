---
tags:
  - Info
aliases:
  - Introdution
cssclasses:
---
## A - Un peu d'histoire
"ordinateur" => **ordonner** des données
début XIX => standardisation => infos tjrs format spécifique
1801 => métier à tisser Jacquard => programmables avec cartes preforées

ordinateur =
- reçoit données en entrée
- traite ces données selon des règles prédéfinies
- renvoie un résultat
- universel

1834: Abbage imagine machine analytique, jamais construite

1843: Lovelace 1er programme pour la machine analytique, seulement théorique

XX:
- Quelle est une bonne notion d'algorithme?
- Quels sont les problèmes qe l'on peut résoudre avec un algorithme (décidabilité)?

Algorithme: "Une suite finie non-ambigüe d'opérations ou d'instructions permettant de résoudre un problème"

(Knuth) :
- Entrées: des qtés qui lui sont données avant de commencer
- Sorties: des qtés ayant une relation spécifique avec les entrés
- finitude: un algorithme doit toujours se terminer après un nombre fini d'étapes
- définition précise: chaque étape doit être définie précisément et sans ambiguïté
- rendement: chaque op individuelle que l'alg doit acc doit être suff basique pour pouvoir être en principe réalisée dans une durée finie par un humain utilisant un papier et un crayon

1936 Turing: machines de Turing

Tt alg => MDT, MDT !=> alg

Turing montre existence machine universelle qui peut simuler tt les autres
- prend en entrée desc + données
- simule et renvoie le résultat de la machine

Turing + Church : preuve pas alg dét maths

Ordi = impl concrète MDT, si mem suff


## B - Archtecture d'un ordinateur

Arch Von Neumann
ALU = calculatrice
CU = décide proch act
Mem = suite de bits repr données + programmes
IO = interactions entre utilisateur et machine

RAM = accès facile et égal à n'imp quelle partie de la mem
stocke en octets, ou mots
Pas de sens prédef
Inerte, pas de calculs direct dessus
Direct: on peut accéder et écrire à une adresse directement (ptrs)

RAM rapide, mais volatile (plus courant = données perdues)
ROM rapide, mais conserve permanent (lire, pas écrire)
Mem de masse lent, mais permanent, et pas cher

Pdt programme, data intermédiaires => RAM
TOUT Programmes chargées dans la RAM
Si RAM pleine, parties non nécéssaires imm => MDM (swapping)

Registres (dizaine - centaine en fonction du CPU), 1 mot mem par reg
deux reg particuliers: PC (program counter), et IR (instruction register)

CU:
- récup instruction => IR
- PC++
- decoder instruction IR
- exec instruction

Instruction:
- OP AL
- accès mem
- branchement

