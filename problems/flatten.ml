(* 07. Flatten a nested list structure

  # flatten [ One "a" ; Many [ One "b" ; Many [ One "c" ; One "d" ] ; One "e" ] ];;
  - : string list = ["a"; "b"; "c"; "d"; "e"]
*)

type 'a node =
  | One of 'a
  | Many of 'a node list

(* Non tail-rec version

let rec flatten = function
  | [] -> []
  | One o :: t -> o :: (flatten t)
  | Many m :: t -> (flatten m) @ (flatten t)
*)

let flatten l =
  let rec aux acc = function
    | [] -> acc
    | One o :: t -> aux (o :: acc) t
    | Many m :: t -> aux ((aux [] m) @ acc) t
  in
  aux [] l |> List.rev
