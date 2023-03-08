(* 03. Nth element of a list

  # at 3 [ "a" ; "b"; "c"; "d"; "e" ];;
  - : string option = Some "c"
  # at 3 [ "a" ];;
  - : string option = None
*)



let at n l =
  let rec aux n = function
    | [] -> None
    | h :: t -> if n = 0 then Some h else aux (n-1) t
  in
  if n < 0 then raise (Invalid_argument "Index cannot be negative") else
    aux n l
