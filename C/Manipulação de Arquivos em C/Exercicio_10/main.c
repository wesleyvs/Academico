#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>

typedef struct cidade
{
    char nome[40];
    int populacao;
}CITY;

FILE *file;
CITY cidades;
int maior = 0;
char nomeMaior[40];

void abrearquivo()
{
    file = fopen("./entrada.dat", "a+b");
}

void exibirTudo()
{
    file = fopen("./entrada.dat", "r+b");
    rewind(file);
    printf("Todos os dados salvos: \n\n--------------------\n");
    do {
        fread(&cidades, sizeof(CITY), 1, file);
        if(feof(file)==0) {
            printf("Cidade: %s\nPopulacao: %d\n--------------------\n", cidades.nome, cidades.populacao);
        }
    } while (feof(file)==0);
    system("pause");
}

void exibirSaida()
{
    file = fopen("./saida.dat", "r+b");
    fread(&cidades,sizeof(CITY), 1, file);
    printf("\nConteudo:\n\n");
    printf("--------------------\nCidade: %s\nPopulacao: %d\n--------------------\n", cidades.nome, cidades.populacao);
    system("pause");
}

void gerarArquivo()
{
    file = fopen("./saida.dat", "w+b");
    strcpy(cidades.nome, nomeMaior);
    cidades.populacao = maior;
    fwrite(&cidades,sizeof(CITY), 1, file);
    fclose(file);
}

void exibirCidade()
{
    rewind(file);
    do {
        fread(&cidades, sizeof(CITY), 1, file);
        if(feof(file)==0) {
            if (cidades.populacao > maior) {
                maior = cidades.populacao;
                strcpy(nomeMaior, cidades.nome);
            }
        }
    } while (feof(file)==0);

    printf("\n\nGerando arquivo\n");
    system("pause");
    fclose(file);
    gerarArquivo();
    printf("\n\nArquivo saida.dat criado!\n");
    system("pause");
}

void insercao()
{
    char continuar = '1';

    do {
        printf("Insercao de dados no arquivo:\n\n");
        printf("Informe o nome da cidade: "); fflush(stdin); gets(cidades.nome);
        printf("Informe o numero habitantes: "); scanf("%d", &cidades.populacao);
        fseek(file, 0, SEEK_END);
        fwrite(&cidades, sizeof(CITY), 1, file);
        printf("\nSucesso. Quer continuar a insercao de dados? (1- sim 2 -nao): ");
        continuar = getch();
        system("cls");
    } while(continuar == '1');
}

int main()
{
    char opcao = '$';
    setlocale(LC_ALL, "Portuguese");
    abrearquivo();

    while (opcao != '5') {
        printf("Informe o que deseja fazer: \n");
        printf("1- Inserir dados no arquivo (cidade/população).\n");
        printf("2- Gerar arquivo saida.dat com a cidade mais populosa da base de dados.\n");
        printf("3- Ler saida.dat. \n");
        printf("4- Exibir todas as cidades e populações.\n");
        printf("5- Encerrar.\n");
        printf("\nOpcao: ");
        opcao = getche();
        switch (opcao)
        {
            case '1': system("cls");
                      insercao();
                      break;
            case '2': system("cls");
                      exibirCidade();
                      break;
            case '3': system("cls");
                      exibirSaida();
                      break;
            case '4': system("cls");
                      exibirTudo();
                      break;
            case '5': printf("\n\nEncerrando...\n");
                      fclose(file);
                      system("pause");
                      break;
            default : printf("Opção incorreta!");
                      break;
        }
        system("cls");
    }
    CITY cidades[99];


    return 0;
}
