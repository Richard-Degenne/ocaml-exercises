(* 14. Duplicate the elements of a list

  # duplicate ["a";"b";"c";"c";"d"];;
  - : string list = ["a"; "a"; "b"; "b"; "c"; "c"; "c"; "c"; "d"; "d"]
*)

let duplicate l =
  List.map (fun x -> [x; x]) l |> List.flatten
