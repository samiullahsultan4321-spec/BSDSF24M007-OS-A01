CC = gcc

CFLAGS = -std=c11 -O0 -ggdb -Wall

TARGET = myexe

.PHONY: all clean

all:
	$(MAKE) -C src

clean:
	$(MAKE) -C src clean