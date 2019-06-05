#include <stdio.h>
#include <stdlib.h>
#include <string.h>


typedef struct endereco
{
    char cidade[20];
    char bairro[20];
    char logradouro[20];
    int cep;
    int numero;
}END;
typedef struct data
{
    int dia;
    int mes;
    int ano;
}DAT;
typedef struct pessoa
{
    char nome[30];
    DAT dataNasc;
    END endPessoa;
    char email[30];
}PESS;
PESS people;

void validarDn()
{
    if (people.dataNasc.dia > 31 || people.dataNasc.dia < 1) {
        printf("Erro no dia de nascimento!\n");
        system("pause");
        system("cls");
        main();
    }
    if (people.dataNasc.mes > 12 || people.dataNasc.dia < 1) {
        printf("Erro no mes de nascimento!\n");
        system("pause");
        system("cls");
        main();
    }
}
void validarCep ()
{
    if (people.endPessoa.cep > 99999999 || people.endPessoa.cep < 10000000) {
        printf("CEP invalido!\n");
        system("pause");
        system("cls");
        main();
    }
}
void validarEmail()
{
    int i, count=0;
    for (i=0;i<=strlen(people.email);i++) {
        if (people.email[i] == '@') count++;
        if (people.email[i] == '.' && count == 1) count++;
    }
    if (count != 2) {
        printf("Erro no e-mail!\n");
        system("pause");
        system("cls");
        main();
    }
}
int main ()
{
    printf("INSERCAO: \n\n");
    printf("Nome: "); fflush(stdin); gets(people.nome);
    printf("Dia de nascimento: "); scanf("%d", &people.dataNasc.dia);
    printf("Mes de nascimento: "); scanf("%d", &people.dataNasc.mes);
    printf("Ano de nascimento: "); scanf("%d", &people.dataNasc.ano);
    validarDn();
    printf("Cidade: "); fflush(stdin); gets(people.endPessoa.cidade);
    printf("Bairro: "); fflush(stdin); gets(people.endPessoa.bairro);
    printf("Logradouro: "); fflush(stdin); gets(people.endPessoa.logradouro);
    printf("Cep: "); scanf("%d", &people.endPessoa.cep);
    printf("Numero da residencia: "), scanf("%d", &people.endPessoa.numero);
    validarCep();
    printf("E-mail: "); fflush(stdin); gets(people.email);
    validarEmail();
    return 0;
}
