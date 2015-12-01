all:	example.pdf

example.pdf:
	@echo "-> building example.pdf..."
	cd example && ./build.sh
	cd example && ./clean.sh
	mv -f example/example.pdf ./
	
clean: example.pdf
	rm example.pdf
	
pkg:
	cp -Rf 	example.pdf 	\
		ewuthesis.cls	\
		Makefile	\
		README.md	\
		example		texlive-ewuthesis/
	tar -czf packaged/ewuthesis.tgz texlive-ewuthesis/*
	cd ../texlive-ewuthesis-pkg && ./buildInstall.sh
	
	
