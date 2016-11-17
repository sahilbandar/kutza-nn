CC=gcc
CFLAGS=-std=c11 -O2 -g

LNK=$(CC)
LNKFLAGS=-lm

backpropagation_nn-obj-deps=backpropagation_nn.o

all: backpropagation_nn

backpropagation_nn.o : backpropagation_nn.c Makefile
	$(CC) $(CFLAGS) -c $< -o $@

backpropagation_nn : $(backpropagation_nn-obj-deps)
	$(LNK) $(LNKFLAGS) $(backpropagation_nn-obj-deps)  -o $@

test: backpropagation_nn
	./backpropagation_nn

clean :
	@rm -f backpropagation_nn $(backpropagation_nn-obj-deps)
