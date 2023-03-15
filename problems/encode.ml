(* 10. Run-length encoding of a list

  # encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
  - : (int * string) list =
    [(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")]
*)

let encode l =
  let rec aux acc sub_acc = function
    | [] -> sub_acc :: acc
    | h :: t -> if h = (snd sub_acc) then
        aux acc ((fst sub_acc + 1), h) t
      else
        aux (sub_acc :: acc) (1, h) t
  in
  match l with
  | [] -> []
  | h :: t -> aux [] (1, h) t |> List.rev

(* 11. Modified run-length

  # encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
  - : string rle list = [Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d";Many (4, "e")]
*)

type 'a node =
| One of 'a
| Many of int * 'a

let node_encode l =
  let rec aux acc sub_acc = function
    | [] -> sub_acc :: acc
    | h :: t ->
      match sub_acc with
      | One o -> if o = h then aux acc (Many (2, h)) t else aux (sub_acc :: acc) (One h) t
      | Many (n, o) -> if o = h then aux acc (Many (n + 1, h)) t else aux (sub_acc :: acc) (One h) t
  in
  match l with
  | [] -> []
  | h :: t -> aux [] (One h) t |> List.rev
