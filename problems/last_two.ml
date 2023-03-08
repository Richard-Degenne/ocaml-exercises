(* 02. Last two elements of a list

    # last_two [ "a" ; "b" ; "c" ; "d" ];;
    - : (string * string) option = Some ("c", "d")
    # last_two [ "a" ];;
    - : (string * string) option = None
*)

let rec last_two = function
  | [] -> None
  | [_h] -> None
  | [h1; h2] -> Some (h1, h2)
  | _h :: t -> last_two t
