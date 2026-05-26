(* Tri rapide écrit dans le fichier fourni. NE PAS MODIFIER CETTE FONCTION*)
val tri_rapide : 'a array -> unit

(* 
Entrée : t tableau de taille n, 
        deb et fin tels que 0 <= deb < fin <= min(n, deb + 5)
        r tel que 0 <= r < fin - deb
Effet de bord : trie par ordre croissant la portion de t entre les indices deb et (fin - 1)   
Sortie : l'élément de rang r de cette portion de t, c'est à dire t.(deb + r)
*)
val ieme_elt_petit_tableau : 'a array -> int -> int -> int -> 'a

(* 
Entrée : t tableau de taille n, deb et fin tels que 0 <= deb < fin <= n
Sortie : Le tableau des médianes des sous tableaux de taille 5 (ou moins pour le dernier sous tableau) de t, comme illustré dans l'énoncé
*)
val tab_medianes : 'a array -> int -> int -> 'a array

(*
Entrée : t tableau de taille n
         deb et fin tels que 0 <= deb < fin <= n
                        et que pour 0 <= i < deb <= j < n, t.(i) <= t.(j)
         r tel que 0 <= r < fin - deb
Effet de bord : déplace les éléments de entre les indices deb et (fin - 1)
                (de façon qui ne peut que rapprocher d'un tableau trié)
Sortie : l'élément de rang r de cette portion de t, 
        c'est à dire la valeur qu'aurait t.(deb + r) si le tableau était trié
*)
val ieme_elt : 'a array -> int -> int -> int -> 'a

(* Effectue un tri rapide avec l'algo médiane des médianes pour la sélection
du pivot *)
val tri_rapide_deterministe : 'a array -> unit