(* 05. Reverse a list

  # rev ["a" ; "b" ; "c"];;
  - : string list = ["c"; "b"; "a"]
*)

let rev l =
  let rec aux acc = function
    | [] -> acc
    | h :: t -> aux (h::acc) t
  in
  aux [] l
