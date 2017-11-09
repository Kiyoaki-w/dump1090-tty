CFLAGS?=-O2 -g -Wall -W
LDLIBS+=-lpthread -lm
CC?=gcc
PROGNAME=dump1090tty

all: dump1090tty

%.o: %.c
	$(CC) $(CFLAGS) -c $<

dump1090tty: dump1090.o anet.o
	$(CC) -g -o dump1090tty dump1090.o anet.o $(LDFLAGS) $(LDLIBS)

clean:
	rm -f *.o dump1090tty
