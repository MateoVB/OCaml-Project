(* 
                         CS 51 Final Project
                    MiniML -- Read-Eval-Print Loop
 *)

module Ev = Evaluation ;;
module MP = Miniml_parse ;;
module ML = Miniml_lex ;;
module Ex = Expr ;;

open Printf ;;

(* str_to_exp str -- Returns the expression specified by `str` using
   the MiniML parser. *)
let str_to_exp (str: string) : Ex.expr =
  let lexbuf = Lexing.from_string str in
  let exp = MP.input ML.token lexbuf in
  exp ;;

(* repl () -- Read-eval-print loop for MiniML, which prompts for and
   evaluates MiniML expressions, printing the resulting value. Exits
   the loop and terminates upon reading an end-of-file
   (control-d). *)
let repl () =
  (* lexical analyzer buffer from stdin *)
  let lexbuf = Lexing.from_channel stdin in
  (* set up the initial environment *)
  let env = Ev.Env.empty () in

  (* the main LOOP *)
  while true do
    (* prompt *)
    printf "<== %!";
        
    (* READ and parse an expression from the input *)
    let exp = MP.input ML.token lexbuf in  

    (try
      (* EVALuate it *)
      let res = Ev.evaluate exp env in
        
      (* PRINT the result; in this initial version, the trivial
          evaluator just returns the expression unchanged as an
          element of the `Env.value` type (found in `expr.ml`), so we
          just extract the expression back out and print it *)
      match res with
      | Val resexp -> printf "--> %s\n" (Ex.exp_to_abstract_string resexp)
      | _ -> failwith "not handling other cases yet"
      with
      | MP.Error -> printf "xx> parse error\n"
      | Ev.EvalError msg -> printf "xx> evaluation error: %s\n" msg
      | Ev.EvalException -> printf "xx> evaluation exception\n"
      | End_of_file -> printf "Goodbye.\n"; exit 0
    );
    (try  
      (* EVALuate it *)
      let res1 = Ev.evaluate1 exp env in
        
      (* PRINT the result; in this initial version, the trivial
          evaluator just returns the expression unchanged as an
          element of the `Env.value` type (found in `expr.ml`), so we
          just extract the expression back out and print it *)
      match res1 with
      | Val resexp1 -> printf "s=> %s\n" (Ex.exp_to_concrete_string resexp1)
      | _ -> failwith "not handling other cases yet"
      with
      | MP.Error -> printf "sx> parse error\n"
      | Ev.EvalError msg -> printf "sx> evaluation error: %s\n" msg
      | Ev.EvalException -> printf "sx> evaluation exception\n"
      | End_of_file -> printf "Goodbye.\n"; exit 0
    );
    (try  
      (* EVALuate it *)
      let res2 = Ev.evaluate2 exp env in
 
      (* PRINT the result; in this initial version, the trivial
          evaluator just returns the expression unchanged as an
          element of the `Env.value` type (found in `expr.ml`), so we
          just extract the expression back out and print it *)
      match res2 with
      | Val resexp2 -> printf "d=> %s\n" (Ex.exp_to_concrete_string resexp2)      
      | _ -> failwith "not handling other cases yet"
      with
      | MP.Error -> printf "dx> parse error\n"
      | Ev.EvalError msg -> printf "dx> evaluation error: %s\n" msg
      | Ev.EvalException -> printf "dx> evaluation exception\n"
      | End_of_file -> printf "Goodbye.\n"; exit 0
    );
    (try   
      (* EVALuate it *)
      let res3 = Ev.evaluate3 exp env in
        
      (* PRINT the result; in this initial version, the trivial
          evaluator just returns the expression unchanged as an
          element of the `Env.value` type (found in `expr.ml`), so we
          just extract the expression back out and print it *)
      match res3 with
      | Val resexp3 -> printf "l=> %s\n" (Ex.exp_to_concrete_string resexp3)
      | _ -> failwith "not handling other cases yet"
      with
      | MP.Error -> printf "lx> parse error\n"
      | Ev.EvalError msg -> printf "lx> evaluation error: %s\n" msg
      | Ev.EvalException -> printf "lx> evaluation exception\n"
      | End_of_file -> printf "Goodbye.\n"; exit 0
    );
    flush stdout
  done
;;
        
(* Run REPL if called from command line *)

try
  let _ = Str.search_forward (Str.regexp "miniml\\.\\(byte\\|native\\|bc\\|exe\\)")
                             (Sys.argv.(0)) 0 in
  repl ()
with Not_found -> () ;;
