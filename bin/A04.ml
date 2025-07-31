open Core

let n = Scanf.scanf "%d" Fn.id

let rec dec2bin_inner x exponent digits =
  if exponent = 0 then
    digits @ [ x % 2 ]
  else
    dec2bin_inner x (exponent - 1)
      (digits @ [ x / int_of_float (2. ** float_of_int exponent) % 2 ])

let dec2bin x =
  dec2bin_inner x 9 []
  |> List.fold ~init:"" ~f:(fun acc digit -> acc ^ string_of_int digit)

let () = printf "%s\n" (dec2bin n)
