

compile:
	clang -E -o prog.i prog.c
	clang -S prog.c
	clang -emit-llvm -S prog.c

clean:
	rm -f *~
	rm -f prog
	rm -f *.s
	rm -f *.i
	rm -f *.ll
	rm -f objdump*.txt

