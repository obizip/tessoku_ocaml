open Core
open Iter

let (n, k) = Scanf.scanf "%d %d" Tuple2.create
let pp = Iter.of_list (List.init n ~f:(fun _ -> Scanf.scanf " %d" Fn.id))
let qq = Iter.of_list (List.init n ~f:(fun _ -> Scanf.scanf " %d" Fn.id))

let combined =
  pp >>= fun p ->
  qq >|= fun q -> (p, q)

let has_k = Iter.exists (fun (p, q) -> p + q = k) combined

let ans =
  if has_k then
    "Yes"
  else
    "No"

let () = printf "%s\n" ans
