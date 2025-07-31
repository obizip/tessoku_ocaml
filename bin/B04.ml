open Core

let binary_str = Scanf.scanf "%s" Fn.id

let dec =
  String.fold binary_str ~init:0 ~f:(fun acc c ->
      (acc * 2) + (Char.to_int c - Char.to_int '0'))

let () = printf "%d\n" dec
