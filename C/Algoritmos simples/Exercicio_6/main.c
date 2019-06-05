#include <stdio.h>
#include <stdlib.h>

int main()
{
    int angulo1, angulo2, angulo3;
    printf("Informe os angulos de um triangulo: ");
    scanf("%d %d %d", &angulo1, &angulo2, &angulo3);
    if (angulo1 < 90 && angulo2 < 90 && angulo3 < 90) {
        printf("Triangulo acutangulo!!");
        return 0;
    }
    if (angulo1 > 90 || angulo2 > 90 || angulo3 > 90) {
        printf("Triangulo obtusangulo!!");
        return 0;
    }
    if (angulo1 == 90 || angulo2 == 90 || angulo3 == 90) {
        printf("Triangulo retangulo!!");
        return 0;
    }
    return 0;
}
