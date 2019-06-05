#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int c, count;
    char arquivo[30];
    FILE *file;

    printf("Digite o nome do arquivo (Exemplo: arquivo.txt): \n");
    fflush(stdin);
    gets(arquivo);

    for (int i = 65; i < 91; i++) {
        file = fopen(arquivo, "r");
        if (file == NULL) {
            printf("Erro na abertura do arquivo.\n");
            system("pause");
            exit(1);
        }

        c = toupper(fgetc(file));
        count = 0;
        while (c != 159) {
            if (c == i) {
                count++;
            }
            c = toupper(fgetc(file));
        }
        printf("%c - %d vezes\n", i, count);
        fclose(file);
    }
}
