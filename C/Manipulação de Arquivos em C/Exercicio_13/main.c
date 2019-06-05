//. Fac¸a um programa que permita que o usuario entre com diversos nomes e telefone para ´
//cadastro, e crie um arquivo com essas informac¸oes, uma por linha. O usuario finaliza a ´
//entrada com ‘0’ para o telefone.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct cadastro {
    char nome[30];
    int telefone;
}PESS;

FILE *file;
PESS pessoas[5];

int main()
{
    file = fopen("entrada.txt", "a");

    int fechar=-1;
    int aux = 0;

    while(fechar != 0) {
        printf("Informe o nome a ser cadastrado: "); fflush(stdin); gets(pessoas[aux].nome);
        printf("Informe o numero de contato: "); scanf("%d", &pessoas[aux].telefone);
        if (pessoas[aux].telefone == 0) {
            strcpy(pessoas[aux].nome, "");
            fechar=0;
        }
        fprintf(file, "%s ", pessoas[aux].nome);
        if (fechar != 0) fprintf(file, "%d\n", pessoas[aux].telefone);
        aux++;
        printf("\n----------------------------\n\n");
    }


    fclose(file);
    return 0;
}
