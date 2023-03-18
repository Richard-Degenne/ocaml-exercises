(* 17. Split a list into two parts.

  # split ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;
  - : string list * string list = (["a"; "b"; "c"], ["d"; "e"; "f"; "g"; "h"; "i"; "j"])
  # split ["a";"b";"c";"d"] 5;;
  - : string list * string list = (["a"; "b"; "c"; "d"], [])
*)

val split : 'a list -> int -> ('a list * 'a list)
