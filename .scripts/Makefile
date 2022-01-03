CC=gcc
CFLAGS=-Wall -Wextra -Werror -std=c99 -pedantic -fsanitize=address
LDFLAGS=-lasan

SRC=REPLACE.c main.c
OBJ=$(SRC:.c=.o)

BIN=REPLACE

all:$(BIN)

$(BIN): $(OBJ)

debug:CFLAGS+=-g
debug:clean $(BIN)

clean:
	$(RM) $(OBJ) $(BIN)
