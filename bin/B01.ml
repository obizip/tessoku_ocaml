open Core
open Scanf

let (a, b) = scanf "%d %d" (fun a b -> (a, b))
let () = printf "%d\n" (a + b)
