(* tableau des valeurs de u_k pour 0 <= k < 30000*)  
let tab_u = 
  let temp = Array.make 30000 42 in
  for i = 1 to 29999 do
    temp.(i) <- 1022 * temp.(i - 1) mod 1048573
  done;
  temp
  
type coarbre = Feuille | Noeud of bool * coarbre * coarbre
                                
(* Entrée : n et k entiers tels que 2n + k <= 30002 
   Sortie : le co-arbre T_(n, k) *)
let rec t_n_k n k =
  
  if n = 1 then Feuille 
  else let i = 1 + ((tab_u.(k)) mod (n-1))  in Noeud((((tab_u.(k+1) mod (n-1))mod 2) = 1),(t_n_k (i) (k+2)),(t_n_k (n-i) (k+(2*i))))

(* Entrée : Coarbre T
   Sortie : hauteur de T *)
let rec hauteur t =
  match t with
  |Feuille -> 0
  |Noeud(_,a,b) -> 1+max (hauteur a) (hauteur b)



let t_10_12 = t_n_k 10 12
let h1012= hauteur t_10_12

let t_500_345 = t_n_k 500 345
let h2 = hauteur t_500_345

let t_5000_6789 = t_n_k 5000 6789
let h3 = hauteur t_5000_6789



(* Entrée : Coarbre T
   Sortie : nombre de composantes connexes du graphe cog(T) *)
let rec nb_cc_cog t =
  (* À COMPLÉTER *)
  assert false

(* Entrée : Coarbre T
   Sortie : nombre d'arêtes du graphe cog(T) *)  
let rec nb_aretes_cog t =  
  (* À COMPLÉTER *)
  assert false

(* Entrée : Coarbre T
   Sortie : degré maximal du graphe cog(T) *)      
let rec d_max_cog t =
  (* À COMPLÉTER *)
  assert false

(* Entrée : Coarbre T
   Sortie : taille de la plus grande clique du graphe cog(T) *)      
let rec taille_clique_cog t =
  (* À COMPLÉTER *)
  assert false
