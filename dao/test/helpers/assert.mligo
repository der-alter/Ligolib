(* Assert contract call results in failwith with given string *)
let string_failure (res : test_exec_result) (expected : string) : unit =
    let expected = Test.eval expected in
    match res with
        | Fail (Rejected (actual,_)) -> assert (Test.michelson_equal actual expected)
        | Fail _ -> failwith "Transaction should fail with rejection"
        | Success _ -> failwith "Transaction should fail"

(* Assert contract result is successful *)
let tx_success (res: test_exec_result) : unit =
    match res with
        | Success(c) -> ()
        | Fail (Rejected (error,_)) -> let () = Test.log(error) in failwith "Transaction should not fail"
        | Fail _ -> failwith "Transaction should not fail"
