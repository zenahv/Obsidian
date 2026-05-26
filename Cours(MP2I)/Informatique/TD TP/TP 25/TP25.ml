(********************************)
(*          Exercice 1          *)
(********************************)
let triangle_0 = [|
  [|1|];
  [|1; 2|];
  [|3; 1; 4|];
  [|4; 5; 0; 0|];
  [|4; 3; 2; 0; 0|];
  [|4; 4; 4; 0; 8; 0|]
|]
(* meilleure solution : 1 + 1 + 3 + 5 + 3 + 4 = 17 *)

let triangle n =
  Array.init n (fun i -> Array.init (i + 1) (fun j -> Random.int 42))
(* Version de base en haut : vous devez pouvoir calculer la solution pour n = 10000 en quelques secondes, vu la complexité quadratique *)
(* Version mémoïsée : vous pouvez avoir un dépassement de pile, mais n = 1000 devrait être presque instantané *)

let somme_opt triangle =
  let n = Array.length triangle in
  let res_niv_courant = Array.make (n+1) 0 in 
  for i = n-1 downto 0 
  do
    for j=0 to i 
    do
      res_niv_courant.(j) <- triangle.(i).(j) + max res_niv_courant.(j) res_niv_courant.(j+1) 
    done
  done;
  res_niv_courant.(0)

(********************************)
(*          Exercice 2          *)
(********************************)

let l1_0 = [1; 2; 3; 4; 5; 6; 7; 8]
let l2_0 = [2; 3; 2; 1; 4; 7; 5; 6; 8]
(* plus grande sous-suite commune : [2; 3; 4; 5; 6; 8] de longueur 6 *)

(* Vous devriez pouvoir calculer très rapidement la longueur de la plus grande sous-suite commune de deux listes de longueur 1000, même sans
   les améliorations mentionnées à la question 4. *)

(********************************)
(*          Exercice 3          *)
(********************************)

let t_0 = [|2; 2; 2; 4; 6; 15; 20|]
let s_0 = 37
(* 2 + 15 + 20 = 27 *)
let s_1 = 38
(* pas de solution*)

let ensemble n = Array.init n (fun i -> Random.int 200000)
(* Avec n = 500 et s = 10000, doit trouver le résultat très vite, et le résultat peut être true ou false avec une proba raisonnable *)

