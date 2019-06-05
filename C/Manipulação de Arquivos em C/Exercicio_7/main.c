#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    FILE *file, *file2;
    file = fopen("./arquivo.txt", "r");
    char carac;
    char texto[1000];
    int quantidadeCarac=0;
    int i, aux=0;

    do {
        carac = fgetc(file);
        texto[aux] = carac;
        aux++;
    }while (carac != EOF);

    file2 = fopen ("./arquivo_sub.txt", "w");
    for (i=0;i<aux-1;i++) {
        if (texto[i] == 97 || texto[i] == 101 || texto[i] == 105 || texto[i] == 111 || texto[i] == 117){
            texto[i] = '*';
        }
        fputc(texto[i], file2);
    }
    fclose(file); fclose(file2);
    return 0;
}
