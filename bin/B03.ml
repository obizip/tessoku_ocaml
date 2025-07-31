open Core

let rec combinations k ls =
  if k = 0 then
    [ [] ]
  else if k > List.length ls then
    []
  else
    match ls with
    | [] -> []
    | h :: t ->
        (* 1. Combinatioins with head *)
        let with_h = List.map ~f:(fun c -> h :: c) (combinations (k - 1) t) in
        (* 2. Combinations without head *)
        let without_h = combinations k t in
        with_h @ without_h

let n = Scanf.scanf "%d" Fn.id
let aa = List.init n ~f:(fun _ -> Scanf.scanf " %d" Fn.id)
let cs = combinations 3 aa

let exists =
  List.exists cs ~f:(fun l -> List.sum (module Int) l ~f:Fn.id = 1000)

let ans =
  if exists then
    "Yes"
  else
    "No"

let () = printf "%s\n" ans
