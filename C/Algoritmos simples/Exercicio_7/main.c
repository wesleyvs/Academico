#include <stdio.h>
#include <stdlib.h>

int main()
{
    float IMC, altura, peso, aux;
    printf("Informe seu peso e altura: ");
    scanf("%f %f", &peso, &altura);
    aux = altura*altura;
    IMC = peso / aux;
    printf ("Seu IMC e de: %.2f \n", IMC);
    if (IMC < 18.5) {printf ("Abaixo do peso");}
    if (IMC >= 18.5 && IMC <= 24.9) {printf ("Peso normal");}
    if (IMC >= 25 && IMC <= 29.9) {printf ("Sobrepeso");}
    if (IMC >= 30 && IMC <= 34.9) {printf ("Obesidade grau 1");}
    if (IMC >= 35 && IMC <= 39.9) {printf ("Obesidade grau 2");}
    if (IMC >= 40) {printf ("Obesidade grau 3");}
    printf("\n");
    return 0;
}
