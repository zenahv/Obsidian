type 'a arbre_bin = Vide | Noeud of 'a arbre_bin * 'a * 'a arbre_bin

let cons_arbre gauche x droit = 
  Noeud(gauche,x,droit)

let etiquette_arbre e =
  match e with 
  |Vide -> invalid_arg ("Arbre vide")
  |Noeud(_,a,_)->a

let arbre_gauche e =
  match e with 
  |Vide -> invalid_arg ("Arbre vide")
  |Noeud(g,_,_)->g

let arbre_droit e =
  match e with 
  |Vide -> invalid_arg ("Arbre vide")
  |Noeud(_,_,d)->d

let rec taille a =
  match a with
  |Vide -> 0
  |Noeud(g,x,d) -> 1+(taille g)+(taille d)

let rec hauteur a = 
  match a with 
  |Vide -> -1
  |Noeud(g,_,d)-> 1 + max (hauteur g) (hauteur d)

let rec rand_bintree n = 
  if n = 0 then Vide
  else
    let i = Random.int n in 
    Noeud (rand_bintree i, (), rand_bintree (n-i-1)) 

let rec plus_profond a = 
  let rec aux a =
    match a with
    |Vide -> (-1,None)
    |Noeud (Vide, x, Vide) -> (0, Some x)
    |Noeud (gauche, _, droit) -> 
      let (h1,x1) = aux gauche in 
      let (h2,x2) = aux droit in
      if h1 > h2 then (h1 + 1, x1) else (h2 + 1,x2)
  in
  Option.value (snd (aux a)) (invalid_arg "Arbre vide")


let rec profondeur_max a x =
    match a with
    | Vide -> None
    | Noeud (g,n,d) ->
      match (profondeur_max g x, profondeur_max d x) with
      | (None,None) -> if n=x then Some 0 else None
      | (Some h,None) | (None,Some h)-> Some (h+1)
      | (Some hg, Some hd) -> Some (max hg hd + 1)

let rec profondeur_min a x =
  match a with
  | Vide -> None
  | Noeud(g,n,d)-> 
    if n=x then Some 0 else
    match (profondeur_min g x, profondeur_min d x) with
      | (None,None) -> if n=x then Some 0 else None
      | (Some h,None) | (None,Some h)-> Some (h+1)
      | (Some hg, Some hd) -> Some (min hg hd + 1)