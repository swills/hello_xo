hello: hello.c

.c.o:
	${CC} $@ $!

clean:
	@rm hello
