#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    int vet[10], i, j;
    char aux[100];
    FILE *f;

    printf("Informe 10 numeros inteiros\n");
    for(i=0;i<10;i++){
        fflush(stdin);
        scanf("%d",&vet[i]);
    }
    system("cls");

    f = fopen("arq.txt","w");
    if(f==NULL){
        printf("Erro durante a abertura do arquivo!\n");
        system("pause");
        exit(1);
    }

    for(i=0;i<10;i++){
        itoa(vet[i],aux,2);
        printf("%s\n", aux);
        for(j=0;j<strlen(aux);j++){
            fputc(aux[j], f);
        }
        fputc('\n', f);
    }
    fclose (f);
}
