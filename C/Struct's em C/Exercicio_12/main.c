#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct carta
{
    char valor;
    char naipe[10];
}CARD;

CARD jogador1[5], jogador2[5];
char cartas[14] = {' ', 'A', '2', '3', '4', '5', '6','7', '8', '9', '10', 'Q', 'J', 'K'};
char np[7];
int naipeAleatorio[10];
int aux = 0;

void aleatorio()
{
    int i;
    for (i=0;i<=9;i++) {
        naipeAleatorio[i] = rand() % 4;
    }
}
void exibir()
{
    int i;
    printf("Jogador 1:\n\n");
    for (i=0;i<=4;i++) {
        printf("Carta %d: %c de %s\n",i+1,jogador1[i].valor, jogador1[i].naipe);
    }
    printf("\n----------------------------------------\nJogador 2:\n\n");
    for (i=0;i<=4;i++) {
        printf("Carta %d: %c de %s\n",i+1,jogador2[i].valor, jogador2[i].naipe);
    }

}
void naipes ()
{
    int i;
    char paus[7] = "paus";
    char copas[7] = "copas";
    char espadas[7] = "espadas";
    char ouros[7] = "ouros";
    aleatorio();
    if (naipeAleatorio[0] == 0) strcpy(np, paus);
    if (naipeAleatorio[1] == 1) strcpy(np, copas);
    if (naipeAleatorio[2] == 2) strcpy(np, espadas);
    if (naipeAleatorio[3] == 3) strcpy(np, ouros);
}
void gerarDezCartas()
{
    int aleatorio = 0;
    int i;
    for (i=0;i<=4;i++) {
        aleatorio = rand() % 13;
        jogador1[i].valor = cartas[aleatorio];
        naipes();
        strcpy(jogador1[i].naipe,np);
    }
    for (i=0;i<=4;i++) {
        aleatorio = 1+rand() % 13;
        jogador2[i].valor = cartas[aleatorio];
        naipes();
        strcpy(jogador2[i].naipe,np);
    }
}
int main()
{
    CARD jogador1[5], jogador2[5];
    aleatorio();
    gerarDezCartas();
    exibir();
    return 0;
}
