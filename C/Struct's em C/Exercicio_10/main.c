#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct pessoa
{
    char nome[30];
    char endereco[30];
    char telefone[30];
} PESS;

PESS pessoas[5];

void insercaoCinco ()
{
    int i;
    for (i=0;i<=4;i++) {
        system("cls");
        printf("INSERCAO NUMERO %d: \n\n",i+1);
        printf("Nome: ");
        fflush(stdin);
        gets(pessoas[i].nome);
        printf("\nEndereco: ");
        fflush(stdin);
        gets(pessoas[i].endereco);
        printf("\nTelefone: ");
        fflush(stdin);
        gets(pessoas[i].telefone);
    }
}
void exibir ()
{
    int i;
    system("cls");
    printf("Por ordem alfabetica: \n\n");
    for (i=4;i>=0;i--) {
        printf("PESSOA %d\n", i-3);
        printf("Nome: %s\n", pessoas[i].nome);
        printf("Endereco: %s\n", pessoas[i].endereco);
        printf("Telefone: %s\n", pessoas[i].telefone);
        printf("______________________________\n");
    }
}
int main()
{
    int i, j, comparacao;
    char aux[30] = "inicializacao";

    insercaoCinco();

    for (i=0;i<=4;i++) {
        for (j=0;j<=4;j++) {
           // comparacao = strcmp(pessoas[i].nome,pessoas[j].nome);
            if (strcmp(pessoas[i].nome,pessoas[j].nome) == 1) {
                strcpy(aux,pessoas[j].nome);
                strcpy(pessoas[j].nome, pessoas[i].nome);
                strcpy(pessoas[i].nome, aux);
            }
        }
    }
    printf("\n");
    exibir();
    return 0;
}
