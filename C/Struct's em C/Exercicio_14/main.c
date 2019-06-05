#include <stdio.h>
#include <stdlib.h>

typedef struct carro
{
    char marca[20];
    int ano;
    float preco;
}CAR;

int main()
{
    CAR carros[5];
    int i;
    float p=0.0;
    for (i=0;i<=4;i++){
        printf("INSERCAO DE CARROS: \n\n");
        printf("Carro %d\n\n",i+1);
        printf("Marca: ");fflush(stdin); gets(carros[i].marca);
        printf("Ano: "); scanf("%d", &carros[i].ano);
        printf("Preco: "); scanf("%f", &carros[i].preco);
        system("cls");
    }
    do
    {
        printf("Informe o preco maximo desejado para a pesquisa (0 para fechar): ");scanf("%f", &p);
        printf("\n\n");
        for (i=0;i<=4;i++) {
            if (carros[i].preco < p) {
                printf("Marca: %s\n", carros[i].marca);
                printf("Ano: %d\n", carros[i].ano);
                printf("Preco: %f\n", carros[i].preco);
                printf("----------------------------\n\n");
            }
        }
        system("pause");
        system("cls");
    }while (p != 0.0);
}
