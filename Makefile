all: reservations.c
	gcc -Wall -Wextra -g -o $@ $^ -lpthread

reservations: reservations.c
	gcc -Wall -Wextra -g -o $@ $^ -lpthread

reservations.zip:
	rm -f $@
	zip $@ Makefile reservations.c

clean:
	rm -f reservations