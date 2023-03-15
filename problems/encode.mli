(* 10. Run-length encoding of a list

  # encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
  - : (int * string) list =
    [(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")]
*)

val encode : 'a list -> (int * 'a) list

(* 11. Modified run-length

  # encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
  - : string rle list = [Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d";Many (4, "e")]
*)

type 'a node =
  | One of 'a
  | Many of int * 'a

val node_encode : 'a list -> 'a node list

val decode : 'a node list -> 'a list
