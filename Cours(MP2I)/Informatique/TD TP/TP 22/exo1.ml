open Graphes
type couleurs = Non_visite | En_cours | Visite
let g1 (* graphe non orienté connexe, avec un cycle *) =
  let temp = creer 8 in
  ajoute_arete temp 0 1;
  ajoute_arete temp 1 2;
  ajoute_arete temp 1 4;
  ajoute_arete temp 1 5;
  ajoute_arete temp 2 7;
  ajoute_arete temp 3 4;
  ajoute_arete temp 4 5;
  ajoute_arete temp 6 7;
  temp

let g2 (* graphe non orienté avec 4 composantes connexes et plusieurs cycles *) =
  let temp = creer 11 in
  ajoute_arete temp 0 1;
  ajoute_arete temp 1 3;
  ajoute_arete temp 2 5;
  ajoute_arete temp 4 6;  
  ajoute_arete temp 4 8;
  ajoute_arete temp 4 10;    
  ajoute_arete temp 6 7;
  ajoute_arete temp 6 8; 
  ajoute_arete temp 6 10;  
  ajoute_arete temp 7 8;
  ajoute_arete temp 7 10;
  temp

let g3 (* graphe orienté avec plusieurs cycles *)=
  let temp = creer 7 in
  ajoute_arc temp 1 0;
  ajoute_arc temp 1 2;
  ajoute_arc temp 2 0;
  ajoute_arc temp 2 3;
  ajoute_arc temp 3 0;
  ajoute_arc temp 3 4;
  ajoute_arc temp 3 5;
  ajoute_arc temp 4 5;
  ajoute_arc temp 4 6;
  ajoute_arc temp 6 2;
  ajoute_arc temp 5 4;
  temp

let g4 (* graphe orienté avec un unique cycle *)=
  let temp = creer 7 in
  ajoute_arc temp 0 6;
  ajoute_arc temp 1 0;
  ajoute_arc temp 1 2;
  ajoute_arc temp 2 0;
  ajoute_arc temp 2 3;
  ajoute_arc temp 3 0;
  ajoute_arc temp 3 4;
  ajoute_arc temp 3 5;
  ajoute_arc temp 4 5;
  ajoute_arc temp 4 6;
  ajoute_arc temp 6 0;
  temp
let g5 (* graphe orienté sans cycle *)=
  let temp = creer 7 in
  ajoute_arc temp 1 0;
  ajoute_arc temp 1 2;
  ajoute_arc temp 2 0;
  ajoute_arc temp 2 3;
  ajoute_arc temp 3 0;
  ajoute_arc temp 3 4;
  ajoute_arc temp 3 5;
  ajoute_arc temp 4 5;
  ajoute_arc temp 4 6;
  ajoute_arc temp 6 0;
  temp

let g6 (* graphe non orienté connexe sans cycle *) =
  let temp = creer 8 in
  ajoute_arete temp 0 1;
  ajoute_arete temp 1 2;
  ajoute_arete temp 1 4;
  ajoute_arete temp 1 5;
  ajoute_arete temp 2 7;
  ajoute_arete temp 3 4;
  ajoute_arete temp 6 7;
  temp

let g7 (* graphe non orienté avec 4 composantes connexes sans cycle *) =
  let temp = creer 11 in
  ajoute_arete temp 0 1;
  ajoute_arete temp 1 3;
  ajoute_arete temp 2 5; 
  ajoute_arete temp 4 8;
  ajoute_arete temp 4 10;    
  ajoute_arete temp 6 7;
  ajoute_arete temp 6 8;
  temp

let est_connexe(g : graphe) = 
  let is_connexe = Array.make (taille g) false in 
  let rec aux n =
    is_connexe.(n) <- true;
    let succ = successeurs g n in
    let rec aux_2 s =
      match s with 
      |[] -> ()
      |x::xs -> if not is_connexe.(x) then aux x; aux_2 xs
    in
    aux_2 succ
  in aux 0;
  not (Array.mem false is_connexe)

let composantes_connexes (g : graphe) = 
  let t = taille g in
  let a = Array.make t (-1) in
  let rec dfs i s =
    if a.(s) = -1 then 
      begin 
        a.(s) <- i;
        List.iter (dfs i) (successeurs g s)
    end
  in  
  for s = 0 to t-1 do
    dfs s s
  done;
  a



let c1 = est_connexe g1
let c2 = composantes_connexes g2

let contient_cycle g = 
  let n = taille g in
  let visites = Array.make (taille g) (Non_visite) in
  let rec dfs s = 
  match visites.(s) with
  | Visite -> false
  | En_cours -> true
  | Non_visite ->
    visites.(s) <- En_cours;
    if List.exists dfs (successeurs g s)
    then true
    else
      (visites.(s) <- Visite ; false )
  in 
  List.exists dfs (List.init n Fun.id)

let test_cycle g = 
  print_endline
    ("Le graphe orienté " ^ (if contient_cycle g then "contient au moins un cycle." else "est acyclique"))


let contient_cycle_non_orienté g =
  (*Voir correction sur cahier de prépa*)



let () =
  print_string "g3 : ";
  test_cycle g3;
