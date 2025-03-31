CC=gcc
CFLAGS=-I. -lpthread
OBJ = Player1.o Player2.o
CLN = Player1 Player2

all: Player2 Player1

Player2: Player2.c
	$(CC) -c Player2.c $(CFLAGS)
	$(CC) -o $@ Player2.o $(CFLAGS)

Player1: Player1.c
	$(CC) -c Player1.c $(CFLAGS)
	$(CC) -o $@ Player1.o $(CFLAGS)

clean:
	rm *.o $(CLN)

run: 
	@./saida
