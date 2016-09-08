

compile:
	gcc -E -o prog.i prog.c
	gcc -S prog.c
	gcc -c prog.c
	gcc -o prog prog.c

decompile1:
	objdump -d prog.o > objdump1.txt

decompile2:
	objdump -d prog > objdump2.txt

all: compile decompile1 decompile2

clean:
	rm -f *~
	rm -f prog
	rm -f *.s
	rm -f *.i
	rm -f *.o
	rm -f objdump*.txt

