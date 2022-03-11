hello: hello.c
CFLAGS+=	-lxo

.c.o:
	${CC} $@ $!

clean:
	@rm -f hello
