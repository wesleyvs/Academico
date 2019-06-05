#include <stdio.h>
#include <stdlib.h>

typedef struct aluno {
    char matricula[30];
    char nome[30];
    char codigoDisciplina[30];
    float p1;
    float p2;
} ALN;

ALN alunos[10];

void dezAlunos ()
{
    system("cls");
    int i;
    for (i=0;i<=9;i++){
        printf("INSERCAO NUMERO %d:\n\n",i+1);
        printf("Informe o numero de matricula do aluno: ");
        scanf("%s", &alunos[i].matricula);
        printf("Informe o nome do aluno: ");
        scanf("%s", &alunos[i].nome);
        printf("Informe o codigo da disciplina: ");
        scanf("%s", &alunos[i].codigoDisciplina);
        printf("Informe a nota da primeira prova: ");
        scanf("%f", &alunos[i].p1);
        printf("Informe a nota da segunda prova: ");
        scanf("%f", &alunos[i].p2);
        system("cls");
    }
    printf("\n\n10 INSERCOES REALIZADAS!\n");
}
void aprovacao()
{
    int i;
    float media;
    printf("Situacao: \n");
    for (i=0;i<=9;i++) {
        media = (alunos[i].p1+(alunos[i].p2*2))/3;
        if (media > 5){
            printf("Aluno: %s", alunos[i].nome);
            printf("\nMatricula: %s", alunos[i].matricula);
            printf("Codigo da disciplina: %s", alunos[i].codigoDisciplina);
            printf("\nMedia: %.2f (APROVADO)", media);
            printf("\n-------------------\n");
        } else {
            printf("Aluno: %s", alunos[i].nome);
            printf("\nMatricula: %s", alunos[i].matricula);
            printf("Codigo da disciplina: %s", alunos[i].codigoDisciplina);
            printf("\nMedia: %.2f (REPROVADO)", media);
            printf("\n-------------------\n");
        }
    }
}
int main()
{
    char op = '$';
    while(op=='$') {
        printf("a)Entrar com os dados de 10 alunos");
        printf("\nb)Exibir listagem de aprovados/reprovados");
        printf("\nInforme a opcao: ");
        scanf(" %c", &op);
        switch (op) {
            case 'a': dezAlunos();
                      break;
            case 'b': aprovacao();
                      break;
        }
        printf("\nEncerrar?");
        op=getch();
        if (op!='s')op='$';
        system("cls");
    }
    return 0;
}
