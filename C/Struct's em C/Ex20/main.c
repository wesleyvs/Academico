#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#define AUX 25

typedef struct{
    char nome[25];
    int quantidade;
}ING;

typedef struct{
    char nome[25];
    int quantidade;
    ING ingrediente[50];
}REC;

REC receitas[AUX];
int cont=-1;

void entrada()
{
    int i;

    if(cont<AUX){
        cont++;
        printf("Informe o nome da receita:");
        fflush(stdin);
        fgets(receitas[cont].nome,25,stdin);
        printf("Informe a quantidade de ingredientes:\n");
        fflush(stdin);
        scanf("%d",&receitas[cont].quantidade);
        if(receitas[cont].quantidade>0){
            for(i=0;i<receitas[cont].quantidade;i++){
                printf("Informe o nome do %dº ingrediente:",i+1);
                fflush(stdin);
                fgets(receitas[cont].ingrediente[i].nome,25,stdin);
                printf("Informe a quantidade:");
                fflush(stdin);
                scanf("%d",&receitas[cont].ingrediente[i].quantidade);
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
    char nome[25];

    printf("Informe o nome da receita:");
    fflush(stdin);
    fgets(nome,25,stdin);
    system("cls");

    for(i=0;i<=cont;i++){
        if((strcasecmp(nome,receitas[i].nome)==0)){
            printf("Nome da receita:%sQuantidade de de ingredientes:%d\n",receitas[i].nome,receitas[i].quantidade);
            if(receitas[i].quantidade>0){
                for(j=0;j<receitas[i].quantidade;j++){
                    printf("Nome do %dº ingrediente:%sQuantidade:%d\n\n",j+1,receitas[i].ingrediente[j].nome,receitas[i].ingrediente[j].quantidade);
                }
            }
        }else{
            printf("Nenhuma receita encontrada com este nome\n\n");
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
        printf("1-Entrada de dados\n2-Procurar receita\n3-Sair\n");
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
