CFLAGS=\
	-std=c99 \
	-fshort-enums \
	-fsanitize=address \
	-g \
	-W \
	-Wall \
	-Wextra \
	-Wpedantic \
	-Wimplicit-fallthrough \
	-Wshadow \
	-Wstrict-prototypes \
	-Wmissing-prototypes

all: kilo tidy

kilo: kilo.c
	$(CC) $(CFLAGS) -o kilo kilo.c

tidy: kilo.c
	clang-format -i $^

clean:
	rm -r kilo kilo.dSYM

.PHONY: tidy clean
