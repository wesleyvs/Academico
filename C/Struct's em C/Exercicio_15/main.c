#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct livro
{
    char titulo[30];
    char autor[30];
    int ano;
}BOOK;
int main()
{
    BOOK livros[3];
    int i, count=0;
    char busca[30];
    for (i=0;i<=2;i++) {
        printf("INSERCAO DE LIVROS: \n\n");
        printf("Livro %d\n",i+1);
        printf("Titulo: "); fflush(stdin); gets(livros[i].titulo);
        printf("Autor: "); fflush(stdin); gets(livros[i].autor);
        printf("Ano: "); scanf("%d", &livros[i].ano);
        system("cls");
    }
    do
    {
        count=0;
        printf("(x para finalizar)\n");
        printf("Informe o titulo do livro para busca: "); fflush(stdin); gets(busca);
        for (i=0;i<=2;i++) {
            if (strcmp(busca, livros[i].titulo) == 0){
                printf("Titulo: %s\n", livros[i].titulo);
                printf("Autor: %s\n", livros[i].autor);
                printf("Ano: %d\n", livros[i].ano);
                printf("---------------------------\n");
                count++;
            }
        }
        if (strcmp(busca,"x") == 0) printf("\nFinalizado!"); exit(0);
        if(count==0) printf("\n\nNenhum livro encontrado!\n\n");
        system("pause");
        system("cls");
    }while (strcmp(busca,"x") != 0);
}
