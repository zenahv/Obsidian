open Graphes
let est_oriente (g : graphe) =
  let manque_arcs_reciproques u = 
    List.exists (fun v -> not (est_arc g v u)) (successeurs g u) 
  in
  Array.exists manque_arcs_reciproques (Array.init (taille g) Fun.id)
  || Array.exists (fun u -> est_arc g u u) (Array.init (taille g) Fun.id)
  

let () =
  (* TESTS *)
  let g = creer 100 in
  for u = 0 to 99 do
    for v = 0 to 99 do
      if u <> v then ajoute_arc g u v
    done
  done;
  print_string "Le graphe a ";
  print_int (List.length (arcs g));
  print_string " arcs.\n";
  if est_oriente g 
  then print_string "ERREUR : le graphe est orienté.\n"
  else print_string "Le graphe n'est pas orienté.\n";
  for u = 0 to 99 do
    for v = 0 to 99 do
      if u > v + 3 then supprime_arc g u v
    done
  done;
  print_string "Le graphe a ";
  print_int (List.length (arcs g));
  print_string " arcs.\n";
  if est_oriente g 
  then print_string "Le graphe est orienté.\n"
  else print_string "ERREUR : le graphe n'est pas orienté.\n"
