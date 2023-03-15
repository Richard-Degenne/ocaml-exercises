(* 14. Duplicate the elements of a list

  # duplicate ["a";"b";"c";"c";"d"];;
  - : string list = ["a"; "a"; "b"; "b"; "c"; "c"; "c"; "c"; "d"; "d"]
*)

val duplicate : 'a list -> 'a list

(* 15. Replicate the elements of a list

  # replicate ["a";"b";"c"] 3;;
  - : string list = ["a"; "a"; "a"; "b"; "b"; "b"; "c"; "c"; "c"]
*)

val replicate : 'a list -> int -> 'a list
