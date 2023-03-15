(* 14. Duplicate the elements of a list

  # duplicate ["a";"b";"c";"c";"d"];;
  - : string list = ["a"; "a"; "b"; "b"; "c"; "c"; "c"; "c"; "d"; "d"]
*)

(*
let duplicate l =
  List.map (fun x -> [x; x]) l |> List.flatten
*)

(* 15. Replicate the elements of a list

  # replicate ["a";"b";"c"] 3;;
  - : string list = ["a"; "a"; "a"; "b"; "b"; "b"; "c"; "c"; "c"]
*)

let replicate l n =
  List.map (fun x -> List.init n (fun _ -> x)) l |> List.flatten

(* Alternative duplicate definition *)
let duplicate l = replicate l 2
