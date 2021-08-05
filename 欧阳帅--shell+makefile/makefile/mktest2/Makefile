obj=main.o test.o hello.o name.o

all:final test print 
#.PHONY:all

test:
	@echo "this is a test"
	@cat Makefile
	@wc Makefile
	@clear

print:*.c
	@echo "/************************/"
	@cat $<

clean:
	rm final $(obj)

final:$(obj)
	cc -o final $(obj)

main.o:*.h main.c
test.o:test.h test1.h
hello.o:hello.h
name.o:name.h
