(* 06. Checks whether a list is a palindrome

  # is_palindrome [ "x" ; "a" ; "m" ; "a" ; "x" ];;
  - : bool = true
  # not (is_palindrome [ "a" ; "b" ]);;
  - : bool = true
*)

val is_palindrome : 'a list -> bool
