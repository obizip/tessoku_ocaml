open Core

let d = Scanf.scanf "%d" Fn.id
let n = Scanf.scanf " %d" Fn.id

let lrs =
  List.init n ~f:(fun _ -> Scanf.scanf " %d %d" Tuple2.create) |> List.rev

let changes = Array.init d ~f:(fun _ -> 0)

let () =
  List.iter lrs ~f:(fun (l, r) ->
      changes.(l - 1) <- changes.(l - 1) + 1;
      changes.(r) <- changes.(r) - 1)

let sums =
  Array.folding_map changes ~init:0 ~f:(fun acc c -> (acc + c, acc + c))

let () = Array.iter sums ~f:(fun sum -> printf "%d\n" sum)
