MODULES = \
	Main.rsl \
	Format.rsl \
	Simplification.rsl \
	SimplePresentation.rsl \
	Differentiation.rsl \
	Parser.rsl \
	Utils.rsl \
	Lexer.rsl

RUN = Main+Format+Simplification+SimplePresentation+Differentiation+Parser+Utils+Lexer

default: run

%.rsl: %.ref
	refc $<

run: $(MODULES)
	refgo $(RUN)

clean:
	rm -f *.rsl *.lis
