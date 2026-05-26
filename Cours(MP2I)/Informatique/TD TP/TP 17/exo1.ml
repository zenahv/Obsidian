type 'a arbre_bin = Vide | Noeud of 'a arbre_bin * 'a * 'a arbre_bin
type set = bool arbre_bin

let set_42 = Noeud(Noeud(Vide,false,Noeud(Noeud(Vide,false,Noeud(Noeud(Vide,true,Vide),false,Vide)),false,Vide)),false,Vide)

let range_1_10 = Noeud(Noeud(Noeud(Noeud(Vide,true,Vide),true,Vide),true,Noeud(Noeud(Vide,true,Vide),true,Vide)),true,Noeud(Noeud(Noeud(Vide,true,Vide),true,Vide),true,Noeud(Vide,true,Vide)))

let rec mem (ens : set ) n = match ens with 
  |Vide -> false
  |Noeud(l,x,r) -> 
  if n = 1 then x
  else if n mod 2 = 1 then mem r (n/2)
  else mem l (n/2)

let rec singleton n : set =
  if n = 1 then Noeud(Vide,true,Vide)
  else if (n mod 2 = 1) then Noeud(Vide,false,singleton(n/2))
  else Noeud(singleton(n/2),false,Vide)

let rec add (ens : set ) n :set =
  match (ens,n) with 
  | (Vide,_) -> singleton n
  | (Noeud(l,_,d),1)-> Noeud(l,true,d)
  | (Noeud(l,b,d),_)->
    if n mod 2 = 1 then Noeud(l,b,(add d (n/2)))
    else Noeud((add l (n/2)),b,d)

let rec list_to_set l = match l with
  |[] -> Vide
  |x::q -> add(list_to_set q) x 

let one_ten = list_to_set [1;2;3;4;5;6;7;8;9;10]
let two = Noeud(Noeud(Vide,true,Vide),false,Vide)
let single = singleton 15
let ye = mem one_ten 9

let rec rem (ens : set ) n :set =
  match (ens,n) with 
  | (Vide,_) -> Vide
  | (Noeud(l,_,d),1)-> Noeud(l,false,d)
  | (Noeud(l,b,d),_)->
    if n mod 2 = 1 then Noeud(l,b,(rem d (n/2)))
    else Noeud((rem l (n/2)),b,d)

