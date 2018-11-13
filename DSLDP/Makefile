example1: property_checker
	./property_checker data/test.csv > data/test.output
	diff -s data/test.output data/test.expected_output

property_checker.c: src/DSLExamples.hs build
	stack runhaskell src/DSLExamples.hs

property_checker: property_checker.c
	clang -lcsv -o property_checker property_checker.c

dependencies:
	sudo apt install clang libcsv-dev stack
	wget -qO- https://get.haskellstack.org/ | sh

build:
	stack build
