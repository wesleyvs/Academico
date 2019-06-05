#include <stdio.h>
#include <stdlib.h>

int main()
{
    int nota, qt_notas, V=0, A=0, retiradas, aux=1;
    char comeco, vez;
    scanf("%c %d", &comeco, &qt_notas);
    vez = comeco;
    if (comeco != 'V' && comeco != 'A'){
        printf("entrada invalida!!");
        return 0;
    }
    while (qt_notas != 0) {
        scanf("%d", &nota);
        if (nota == 2 || nota == 5 || nota == 10 || nota == 20 || nota == 50 || nota == 100) {
            if (vez == 'V') {
                V = V + nota;
                vez = 'A';
            } else {
                A = A + nota;
                vez = 'V';
            }
            qt_notas--;
        } else {
            printf("Valor da nota invalida!!");
            return 0;
        }
    }
    printf("VOCE: %d AMIGO: %d", V, A);
    return 0;
}
