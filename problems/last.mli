(* 01. Last element of a list

   # last [ "a" ; "b" ; "c" ; "d" ];;
   - : string option = Some "d"
   # last [];;
   - : 'a option = None
*)

val last : 'a list -> 'a option
