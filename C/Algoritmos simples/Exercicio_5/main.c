#include <stdio.h>
#include <stdlib.h>

int main()
{
    int lado1, lado2, lado3;
    printf("Informe os lados de um triangulo: ");
    scanf ("%d %d %d", &lado1, &lado2, &lado3);
    if (lado1 == lado2 && lado2 == lado3) {
        printf("O triangulo e equilatero!!");
        return 0;
    }
    if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
        printf("O triangulo e isoceles!!");
        return 0;
    }
    if (lado1 != lado2 && lado1 != lado3 && lado2 != lado3) {
        printf("O triangulo e escaleno!!");
        return 0;
    }
    return 0;
}
