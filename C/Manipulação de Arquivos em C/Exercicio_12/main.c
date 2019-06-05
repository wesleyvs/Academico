#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    FILE *arquivo;
    char c, text[150];
    int charCount = 0, wordCount = 0, lineCount = 1;

    arquivo = fopen("arquivo.txt", "r");
    if (arquivo == NULL) {
        printf("Erro na abertura do arquivo.\n");
        exit(1);
    }

    c = fgetc(arquivo);
    while (c != EOF) {
        if (c == ' ') {
            wordCount++;
        }
        if (c == '\n') {
            lineCount++;
            wordCount++;
        }
        text[charCount] = c;
        charCount++;
        c = fgetc(arquivo);
    }
    wordCount++;
    text[charCount] = '\0';
    fclose(arquivo);

    printf("\nCaracteres: %d\n\nPalavras: %d\n\nLinhas: %d\n\nTexto:\n%s\n\n", charCount, wordCount, lineCount, text);

    for (int i = 65; i < 91; i++) {
        int count = 0, c;
        for (int y = 0; y < strlen(text); y++) {
            c = toupper(text[y]);
            if (c == i) {
              count++;
            }
        }
        if (count > 0) {
            printf("%c: %d vezes\n", i, count);
        }
    }

    return 0;
}
