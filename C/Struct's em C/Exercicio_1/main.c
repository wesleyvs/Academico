#include <stdio.h>
#include <stdlib.h>

typedef struct hora {
    int hora;
    int minutos;
    int segundos;
} HORARIO;

typedef struct data {
    int dia;
    int mes;
    int ano;
} DATA;

typedef struct compromisso {
    DATA dataCompromisso;
    HORARIO horarioCompromisso;
    char descricao[90];
}
int main()
{

}
