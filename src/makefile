CC = gcc
CFLAGS = -std=c11 -O0 -ggdb -Wall
INCLUDE = -I../include
TARGET = ../bin/client_static
LIBRARY = ../lib/libmyutils.a
OBJECTS = main.o mystrfunctions.o myfilefunctions.o
all: $(TARGET)

$(TARGET): main.o $(LIBRARY)
	mkdir -p ../bin
	$(CC) $(CFLAGS) main.o $(LIBRARY) -o $(TARGET)

$(LIBRARY): mystrfunctions.o myfilefunctions.o
	mkdir -p ../lib
	ar -r $(LIBRARY) mystrfunctions.o myfilefunctions.o
main.o: main.c ../include/mystrfunctions.h ../include/myfilefunctions.h
	$(CC) $(CFLAGS) $(INCLUDE) -c main.c 

mystrfunctions.o: mystrfunctions.c ../include/mystrfunctions.h 
	$(CC) $(CFLAGS) $(INCLUDE) -c mystrfunctions.c 

myfilefunctions.o: myfilefunctions.c ../include/myfilefunctions.h 
	$(CC) $(CFLAGS) $(INCLUDE) -c myfilefunctions.c

.PHONY: all clean
clean:
	rm -f *.o $(TARGET) $(LIBRARY)

# CC = gcc

# CFLAGS = -std=c11 -O0 -ggdb -Wall

# INCLUDE = -I../include

# TARGET = ../bin/client

# OBJECTS = main.o mystrfunctions.o myfilefunctions.o

# .PHONY: all clean

# all: $(TARGET)

# $(TARGET): $(OBJECTS)
# 	mkdir -p ../bin
# 	$(CC) $(CFLAGS) $(OBJECTS) -o $(TARGET)

# main.o: main.c ../include/mystrfunctions.h ../include/myfilefunctions.h
# 	$(CC) $(CFLAGS) $(INCLUDE) -c main.c -o main.o

# mystrfunctions.o: mystrfunctions.c ../include/mystrfunctions.h
# 	$(CC) $(CFLAGS) $(INCLUDE) -c mystrfunctions.c -o mystrfunctions.o

# myfilefunctions.o: myfilefunctions.c ../include/myfilefunctions.h
# 	$(CC) $(CFLAGS) $(INCLUDE) -c myfilefunctions.c -o myfilefunctions.o

# clean:
# 	rm -f $(OBJECTS) $(TARGET)