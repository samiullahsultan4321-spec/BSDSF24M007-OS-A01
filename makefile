CC = gcc

CFLAGS = -std=c11 -O0 -ggdb -Wall

TARGET = myexe

.PHONY: all clean

all:
	$(MAKE) -C src

clean:
	$(MAKE) -C src clean

install: all
	sudo install -m 755 bin/client_dynamic /usr/local/bin/
	sudo install -m 755 lib/libmyutils.so /usr/local/lib/
	sudo install -m 644 include/*.h /usr/local/include/
	sudo install -d /usr/local/share/man/man3
	sudo install -m 644 man/man3/*.3 /usr/local/share/man/man3/
	sudo ldconfig