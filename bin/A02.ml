open Core

(* let solve1 = *)
(*   let (n, x) = Scanf.scanf "%d %d" Tuple2.create in *)
(*   let aa = List.init n ~f:(fun _ -> Scanf.scanf " %d" Fn.id) in *)
(*   let result = *)
(*     if List.mem aa x ~equal:Int.equal then *)
(*       "Yes" *)
(*     else *)
(*       "No" *)
(*   in *)
(*   result *)

let solve2 =
  let (n, x) = Scanf.scanf "%d %d" Tuple2.create in
  let values = List.init n ~f:(fun _ -> Scanf.scanf " %d" Fn.id) in
  let set = Hash_set.of_list (module Int) values in
  let result =
    if Hash_set.mem set x then
      "Yes"
    else
      "No"
  in
  result

let () = printf "%s\n" solve2
