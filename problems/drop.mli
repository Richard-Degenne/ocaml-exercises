(* 16. Drop every nth element from a list.

  # drop ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;
  - : string list = ["a"; "b"; "d"; "e"; "g"; "h"; "j"]
*)

val drop : 'a list -> int -> 'a list
