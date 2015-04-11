CC=gcc
EXTFILEEXE=main

debug: CFLAGS += -ggdb
debug: all

all: main

main: main.c main.h
	$(CC)  main.c main.h -o $(EXTFILEEXE)


clean:
	rm -rf *.o 
