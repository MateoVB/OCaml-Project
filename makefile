all: evaluation expr miniml unit_tests

evaluation: evaluation.ml
	ocamlbuild -use-ocamlfind evaluation.byte
	
expr: expr.ml
	ocamlbuild -use-ocamlfind expr.byte

miniml: miniml.ml
	ocamlbuild -use-ocamlfind miniml.byte

unit_tests: unit_tests.ml
	ocamlbuild -use-ocamlfind unit_tests.byte
	
clean:
	rm -rf _build *.byte
