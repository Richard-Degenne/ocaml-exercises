(* 16. Drop every nth element from a list.

  # drop ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;
  - : string list = ["a"; "b"; "d"; "e"; "g"; "h"; "j"]
*)

let drop l n =
  let rec aux acc m = function
    | [] -> acc
    | h :: t -> if m = 0 then
        aux acc (n - 1) t
      else
        aux (h :: acc) (m - 1) t
  in
  if n <= 0 then raise (Invalid_argument "Count must be positive");
  aux [] (n - 1) l |> List.rev
