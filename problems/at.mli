(* 03. Nth element of a list

   # at 3 [ "a" ; "b"; "c"; "d"; "e" ];;
   - : string option = Some "c"
   # at 3 [ "a" ];;
   - : string option = None
*)

val at : int -> 'a list -> 'a option
