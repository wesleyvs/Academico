#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    int i, j, cont=0, x, y, z;
    char vet[100], aux;
    FILE *f;

    f = fopen("arq.txt","r");
    if(f==NULL){
        printf("Erro durante a abertura do arquivo!\n");
        system("pause");
        exit(1);
    }
    aux = fgetc(f);
    while(aux!=EOF){
        vet[cont]=aux;
        aux = fgetc(f);
        cont++;
    }
    x = vet[0]-48;
    y = vet[2]-48;
    z = vet[4]-48;

    int matriz[x][y];

    for(i=0;i<x;i++){
        for(j=0;j<y;j++){
            matriz[i][j]=1;
        }
    }
    int a=6;
    for(i=0;i<z;i++){
        matriz[vet[a]-48][vet[a+2]-48]=0;
        a+=4;
    }

    for(i=0;i<x;i++){
        for(j=0;j<y;j++){
            printf("%d",matriz[i][j]);
        }
        printf("\n");
    }
    fclose (f);

    //gera e grava no arquivp
    f = fopen("arq_pronto.txt","w");
    if(f==NULL){
        printf("Erro durante a abertura do arquivo!\n");
        system("pause");
        exit(1);
    }

    int matriz_char[x][y];

    for(i=0;i<x;i++){
        for(j=0;j<y;j++){
            matriz_char[i][j]=matriz[i][j]+48;
            fputc(matriz_char[i][j], f);
        }
        fputc('\n', f);
    }
    fclose (f);
}
