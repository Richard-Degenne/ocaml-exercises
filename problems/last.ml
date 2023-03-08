(* 01. Last element of a list

   # last [ "a" ; "b" ; "c" ; "d" ];;
   - : string option = Some "d"
   # last [];;
   - : 'a option = None
*)

let rec last = function
  | [] -> None
  | [h] -> Some h
  | _h :: t -> last t
