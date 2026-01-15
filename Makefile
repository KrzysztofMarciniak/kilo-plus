PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

all: kilop

kilop: kilo.c
	$(CC) -o kilop kilo.c -Wall -W -pedantic -std=c99

install: kilop
	install -m 0755 kilop $(BINDIR)/kilop

clean:
	rm -f kilop

