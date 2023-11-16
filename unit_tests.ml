(*
                         CS 51 Problem Set 7
                       Refs, Streams, and Music
                             Refs Testing
 *)

open CS51Utils ;;
open Absbook ;;
open Expr ;;
open Evaluation ;;
        
let tests () =
  unit_test (same_vars (free_vars (Let ("x", 
                         Binop (Plus, Var "x", Var "y"),
                         Binop (Times, Var "z", Num 3)))) 
                         (vars_of_list ["x"; "y"; "z"]) = true) 
                         "free_vars with three variables";
  unit_test (same_vars (free_vars (Let("x", 
                          Num(3), Let("y", Var("x"), App(App(Var("f"), Var("x")), Var("y")))))) 
                         (vars_of_list ["f"]) = true) 
                         "free_vars with a function";              
  unit_test (same_vars (free_vars (Let("x", 
                          Var("x"), Let("y", Var("x"), 
                          App(App(Var("f"), Var("x")), Var("y")))))) 
                         (vars_of_list ["f"; "x"]) = true) 
                         "free_vars with function and variables";
  unit_test (same_vars (free_vars (Let("x", 
                          Var("y"), Let("y", Var("x"), App(App(Var("f"), Var("x")), Var("y")))))) 
                         (vars_of_list ["f"; "y"]) = true) 
                         "free_vars with three variables";
  unit_test (same_vars (free_vars (Let("x", Fun("y", Var("x")), Var("x")))) 
                         (vars_of_list ["x"]) = true) 
                         "free_vars with one variable";

  unit_test (subst "x" (Num(42)) (Let ("x", Binop (Plus, Var "x", Var "y"),
                            Binop (Times, Var "z", Var "x"))) 
                            = Let ("x", Binop (Plus, Num 42, Var "y"), 
                              Binop (Times, Var "z", Var "x"))) 
                         "subst with x = 42";
  unit_test (subst "y" (Num(42)) (Let ("x", Binop (Plus, Var "x", Var "y"),
                                            Binop (Times, Var "z", Var "x"))) 
                            = Let ("x", Binop (Plus, Var "x", Num 42), 
                                        Binop (Times, Var "z", Var "x"))) 
                         "subst with y = 42";  
  unit_test (subst "x" (Num(50)) (Binop(Plus, Var("x"), Num(1)))
                            = Binop (Plus, Num 50, Num 1)) 
                         "subst with x = 50";                     
  unit_test (subst "y" (Num(50)) ( Binop(Plus, Var("x"), Num(1))) 
                            = Binop (Plus, Var "x", Num 1)) 
                         "subst with y = 50";    
  unit_test (subst "x" (Num(2)) (Binop(Times, Var("x"), Var("x")))
                            = Binop (Times, Num 2, Num 2)) 
                         "subst with x = 2";                             
  unit_test (subst "x" (Num(3)) (Let("x", Binop(Times, Var("y"), Var("y")), 
                                          Binop(Plus, Var("x"), Var("x")))) 
                            = Let ("x", Binop (Times, Var "y", Var "y"), 
                                        Binop (Plus, Var "x", Var "x"))) 
                         "subst with x = 3";    
  unit_test (subst "y" (Num(3)) (Let("x", Binop(Times, Var("y"), Var("y")), 
                                          Binop(Plus, Var("x"), Var("x")))) 
                            = Let ("x", Binop (Times, Num 3, Num 3), 
                                        Binop (Plus, Var "x", Var "x"))) 
                         "subst with y = 3";    

  (* (fun x -> x + x) (3 * 4);; *)            
  unit_test (eval_s (App(Fun("x", Binop(Plus, Var("x"), Var("x"))), 
                                  Binop(Times, Num(3), Num(4)))) (Env.empty ())
                            = Env.Val (Num 24))
                         "eval_s same with all three";
  unit_test (eval_d (App(Fun("x", Binop(Plus, Var("x"), Var("x"))), 
                                  Binop(Times, Num(3), Num(4)))) (Env.empty ())
                            = Env.Val (Num 24))
                         "eval_d same with all three";
  unit_test (eval_l (App(Fun("x", Binop(Plus, Var("x"), Var("x"))), 
                                  Binop(Times, Num(3), Num(4)))) (Env.empty ())
                            = Env.Val (Num 24))
                         "eval_l same with all three";     

  (* let x = 1 in let f = fun y -> x + y in let x = 2 in f 3;; *)                                         
  unit_test (eval_s (Let("x", Num(1), 
                            Let("f", Fun("y", Binop(Plus, Var("x"), Var("y"))), 
                            Let("x", Num(2), App(Var("f"), Num(3)))))) (Env.empty ()) 
                            =  Env.Val (Num 4))
                          "eval_s with val 4";    
  unit_test (eval_d (Let("x", Num(1), 
                            Let("f", Fun("y", Binop(Plus, Var("x"), Var("y"))), 
                            Let("x", Num(2), App(Var("f"), Num(3)))))) (Env.empty ()) 
                            = Env.Val (Num 5))
                          "eval_d with val 5";                                              
  unit_test (eval_l (Let("x", Num(1), 
                            Let("f", Fun("y", Binop(Plus, Var("x"), Var("y"))), 
                            Let("x", Num(2), App(Var("f"), Num(3)))))) (Env.empty ()) 
                            =  Env.Val (Num 4))
                          "eval_l with val 4";    

  (* let x = 2 in let f = fun y -> x * y in let x = 1 in f 21;; *)
  unit_test (eval_s (Let("x", Num(2), 
                            Let("f", Fun("y", Binop(Times, Var("x"), Var("y"))), 
                            Let("x", Num(1), App(Var("f"), Num(21)))))) (Env.empty ()) 
                            =  Env.Val (Num 42))
                          "eval_s with val 42, where s=l <> d";   
  unit_test (eval_d (Let("x", Num(2), 
                            Let("f", Fun("y", Binop(Times, Var("x"), Var("y"))), 
                            Let("x", Num(1), App(Var("f"), Num(21)))))) (Env.empty ()) 
                            =  Env.Val (Num 21))
                          "eval_d with val 21, where s=l <> d";                           
  unit_test (eval_l (Let("x", Num(2), 
                            Let("f", Fun("y", Binop(Times, Var("x"), Var("y"))), 
                            Let("x", Num(1), App(Var("f"), Num(21)))))) (Env.empty ()) 
                            =  Env.Val (Num 42))
                          "eval_l with val 42, where s=l <> d";     

  (* let f = fun x -> if x = 0 then 1 else f (x - 1) in f 5;; 
    This case has eval_s and eval_l return exception Evaluation.EvalError("Unbound variable f") 
    therefore it is not tested *)                                                    
  unit_test (eval_d (Let("f", Fun("x", Conditional(Binop(Equals, Var("x"), Num(0)), 
                            Num(1), App(Var("f"), Binop(Minus, Var("x"), Num(1))))), 
                            App(Var("f"), Num(5)))) (Env.empty ()) 
                            =  Env.Val (Num 1))
                          "eval_d with val 1, where s = l = ERROR and d=1";   

(* let x = 10 in let f = fun y -> x + y in let x = 1 in f 2 ;; *)
  unit_test (eval_s (Let("x", Num(10), Let("f", Fun("y", Binop(Plus, Var("x"), Var("y"))), 
                            Let("x", Num(1), App(Var("f"), Num(2)))))) (Env.empty ()) 
                            =  Env.Val (Num 12))
                          "eval_s with val 12, where s=l <> d";
  unit_test (eval_d (Let("x", Num(10), Let("f", Fun("y", Binop(Plus, Var("x"), Var("y"))), 
                            Let("x", Num(1), App(Var("f"), Num(2)))))) (Env.empty ()) 
                            =  Env.Val (Num 3))
                          "eval_d with val 3, where s=l <> d";  
  unit_test (eval_l (Let("x", Num(10), Let("f", Fun("y", Binop(Plus, Var("x"), Var("y"))), 
                            Let("x", Num(1), App(Var("f"), Num(2)))))) (Env.empty ()) 
                            =  Env.Val (Num 12))
                          "eval_l with val 12, where s=l <> d";            
                                                                                         
  () ;;

let _ = tests () ;;
