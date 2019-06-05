#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, n;

    printf("Informe o numero de alunos da disciplina: ");
    fflush(stdin);
    scanf("%d",&n);
    system("cls");

    float nota[n];
    char nome[n][40];

    for(i=0;i<n;i++){
        printf("Informe o nome do %dº aluno: ",i+1);
        fflush(stdin);
        fgets(nome[i],40,stdin);
        printf("Informe a nota do %dº aluno: ",i+1);
        fflush(stdin);
        scanf("%f",&nota[i]);
        system("cls");
    }

    //gera e grava no arquivp
    FILE *f;

    f = fopen("arq_pronto.txt","w");

    for(i=0;i<n;i++){
        fprintf(f,"Nome: %s Nota: %.2f",nome[i], nota[i]);
        fputc('\n',f);
    }
    fclose (f);

}
