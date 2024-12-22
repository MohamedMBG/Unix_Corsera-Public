README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "Date and time when make was run: $(shell date)" >> README.md
	@echo "Number of lines of code in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md

