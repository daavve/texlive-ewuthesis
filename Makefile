all:	example.pdf

example.pdf:
	@echo "-> building example.pdf..."
	cd example && ./build.sh
	mv example/example.pdf ./

clean:  example.pdf
	rm example.pdf

publish: # files
	#
	# TODO:  Build some publish thing, probably involving PKGBUILD