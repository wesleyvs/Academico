#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct aluno {
    char matricula[30];
    char nome[30];
    float p1;
    float p2;
    float p3;
} ALN;

ALN alunos[5];

void cincoAlunos ()
{
    system("cls");
    int i;
    for (i=0;i<=4;i++){
        printf("INSERCAO NUMERO %d:\n\n",i+1);
        printf("Informe o numero de matricula do aluno: ");
        scanf("%s", &alunos[i].matricula);
        printf("Informe o nome do aluno: ");
        scanf("%s", &alunos[i].nome);
        printf("Informe a nota da primeira prova: ");
        scanf("%f", &alunos[i].p1);
        printf("Informe a nota da segunda prova: ");
        scanf("%f", &alunos[i].p2);
        printf("Informe a nota da terceira prova: ");
        scanf("%f", &alunos[i].p3);
        system("cls");
    }
    printf("\n\n5 INSERCOES REALIZADAS!\n");
}
void maiorNotaP1()
{
    int i,j;
    float aux=0, maiorNota=0.0;
    char nome[30], matricula[30];

    for (i=0;i<=4;i++) {
        if (alunos[i].p1 > maiorNota) {
            maiorNota = alunos[i].p1;
            strcpy(nome,alunos[i].nome);
            strcpy(matricula,alunos[i].matricula);
        }
    }
    printf("\nAluno com maior nota na primeira prova: \n");
    printf("\nNome: %s", nome);
    printf("\nMatricula: %s", matricula);
    printf("\nNota: %.2f", maiorNota);
    printf("\n-----------------------------------------\n");
}
void maiorMediaAluno()
{
    int i,j;
    float aux=0, maiorMedia=0.0;
    char nome[30], matricula[30];

    for (i=0;i<=4;i++) {
        if ((alunos[i].p1+alunos[i].p2+alunos[i].p3)/3 > maiorMedia) {
            maiorMedia = (alunos[i].p1+alunos[i].p2+alunos[i].p3)/3;
            strcpy(nome,alunos[i].nome);
            strcpy(matricula,alunos[i].matricula);
        }
    }
    printf("\nAluno com maior media: \n");
    printf("\nNome: %s", nome);
    printf("\nMatricula: %s", matricula);
    printf("\nMedia: %.2f", maiorMedia);
    printf("\n-----------------------------------------\n");
}
void menorMediaAluno()
{
    int i,j;
    float aux=0, menorMedia=10.0;
    char nome[30], matricula[30];

    for (i=0;i<=4;i++) {
        if ((alunos[i].p1+alunos[i].p2+alunos[i].p3)/3 < menorMedia) {
            menorMedia = (alunos[i].p1+alunos[i].p2+alunos[i].p3)/3;
            strcpy(nome,alunos[i].nome);
            strcpy(matricula,alunos[i].matricula);
        }
    }
    printf("\nAluno com maior media: \n");
    printf("\nNome: %s", nome);
    printf("\nMatricula: %s", matricula);
    printf("\nMedia: %.2f", menorMedia);
    printf("\n-----------------------------------------\n");
}
void aprovacao()
{
    int i;
    float media;
    printf("Situacao: \n");
    for (i=0;i<=4;i++) {
        media = (alunos[i].p1+alunos[i].p2+alunos[i].p3)/3;
        if (media > 5){
            printf("Aluno: %s", alunos[i].nome);
            printf("\nMatricula: %s", alunos[i].matricula);
            printf("\nMedia: %f (APROVADO)", media);
            printf("\n-------------------\n");
        } else {
            printf("Aluno: %s", alunos[i].nome);
            printf("\nMatricula: %s", alunos[i].matricula);
            printf("\nMedia: %f (REPROVADO)", media);
            printf("\n-------------------\n");
        }
    }
}
int main()
{
    char op = '$';
    while(op=='$') {
        printf("a)Entrar com os dados de 5 alunos");
        printf("\nb)Encontre o aluno com maior nota da primeira prova");
        printf("\nc)Encontre o aluno com maior media geral");
        printf("\nd)Encontre o aluno com menor media geral");
        printf("\ne)Aprovacoes\n");
        printf("Informe a opcao: ");
        scanf(" %c", &op);
        switch (op) {
            case 'a': cincoAlunos();
                      break;
            case 'b': maiorNotaP1();
                      break;
            case 'c': maiorMediaAluno();
                      break;
            case 'd': menorMediaAluno();
                      break;
            case 'e': aprovacao();
                      break;
        }
        printf("\nEncerrar?");
        op=getch();
        if (op!='s')op='$';
        system("cls");
    }
    return 0;
}
