# Generate guessing game README.md
SHELL = /bin/bash

.PHONY: all README.md
all: README.md

README.md:
	@(echo "# Guessing Game";                                \
	  echo -e "\nDate created: " $$(date) ;                  \
	  echo -e "\nLines of code: "                            \
		$$(wc -l $(CURDIR)/guessinggame.sh 2>/dev/null)) \
	> $@
