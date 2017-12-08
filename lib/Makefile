BIN = libchipmunk

CFLAGS = -std=c99 -pedantic -O2 -fPIC

SRC = main.c
OBJ = $(SRC:.c=.o)
LIBS = -lm
STATIC_LIBS = -lchipmunk

ifeq ($(OS),Windows_NT)
	BIN := $(BIN).dll
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		BIN := $(BIN).dylib
	else
		BIN := $(BIN).so
	endif
endif

build: $(BIN)


$(BIN):
	$(CC) -shared $(SRC) $(CFLAGS) -o $(BIN) -Wl,-Bstatic $(STATIC_LIBS) -Wl,-Bdynamic $(LIBS) #-Wl,--verbose

clean:
	rm -f $(BIN) $(OBJS)
