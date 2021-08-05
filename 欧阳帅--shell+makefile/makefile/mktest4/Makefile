obj := main.o hello.o test.o name.o

final:$(obj)
	gcc -o final $(obj)

sources := main.c hello.c test.c name.c
include $(sources:.c=.d)
include d.mk

.PHONY:clean
clean:
	rm -f $(obj) final
	
