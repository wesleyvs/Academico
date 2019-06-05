#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct cordenadas {
    float r;
    float a;
    float x;
    float y;
}PONTO;

int main()
{
    PONTO cordenada;
    printf("Informe a cordenada polar: \n");
    printf("Raio: ");
    scanf("%f", &cordenada.r);
    printf("Argumento: ");
    scanf("%f", &cordenada.a);
    cordenada.x = cordenada.r * cos(cordenada.a);
    cordenada.y = cordenada.r * sin(cordenada.a);
    system("cls");
    printf("\n\n Cordenadas polar convertidas para cordenadas cartesianas: \n\n");
    printf("X: %f", cordenada.x);
    printf("\nY: %f", cordenada.y);
    printf("\n--------------------------------------------------------------------\n");
    return 0;
}
