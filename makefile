all: server client
LIBS = -lpthread #-lsocket
server: server.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

client: client.c
	gcc -W -Wall -o $@ $<
clean:
	rm httpd
