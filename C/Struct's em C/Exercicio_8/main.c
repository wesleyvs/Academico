#include <stdio.h>
#include <stdlib.h>


typedef struct pessoa
{
    char nome[30];
    int idade;
    char sexo;
    char cpf[30];
    char dataNascimento[10];
    int codigoSetor;
    char cargo[30];
    float salario;
}PESS;
int main()
{
    PESS pessoa;
    printf("CADASTRO DE FUNCIONARIOS:\n\n");
    printf("Informe o nome do funcionario: ");
    scanf("%s", &pessoa.nome);
    printf("Idade: ");
    scanf("%d", &pessoa.idade);
    printf("Sexo (M/F): ");
    scanf(" %c", &pessoa.sexo);
    printf("CPF: ");
    scanf("%s", &pessoa.cpf);
    printf("Data nascimento (DD/MM/AAAA): ");
    scanf("%s", &pessoa.dataNascimento);
    printf("Codigo de setor: ");
    scanf("%d", &pessoa.codigoSetor);
    printf("Cargo: ");
    scanf("%s", &pessoa.cargo);
    printf("Salario: R$");
    scanf("%f", &pessoa.salario);
    system("cls");

    printf("CADASTRO FINALIZADO!");
    printf("\n\nNome: %s\n", pessoa.nome);
    printf("Idade: %d\n", pessoa.idade);
    printf("Sexo: %c\n", pessoa.sexo);
    printf("CPF: %s\n", pessoa.cpf);
    printf("Data de nascimento: %s\n", pessoa.dataNascimento);
    printf("Codigo de setor: %d\n", pessoa.codigoSetor);
    printf("Cargo: %s\n", pessoa.cargo);
    printf("Salario: R$ %.2f", pessoa.salario);
}
