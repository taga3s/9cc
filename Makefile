build:
				docker run --rm -v ./:/9cc -w /9cc compilerbook cc -std=c11 -g -static -o 9cc ./9cc.c

test: build
				./test.sh

clean:
				rm -f 9cc *.o *~ tmp*

.PHONY: test clean
