```OCaml
(* Pour compiler ceci avec le module Unix :

ocamlopt -I +unix unix.cmxa exo4.ml test_exo4.ml   

*)

let question = function
  | 1 -> 
    print_endline "Test question 1 :";
    for _ = 0 to 100 do
      let t = Array.init 20 (fun i -> Random.int 100) in
      let deb = Random.int 14 in
      let fin = deb + 1 + Random.int 5 in
      for i = 0 to Array.length t - 1 do
        if (i < deb) then t.(i) <- 0;
        if (i >= fin) then t.(i) <- max_int;
      done;
      let r = Random.int (fin - deb) in
      let res = Tri_rapide.ieme_elt_petit_tableau t deb fin r in
      let t2 = Array.copy t in
      Array.sort compare t2;
      assert (t2 = t && res = t2.(deb + r))
    done; 
    print_endline "Test réussi.\n"
  | 2 -> 
    print_endline "Test question 2 :";
    for _ = 0 to 100 do
      let t = Array.init 10000 (fun i -> Random.int 10000) in
      let deb = Random.int 1000 in
      let fin = 9000 + Random.int 1000 in
      let u = Tri_rapide.tab_medianes t deb fin in
      for i = 0 to (fin - deb - 1) / 5 do
        let temp = Array.init (min 5 (fin - deb - 5 * i)) (fun j -> t.(deb + 5 * i + j)) in
        Array.sort compare temp;
        assert (u.(i) = temp.(Array.length temp / 2) || u.(i) = temp.((Array.length temp - 1)/ 2))
      done
    done; 
    print_endline "Test réussi.\n"
  | 3 -> 
    print_endline "Test question 3 :";
    for _ = 0 to 100 do
      let t = Array.init 10000 (fun i -> Random.int 10000) in
      let deb = Random.int 999 in
      let fin = deb + 1 + Random.int 9000 in
      for i = 0 to Array.length t - 1 do
        if (i < deb) then t.(i) <- 0;
        if (i >= fin) then t.(i) <- max_int;
      done;
      let r = Random.int (fin - deb) in
      let res = Tri_rapide.ieme_elt t deb fin r in
      let t2 = Array.copy t in
      Array.sort compare t2;
      assert (res = t2.(deb + r))
    done;
    print_endline "Test réussi.\n"
  | 4 ->
    print_endline "Test correction question 4 :";
    for _ = 0 to 100 do
      let t = Array.init 10000 (fun i -> Random.int 10000) in
      let t2 = Array.copy t in
      Tri_rapide.tri_rapide_deterministe t;
      Array.sort compare t2;
      assert (t = t2)
    done;

    print_endline "Correction ok.\n Test rapidité question 4 :";
    let t = Array.init 500000 (fun i -> Random.int 10000) in
    let t2 = Array.copy t in
    let chrono1 = Sys.time() in
    Tri_rapide.tri_rapide_deterministe t;
    let chrono2 = Sys.time() in
    Array.sort compare t2;
    let chrono3 = Sys.time() in
    assert (chrono2 -. chrono1 <= 10. *. (chrono3 -. chrono2));
    print_endline "Tests réussis.\n"
  | _ -> print_endline "Pas un numéro de question"; assert false

let () =
  Random.init (int_of_float (Unix.time ()));
  let l = if Array.length Sys.argv >= 2 
          then List.map int_of_string (List.tl (Array.to_list Sys.argv))
          else [1; 2; 3; 4]
  in
  List.iter question l
```
