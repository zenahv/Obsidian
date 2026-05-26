type graphe = int list array

let creer n : graphe = 
  Array.make n []

let taille (g : graphe) = 
  Array.length g

let est_arc (g : graphe) u v =
  List.mem v g.(u)

let ajoute_arc (g : graphe) u v =
  let rec aux l = match l with
  (* calcule la liste identique à l, 
     avec v en plus, toujours dans l'ordre croissant*)
    | []   -> [v]
    | x::q -> if x > v      then v::l
              else if x = v then l
              else (* x < v *)   x :: aux q
  in
  g.(u) <- aux g.(u)

let supprime_arc (g : graphe) u v =
  let rec aux l = match l with
    | []   -> []
    | x::q -> if x > v      then l
              else if x = v then q
              else (* x < v *) x :: aux q
  in
  g.(u) <- aux g.(u)  

let successeurs (g : graphe) u = 
  g.(u)

let ajoute_arete g u v = (* pour des graphes non orientés *)
  if u <> v then 
    begin
      ajoute_arc g u v;
      ajoute_arc g v u
    end

let supprime_arete g u v = (* pour des graphes non orientés *)
  supprime_arc g u v;
  supprime_arc g v u

