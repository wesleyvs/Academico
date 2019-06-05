#include <stdio.h>
#include <stdlib.h>

int main()
{
    FILE *f1, *f2, *f3;
    f1 = fopen("./primeiro_arquivo.txt", "r");
    f2 = fopen("./segundo_arquivo.txt", "r");
    char carac1, carac2;
    char texto1[500], texto2[500];
    int i,aux1=0, aux2=0;

    do {
        carac1 = fgetc(f1);
        texto1[aux1] = carac1;
        aux1++;
    }while (carac1 != EOF);
    do {
        carac2 = fgetc(f2);
        texto2[aux2] = carac2;
        aux2++;
    }while (carac2 != EOF);
    fclose(f1); fclose(f2);

    f3 = fopen("./terceiro_arquivo.txt", "w");
    for (i=0;i<aux1-1;i++) fputc(texto1[i], f3);
    fclose(f3);
    f3 = fopen("./terceiro_arquivo.txt", "a");
    for (i=0;i<aux2-1;i++) fputc(texto2[i], f3);
    fclose(f3);
    return 0;
}
