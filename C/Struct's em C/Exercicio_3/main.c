#include <stdio.h>
#include <stdlib.h>

typedef struct aluno {
    char nome[30];
    char numeroMatricula[15];
    char curso[10];
} ALN;

int main()
{
    ALN alunos[5];
    int i;
    for (i=0;i<=4;i++){
        printf("Informe o nome do aluno numero %d: ", i+1);
        scanf(" %s", &alunos[i].nome);
        printf("Informe o numero de matricula do aluno numero %d: ", i+1);
        scanf(" %s", &alunos[i].numeroMatricula);
        printf("Informe o curso do aluno numero %d: ", i+1);
        scanf(" %s", &alunos[i].curso);
        system("cls");
    }
    for (i=0;i<=4;i++){
        printf("Aluno %d: \n\n",i+1);
        printf("Nome: %s\n", alunos[i].nome);
        printf("Numero de matricula: %s\n", alunos[i].numeroMatricula);
        printf("Curso: %s\n",alunos[i].curso);
        printf("------------------------------\n");
    }
    return 0;
}
