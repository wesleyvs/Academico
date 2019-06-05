#include <stdio.h>
#include <stdlib.h>

int main()
{
    float a, b, resultado, x;
    printf("Informe o valor do coeficiente 'a' e 'b': ");
    scanf("%f %f", &a, &b);
    x = -b / a;
    printf("%.1f", x);
    return 0;
}
