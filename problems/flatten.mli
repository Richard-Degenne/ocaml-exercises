(* 07. Flatten a nested list structure

  # flatten [ One "a" ; Many [ One "b" ; Many [ One "c" ; One "d" ] ; One "e" ] ];;
  - : string list = ["a"; "b"; "c"; "d"; "e"]
*)

type 'a node =
  | One of 'a
  | Many of 'a node list

val flatten : 'a node list -> 'a list
