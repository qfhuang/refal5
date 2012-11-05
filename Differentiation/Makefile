MODULES = \
	Main.rsl \
	Format.rsl \
	Simplification.rsl \
	SimplificationCommon.rsl \
	SimplePresentation.rsl \
	Differentiation.rsl \
	Parser.rsl \
	Utils.rsl \
	Lexer.rsl

RUN = Main+Format+Simplification+SimplificationCommon+SimplePresentation+Differentiation+Parser+Utils+Lexer

default: run

%.rsl: %.ref
	refc $<

run: $(MODULES)
	refgo $(RUN)

clean:
	rm -f *.rsl *.lis
