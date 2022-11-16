(lang dune 2.9)

(name exercises)

(generate_opam_files true)

(license GPL)

(authors "Richard Degenne <richard.degenne@gmail.com>")
(maintainers "Richard Degenne <richard.degenne@gmail.com>")

(source
  (github Richard-Degenne/ocaml-exercises))
(bug_reports "https://github.com/Richard-Degenne/ocaml-exercises/issues")
(homepage "https://github.com/Richard-Degenne/ocaml-exercises")
(documentation "https://github.com/Richard-Degenne/ocaml-exercises")

(package
  (name exercises)
  (synopsis "Getting good")
  (description "Getting good")
  (depends
    (ocaml (>= 4.02.3))
    dune
  )
)
