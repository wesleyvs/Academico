#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#define AUX 5

typedef struct{
    char rua[30], bairro[15], cidade[15], estado[15], cep[15];
}END;

typedef struct{
    char nome[30], identidade[15], cpf[15], civil[15], telefone[15], sexo;
    int idade;
    float salario;
    END end;
}INF;

INF cadastro[AUX];
int cont=-1;

void entrada()
{
    if(cont<=4){
        cont++;
        printf("Informe o nome:");
        fflush(stdin);
        fgets(cadastro[cont].nome,30,stdin);
        printf("Informe o endereco\n");
        printf("Rua:");
        fflush(stdin);
        fgets(cadastro[cont].end.rua,30,stdin);
        printf("Bairro:");
        fflush(stdin);
        fgets(cadastro[cont].end.bairro,15,stdin);
        printf("Cidade:");
        fflush(stdin);
        fgets(cadastro[cont].end.cidade,15,stdin);
        printf("Estado:");
        fflush(stdin);
        fgets(cadastro[cont].end.estado,15,stdin);
        printf("CEP:");
        fflush(stdin);
        fgets(cadastro[cont].end.cep,15,stdin);
        printf("Informe o salário:");
        fflush(stdin);
        scanf("%f",&cadastro[cont].salario);
        printf("Informe a identidade:");
        fflush(stdin);
        fgets(cadastro[cont].identidade,15,stdin);
        printf("Informe o CPF:");
        fflush(stdin);
        fgets(cadastro[cont].cpf,15,stdin);
        printf("Informe o estado civil:");
        fflush(stdin);
        fgets(cadastro[cont].civil,15,stdin);
        printf("Informe o telefone:");
        fflush(stdin);
        fgets(cadastro[cont].telefone,15,stdin);
        printf("Informe a idade:");
        fflush(stdin);
        scanf("%d",&cadastro[cont].idade);
        printf("Informe o sexo(M/F):");
        fflush(stdin);
        cadastro[cont].sexo=getchar();
        system("cls");
    }else{
        printf("ERRO - Lista cheia\n");
        system("pause");
        system("cls");
    }
}

void maior_idade(){

    int i, maior=-1;

    for(i=0;i<=cont;i++){
        if(maior<cadastro[i].idade){
            maior=cadastro[i].idade;
        }
    }
    printf("Maior idade\n------------------------------------------------------------------------\n\n");
    for(i=0;i<=AUX;i++){
        if(maior==cadastro[i].idade){
            printf("Nome:%sEndereço\nRua:%sBairro:%sCidade:%sEstado:%sCEP:%sSalario:%.2f\nIdentidade:%sCPF:%sEstado civil:%sTelefone:%sIdade:%d\nSexo:%c\n\n------------------------------------------------------------------------\n\n",cadastro[i].nome,cadastro[i].end.rua,cadastro[i].end.bairro,cadastro[i].end.cidade,cadastro[i].end.estado,cadastro[i].end.cep,cadastro[i].salario,cadastro[i].identidade,cadastro[i].cpf,cadastro[i].civil,cadastro[i].telefone,cadastro[i].idade,cadastro[i].sexo);
        }
    }
    printf("\n");
    system("pause");
    system("cls");
}

void masculino(){

    int i;

    printf("Pessoas do sexo masculino\n------------------------------------------------------------------------\n\n");
    for(i=0;i<=cont;i++){
        if((cadastro[i].sexo=='m') || (cadastro[i].sexo=='M')){
            printf("Nome:%sEndereço\nRua:%sBairro:%sCidade:%sEstado:%sCEP:%sSalario:%.2f\nIdentidade:%sCPF:%sEstado civil:%sTelefone:%sIdade:%d\nSexo:%c\n\n------------------------------------------------------------------------\n\n",cadastro[i].nome,cadastro[i].end.rua,cadastro[i].end.bairro,cadastro[i].end.cidade,cadastro[i].end.estado,cadastro[i].end.cep,cadastro[i].salario,cadastro[i].identidade,cadastro[i].cpf,cadastro[i].civil,cadastro[i].telefone,cadastro[i].idade,cadastro[i].sexo);
        }
    }
    system("pause");
    system("cls");
}

void salario(){

    int i;

    printf("Pessoas com salário maior que R$1000.00\n------------------------------------------------------------------------\n\n");
    for(i=0;i<=cont;i++){
        if(cadastro[i].salario>1000){
            printf("Nome:%sEndereço\nRua:%sBairro:%sCidade:%sEstado:%sCEP:%sSalario:%.2f\nIdentidade:%sCPF:%sEstado civil:%sTelefone:%sIdade:%d\nSexo:%c\n\n------------------------------------------------------------------------\n\n",cadastro[i].nome,cadastro[i].end.rua,cadastro[i].end.bairro,cadastro[i].end.cidade,cadastro[i].end.estado,cadastro[i].end.cep,cadastro[i].salario,cadastro[i].identidade,cadastro[i].cpf,cadastro[i].civil,cadastro[i].telefone,cadastro[i].idade,cadastro[i].sexo);
        }
    }
    system("pause");
    system("cls");
}

void imprimir(){

    int i;

    printf("Todos os dados inseridos\n------------------------------------------------------------------------\n\n");
    for(i=0;i<=cont;i++){
        printf("Nome:%sEndereço\nRua:%sBairro:%sCidade:%sEstado:%sCEP:%sSalario:%.2f\nIdentidade:%sCPF:%sEstado civil:%sTelefone:%sIdade:%d\nSexo:%c\n\n------------------------------------------------------------------------\n\n",cadastro[i].nome,cadastro[i].end.rua,cadastro[i].end.bairro,cadastro[i].end.cidade,cadastro[i].end.estado,cadastro[i].end.cep,cadastro[i].salario,cadastro[i].identidade,cadastro[i].cpf,cadastro[i].civil,cadastro[i].telefone,cadastro[i].idade,cadastro[i].sexo);
    }
    system("pause");
    system("cls");
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int op;

    do{
        printf("1-Entrada de dados\n2-Encontra a maior idade\n3-Encontra pessoas do sexo masculino\n4-Encontra pessoas com salario maior que R$1000.00\n5-Imprime dados inseridos\n6-Sair\n");
        fflush(stdin);
        scanf("%d",&op);
        switch(op){
        case 1: system("cls");
                entrada();
                break;
        case 2: system("cls");
                maior_idade();
                break;
        case 3: system("cls");
                masculino();
                break;
        case 4: system("cls");
                salario();
                break;
        case 5: system("cls");
                imprimir();
                break;
        case 6: system("cls");
                break;
        default: system("cls");
        printf("\nOpcao inexistente\n");
        }
    }while(op!=6);
}
