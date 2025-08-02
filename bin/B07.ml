open Core

let t = Scanf.scanf "%d" Fn.id
let n = Scanf.scanf " %d" Fn.id
let lrs = Array.init n ~f:(fun _ -> Scanf.scanf " %d %d" Tuple2.create)

let () =
  let changes = Array.init t ~f:(fun _ -> 0) in

  Array.iter lrs ~f:(fun (l, r) ->
      changes.(l) <- changes.(l) + 1;
      changes.(r) <- changes.(r) - 1);

  let sums =
    Array.folding_map changes ~init:0 ~f:(fun acc c -> (acc + c, acc + c))
  in

  Array.iter sums ~f:(fun s -> printf "%d\n" s)
