open Core

let n = Scanf.scanf "%d" Fn.id
let aa = List.init n ~f:(fun _ -> Scanf.scanf " %d" Fn.id) |> List.rev
let q = Scanf.scanf " %d" Fn.id
let lrs = Array.init q ~f:(fun _ -> Scanf.scanf " %d %d" Tuple2.create)

let sums =
  (0, 0)
  :: List.folding_map aa ~init:(0, 0) ~f:(fun (o, x) a ->
         let acc =
           if a = 1 then
             (o + 1, x)
           else
             (o, x + 1)
         in
         (acc, acc))
  |> Array.of_list

let () =
  Array.iter lrs ~f:(fun (l, r) ->
      let (o_r, x_r) = sums.(r) in
      let (o_l, x_l) = sums.(l - 1) in
      let (o, x) = (o_r - o_l, x_r - x_l) in
      let result =
        if o = x then
          "draw"
        else if o > x then
          "win"
        else
          "lose"
      in
      printf "%s\n" result)
