all:	example.pdf

example.pdf:
	@echo "-> building example.pdf..."
	cd example && ./build.sh
	mv example/example.pdf ./

clean:
	rm example.pdf
	
package:
	tar -czf packaged/ewuthesis.tgz --exclude=.git --exclude=packaged --exclude=ewuthesisstyle.kilepr ../texlive-ewuthesis
