#include <stdio.h>
#include <stdlib.h>

typedef struct complexo {
	int real;
	int imaginario;
} CPLX;

int main ()
{
	int i;
	CPLX z, w;

	printf("SOMA/SUBTRACAO/MULTIPLICACAO\n");
	printf("NUMEROS COMPLEXOS\n\n");
	printf("Informe a parte real de Z: ");
	scanf("%d", &z.real);
	printf("Informe a parte imaginaria de Z: ");
	scanf("%d", &z.imaginario);
	printf("Informe a parte real de W: ");
	scanf("%d", &w.real);
	printf("Informe a parte imaginaria de W: ");
	scanf("%d", &w.imaginario);

	//soma complexo
	printf("\nSOMA: ");
	int somaReal = (z.real+w.real);
	int somaImg = (z.imaginario+w.imaginario);
	if (somaImg >= 0) {
		printf("%d + %di", somaReal, somaImg);
	} else {
		printf("%d - %di", somaReal, somaImg*-1);
	}
	printf("\n");
	//Subtracao complexo
	printf("SUBTRACAO: ");
	int subtReal = (z.real-w.real);
	int subtImg = (z.imaginario-w.imaginario);
	if (subtImg >= 0) {
		printf("%d + %di", subtReal, subtImg);
	} else {
		printf("%d - %di", subtReal, subtImg*-1);
	}
	printf("\n");
	//Multiplicacao complexo
	printf("MULTIPLIACAO: ");
	int multpReal = (z.real*w.real)-(z.imaginario*w.imaginario);
	int multpImg = (z.real*w.imaginario) + (z.imaginario*w.real);
	if (multpImg >= 0) {
		printf("%d + %di", multpReal, multpImg);
	} else {
		printf("%d - %di", multpReal, multpImg*-1);
	}
	return 0;
}
