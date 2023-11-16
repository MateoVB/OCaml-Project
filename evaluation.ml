(* 
                         CS 51 Final Project
                         MiniML -- Evaluation
*)

(* This module implements a small untyped ML-like language under
   various operational semantics.
 *)

open Expr ;;
  
(* Exception for evaluator runtime, generated by a runtime error in
   the interpreter *)
exception EvalError of string ;;
  
(* Exception for evaluator runtime, generated by an explicit `raise`
   construct in the object language *)
exception EvalException ;;

(*......................................................................
  Environments and values 
 *)

module type ENV = 
  sig
    (* the type of environments *)
    type env
    (* the type of values stored in environments *)
    type value =
      | Val of expr
      | Closure of (expr * env)
   
    (* empty () -- Returns an empty environment *)
    val empty : unit -> env

    (* close expr env -- Returns a closure for `expr` and its `env` *)
    val close : expr -> env -> value

    (* lookup env varid -- Returns the value in the `env` for the
       `varid`, raising an `Eval_error` if not found *)
    val lookup : env -> varid -> value

    (* extend env varid loc -- Returns a new environment just like
       `env` except that it maps the variable `varid` to the `value`
       stored at `loc`. This allows later changing the value, an
       ability used in the evaluation of `letrec`. To make good on
       this, extending an environment needs to preserve the previous
       bindings in a physical, not just structural, way. *)
    val extend : env -> varid -> value ref -> env

    (* env_to_string env -- Returns a printable string representation
       of environment `env` *)
    val env_to_string : env -> string
                                 
    (* value_to_string ?printenvp value -- Returns a printable string
       representation of a value; the optional flag `printenvp`
       (default: `true`) determines whether to include the environment
       in the string representation when called on a closure *)
    val value_to_string : ?printenvp:bool -> value -> string
  end

module Env : ENV =
  struct
    type env = (varid * value ref) list
     and value =
       | Val of expr
       | Closure of (expr * env)

    let empty () : env = [] ;;

    let close (exp : expr) (env : env) : value =
      Closure (exp, env) ;;

    let lookup (env : env) (varname : varid) : value =
      if List.mem_assoc varname env then !(List.assoc varname env)
      else raise (EvalError "Variable not found")

    let extend (env : env) (varname : varid) (loc : value ref) : env = 
      (varname, loc) :: (List.remove_assoc varname env)

    let rec value_to_string ?(printenvp : bool = true) (v : value) : string =
      match v with 
      | Val x -> exp_to_concrete_string x 
      | Closure (exp, env) -> 
        if printenvp = false then exp_to_concrete_string exp 
        else exp_to_concrete_string exp ^ env_to_string env
    and env_to_string (env : env) : string =
      match env with 
      | [] -> ""
      | (varid1, value1):: tl -> 
        varid1 ^ ", " ^ value_to_string !value1 ^ " and " ^ env_to_string tl
  end
;;

(*......................................................................
  Evaluation functions

  Each of the evaluation functions below evaluates an expression `exp`
  in an environment `env` returning a result of type `value`. We've
  provided an initial implementation for a trivial evaluator, which
  just converts the expression unchanged to a `value` and returns it,
  along with "stub code" for three more evaluators: a substitution
  model evaluator and dynamic and lexical environment model versions.

  Each evaluator is of type `expr -> Env.env -> Env.value` for
  consistency, though some of the evaluators don't need an
  environment, and some will only return values that are "bare
  values" (that is, not closures). 

  DO NOT CHANGE THE TYPE SIGNATURES OF THESE FUNCTIONS. Compilation
  against our unit tests relies on their having these signatures. If
  you want to implement an extension whose evaluator has a different
  signature, implement it as `eval_e` below.  *)

(* The TRIVIAL EVALUATOR, which leaves the expression to be evaluated
   essentially unchanged, just converted to a value for consistency
   with the signature of the evaluators. *)
   
let eval_t (exp : expr) (_env : Env.env) : Env.value =
  (* coerce the expr, unchanged, into a value *)
  Env.Val exp ;;

let binopeval (op : binop) (v1 : expr) (v2 : expr) : expr =
  match op, v1, v2 with
  | Plus, Num x1, Num x2 -> Num (x1 + x2)
  | Plus, _, _ -> raise (EvalError "can't add non-integers")
  | Minus, Num x1, Num x2 -> Num (x1 - x2)
  | Minus, _, _ -> raise (EvalError "can't subtract non-integers")
  | Times, Num x1, Num x2 -> Num (x1 * x2) 
  | Times, _, _ -> raise (EvalError "can't multiply non-integers")
  | Equals, Num x1, Num x2 -> Bool (x1 = x2)
  | Equals, Bool x1, Bool x2 -> Bool (x1 = x2)
  | Equals, _, _ -> raise (EvalError "Non-valid arguments for equals")
  | LessThan, Num x1, Num x2 -> Bool (x1 < x2) 
  | LessThan, Bool x1, Bool x2 -> Bool (x1 < x2)
  | LessThan, _, _ -> raise (EvalError "Non-valid arguments for lessthan")
;;

let unopeval (op : unop) (e : expr) : expr = 
  match op, e with 
  | Negate, Num x -> Num (~- x)
  | Negate, _ -> raise (EvalError "can't negate non-integers") 
;;

let extract (e : Env.value) = 
  match e with 
  | Val (exp) -> exp
  | Closure (exp, _env) -> exp 
;;

(* The SUBSTITUTION MODEL evaluator -- to be completed *)
let eval_s (exp : expr) (_env : Env.env) : Env.value =
  let rec eval (exp: expr): expr = 
    match exp with
    | Num _ -> exp
    | Var (x) -> raise (EvalError ("Unbound variable " ^ x))
    | Unop (op, exp1) -> unopeval op (eval exp1)
    | Binop (op, exp1, exp2) -> binopeval op (eval exp1) (eval exp2)
    | Let (x, def, body) -> eval (subst x (eval def) body)
    | Bool (_b) -> exp                        
    | Conditional (exprif, expryes, exprno) -> 
      (match eval exprif with 
      | Bool x -> if x then eval expryes else eval exprno
      | _ -> raise (EvalError "Non-valid argument for conditional"))
    | Fun (_var, _expr) -> exp                  
    | Letrec (var, def, body) -> 
      eval (subst var (subst var (Letrec (var, (eval def), Var (var))) 
           (eval def)) body)                               
    | App (expr1, expr2) ->   
      (match eval expr1 with 
      | Fun (var, ex) -> eval (subst var (eval expr2) ex) 
      | _ -> raise (EvalError "Non-valid argument for function"))
    | Raise -> raise EvalException
    | Unassigned -> raise (EvalError "Unassigned value")
  in
  Env.Val (eval exp) ;;

(* The DYNAMICALLY-SCOPED ENVIRONMENT MODEL evaluator -- to be
   completed *)
let rec eval_d ?(is_eval_d : bool = true) (exp : expr) (env : Env.env) : Env.value =
  match exp with
    | Num _ -> Env.Val exp
    | Var (x) -> Env.lookup env x
    | Unop (op, exp1) -> 
      if not is_eval_d then eval_d ~is_eval_d:false 
                            (unopeval op (extract(eval_d exp1 env))) env
      else eval_d (unopeval op (extract(eval_d exp1 env))) env
    | Binop (op, exp1, exp2) -> 
      if not is_eval_d then 
        eval_d ~is_eval_d:false (binopeval op (extract(eval_d ~is_eval_d:false exp1 env)) 
                                (extract(eval_d ~is_eval_d:false exp2 env))) env
      else  
        eval_d (binopeval op (extract(eval_d exp1 env)) 
                             (extract(eval_d exp2 env))) env
    | Let (x, def, body) -> 
      if not is_eval_d then 
        let defval = eval_d ~is_eval_d:false def env in 
        let newenv = Env.extend env x (ref defval) in 
        eval_d ~is_eval_d:false body newenv
      else 
        let defval = eval_d def env in 
        let newenv = Env.extend env x (ref defval) in 
        eval_d body newenv
    | Bool (_b) -> Env.Val exp                        
    | Conditional (exprif, expryes, exprno) -> 
      if not is_eval_d then 
        (match extract (eval_d ~is_eval_d:false exprif env) with 
        | Bool x -> if x then eval_d ~is_eval_d:false expryes env 
                    else eval_d ~is_eval_d:false exprno env
        | _ -> raise (EvalError "Non-valid argument for conditional"))
      else 
        (match extract (eval_d exprif env) with 
        | Bool x -> if x then eval_d expryes env else eval_d exprno env
        | _ -> raise (EvalError "Non-valid argument for conditional"))
    | Fun (_var, _expr) -> 
      if not is_eval_d then Env.close exp env 
      else Env.Val exp                
    | Letrec (var, def, body) -> 
      if not is_eval_d then 
        let refunassigned = ref (Env.Val Unassigned) in 
        let newenv = Env.extend env var refunassigned in 
        let defval = eval_d ~is_eval_d:false def newenv in 
        refunassigned := defval;
        eval_d ~is_eval_d:false body newenv       
      else
        let refunassigned = ref (Env.Val Unassigned) in 
        let newenv = Env.extend env var refunassigned in 
        let defval = eval_d def newenv in 
        refunassigned := defval;
        eval_d body newenv                              
    | App (expr1, expr2) ->   
      if not is_eval_d then 
        (match eval_d ~is_eval_d:false expr1 env with 
        | Closure (Fun (var, newbody), lexicalenv) -> 
          let newapplied = eval_d ~is_eval_d:false expr2 env in 
          let newenv = Env.extend lexicalenv var (ref newapplied) in 
          eval_d ~is_eval_d:false newbody newenv
        | _ -> raise (EvalError "Non-valid argument for function"))
      else 
        (match extract(eval_d expr1 env) with 
        | Fun (var, newbody) -> 
          let newapplied = eval_d expr2 env in 
          let newenv = Env.extend env var (ref newapplied) in 
          eval_d newbody newenv
        | Var _ -> Env.Val (App(extract (eval_d expr1 env), 
                                extract(eval_d expr2 env)))
      | _ -> raise (EvalError "Non-valid argument for function"))
    | Raise -> raise EvalException
    | Unassigned -> raise (EvalError "Unassigned value") 
;;
       
(* The LEXICALLY-SCOPED ENVIRONMENT MODEL evaluator -- optionally
   completed as (part of) your extension *)
let eval_l (exp : expr) (env : Env.env) : Env.value =                          
  eval_d ~is_eval_d:false exp env ;;

(* The EXTENDED evaluator -- if you want, you can provide your
   extension as a separate evaluator, or if it is type- and
   correctness-compatible with one of the above, you can incorporate
   your extensions within `eval_s`, `eval_d`, or `eval_l`. *)

let eval_e _ =
  failwith "eval_e not implemented" ;;
  
(* Connecting the evaluators to the external world. The REPL in
   `miniml.ml` uses a call to the single function `evaluate` defined
   here. Initially, `evaluate` is the trivial evaluator `eval_t`. But
   you can define it to use any of the other evaluators as you proceed
   to implement them. (We will directly unit test the four evaluators
   above, not the `evaluate` function, so it doesn't matter how it's
   set when you submit your solution.) *)
let evaluate = eval_t ;;
let evaluate1 = eval_s ;;
let evaluate2 = eval_d ;;
let evaluate3 = eval_l ;;