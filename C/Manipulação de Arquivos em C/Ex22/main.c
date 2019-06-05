#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>

FILE *f;
int cont=0, order[3] = {1,2,3};
float notas[3];

void criar_arquivo(){

    char nomeArquivo[30];

    if(cont==0){
        printf("Informe um nome para o arquivo de entrada: ");
        cont++;
    }else if(cont==1){
        printf("Informe um nome para o arquivo de saida: ");
        cont++;
    }
    fflush(stdin);
    gets(nomeArquivo);
    strcat(nomeArquivo, ".txt");
    f = fopen(nomeArquivo, "w");
}

void ordeda(){

     int i, j;
     float aux;

     for(i=1;i<3;i++){
        for(j=0;j<3-i;j++){
            if(notas[j]>notas[j+1]){
                aux=notas[j];
                notas[j] = notas[j+1];
                notas[j+1]= aux;
                aux=order[j];
                order[j]=order[j+1];
                order[j+1]=aux;
            }
        }
     }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    criar_arquivo();
    system("cls");

    int i;

    char nome[40];

    printf("Informe o nome do aluno: ");
    fflush(stdin);
    fgets(nome,40,stdin);

    for(i=0;i<3;i++){
        printf("Informe a nota da %dº prova: ",order[i]);
        fflush(stdin);
        scanf("%f", &notas[i]);
    }
    system("cls");

    //gera e grava no arquivo de entrada

    fprintf(f,"Nome do aluno: %s\n", nome);
    for(i=0;i<3;i++){
        fprintf(f,"%dº Nota: %.2f",order[i],notas[i]);
        fputc('\n',f);

    }
    fclose (f);

    //gera e grava no arquivo de saida

    criar_arquivo();
    ordeda();

    fprintf(f,"Nome do aluno: %s\n", nome);
    for(i=0;i<3;i++){
        fprintf(f,"%dº Nota: %.2f",order[i],notas[i]);
        fputc('\n',f);
    }
        fclose (f);
}
