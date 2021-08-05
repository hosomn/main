obj=main.o test.o hello.o name.o test

final:$(obj)
	cc -o final $(filter %.o,$(obj))
$(filter %.o,$(obj)):%.o: %.c
	cc -c $<  -o $@

test:
	@echo "Just a test"

clean:
	rm final $(filter %.o,$(obj))
