#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct aluno
{
    char nome[30];
    char matricula[30];
    float mediaFinal;
}ALN;

int main()
{
    ALN alunos[2];
    int i;
    printf("INSERCAO: \n\n");
    for (i=0;i<=1;i++) {
        printf("Nome: ");
        fflush(stdin);
        gets(alunos[i].nome);
        printf("Matricula: ");
        fflush(stdin);
        gets(alunos[i].matricula);
        printf("Media final: ");
        scanf("%f", &alunos[i].mediaFinal);
        system("cls");
    }

    ALN aprovados[2], reprovados[2];
    for (i=0;i<=2;i++) {
        strcpy(aprovados[i].nome, "$");
        strcpy(reprovados[i].nome, "$");
    }

    for (i=0;i<=1;i++)
    {
        if (alunos[i].mediaFinal >= 5) {
            strcpy(aprovados[i].nome, alunos[i].nome);
            strcpy(aprovados[i].matricula, alunos[i].matricula);
            aprovados[i].mediaFinal =  alunos[i].mediaFinal;
        } else {
            strcpy(reprovados[i].nome, alunos[i].nome);
            strcpy(reprovados[i].matricula, alunos[i].matricula);
            reprovados[i].mediaFinal = alunos[i].mediaFinal;
        }
    }
    system("cls");
    printf("APROVADOS: \n\n");
    for (i=0;i<=1;i++)
    {
        if(aprovados[i].nome != "$"){
            printf("Nome: %s\n", aprovados[i].nome);
            printf("Matricula: %s\n", aprovados[i].matricula);
            printf("Media final: %f\n", aprovados[i].mediaFinal);
        }
    }
    printf("\n----------------------------\nREPROVADOS: \n\n");
    for (i=0;i<=1;i++)
    {
        if(reprovados[i].nome != "$"){
            printf("Nome: %s\n", reprovados[i].nome);
            printf("Matricula: %s\n", reprovados[i].matricula);
            printf("Media final: %f\n", reprovados[i].mediaFinal);
        }
    }


    return 0;
}
