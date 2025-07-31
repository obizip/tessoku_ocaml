open Core
open Iter

let (n, k) = Scanf.scanf "%d %d" Tuple2.create
let rs = Iter.int_range ~start:1 ~stop:n
let bs = Iter.int_range ~start:1 ~stop:n

let counts =
  Iter.sum
    ( rs >>= fun r ->
      bs >|= fun b ->
      let w = k - (r + b) in
      if 1 <= w && w <= n then
        1
      else
        0 )

let () = printf "%d\n" counts
