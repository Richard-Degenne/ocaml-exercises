(* 02. Last two elements of a list

    # last_two [ "a" ; "b" ; "c" ; "d" ];;
    - : (string * string) option = Some ("c", "d")
    # last_two [ "a" ];;
    - : (string * string) option = None
*)

val last_two : 'a list -> ('a * 'a) option
