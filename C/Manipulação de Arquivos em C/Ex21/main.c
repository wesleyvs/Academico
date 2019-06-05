#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>

typedef struct{
    char nome[40];
    float nota;
}DATA;

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, n;

    printf("Informe o numero de alunos da disciplina: ");
    fflush(stdin);
    scanf("%d",&n);
    system("cls");

    DATA aluno[n];

    for(i=0;i<n;i++){
        printf("Informe o nome do %dº aluno: ",i+1);
        fflush(stdin);
        fgets(aluno[i].nome,40,stdin);
        printf("Informe a nota do %dº aluno: ",i+1);
        fflush(stdin);
        scanf("%f",&aluno[i].nota);
        system("cls");
    }

    //gera e grava no arquivp
    FILE *f;

    f = fopen("arq_pronto.dat","wb+");

    if(f==NULL){
    printf("Problemas na CRIACAO do arquivo\n");
    }

    for(i=0;i<n;i++){
        fwrite(&aluno,sizeof(DATA),1,f);
    }

    DATA r_aluno[n];

    rewind(f);

    for(i=0;i<n;i++){
        fread(&r_aluno[i], sizeof(r_aluno), 1, f);
        printf("Nome: %s Nota: %.2f\n", r_aluno[i].nome, r_aluno[i].nota);
    }


    fclose (f);
}
