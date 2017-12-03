OBJS = accelerometer.o pod.o
CC = g++
DEBUG = -g
CFLAGS = -std=c++11 -Wall -c -O3 $(DEBUG)
LFLAGS = -Wall $(DEBUG)

### TASK 5 (PERSON A) #########################################################
main : main.o pod.o accelerometer.o
	$(CC) $(OBJS) $(LFLAGS) main.o -o main

main.o : main.cpp pod.h accelerometer.h
	$(CC) $(CFLAGS) main.cpp
### END OF TASK 5 (PERSON A) ##################################################

pod.o : pod.cpp pod.h accelerometer.h
	$(CC) $(CFLAGS) pod.cpp

navigation.o : navigation.cpp navigation.h accelerometer.h
	$(CC) $(CFLAGS) navigation.cpp

accelerometer.o : accelerometer.cpp accelerometer.h
	$(CC) $(CFLAGS) accelerometer.cpp

### TASK 6 (PERSON B) #########################################################
#bms.o : bms.cpp bms.h
#	$(CC) $(CFLAGS) bms.cpp
### END OF TASK 6 (PERSON B) ##################################################

clean :
	rm *.o main
