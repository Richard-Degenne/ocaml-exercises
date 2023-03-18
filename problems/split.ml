(* 17. Split a list into two parts.

  # split ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;
  - : string list * string list = (["a"; "b"; "c"], ["d"; "e"; "f"; "g"; "h"; "i"; "j"])
  # split ["a";"b";"c";"d"] 5;;
  - : string list * string list = (["a"; "b"; "c"; "d"], [])
*)

let split l n =
  let rec aux (acc : 'a list) m = function
    | [] -> (List.rev acc, [])
    | (h :: t) as l' -> if m = 0 then
        (List.rev acc, l')
      else aux (h :: acc) (m - 1) t
  in
  if n < 0 then raise (Invalid_argument "Count must be positive");
  aux [] n l
