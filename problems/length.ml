(* 04. Length of a list

  # length [ "a" ; "b" ; "c"];;
  - : int = 3
  # length [];;
  - : int = 0
*)

let length l =
  let rec aux acc = function
    | [] -> acc
    | _h :: t -> aux (acc + 1) t
  in
  aux 0 l
