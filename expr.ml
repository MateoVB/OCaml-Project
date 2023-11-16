(* 
                         CS 51 Final Project
                        MiniML -- Expressions
*)

(*......................................................................
  Abstract syntax of MiniML expressions 
 *)

type unop =
  | Negate
;;
    
type binop =
  | Plus
  | Minus
  | Times
  | Equals
  | LessThan
;;

type varid = string ;;
  
type expr =
  | Var of varid                         (* variables *)
  | Num of int                           (* integers *)
  | Bool of bool                         (* booleans *)
  | Unop of unop * expr                  (* unary operators *)
  | Binop of binop * expr * expr         (* binary operators *)
  | Conditional of expr * expr * expr    (* if then else *)
  | Fun of varid * expr                  (* function definitions *)
  | Let of varid * expr * expr           (* local naming *)
  | Letrec of varid * expr * expr        (* recursive local naming *)
  | Raise                                (* exceptions *)
  | Unassigned                           (* (temporarily) unassigned *)
  | App of expr * expr                   (* function applications *)
;;
  
(*......................................................................
  Manipulation of variable names (varids) and sets of them
 *)

(* varidset -- Sets of varids *)
module SS = Set.Make (struct
                       type t = varid
                       let compare = String.compare
                     end ) ;;

type varidset = SS.t ;;

(* same_vars varids1 varids2 -- Tests to see if two `varid` sets have
   the same elements (for testing purposes) *)
let same_vars : varidset -> varidset -> bool =
  SS.equal;;

(* vars_of_list varids -- Generates a set of variable names from a
   list of `varid`s (for testing purposes) *)
let vars_of_list : string list -> varidset =
  SS.of_list ;;
  
(* free_vars exp -- Returns the set of `varid`s corresponding to free
   variables in `exp` *)
let rec free_vars (exp : expr) : varidset =
  match exp with 
  | Var (v) -> SS.singleton v                   
  | Num (_i) -> SS.empty              
  | Unop (_u, ex) -> free_vars ex
  | Binop (_bin, ex1, ex2) -> SS.union (free_vars ex1) (free_vars ex2)
  | Fun (var, ex) -> SS.remove var (free_vars ex)
  | Let (var, expr1, expr2) -> SS.union (free_vars expr1) (SS.remove var (free_vars expr2))
  | Letrec (var, expr1, expr2) -> SS.union (SS.remove var (free_vars expr1)) (SS.remove var (free_vars expr2))
  | App (expr1, expr2) -> SS.union (free_vars expr1) (free_vars expr2)
  | _ -> SS.empty ;;
  
(* new_varname () -- Returns a freshly minted `varid` constructed with
   a running counter a la `gensym`. Assumes no variable names use the
   prefix "var". (Otherwise, they might accidentally be the same as a
   generated variable name.) *)
let space = ref 0 ;;
let new_varname () : varid =
  let gensym : string -> string =
    fun s -> 
      let origin = !space in 
      space := !space + 1; 
      s ^ string_of_int origin
  in gensym "var" ;;

(*.....................................................................
  Substitution 

  Substitution of expressions for free occurrences of variables is the
  cornerstone of the substitution model for functional programming
  semantics.
 *)

(* subst var_name repl exp -- Return the expression `exp` with `repl`
   substituted for free occurrences of `var_name`, avoiding variable
   capture *)
let rec subst (var_name : varid) (repl : expr) (exp : expr) : expr =
  match exp with
  | Var x -> if x = var_name then repl else exp
  | Num _n -> exp
  | Unop(op, arg) -> Unop(op, subst var_name repl arg)
  | Binop(op, arg1, arg2) -> Binop(op, subst var_name repl arg1, subst var_name repl arg2)
  | Let(y, def, body) ->
    if y <> var_name && not(SS.mem y (free_vars repl)) then
      Let(y, subst var_name repl def, subst var_name repl body)
    else if y <> var_name && SS.mem y (free_vars repl) then 
      let newvar = new_varname () in 
      Let(newvar, subst var_name repl (subst y (Var newvar) def), 
                  subst var_name repl (subst y (Var newvar) body))
    else
      Let(y, subst var_name repl def, body)
  | Fun (var, ex) -> 
    if var <> var_name && not(SS.mem var (free_vars repl)) then
      Fun(var, subst var_name repl ex)
    else if var <> var_name && SS.mem var (free_vars repl) then 
      let newvar = new_varname () in 
      Fun(newvar, subst var_name repl (subst var (Var newvar) ex))
    else
      exp
  | Letrec (x, def, body) -> 
    if x <> var_name && not(SS.mem x (free_vars repl)) then
      Letrec(x, subst var_name repl def, subst var_name repl body)
    else if x <> var_name && SS.mem x (free_vars repl) then 
      let newvar = new_varname () in 
      Letrec(newvar, subst var_name repl (subst x (Var newvar) def),
                      subst var_name repl (subst x (Var newvar) body))
    else
      exp
  | App (expr1, expr2) -> App(subst var_name repl expr1, subst var_name repl expr2)
  | Conditional (exif, exyes, exno) -> Conditional (subst var_name repl exif, 
                                                    subst var_name repl exyes, 
                                                    subst var_name repl exno)
  | _ -> exp
;;

(*......................................................................
  String representations of expressions
 *)
   
(* exp_to_concrete_string exp -- Returns a string representation of
   the concrete syntax of the expression `exp` *)
let rec exp_to_concrete_string (exp : expr) : string =
  match exp with 
  | Var (v) -> v                      
  | Num (i) -> string_of_int i                  
  | Bool (b) -> string_of_bool b                     
  | Unop (u, ex) -> (match u with               
                    | Negate -> " ~- " ^ exp_to_concrete_string ex)
  | Binop (bin, ex1, ex2) -> 
    (match bin with    
    | Plus -> exp_to_concrete_string ex1 ^ " + " ^ exp_to_concrete_string ex2
    | Minus -> exp_to_concrete_string ex1 ^ " - " ^ exp_to_concrete_string ex2
    | Times -> exp_to_concrete_string ex1 ^ " * " ^ exp_to_concrete_string ex2
    | Equals -> exp_to_concrete_string ex1 ^ " = " ^ exp_to_concrete_string ex2
    | LessThan -> exp_to_concrete_string ex1 ^ " < " ^ exp_to_concrete_string ex2 )
  | Conditional (exif, exyes, exno) ->  
    "if " ^ exp_to_concrete_string exif ^ " then " ^ exp_to_concrete_string exyes ^
    " else " ^ exp_to_concrete_string exno 
  | Fun (var, ex) -> var ^ exp_to_concrete_string ex  
  | Let (var, expr1, expr2) ->  
    "let " ^ var ^ exp_to_concrete_string expr1 ^ " = " ^ exp_to_concrete_string expr2 
  | Letrec (var, expr1, expr2) -> 
    "let rec " ^ var ^ exp_to_concrete_string expr1 ^ " = " ^ exp_to_concrete_string expr2   
  | Raise -> "raise "     
  | Unassigned -> "unassigned "                     
  | App (expr1, expr2) ->  
    exp_to_concrete_string expr1 ^ " " ^ exp_to_concrete_string expr2          
  ;;
     
(* exp_to_abstract_string exp -- Return a string representation of the
   abstract syntax of the expression `exp` *)
let rec exp_to_abstract_string (exp : expr) : string =
  match exp with 
  | Var (v) -> "Var(" ^ v ^ ")"                      
  | Num (i) -> "Num(" ^ string_of_int i ^ ")"        
  | Bool (b) -> "Bool(" ^ string_of_bool b ^ ")"            
  | Unop (u, ex) -> (match u with                 
                    | Negate -> "Negate(" ^ exp_to_abstract_string ex ^ ")" )
  | Binop (bin, ex1, ex2) -> 
    let sign = match bin with    
               | Plus -> "Plus" 
               | Minus -> "Minus" 
               | Times -> "Times" 
               | Equals -> "Equals" 
               | LessThan -> "LessThan" 
    in "Binop(" ^ sign ^ ", " ^ exp_to_abstract_string ex1 ^ ", " ^ 
        exp_to_abstract_string ex2 ^ ")"
  | Conditional (exif, exyes, exno) ->  
    "Conditional(" ^ exp_to_abstract_string exif ^ ", " ^ exp_to_abstract_string exyes ^
    ", " ^ exp_to_abstract_string exno ^ ")" 
  | Fun (var, ex) -> "Fun(" ^ var ^ ", " ^ exp_to_abstract_string ex ^ ")"              
  | Let (var, expr1, expr2) ->  
    "Let(" ^ var ^ ", " ^ exp_to_abstract_string expr1 ^ ", " ^ 
    exp_to_abstract_string expr2 ^ ")"    
  | Letrec (var, expr1, expr2) -> 
    "Letrec(" ^ var ^ ", " ^ exp_to_abstract_string expr1 ^ ", " ^ 
    exp_to_abstract_string expr2 ^ ")"   
  | Raise -> "Raise "                          
  | Unassigned -> "Unassigned "                        
  | App (expr1, expr2) -> 
    "App(" ^ exp_to_abstract_string expr1 ^ ", " ^ exp_to_abstract_string expr2 ^ ")"             (* function applications *)
  ;;