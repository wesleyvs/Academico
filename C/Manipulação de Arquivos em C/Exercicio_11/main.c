#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>

typedef struct palavra
{
    char palavra[50];
}WORD;

FILE *file;
WORD entrada;
char nomeArquivo[30];

void abrearquivo()
{
    file = fopen(nomeArquivo, "a+b");
}
void abrearquivoLeitura()
{
    file = fopen(nomeArquivo, "r+b");
}

void encontrarPalavra()
{
    int cont=0;
    char pesquisa[50];
    printf("Informe a palavra a ser pesquisada no arquivo %s: ", nomeArquivo); fflush(stdin); gets(pesquisa);
    abrearquivoLeitura();
    rewind(file);
    do {
        fread(&entrada, sizeof(WORD), 1, file);
        if(feof(file)==0) {
            if (strcmp(pesquisa, entrada.palavra)==0) cont++;
        }
    } while (feof(file)==0);

    printf("\nA palavra pesquisada aparece %dx\n", cont);
    system("pause");
}

void inserirDados()
{
    char continuar = '1';
    do {
        printf("Insercao de dados no arquivo:\n\n");
        printf("Informe a palavra a ser inserida: "); fflush(stdin); gets(entrada.palavra);
        fseek(file, 0, SEEK_END);
        fwrite(&entrada, sizeof(WORD), 1, file);
        printf("\nSucesso. Quer continuar a insercao de dados? (1- sim 2 -nao): ");
        continuar = getch();
        system("cls");
    } while(continuar == '1');
    fclose(file);
}

void nomearArquivo()
{
    printf("Informar o nome do arquivo: "); fflush(stdin); gets(nomeArquivo);
    strcat(nomeArquivo, ".dat");
    abrearquivo();
}

int main()
{
    char nomeArquivo[30];
    char opcao = '$';
    setlocale(LC_ALL, "Portuguese");

    while (opcao != '4') {
        printf("Informe a opção desejada: \n\n!!!PARA FUNCIONAMENTO DO PROGRAMA, INICIAR COM A OPÇÃO 1!!!\n\n");
        printf("1- Nome do arquivo de entrada;\n");
        printf("2- Inserir conteúdo no arquivo de entrada;\n");
        printf("3- Encontrar palavra selecionada no texto;\n");
        printf("4- Encerrar.");
        printf("\nOpção: ");
        opcao = getche();
        switch (opcao)
        {
            case '1':   system("cls");
                        nomearArquivo();
                        break;
            case '2':   system("cls");
                        inserirDados();
                        break;
            case '3':   system("cls");
                        encontrarPalavra();
                        break;
            case '4':   printf("\n\nEncherrando...\n");
                        system("pause");
                        break;
            default :   printf("\nOpcao incorreta!\n");
                        system("pause");
                        break;
        }
        system("cls");
    }
    return 0;
}
