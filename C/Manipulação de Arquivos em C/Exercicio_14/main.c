#include <stdio.h>
#include <stdlib.h>
#include <string.h>

FILE *file, *fileOut;

int main()
{
    char nomeArquivo[30];
    char nome[30];
    int dia, mes, ano, idade;

    printf("Informe o nome do arquivo: "); fflush(stdin); gets(nomeArquivo);
    strcat(nomeArquivo, ".txt");
    file = fopen(nomeArquivo, "r");
    fileOut = fopen("saida.txt", "w");

    //DATA DE HOJE: 03/06/2019
    while(feof(file)==0)
    {
        fscanf(file, "%s %d %d %d", &nome, &dia, &mes, &ano);
        idade = 2019-ano;
        fprintf(fileOut, "%s %d\n", nome, idade);
    }
    fclose(file); fclose(fileOut);
    return 0;
}
