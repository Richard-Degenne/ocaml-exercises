type t
type move = Up | Down | Left | Right

val create : unit -> t
val print : t -> unit

val swap : int -> int -> 'a list -> 'a list
val move : t -> move -> t

val play : unit -> 'a

val read_move : unit -> move
