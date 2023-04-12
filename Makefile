all: reservations.c
	gcc -Wall -Wextra -o $@ $^ -lpthread

reservations: reservations.c
	gcc -Wall -Wextra -o $@ $^ -lpthread

reservations.zip:
	rm -f $@
	zip $@ Makefile reservations.c

clean:
	rm -f reservations