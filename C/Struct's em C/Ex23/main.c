#include <stdio.h>
#include <stdlib.h>

typedef struct{
    int dia, mes, ano;
}DAY;

DAY data1, data2;

int main()
{
    printf("Informe uma data\n");
    printf("Dia(dd):");
    fflush(stdin);
    scanf("%d",&data1.dia);
    system("cls");
    do{
        printf("Por favor insira um dia valido(entre 01 e 31)");
        scanf("%d",&data1.dia);
    }while(data1.dia<1 || data1.dia>31);
    printf("Mes(mm):");
    fflush(stdin);
    scanf("%d",&data1.mes);
    system("cls");
    do{
        printf("Por favor insira um mes valido(entre 01 e 12)");
        scanf("%d",&data1.mes);
    }while(data1.mes<1 || data1.mes>12);
    printf("Ano(aaaa):");
    fflush(stdin);
    scanf("%d",&data1.ano);
    system("cls");
    do{
        printf("Por favor insira um ano valido(entre 0001 e 2019)");
        scanf("%d",&data1.ano);
    }while(data1.ano<1 || data1.ano>2019);
    system("cls");
    printf("Informe outra data\n");
    printf("Dia(dd):");
    fflush(stdin);
    scanf("%d",&data2.dia);
    system("cls");
    do{
        printf("Por favor insira um dia valido(entre 01 e 31)");
        scanf("%d",&data2.dia);
    }while(data2.dia<1 || data2.dia>31);
    printf("Mes(mm):");
    fflush(stdin);
    scanf("%d",&data2.mes);
    system("cls");
    do{
        printf("Por favor insira um mes valido(entre 01 e 12)");
        scanf("%d",&data2.mes);
    }while(data2.mes<1 || data2.mes>12);
    printf("Ano(aaaa):");
    fflush(stdin);
    scanf("%d",&data2.ano);
    system("cls");
    do{
        printf("Por favor insira um ano valido(entre 0001 e 2019)");
        scanf("%d",&data2.ano);
    }while(data2.ano<1 || data2.ano>2019);
    system("cls");
}
