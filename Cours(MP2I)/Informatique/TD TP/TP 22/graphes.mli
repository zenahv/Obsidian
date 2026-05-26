type graphe

val creer : int -> graphe 
(* Entrée : entier n 
   crée et renvoie un graphe avec pour sommets les entiers de 0 à (n - 1), sans arcs *)

val taille : graphe -> int 
(* Entrée : graphe G
   nombre de sommets de G *)

val ajoute_arc : graphe -> int -> int -> unit
(* Entrée : G, u, v
   ajoute l'arc (u,v) à G, ne modifie rien si l'arc est déjà présent *)

val supprime_arc : graphe -> int -> int -> unit
(* Entrée : G, u, v
   retire l'arc (u,v) de G, ne modifie rien si l'arc n'y est pas *)

val ajoute_arete : graphe -> int -> int -> unit
(* Entrée : G, u, v
   ajoute l'arc (u,v) et l'arc (v, u) à G, ne modifie rien si les deux arcs sont déjà présent *)

val supprime_arete : graphe -> int -> int -> unit
(* Entrée : G, u, v
   retire l'arc (u,v) et l'arc (v, u) de G, ne modifie rien si les deux arcs sont déjà absents *)

val est_arc : graphe -> int -> int -> bool
(* Entrée : G, u, v
   Indique si (u, v) est un arc de G *)

val successeurs : graphe -> int -> int list
(* Entrée : G, u
   Liste des v tels que (u, v) est un arc de G *)

