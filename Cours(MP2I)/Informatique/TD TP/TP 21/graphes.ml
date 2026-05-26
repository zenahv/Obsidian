type graphe = int list array

let creer n :graphe = 
  Array.make n [] 
(* Entrée : entier n 
   crée et renvoie un graphe avec pour sommets les entiers de 0 à (n - 1), sans arcs   int -> graphe *)

let taille (g:graphe) = 
  Array.length g
(* Entrée : graphe G
   nombre de sommets de G  graphe -> int  *)

let ajoute_arc (g:graphe) (u:int) (v:int) :unit =
  let rec aux list =
    match list with
    |[] -> [v]
    |x::q -> if x > v then v::list
             else if x = v then list
             else x::aux q
  in
  g.(u)<- aux g.(u)
    
  

(* Entrée : G, u, v
   ajoute l'arc (u,v) à G, ne modifie rien si l'arc est déjà présent graphe -> int -> int -> unit *)

let supprime_arc (g:graphe) u v =
  g.(u) <- List.filter (fun x -> v <> x) g.(u)

(* Entrée : G, u, v
   retire l'arc (u,v) de G, ne modifie rien si l'arc n'y est pas graphe -> int -> int -> unit*)

let est_arc (g:graphe) u v=
  List.mem v g.(u)                   (*vérifie si v est dans la liste g.(u)*)


(* Entrée : G, u, v
   Indique si (u, v) est un arc de G  graphe -> int -> int -> bool*)

let successeurs (g:graphe) u = 
  g.(u)
(* Entrée : G, u
   Liste des v tels que (u, v) est un arc de G graphe -> int -> int list*)

let arcs (g:graphe)=
  let tab_arcs = Array.mapi (fun u -> List.map (fun v -> (u, v))) g (*remplace la liste dans le tableau par une liste des couples u v qui existent*)
  in 
  Array.fold_right (@) tab_arcs [] (*concatène tout*)

  (* Entrée : G
   Liste des arcs de G  graphe -> (int * int) list*)