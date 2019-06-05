#include <stdio.h>
#include <stdlib.h>

typedef struct Vetor{
float x;
float y;
float z;
}VET;

int main()
{
    VET vetor1;
    VET vetor2;
    printf("Valores do primeiro Vetor: \n\n");
    printf("Informe um valor para x: ");
    scanf("%f", &vetor1.x);
    printf("Informe um valor para y: ");
    scanf("%f", &vetor1.y);
    printf("Informe um valor para z: ");
    scanf("%f", &vetor1.z);
    printf("\n---------------------------------\n");
    system("cls");
    printf("Valores do segundo Vetor: \n\n");
    printf("Informe um valor para x: ");
    scanf("%f", &vetor2.x);
    printf("Informe um valor para y: ");
    scanf("%f", &vetor2.y);
    printf("Informe um valor para z: ");
    scanf("%f", &vetor2.z);
    printf("\n---------------------------------\n");
    system("cls");
    printf("Vetor1 + Vetor2: \n\n");
    printf("X: %f", vetor1.x+vetor2.x);
    printf("\nY: %f", vetor1.y+vetor2.y);
    printf("\nZ: %f", vetor1.z+vetor2.z);
    return 0;
}
