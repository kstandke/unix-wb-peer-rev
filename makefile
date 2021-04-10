
all: README.md

README.md: guessinggame.sh
	touch README.md
	pwd  >> README.md
	date >> README.md
	echo "" >> README.md
	echo "Lines of code in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | grep -P "[0-9]+" >> README.md

clean:
	rm README.md
