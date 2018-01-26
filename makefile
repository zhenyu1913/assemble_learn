
target:
	as assemble.s -o assemble.o
	ld assemble.o -o assemble
	./assemble
