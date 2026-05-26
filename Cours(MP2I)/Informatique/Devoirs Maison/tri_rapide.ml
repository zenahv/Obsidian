let echange a i j =
  (* échange les valeurs d'indice i et j dans a *)
  if (i <> j) then
    begin
      let temp = a.(i) in
      a.(i) <- a.(j);
      a.(j) <- temp  
    end

let rec drapeau_neerlandais a pivot i j k =
  (* 
    effectuera la partie "Diviser" de l'algorithme entre des valeurs deb et fin
    la fonction est appelée telle que on ait :
        
    deb        i          j        k          fin
     |         |          |        |           |
    +---------+----------+----------+---------+
    | < pivot |   pivot  |   ????   | > pivot |
    +---------+----------+----------+---------+

    L'appel de la fonction a pour effet de bord de placer a.(j) au bon endroit, en maintenant la propriété.
    Puis un appel récursif sur les nouvelles valeurs de i, j, k est fait
    Si j > k, alors a.(j) est déjà bien placé et il n'y a plus rien à faire.

    La fonction renvoie i et j tels que :

    deb        i          j        fin
     |         |          |         |
    +---------+----------+---------+
    | < pivot |   pivot  | > pivot |
    +---------+----------+---------+
  *)
  if j > k then (i, j)
  else
    if a.(j) = pivot then drapeau_neerlandais a pivot i (j + 1) k
    else if a.(j) > pivot then (echange a j k; drapeau_neerlandais a pivot i j (k - 1))
    else (echange a i j; drapeau_neerlandais a pivot (i + 1) (j + 1) k)


let tri_rapide a =
  (* trie a *)
  let rec tri_aux deb fin =
    (* trie le tableau entre debut inclus et fin exclus *)
    if deb < fin - 1 (* si le tableau a 0 ou 1 élément, il n'y a rien à trier *)
    then 
      let pivot = a.(deb + Random.int (fin - deb)) in
      let (i, j) = drapeau_neerlandais a pivot deb deb (fin - 1) in

      (* RÉGNER *)
      tri_aux deb i;
      tri_aux j fin

      (* Il n'y a rien à faire pour la phase RASSEMBLER *)
    in
    tri_aux 0 (Array.length a)


