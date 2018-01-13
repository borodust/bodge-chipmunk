#
# To make chipmunk in its directory:
#
# cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_DEMOS=OFF -DCMAKE_POSITION_INDEPENDENT_CODE=ON .
# make
#
BIN = libchipmunk

CFLAGS = -std=c99 -pedantic -O2 -fPIC -I../ -Lchipmunk/src/

SRC = main.c
OBJ = $(SRC:.c=.o)
LIBS = -lm
STATIC_LIBS = -lchipmunk

ifeq ($(OS),Windows_NT)
	BIN := $(BIN).dll
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		BIN := $(BIN).dylib.bodged
	else
		BIN := $(BIN).so.bodged
	endif
endif

build: $(BIN)


$(BIN):
	cd chipmunk/ && \
	cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_DEMOS=OFF -DCMAKE_POSITION_INDEPENDENT_CODE=ON . && \
	make
	$(CC) -shared $(SRC) $(CFLAGS) -o $(BIN) -Wl,-Bstatic $(STATIC_LIBS) -Wl,-Bdynamic $(LIBS) #-Wl,--verbose

clean:
	rm -f $(BIN) $(OBJS)
