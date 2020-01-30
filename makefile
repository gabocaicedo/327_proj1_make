#target myexe
myexe: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o

#rebuild if main.cpp or myfunc.h files change
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp

#rebuild if myfunc.cpp or myfunc.h change
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp

#typing 'make clean' removes following
clean:
	rm -f *.o myexe




