#include <stdio.h>
#include <stdlib.h>

char input;
FILE *file;
int cont1=0, cont2=0;

void escreverArquivo ()
{
    file = fopen("./arq.txt", "w");
    printf("Informe a frase desejada: ");
    while (file != EOF)
    {
        input = getche();
        if (input == '0') {
            fclose(file);
            break;
        }
        fputc(input,file);
        cont1++;
    }
    system("pause");
}

void lerArquivo()
{
    file = fopen("./arq.txt", "r");
    printf("Conteudo do arquivo arq.txt: \n\n");
    while (cont2 != cont1)
    {
        char input = fgetc(file);
        printf("%c", input);
        cont2++;
    }
    fclose(file);
}

int main()
{
    escreverArquivo();
    lerArquivo();
    return 0;
}
