#include <stdio.h>
#include <stdlib.h>

int main()
{
    FILE *file;
    int cont=0,i;
    char carac;
    char vogais[5]= {'a','e','i','o','u'};
    file = fopen("./arquivo.txt", "r");
    while (carac != EOF) {
        carac = fgetc(file);
        for (i=0;i<=4;i++) {
            if (carac == vogais[i]) {
                cont++;
            }
        }
    }
    printf("O arquivo possui %d vogais.", cont);
}

