LDFLAGS = -lGL -lglut -lpng -lz -lm

HelloTI: hello_ti.o hello_ti_foo.o
    g++ -o HelloTI hello_ti.o hello_ti_foo.o $(LDFLAGS)

hello_ti.o: hello_ti.cpp
    g++ -c hello_ti.cpp

hello_ti_foo.o: hello_ti_foo.cpp
    g++ -c hello_ti_foo.cpp

.PHONY: clean
clean:
    rm -f hello_ti.o hello_ti_foo.o
