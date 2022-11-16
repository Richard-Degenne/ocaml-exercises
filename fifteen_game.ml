type t = int option list
type move = Up | Down | Left | Right

let shuffle l =
  List.map (fun e -> (Random.bits (), e)) l |> List.sort compare |> List.map snd


let create () =
  shuffle (List.init 16 (fun i -> if i = 0 then None else Some i))

let print t =
  let sep = "+--+--+--+--+\n" in
  let cell n = match (List.nth t n) with
    | None -> "  "
    | Some n -> Printf.sprintf "%02d" n
  in
  let line l =
    "|" ^ (cell (4*l)) ^ "|" ^ (cell (4*l+1)) ^ "|" ^ (cell (4*l+2)) ^ "|" ^ (cell (4*l+3)) ^ "|\n"
  in
  print_string (
    sep ^ line 0 ^ sep ^ line 1 ^ sep ^ line 2 ^ sep ^ line 3 ^ sep
  )

let find_index f l =
  let rec aux acc = function
  | [] -> raise Not_found
  | h::t -> if f h then acc else aux (acc+1) t
  in
  aux 0 l

let swap i j l =
  let rec aux acc = function
    | [] -> acc
    | h::t ->
        let h =
          if List.length acc = i then List.nth l j
          else if List.length acc = j then List.nth l i
          else h
        in
        aux (h::acc) t
  in
  aux [] l |> List.rev

let move t move =
  let empty = find_index Option.is_none t in
  match move with
  | Up -> if empty > 12 then t else swap empty (empty+4) t
  | Down -> if empty < 4 then t else swap empty (empty-4) t
  | Left -> if empty mod 4 = 3 then t else swap empty (empty+1) t
  | Right -> if empty mod 4 = 0 then t else swap empty (empty-1) t

let rec read_move () =
  match (read_line ()).[0] with
  | 'w' | 'W' -> Up
  | 'a' | 'A' -> Left
  | 's' | 'S' -> Down
  | 'd' | 'D' -> Right
  | _ -> read_move ()

let play () =
  let rec step t =
    print t;
    move t (read_move ()) |> step
  in
  step (create ())
