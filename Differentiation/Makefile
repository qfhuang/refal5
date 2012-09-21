MODULES = Main.rsl Differentiation.rsl Parser.rsl Lexer.rsl
RUN     = Main+Differentiation+Parser+Lexer

default: run

%.rsl: %.ref
	refc $<

run: $(MODULES)
	refgo $(RUN)

clean:
	rm -f *.rsl *.lis
