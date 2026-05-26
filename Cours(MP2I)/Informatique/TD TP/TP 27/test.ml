let () =
  let chrono = Sys.time () in
  let f = open_in "les_miserables.txt" in
  let t = Hashtbl.create 1000 in
  begin
    try
      while true do
        let a = input_line f in
        match Hashtbl.find_opt t a with
          | None -> Hashtbl.replace t a 1
          | Some i -> Hashtbl.replace t a (i + 1) 
      done
    with
      | End_of_file -> close_in f
  end;
  let f = open_in "les_miserables.txt" in
  begin
    try
      while true do
        let a = input_line f in
        if Hashtbl.find_opt t a < Some 100
        then Hashtbl.remove t a
      done
    with
      | End_of_file -> close_in f
  end;
  assert (Hashtbl.find t "valjean" = 1116);
  assert (Hashtbl.find t "cosette" = 992);
  assert (Hashtbl.find t "marius" = 1357);
  assert (not (Hashtbl.mem t "mari"));
  assert (not (Hashtbl.mem t "marius-là"));
  print_endline ("Tous les tests passés en " ^ string_of_float (Sys.time () -. chrono) ^ "s.\n")


let () =
  let chrono = Sys.time () in
  let f = open_in "les_miserables.txt" in
  let rec aux1 t =
    let mot_opt = 
      try Some (input_line f)
      with
        | End_of_file -> close_in f; None
    in

    if mot_opt = None then t
    else
      let mot = Option.get mot_opt in
      match Abr.find_opt t mot with
        | None -> aux1 (Abr.replace t mot 1)
        | Some i -> aux1 (Abr.replace t mot (i + 1))
    
  in    
  let t1 = aux1 Abr.Vide in
  let f = open_in "les_miserables.txt" in
  let rec aux2 t =
    let mot_opt = 
      try Some (input_line f)
      with
        | End_of_file -> close_in f; None
    in
    if mot_opt = None then t
    else
      let mot = Option.get mot_opt in
      if Abr.find_opt t mot  < Some 100
      then aux2 (Abr.remove t mot)
      else aux2 t
  in  
  let t2 = aux2 t1 in
  assert (Abr.find t2 "valjean" = 1116);
  assert (Abr.find t2 "cosette" = 992);
  assert (Abr.find t2 "marius" = 1357);
  assert (not (Abr.mem t2 "mari"));
  assert (not (Abr.mem t2 "marius-là"));
  print_endline ("Tous les tests passés en " ^ string_of_float (Sys.time () -. chrono) ^ "s.\n")
