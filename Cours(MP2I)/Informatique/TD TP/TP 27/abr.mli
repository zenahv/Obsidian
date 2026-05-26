type ('a, 'b) abr = Vide | Noeud of ('a, 'b) abr * 'a *' b * ('a, 'b) abr

(* mem a k indique si k est une clé de a *)
val mem : ('a, 'b) abr -> 'a -> bool
(* find a k renvoie la valeur associée à k dans a si elle existe (sinon erreur) *)
val find : ('a, 'b) abr -> 'a -> 'b
(* find_opt a k renvoie Some de la valeur associée à k dans a si elle existe, sinon None *)
val find_opt : ('a, 'b) abr -> 'a -> 'b option
(* replace a k v renvoie a2 identique à a, sauf que k y est associée à v *)
val replace : ('a, 'b) abr -> 'a -> 'b -> ('a, 'b) abr
(* remove a k v renvoie a2 identique à a, sauf que a2 ne contient pas s'association pour k *)
val remove : ('a, 'b) abr -> 'a -> ('a, 'b) abr