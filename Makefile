# Compiler
CC = gcc
LFLAGS = -lgit2 -lutil
# Flags for ensuring proper formatting of C code
CFLAGS = -ansi -pedantic -g -Wstrict-prototypes -Wall

all: monitor create_error_commit

monitor: monitor.o
	$(CC) monitor.o -o monitor $(LFLAGS)

monitor.o: monitor.c
	$(CC) -c monitor.c

create_error_commit: create_error_commit.o
	$(CC) create_error_commit.o -o create_error_commit $(LFLAGS)

create_error_commit.o: create_error_commit.c
	$(CC) -c create_error_commit.c 

check: 
	c_style_check pipes.c

clean:
	rm *.o monitor create_error_commit create_error_commit_old typescript