(* 09. Pack consecutive duplicates in sub-lists

  # pack ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"d";"e";"e";"e";"e"];;
  - : string list list = [["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"]; ["d"; "d"];["e"; "e"; "e"; "e"]]
*)

val pack : 'a list -> 'a list list
