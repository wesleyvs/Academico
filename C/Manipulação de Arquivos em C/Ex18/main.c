#include <stdio.h>
#include <stdlib.h>

int qtd_lin=0;

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

    char number[qtd_lin][20];

    aux = fgetc(f);
    while(aux!=EOF){
        if(aux=='$'){
            aux = fgetc(f);
            while(aux!='\n'){
                number[lin][col]=aux;
                aux = fgetc(f);
                col++;
            }
            number[lin][col]='\0';
            lin++;
            col=0;
        }else{
            aux = fgetc(f);
        }
    }

    float numbers[qtd_lin], total=0;
    char* pEnd;

    for(i=0;i<qtd_lin;i++){
        numbers[i]=strtof(number[i],&pEnd);
        total+=numbers[i];
    }

    printf("O total a pagar e: R$%.1f",total);
    printf("\n");

    fclose (f);
}
