#include <stdio.h>
#include <stdlib.h>

int main()
{
    FILE *file;
    int cont=0;
    char carac;
    file = fopen("./arquivo.txt", "r");
    while (carac != EOF) {
        carac = fgetc(file);
        if (carac == '\n') {
            cont++;
        }
    }
    printf("O arquivo possui %d linhas", cont+1);
}
