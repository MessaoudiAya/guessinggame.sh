README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "The number of lines of code contained in guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
