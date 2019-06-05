#include <stdio.h>
#include <stdlib.h>

typedef struct eletrodomestico
{
    char nome[15];
    float potencia;
    float  tmpAtivo;
}ELTDM;

int main()
{
    ELTDM eletrodomesticos[5];
    int i, t;
    float consumoTotal;
    float consumoIndividual[5];

    for (i=0;i<=4;i++)
    {
        printf("INSERCAO DE ELETRODOMESTICOS\n\n");
        printf("Eletrodomestico %d\n",i+1);
        printf("Nome: "); fflush(stdin); gets(eletrodomesticos[i].nome);
        printf("Potencia: "); scanf("%f", &eletrodomesticos[i].potencia);
        printf("Tempo ativo(horas): "); scanf("%f", &eletrodomesticos[i].tmpAtivo);
        system("cls");
    }

    printf("Informe uma quantidade de dias: "); scanf("%d", &t);
    do {
        for (i=0;i<=4;i++) {
            consumoTotal = consumoTotal + (eletrodomesticos[i].potencia * eletrodomesticos[i].tmpAtivo);
            consumoIndividual[i] = eletrodomesticos[i].potencia * eletrodomesticos[i].tmpAtivo;
        }
        t--;
    }while (t != 0);
    printf("\nConsumo total neste periodo de dias: %.2f", consumoTotal);
    printf("Consumo individual neste periodo de dias: \n");
    for (i=0;i<=4;i++){
        consumoIndividual[i] = (consumoIndividual[i] * 100) / consumoTotal;
        printf("Nome: %s\n", eletrodomesticos[i].nome);
        printf("Consumo individual: %.0f porcento do total \n", consumoIndividual[i]);
        printf("-------------------------\n");
    }
    return 0;
}
