#include <stdio.h>
#include <stdlib.h>

typedef struct data
{
    int dia;
    int mes;
    int ano;
}DAT;

typedef struct agenda
{
    char compromisso[60];
    DAT data;
}AGD;

int main()
{
    AGD agendas[3];
    int i, count=0;
    int M=0, A=0;
    for (i=0;i<=2;i++) {
        printf("INSERCAO DE DADOS\n\n");
        printf("Compromisso %d\n", i+1);
        printf("Compromisso: "); fflush(stdin); gets(agendas[i].compromisso);
        printf("Dia: "); scanf("%d", &agendas[i].data.dia);
        printf("Mes: "); scanf("%d", &agendas[i].data.mes);
        printf("Ano: "); scanf("%d", &agendas[i].data.ano);
        system("cls");
    }

    do
    {
        count = 0;
        printf("Informe o mes para pesquisa: "); scanf("%d", &M);
        if (M == 0) printf("Finalizado!"); exit(0);
        printf("Informe o ano: ");scanf("%d", &A);
        printf("\nResultado: \n\n");
        for (i=0;i<=2;i++) {
            if (agendas[i].data.mes == M && agendas[i].data.ano == A) {
                printf("Compromisso: %s\n", agendas[i].compromisso);
                printf("Dia: %d\n", agendas[i].data.dia);
                printf("Mes: %d\n", agendas[i].data.mes);
                printf("Ano: %d\n", agendas[i].data.ano);
                printf("-------------------------------\n");
                count++;
            }
        }
        if (count == 0) printf("Nenhum compromisso encontrado!\n\n");
        system("pause");
        system("cls");
    }while(M!=0);
}
