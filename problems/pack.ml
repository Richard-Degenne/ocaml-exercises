(* 09. Pack consecutive duplicates in sub-lists

  # pack ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"d";"e";"e";"e";"e"];;
  - : string list list = [["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"]; ["d"; "d"];["e"; "e"; "e"; "e"]]
*)

let pack l =
  let rec aux acc sub_acc = function
    | [] -> sub_acc :: acc
    | [h] -> (h :: sub_acc) :: acc
    | h1 :: ((h2 :: _) as t) -> if h1 = h2 then
        aux acc (h1 :: sub_acc) t
      else
        aux ((h1 :: sub_acc) :: acc) [] t
  in
  aux [] [] l |> List.rev
