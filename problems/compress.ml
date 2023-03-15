(* 08. Remove consecutive duplicates

  # compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
  - : string list = ["a"; "b"; "c"; "a"; "d"; "e"]
*)

(* Non tail-recursive implementation

let rec compress = function
  | [] -> []
  | [h] -> [h]
  | h1 :: ((h2 :: _) as t) -> if h1 = h2 then
      compress t
    else
      h1 :: (compress t)
*)

let compress l =
  let rec aux acc = function
    | [] -> acc
    | [h] -> h :: acc
    | h1 :: ((h2 :: _) as t) -> if h1 = h2 then
        aux acc t
      else
        aux (h1 :: acc) t
  in
  aux [] l |> List.rev
