LDFLAGS+=	-lxo
CC=	cc

all: hello

hello: hello.c
	${CC} ${STATIC_CFLAGS} ${CFLAGS} -c $> -o ${.TARGET}.o
	${CC} ${LDFLAGS} -o ${.TARGET} ${.TARGET}.o
	strip ${.TARGET}

clean:
	@rm -f hello hello.o
