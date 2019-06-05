#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int main()
{
    FILE *file, *file2;
    char nomePArquivo[20], nomeSArquivo[20], texto[500];
    printf("Informe o nome do primeiro arquivo: "); fflush(stdin); gets(nomePArquivo);
    printf("Informe o nome do segundo arquivo: "); fflush(stdin); gets(nomeSArquivo);
    strcat(nomePArquivo, ".txt");
    strcat(nomeSArquivo, ".txt");
    file = fopen (nomePArquivo, "r");
    char carac;
    int aux=0, i;

    do {
        carac = fgetc(file);
        texto[aux] = carac;
        aux++;
    }while (carac != EOF);
    fclose(file);

    file2 = fopen(nomeSArquivo, "w");
    for (i=0;i<aux-1;i++) {
        texto[i] = toupper(texto[i]);
        fputc(texto[i], file2);
    }
    fclose(file2);
    system("pause");
    return 0;
}
