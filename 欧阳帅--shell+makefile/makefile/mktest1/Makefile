obj=main.o test.o hello.o name.o
final:$(obj)
	cc -o final $(obj)
main.o:*.h
test.o:test.h test1.h
hello.o:hello.h
name.o:name.h

.PHONY:clean
clean:
	rm final $(obj)
