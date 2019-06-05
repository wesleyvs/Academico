#include <stdio.h>
#include <stdlib.h>

int main()
{
    FILE *file;
    file = fopen ("./arquivo.txt", "r");
    char carac;
    char caracUsuario;
    int cont=0;
    printf("\n\nInforme um caracter para busca no arquivo.txt: "); scanf("%c", &caracUsuario);
    while (carac != EOF) {
        carac = fgetc(file);
        if (carac == caracUsuario) {
            cont++;
        }
    }
    printf("---------------------------------------------------\n");
    printf("O caractere aparece %d vezes no arquivo.txt!\n\n", cont);
    system("pause");
}
