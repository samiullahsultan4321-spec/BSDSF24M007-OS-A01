CC = gcc
CFLAGS = -std=c11 -O0 -ggdb -Wall
INCLUDE = -I../include
TARGET = ../bin/client
all: $(TARGET)

$(TARGET): main.o myfilefunctions.o mystrfunctions.o
	mkdir -p ../bin
	$(CC) $(CFLAGS) main.o myfilefunctions.o mystrfunctions.o -o $(TARGET)
main.o: main.c ../include/mystrfunctions.h ../include/myfilefunctions.h
	$(CC) $(CFLAGS) $(INCLUDE) -c main.c 

mystrfunctions.o: mystrfunctions.c ../include/mystrfunctions.h 
	$(CC) $(CFLAGS) $(INCLUDE) -c mystrfunctions.c 

myfilefunctions.o: myfilefunctions.c ../include/myfilefunctions.h 
	$(CC) $(CFLAGS) $(INCLUDE) -c myfilefunctions.c

.PHONY: all clean
clean:
	rm -f *.o $(TARGET)