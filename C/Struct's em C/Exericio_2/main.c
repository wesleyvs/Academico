#include <stdio.h>
#include <stdlib.h>

typedef struct endereco {
    char logradouro[30];
    int numero;
} END;
typedef struct pessoa {
    char nome[30];
    int idade;
    END endereco;
} PESSOA;

int main()
{
    PESSOA pessoa1;
    printf("Informe o nome: ");
    scanf("%s", &pessoa1.nome);
    printf("\nInforme a idade: ");
    scanf("%d", &pessoa1.idade);
    printf("\nInforme o endereco: ");
    printf("\nLogradouro: ");
    scanf(" %s", &pessoa1.endereco.logradouro);
    printf("Numero: ");
    scanf("%d", &pessoa1.endereco.numero);
}
