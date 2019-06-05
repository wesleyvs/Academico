#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct produto
{
    int codigo;
    char nome[15];
    float preco;
    int quantidade;
}PROD;

int main()
{
    int i, pedidoQuant=0, contaPedido=0, indice=0;
    PROD produtos[5];
    int pedidoCodigo=0;
    for (i=0;i<=4;i++) {
        printf("ISERCAO DE PRODUTOS: \n\n");
        printf("Produto numero %d:\n", i+1);
        printf("Informe o codigo: "); scanf("%d", &produtos[i].codigo);
        printf("Informe o nome: "); fflush(stdin); gets(produtos[i].nome);
        printf("Informe o preco: "); scanf("%f", &produtos[i].preco);
        printf("Inform a quantidade: "); scanf("%d", &produtos[i].quantidade);
        system("cls");
    }
    do
    {
        printf("PEDIDO: \n\n");
        printf("Informe o codigo do produto: "); scanf("%d", &pedidoCodigo);
        printf("Informe a quantidade: "); scanf("%d", &pedidoQuant);
        for (i=0;i<=4;i++) {
            if (produtos[i].codigo == pedidoCodigo) {
                contaPedido++;
            }
            if (contaPedido==1) {
                printf("Nome: %s\n", produtos[i].nome);
                printf("Preco: %f\n", produtos[i].preco);
                printf("Quantidade em estoque: %d\n", produtos[i].quantidade);
                printf("Quantidade solicitada: %d\n", pedidoQuant);
                if (pedidoQuant > produtos[i].quantidade) printf("\nQUANTIDADE INDISPONIVEL EM ESTOQUE!\n"); break;
                produtos[indice].quantidade = produtos[indice].quantidade - pedidoQuant;
                printf("---------------------------------\n");
                break;
            }
        }
        if (contaPedido == 0) printf("\nCODIGO DE PEDIDO NAO ENCONTRADO!\n");
    }while (pedidoCodigo != 0);
}
