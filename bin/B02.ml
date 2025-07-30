open Core

let () =
  let (a, b) = Scanf.scanf "%d %d" Tuple2.create in
  let exists = List.exists (List.range a (b + 1)) ~f:(fun n -> 100 % n = 0) in
  let ans =
    if exists then
      "Yes"
    else
      "No"
  in
  printf "%s\n" ans
