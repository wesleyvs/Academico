#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>

typedef struct{
    int cod_origem, cod_destino;
}VOO;

typedef struct{
    int cod, quantidade_pousos;
}AERO;

VOO v[5];
AERO a[5];

int cont=-1, cont2=-1;

void entrada_voos(){

    if(cont<=4){
        cont++;
        printf("Informe o codigo de origem do voo:");
        fflush(stdin);
        scanf("%d",&v[cont].cod_origem);
        printf("Informe o codigo de destino do voo:");
        fflush(stdin);
        scanf("%d",&v[cont].cod_destino);
        system("cls");
    }else{
        printf("ERRO - Lista cheia\n");
        system("pause");
        system("cls");
    }
}
void entrada_aero(){

    if(cont2<=4){
        cont2++;
        printf("Informe o codigo do aeroporto(entre 0 e 100000):");
        fflush(stdin);
        scanf("%d",&a[cont2].cod);
        system("cls");
        do{
            printf("Informe um codigo de aeroporto válido(entre 0 e 100000):");
            fflush(stdin);
            scanf("%d",&a[cont2].cod);
            system("cls");
        }while((a[cont2].cod<0) || (a[cont2].cod>100000));
        printf("Informe a quantidade de voos que pousaram neste aeroporto:");
        fflush(stdin);
        scanf("%d",&a[cont2].quantidade_pousos);
        system("cls");
    }else{
        printf("ERRO - Lista cheia\n");
        system("pause");
        system("cls");
    }
}

void imprimi_voos(){

    int i;

    printf("Voos cadastrados\n------------------------------------------------------------------------\n\n");
    for(i=0;i<=cont;i++){
        printf("Codigo de origem:%d\nCodigo de destino:%d\n\n------------------------------------------------------------------------\n\n",v[i].cod_origem, v[i].cod_destino);
    }
    system("pause");
    system("cls");
}

void imprimi_aero(){

    int i;

    printf("Aeroportos cadastrados\n------------------------------------------------------------------------\n\n");
    for(i=0;i<=cont2;i++){
        printf("Codigo de aeroporto:%d\nquantidade de voos que pousaram neste aeroporto:%d\n\n------------------------------------------------------------------------\n\n",a[i].cod,a[i].quantidade_pousos);
    }
    system("pause");
    system("cls");
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int op;

    do{
        printf("1-Entrada de dados de voo\n2-Entrada de dados do aeroporto\n3-Imprime dados de voos\n4-Imprimi dados de aeroportos\n5-Sair\n");
        fflush(stdin);
        scanf("%d",&op);
        switch(op){
        case 1: system("cls");
                entrada_voos();
                break;
        case 2: system("cls");
                entrada_aero();
                break;
        case 3: system("cls");
                imprimi_voos();
                break;
        case 4: system("cls");
                imprimi_aero();
                break;
        case 5: system("cls");
                break;
        default: system("cls");
        printf("\nOpcao inexistente\n");
        }
    }while(op!=5);
}
