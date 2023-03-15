(* 08. Remove consecutive duplicates

  # compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
  - : string list = ["a"; "b"; "c"; "a"; "d"; "e"]
*)

val compress : 'a list -> 'a list
