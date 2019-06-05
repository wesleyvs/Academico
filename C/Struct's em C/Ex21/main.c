#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#define AUX 5

typedef struct{
    char nome[20], duracao[20];
    int ano;
}FILME;

typedef struct{
    char nome[20];
    int quantidade;
    FILME filme[50];
}INF;

INF diretores[AUX];
int cont=-1;

void entrada()
{
    int i;

    if(cont<=4){
        cont++;
        printf("Informe o nome do diretor:");
        fflush(stdin);
        fgets(diretores[cont].nome,20,stdin);
        printf("Informe a quantidade de filmes produzidos:\n");
        fflush(stdin);
        scanf("%d",&diretores[cont].quantidade);
        if(diretores[cont].quantidade>0){
            for(i=0;i<diretores[cont].quantidade;i++){
                printf("Informe o nome do %dº filme:",i+1);
                fflush(stdin);
                fgets(diretores[cont].filme[i].nome,20,stdin);
                printf("Informe o ano de lançamento do %dº filme:",i+1);
                fflush(stdin);
                scanf("%d",&diretores[cont].filme[i].ano);
                printf("Informe o tempo de duração do %dº filme:",i+1);
                fflush(stdin);
                fgets(diretores[cont].filme[i].duracao,20,stdin);
                system("cls");
            }
        }
        system("cls");
    }else{
        printf("ERRO - Lista cheia\n");
        system("pause");
        system("cls");
    }
}

void lista_por_nome(){

    int i, j;
    char nome[20];

    printf("Informe o nome do diretor:");
    fflush(stdin);
    fgets(nome,20,stdin);
    system("cls");

    for(i=0;i<=cont;i++){
        if((strcasecmp(nome,diretores[i].nome)==0)){
            printf("Nome do diretor:%sQuantidade de filme(s) produzido(s):%d\n",diretores[i].nome,diretores[i].quantidade);
            if(diretores[i].quantidade>0){
                for(j=0;j<diretores[i].quantidade;j++){
                    printf("Nome do %dº filme:%sAno de lançamento do %dº filme:%d\nTempo de duração do %dº filme:%s\n",j+1, diretores[i].filme[j].nome, j+1, diretores[i].filme[j].ano, j+1, diretores[i].filme[j].duracao);
                }
            }
        }else{
            printf("Nenhum diretor encontrado com este nome\n\n");
        }
    }
    system("pause");
    system("cls");
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int op;

    do{
        printf("1-Entrada de dados\n2-Mostra filmes\n3-Sair\n");
        fflush(stdin);
        scanf("%d",&op);
        switch(op){
        case 1: system("cls");
                entrada();
                break;
        case 2: system("cls");
                lista_por_nome();
                break;
        case 3: system("cls");
                break;
        default: system("cls");
        printf("\nOpcao inexistente\n");
        }
    }while(op!=3);
}
