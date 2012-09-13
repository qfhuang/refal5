%.rsl: %.ref
	refc $<

%: %.rsl
	refgo $<

clean:
	rm -f *.rsl *.lis
