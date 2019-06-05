#include <stdio.h>
#include <stdlib.h>
#include <string.h>

FILE *file, *fileOut;

int main()
{
    char nomeArquivoIN[30], nomeArquivoOUT[30];
    char nome[30];
    int ano, idade;

    printf("Informe o nome do arquivo de entrada: "); fflush(stdin); gets(nomeArquivoIN);
    printf("Informe o nome do arquivo de saida: "); fflush(stdin); gets(nomeArquivoOUT);
    strcat(nomeArquivoIN, ".txt");
    strcat(nomeArquivoOUT, ".txt");
    file = fopen(nomeArquivoIN, "r");
    fileOut = fopen(nomeArquivoOUT, "w");

    //DATA DE HOJE: 03/06/2019
    while(feof(file)==0)
    {
        fscanf(file, "%s %d", &nome, &ano);
        idade = 2019-ano;
        if (idade < 18) fprintf(fileOut, "%s menor de idade\n", nome);
        if (idade > 18) fprintf(fileOut, "%s maior de idade\n", nome);
        if (idade == 18) fprintf(fileOut, "%s entrando na maior idade\n", nome);
    }
    fclose(file); fclose(fileOut);
    return 0;
}
