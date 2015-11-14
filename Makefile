all:	example.pdf

example.pdf:
	@echo "-> building example.pdf..."
	cd example && ./build.sh
	mv example/example.pdf ./
	cd example && ./clean.sh

clean:
	rm example.pdf
	
package:
	cp -Rf 	example.pdf 	\
		ewuthesis.cls	\
		Makefile	\
		README.md	\
		example		texlive-ewuthesis/
	tar -czf packaged/ewuthesis.tgz texlive-ewuthesis/*
