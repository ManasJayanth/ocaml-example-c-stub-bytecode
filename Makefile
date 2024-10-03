cstub.cma: stub.o stub.cmo
	ocamlmklib -o cstub $^

stub.cmo: stub.ml
	ocamlc -g -c $^

stub.o: stub.c
	ocamlc -ccopt -g $^

a.out: cstub.cma main.ml
	ocamlc -g -cclib -L. $^

.PHONY: clean
clean:
	rm a.out stub.o stub.cmo cstub.cma
