type ('a, 'b) abr = Vide | Noeud of ('a, 'b) abr * 'a *' b * ('a, 'b) abr

let rec mini a = match a with
| Vide -> invalid_arg "l'arbre est vide et n'a pas de minimum."
| Noeud (Vide, k, v, _) -> (k,v)
| Noeud (gauche,_,_,_) -> mini gauche

let rec maxi a = match a with
| Vide -> invalid_arg "l'arbre est vide et n'a pas de maximum."
| Noeud (_, k, v, Vide) -> (k,v)
| Noeud (_,_,_,droit) -> maxi droit



let rec est_abr a = match a with 
  |Vide  -> true
  | Noeud(gauche, k, _, droit) ->
    est_abr gauche && est_abr droit
    && (gauche = Vide || fst (maxi gauche) < k)
    && (droit = Vide || fst (mini droit) > k)

let rec mem a k = match a with 
  | Vide -> false
  | Noeud(gauche, x, _, droit) ->
    if k = x then true
    else if k < x then mem gauche k
    else mem droit k

let rec find_opt a k = match a with
  |Vide -> None
  |Noeud (gauche, x, v, droit) -> 
    if k = x then Some v
    else if k < x then find_opt gauche k
    else find_opt droit k

let find a k =
    match find_opt a k with
    |None -> invalid_arg "la clé n'est pas dans l'arbre"
    |Some v -> v

let rec replace a k v =
  match a with
  |Vide -> Noeud(Vide, k, v, Vide)
  |Noeud (gauche, x, w, droit) -> 
    if k = v then Noeud (gauche, k, v, droit) 
    else if k < x then Noeud (replace gauche k v, x ,w, droit)
    else Noeud (gauche, x, w, replace droit k v)

let rec remove_max a = match a with
  |Vide -> invalid_arg "arbre vide, n'a pas de max"
  |Noeud (gauche, z, v, Vide) -> (z,v,gauche)
  |Noeud (gauche,k,w,droit) -> let (z,v,nv_droit) = remove_max droit in
    (z,v,Noeud(gauche,k,w,nv_droit))

let rec remove a k = 
  match a with 
  |Vide -> Vide
  |Noeud(gauche,x,w,droit)-> 
  if k < x then Noeud (remove gauche k, x, w, droit)
  else if x < k then Noeud(gauche, x, w, remove droit k)
  else
    if gauche = Vide then droit
    else if droit = Vide then gauche
    else
      let (z, v, nv_gauche) = remove_max gauche in
      Noeud (nv_gauche, z, v, droit)

