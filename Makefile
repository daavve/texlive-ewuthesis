all:	example.pdf

example.pdf:
	@echo "-> building example.pdf..."
	@cd example && ./build.sh > /dev/null
	@mv example/example.pdf ./

clean:  example/example.pdf
	rm example/example.pdf

publish: # files
	#
	# TODO:  Build some publish thing, probably involving PKGBUILD