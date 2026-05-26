type graphe = bool array array

let creer n = 
  Array.make_matrix n n false
(* Entrée : entier n 
   crée et renvoie un graphe avec pour sommets les entiers de 0 à (n - 1), sans arcs *)

let taille g =
  Array.length g
(* Entrée : graphe G
   nombre de sommets de G *)

let ajoute_arc g u v =
  g.(u).(v) <- true

(* Entrée : G, u, v
   ajoute l'arc (u,v) à G, ne modifie rien si l'arc est déjà présent : graphe -> int -> int -> unit *)

let supprime_arc g u v =
  g.(u).(v) <- false
(* Entrée : G, u, v
   retire l'arc (u,v) de G, ne modifie rien si l'arc n'y est pas : graphe -> int -> int -> unit*)

let est_arc g u v =
  g.(u).(v)
(* Entrée : G, u, v
   Indique si (u, v) est un arc de G : graphe -> int -> int -> bool *)

let successeurs g u =
  let rec aux l v = 
    if v < 0 then l
    else if g.(u).(v) then aux (v::l) (v-1) 
    else aux l (v-1)
  in aux [] (taille g -1)
(* Entrée : G, u
   Liste des v tels que (u, v) est un arc de G : graphe -> int -> int list*)

let arcs g =
  let rec aux u v =
    if u >= taille g then []
    else if v>= taille g then aux (u+1) 0
    else if g.(u).(v) then (u,v)::aux u (v+1)
    else aux u (v+1)
    in
  aux 0 0

(* Entrée : G

   Liste des arcs de G : graphe -> (int * int) list *)