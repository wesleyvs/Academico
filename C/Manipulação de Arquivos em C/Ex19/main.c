#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int qtd_lin=1;

void conta_lin()
{

    char aux;

    FILE *f;

    f = fopen("arq.txt","r");

    if(f==NULL){
        printf("Erro durante a abertura do arquivo!\n");
        system("pause");
        exit(1);
    }
    aux = fgetc(f);
    while(aux!=EOF){
        if(aux=='\n'){
           qtd_lin++;
        }
        aux = fgetc(f);
    }
    fclose (f);
}

int main()
{

    conta_lin();

    int i, j, lin=0, col=0;
    char aux;

    FILE *f;

    f = fopen("arq.txt","r");

    if(f==NULL){
        printf("Erro durante a abertura do arquivo!\n");
        system("pause");
        exit(1);
    }

    char nome[qtd_lin][20], dump[qtd_lin][20], dump2[qtd_lin][20];
    int nota[qtd_lin];

    for(i=0;i<qtd_lin;i++){
        fscanf(f, "%s %s %s %d", dump[i], nome[i], dump2[i], &nota[i]);
    }

    char maior_nome[qtd_lin][20];
    int maior_nota[qtd_lin],maior=0, cont=0;

    for(i=0;i<qtd_lin;i++){
        if(maior<nota[i]){
            maior=nota[i];
            strcpy(maior_nome[cont],nome[i]);
            maior_nota[cont]=nota[i];
        }else if(maior==nota[i]){
            cont++;
            strcpy(maior_nome[cont],nome[i]);
            maior_nota[cont]=nota[i];
        }
    }

    if(cont>0){
        printf("\nMaiores notas\n\n");
        for(i=0;i<=cont;i++){
             printf("Nome: %s Nota: %d\n\n", maior_nome[i], maior_nota[i]);
        }
    }else{
        printf("\nMaior nota\n\nNome: %s Nota: %d\n\n", maior_nome[cont], maior_nota[cont]);
    }

    fclose (f);
}
