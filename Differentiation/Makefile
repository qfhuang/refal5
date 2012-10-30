MODULES = Main.rsl Differentiation.rsl Parser.rsl Utils.rsl Lexer.rsl
RUN     = Main+Differentiation+Parser+Utils+Lexer

default: run

%.rsl: %.ref
	refc $<

run: $(MODULES)
	refgo $(RUN)

clean:
	rm -f *.rsl *.lis
