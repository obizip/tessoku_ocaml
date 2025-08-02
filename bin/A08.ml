open Core

let (h, w) = Scanf.scanf "%d %d" Tuple2.create

let mat =
  let m = Array.make_matrix ~dimx:(h + 1) ~dimy:(w + 1) 0 in
  for i = 1 to h do
    for j = 1 to w do
      m.(i).(j) <- Scanf.scanf " %d" Fn.id
    done
  done;
  m

let q = Scanf.scanf " %d" Fn.id

let queries =
  Array.init q ~f:(fun _ ->
      Scanf.scanf " %d %d %d %d" (fun a b c d -> (a, b, c, d)))

let () =
  for i = 1 to h do
    for j = 1 to w do
      mat.(i).(j) <- mat.(i).(j) + mat.(i).(j - 1)
    done
  done;
  for j = 1 to w do
    for i = 1 to h do
      mat.(i).(j) <- mat.(i).(j) + mat.(i - 1).(j)
    done
  done;

  Array.iter queries ~f:(fun (a, b, c, d) ->
      let sum =
        mat.(c).(d) + mat.(a - 1).(b - 1) - mat.(c).(b - 1) - mat.(a - 1).(d)
      in
      printf "%d\n" sum)
