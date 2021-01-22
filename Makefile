OBJS	= test.o Menu.o MenuChoice.o conio.o
SOURCE	= test.cpp Sources/Menu.cpp Sources/MenuChoice.cpp conio/Sources/conio.cpp
HEADER	= Headers/Menu.h Headers/MenuChoice.h conio/Headers/conio.h unicommand/Headers/unicommand.h
OUT	= MenuTest
CC	 = g++
FLAGS	 = -g -c -Wall
LFLAGS	 = 

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

test.o: test.cpp
	$(CC) $(FLAGS) test.cpp 

Menu.o: Sources/Menu.cpp
	$(CC) $(FLAGS) Sources/Menu.cpp 

MenuChoice.o: Sources/MenuChoice.cpp
	$(CC) $(FLAGS) Sources/MenuChoice.cpp 

conio.o: conio/Sources/conio.cpp
	$(CC) $(FLAGS) conio/Sources/conio.cpp 


clean:
	rm -f $(OBJS) $(OUT)
