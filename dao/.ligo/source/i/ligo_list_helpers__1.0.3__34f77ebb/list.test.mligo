#include "list.mligo"

let test_concat = 
    let xs = [1; 2; 3] in
    let ys = [4; 5; 6] in
    let zs = concat xs ys in
    assert (zs = [1; 2; 3; 4; 5; 6])

let test_reverse = 
    let xs = [1; 2; 3] in
    assert (reverse xs = [3; 2; 1])
