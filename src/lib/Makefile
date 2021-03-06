#
# To make chipmunk in its directory:
#
# cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_DEMOS=OFF -DCMAKE_POSITION_INDEPENDENT_CODE=ON .
# make
#
BIN = libchipmunk

ENV_CFLAGS := $(CFLAGS) -DCP_USE_DOUBLES=0 -DCP_USE_CGTYPES=0
CFLAGS := $(ENV_CFLAGS) -std=c99 -pedantic -O2 -fPIC -I../ -Ichipmunk/include/ -Lchipmunk/src/


SRC = adapter.c
OBJ = $(SRC:.c=.o)
LIBS = -lm
STATIC_LIBS = -lchipmunk


ifeq ($(OS),Windows_NT)
	BIN := $(BIN).dll.bodged
	CFLAGS := $(CFLAGS) -Wl,-soname,$(BIN)
	LFLAGS := -Wl,--whole-archive -Wl,-Bstatic $(STATIC_LIBS) -Wl,--no-whole-archive -Wl,-Bdynamic $(LIBS)
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		BIN := $(BIN).dylib.bodged
		CFLAGS := $(CFLAGS) -Wl,-install_name,$(BIN)
		LFLAGS := $(LIBS) -all_load $(STATIC_LIBS)
	else
		BIN := $(BIN).so.bodged
		CFLAGS := $(CFLAGS) -Wl,-soname,$(BIN)
		LFLAGS := -Wl,--whole-archive -Wl,-Bstatic $(STATIC_LIBS) -Wl,--no-whole-archive -Wl,-Bdynamic $(LIBS)
	endif
endif

build: $(BIN)


$(BIN):
	cd chipmunk/ && \
	cmake -G "Unix Makefiles" \
	      -DCMAKE_C_FLAGS="$(ENV_CFLAGS)" \
	      -DCMAKE_BUILD_TYPE=Release -DBUILD_DEMOS=OFF -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
	      -DBUILD_SHARED=OFF . && \
	make
	$(CC) -shared $(SRC) $(CFLAGS) -o $(BIN) $(LFLAGS)

clean:
	rm -f $(BIN) $(OBJS)
