#include <stdio.h>
#include <stdlib.h>

int main()
{
   int lado1, lado2, lado3, perimetro, area;
   printf("Informe os tres lados do triangulo: ");
   scanf("%d %d %d", &lado1, &lado2, &lado3);
   if (lado1 > lado2 && lado1 > lado3) {area = lado2*lado3;}
   if (lado2 > lado1 && lado2 > lado3) {area = lado1*lado3;}
   if (lado3 > lado1 && lado3 > lado2) {area = lado1*lado2;}
   perimetro = lado1 + lado2 + lado3;

   printf("Perimetro: %d \nArea: %d", perimetro, area);

   return 0;
}
