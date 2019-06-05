#include <stdio.h>
#include <stdlib.h>

int main()
{
    int largura, comprimento, perimetro, area;
    printf("Informe a largura do retangulo: ");
    scanf("%d", &largura);
    printf("Informe o comprimento do retangulo: ");
    scanf("%d", &comprimento);

    perimetro = 2*largura + 2*comprimento;
    area = largura*comprimento;

    printf("Perimetro: %d", perimetro);
    printf("\nArea: %d", area);

    return 0;
}
