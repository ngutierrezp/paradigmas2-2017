buscador: menu.o gets.o index.o inserts.o StopWords.o tools.o
	gcc -Wall -o buscador menu.o gets.o index.o inserts.o StopWords.o tools.o

menu.o: menu.c gets.h index.h inserts.h StopWords.h tools.h structs.h
	gcc -c -g -Wall menu.c

gets.o: gets.c structs.h
	gcc -Wall -g -c gets.c

index.o: index.c structs.h
	gcc -Wall -g -c index.c

inserts.o: inserts.c structs.h
	gcc -Wall -g -c inserts.c

StopWords.o: StopWords.c structs.h
	gcc -Wall -g -c StopWords.c
	
tools.o: tools.c structs.h
	gcc -Wall -g -c tools.c
#limpiador de archivos temporales
clean:
	rm -f buscador *.o
