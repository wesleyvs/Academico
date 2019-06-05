#include <stdio.h>
#include <stdlib.h>

int main()
{
    int pack1, pack2, pack3, qt1, qt2, qt3, covas = 0;
    scanf ("%d %d", &pack1, &qt1);
    scanf ("%d %d", &pack2, &qt2);
    scanf ("%d %d", &pack3, &qt3);
    while (pack1 >= 0 && pack1 > qt1) {
        pack1 = pack1 - qt1;
        covas++;
        printf ("%d \n", pack1);
    }
    if (pack1 == qt1) {covas++;}
    while (pack2 >= 0 && pack2 > qt2) {
        pack2 = pack2 - qt2;
        covas++;
        printf ("%d \n", pack2);
    }
    if (pack2 == qt2) {covas++;}
    while (pack3 >= 0 && pack3 > qt3) {
        pack3 = pack3 - qt3;
        covas++;
        printf ("%d \n", pack3);
    }
    if (pack3 == qt3) {covas++;}
    printf ("%d \n", covas);
    return 0;
}
