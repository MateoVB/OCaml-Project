
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TRUE
    | TIMES
    | THEN
    | REC
    | RAISE
    | PLUS
    | OPEN
    | NEG
    | MINUS
    | LET
    | LESSTHAN
    | INT of (
# 21 "miniml_parse.mly"
       (int)
# 22 "miniml_parse.ml"
  )
    | IN
    | IF
    | ID of (
# 20 "miniml_parse.mly"
       (string)
# 29 "miniml_parse.ml"
  )
    | FUNCTION
    | FALSE
    | EQUALS
    | EOF
    | ELSE
    | DOT
    | CLOSE
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState47
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState39
  | MenhirState37
  | MenhirState36
  | MenhirState35
  | MenhirState34
  | MenhirState33
  | MenhirState32
  | MenhirState31
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState27
  | MenhirState26
  | MenhirState25
  | MenhirState24
  | MenhirState23
  | MenhirState22
  | MenhirState21
  | MenhirState19
  | MenhirState18
  | MenhirState17
  | MenhirState14
  | MenhirState10
  | MenhirState8
  | MenhirState4
  | MenhirState3
  | MenhirState0

# 6 "miniml_parse.mly"
  
  open Expr ;;

# 92 "miniml_parse.ml"

let rec _menhir_run18 : _menhir_env -> 'ttv_tail * _menhir_state * (Expr.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | FUNCTION ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NEG ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | OPEN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | RAISE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run22 : _menhir_env -> 'ttv_tail * _menhir_state * (Expr.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | FUNCTION ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NEG ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | OPEN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | RAISE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * (Expr.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | FUNCTION ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NEG ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | OPEN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | RAISE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run26 : _menhir_env -> 'ttv_tail * _menhir_state * (Expr.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | FUNCTION ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NEG ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | OPEN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | RAISE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * (Expr.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FUNCTION ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NEG ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | OPEN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | RAISE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Expr.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | LESSTHAN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | CLOSE | ELSE | EOF | IN | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (_2 : (
# 20 "miniml_parse.mly"
       (string)
# 293 "miniml_parse.ml"
            ))), _, (_4 : (Expr.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Expr.expr) = 
# 53 "miniml_parse.mly"
                                ( Fun(_2, _4) )
# 300 "miniml_parse.ml"
             in
            _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17)
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | CLOSE | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | MINUS | PLUS | THEN | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Expr.expr))), _), _, (_3 : (Expr.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Expr.expr) = 
# 46 "miniml_parse.mly"
                                ( Binop(Times, _1, _3) )
# 337 "miniml_parse.ml"
             in
            _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19)
    | MenhirState47 | MenhirState44 | MenhirState43 | MenhirState40 | MenhirState42 | MenhirState35 | MenhirState37 | MenhirState30 | MenhirState32 | MenhirState34 | MenhirState17 | MenhirState21 | MenhirState29 | MenhirState27 | MenhirState25 | MenhirState23 | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | LESSTHAN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21)
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | CLOSE | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | MINUS | PLUS | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Expr.expr))), _), _, (_3 : (Expr.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Expr.expr) = 
# 44 "miniml_parse.mly"
                                ( Binop(Plus, _1, _3) )
# 415 "miniml_parse.ml"
             in
            _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23)
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | CLOSE | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | MINUS | PLUS | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Expr.expr))), _), _, (_3 : (Expr.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Expr.expr) = 
# 45 "miniml_parse.mly"
                                ( Binop(Minus, _1, _3) )
# 454 "miniml_parse.ml"
             in
            _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25)
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | CLOSE | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Expr.expr))), _), _, (_3 : (Expr.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Expr.expr) = 
# 48 "miniml_parse.mly"
                                ( Binop(LessThan, _1, _3) )
# 497 "miniml_parse.ml"
             in
            _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27)
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | CLOSE | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Expr.expr))), _), _, (_3 : (Expr.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Expr.expr) = 
# 47 "miniml_parse.mly"
                                ( Binop(Equals, _1, _3) )
# 540 "miniml_parse.ml"
             in
            _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29)
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | LESSTHAN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState30 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | FUNCTION ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | ID _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | NEG ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | OPEN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | RAISE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState32 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | FUNCTION ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | ID _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | NEG ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | OPEN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | RAISE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33)
        | EQUALS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | LESSTHAN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | LESSTHAN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | CLOSE | ELSE | EOF | IN | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), _, (_2 : (Expr.expr))), _), _, (_4 : (Expr.expr))), _), _, (_6 : (Expr.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Expr.expr) = 
# 50 "miniml_parse.mly"
                                        ( Conditional(_2, _4, _6) )
# 731 "miniml_parse.ml"
             in
            _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34)
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState35 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | FUNCTION ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | ID _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | NEG ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | OPEN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | RAISE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36)
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | LESSTHAN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | LESSTHAN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | CLOSE | ELSE | EOF | IN | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), (_3 : (
# 20 "miniml_parse.mly"
       (string)
# 848 "miniml_parse.ml"
            ))), _, (_5 : (Expr.expr))), _), _, (_7 : (Expr.expr))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Expr.expr) = 
# 52 "miniml_parse.mly"
                                        ( Letrec(_3, _5, _7) )
# 857 "miniml_parse.ml"
             in
            _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState40 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | FUNCTION ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | ID _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | NEG ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | OPEN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | RAISE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | LESSTHAN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | LESSTHAN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | CLOSE | ELSE | EOF | IN | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), (_2 : (
# 20 "miniml_parse.mly"
       (string)
# 974 "miniml_parse.ml"
            ))), _, (_4 : (Expr.expr))), _), _, (_6 : (Expr.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Expr.expr) = 
# 51 "miniml_parse.mly"
                                        ( Let(_2, _4, _6) )
# 982 "miniml_parse.ml"
             in
            _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | CLOSE | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | MINUS | PLUS | THEN | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Expr.expr))) = _menhir_stack in
            let _1 = () in
            let _v : (Expr.expr) = 
# 49 "miniml_parse.mly"
                                ( Unop(Negate, _2) )
# 1017 "miniml_parse.ml"
             in
            _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CLOSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState44 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Expr.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Expr.expr) = 
# 55 "miniml_parse.mly"
                                ( _2 )
# 1040 "miniml_parse.ml"
             in
            _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v
        | EQUALS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | LESSTHAN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState47 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Expr.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Expr.expr) = 
# 35 "miniml_parse.mly"
                                ( _1 )
# 1091 "miniml_parse.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Expr.expr)) = _v in
            Obj.magic _1
        | EQUALS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | FUNCTION ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | ID _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | LESSTHAN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | NEG ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | OPEN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | RAISE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TIMES ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_goto_expnoapp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Expr.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState3 | MenhirState4 | MenhirState41 | MenhirState39 | MenhirState36 | MenhirState8 | MenhirState33 | MenhirState31 | MenhirState10 | MenhirState28 | MenhirState26 | MenhirState24 | MenhirState22 | MenhirState18 | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Expr.expr)) = _v in
        let _v : (Expr.expr) = 
# 38 "miniml_parse.mly"
                                ( _1 )
# 1142 "miniml_parse.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState47 | MenhirState44 | MenhirState43 | MenhirState40 | MenhirState42 | MenhirState35 | MenhirState37 | MenhirState30 | MenhirState32 | MenhirState34 | MenhirState17 | MenhirState21 | MenhirState29 | MenhirState27 | MenhirState25 | MenhirState23 | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Expr.expr)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Expr.expr))) = _menhir_stack in
        let _v : (Expr.expr) = 
# 37 "miniml_parse.mly"
                                ( App(_1, _2) )
# 1153 "miniml_parse.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Expr.expr) = 
# 41 "miniml_parse.mly"
                                ( Bool true )
# 1300 "miniml_parse.ml"
     in
    _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Expr.expr) = 
# 54 "miniml_parse.mly"
                                ( Raise )
# 1312 "miniml_parse.ml"
     in
    _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | FUNCTION ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | NEG ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | OPEN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | RAISE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FUNCTION ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | NEG ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | OPEN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | RAISE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | FUNCTION ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | ID _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | NEG ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | OPEN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | RAISE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | REC ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EQUALS ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | FALSE ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                | FUNCTION ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                | ID _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
                | IF ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                | INT _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
                | LET ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                | NEG ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                | OPEN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                | RAISE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                | TRUE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "miniml_parse.mly"
       (int)
# 1487 "miniml_parse.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 21 "miniml_parse.mly"
       (int)
# 1495 "miniml_parse.ml"
    )) = _v in
    let _v : (Expr.expr) = 
# 40 "miniml_parse.mly"
                                ( Num _1 )
# 1500 "miniml_parse.ml"
     in
    _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | FUNCTION ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NEG ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | OPEN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | RAISE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "miniml_parse.mly"
       (string)
# 1538 "miniml_parse.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 20 "miniml_parse.mly"
       (string)
# 1546 "miniml_parse.ml"
    )) = _v in
    let _v : (Expr.expr) = 
# 43 "miniml_parse.mly"
                                ( Var _1 )
# 1551 "miniml_parse.ml"
     in
    _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | FUNCTION ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | ID _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | NEG ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | OPEN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | RAISE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Expr.expr) = 
# 42 "miniml_parse.mly"
                                ( Bool false )
# 1617 "miniml_parse.ml"
     in
    _menhir_goto_expnoapp _menhir_env _menhir_stack _menhir_s _v

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and input : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Expr.expr) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUNCTION ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NEG ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | OPEN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RAISE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 58 "miniml_parse.mly"
  

# 1673 "miniml_parse.ml"

# 269 "<standard.mly>"
  

# 1678 "miniml_parse.ml"
