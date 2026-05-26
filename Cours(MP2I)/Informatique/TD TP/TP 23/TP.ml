let arrets_gloutons m stations =
  let n = Array.length stations - 1 in
  let rec aux_arrets depart i_min =  (*i_min est la 1re station que l'on peut atteindre depuis depart*)
    (* Renvoie le meilleur choix de stations à partir du point départ en commençant la recherche à partir de i_min*)
    if i_min >= n then
      if n = 0 then []
      else [stations.(n)] 
      (*On s'arrête à la dernière station sauf si n=0*)
    else if stations.(i_min + 1) - depart > m 
    (* Si on peut atteidre la station suivante*)
    then stations.(i_min) ::  aux_arrets stations.(i_min) i_min 
    (*Alors on renvoie la la liste qui est la station i_min et les arrêts après i_min (et le nouveau départ est i_min) *)
    else aux_arrets depart (i_min+1) 
    (*Sinon, on augmente i_min mais on part du même endroit (départ) *)
  in
  aux_arrets 0 0

let stations = [|0; 6; 14; 23; 32; 43; 48; 60; 67; 76; 86; 95; 110|]

let a = arrets_gloutons 20 stations

