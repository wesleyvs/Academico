#include<stdlib.h>
#include<conio.h>

int main ()
{
    float a, b, c, delta, x1, x1f, x2, x2f, Xv, Yv;
    printf ("Informe o valor de A, B e C: ");
    scanf ("%f %f %f", &a, &b, &c);
    delta=pow(b,2)-4*a*c;
    if (delta<0)
    {
        printf ("Delta e igual a %.2f", delta);
        printf ("Delta Negativo, impossivel calcular.\n\n");
    }
    else
    {
        printf ("Delta e igual a %.2f \n", delta);
        x1=((-b)+sqrt(delta))/(2*a);
        x2=((-b)-sqrt(delta))/(2*a);
        printf ("O x1 = %.2f e o x2 = %.2f \n", x1, x2);
    }
    return 0;
}
