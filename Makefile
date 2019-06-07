.PHONY: clean all

all: helloWorld

clean:
	rm -f helloWorld.s helloWorld.o crt0.o helloWorld

helloWorld: helloWorld.o crt0.o
	ld helloWorld.o crt0.o -o helloWorld

helloWorld.o: helloWorld.s
	as helloWorld.s -o helloWorld.o
crt0.o: crt0.s
	as crt0.s -o crt0.o

helloWorld.s: helloWorld.c
	gcc -S helloWorld.c -o helloWorld.s