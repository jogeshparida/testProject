LDFLAGS = -lGL -lglut -lpng -lz -lm

HelloTI: hello_ti.o hello_ti_foo.o
	g++ -o HelloTI -IC hello_ti.o hello_ti_foo.o

hello_ti.o: hello_ti.cpp
	g++ -c -IC hello_ti.cpp

hello_ti_foo.o: hello_ti_foo.cpp
	g++ -c -IC hello_ti_foo.cpp

.PHONY: clean
clean:
	del hello_ti.o hello_ti_foo.o HelloTI
