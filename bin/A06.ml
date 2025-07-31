open Core

let (n, q) = Scanf.scanf "%d %d" Tuple2.create
let aa = List.init n ~f:(fun _ -> Scanf.scanf " %d" Fn.id) |> List.rev
let lrs = Array.init q ~f:(fun _ -> Scanf.scanf " %d %d" Tuple2.create)

let sums =
  Array.folding_map
    (Array.of_list (0 :: aa))
    ~init:0
    ~f:(fun acc a -> (acc + a, acc + a))

let () =
  for i = 0 to q - 1 do
    let (l, r) = lrs.(i) in
    let sum = sums.(r) - sums.(l - 1) in
    printf "%d\n" sum
  done
