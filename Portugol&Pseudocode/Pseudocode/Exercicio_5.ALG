Algoritmo "IdadeMesDia"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descri��o   : Calcula a idade em anos, meses e dias
// Autor(a)    : Wesley Vinicius da Silva
// Data atual  : 07/09/2018
Var
   // Se��o de Declara��es das vari�veis
   anoatual, mesatual, diaatual, ano, mes, dia : inteiro
   calcano, calcmes, calcdia : inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreva ("Informe a data de aniversario (dia/mes/ano): ")
   leia (dia, mes, ano)
   escreval ("A data de aniversario informada e: ",dia,"/",mes,"/",ano)

   escreva ("Informe a data atual (dia/mes/ano): ")
   leia (diaatual, mesatual, anoatual)
   escreval ("A data atual informada e: ",diaatual,"/",mesatual,"/",anoatual)
   escreval (" ")
   
   se (mesatual > mes) entao
       calcmes <- mesatual - mes
   senao
       calcmes <- mes - mesatual
   fimse

   calcano <- anoatual - ano

   se (diaatual + dia > 31) ou (dia + diaatual > 31) entao
      calcdia <- (diaatual + dia) - 31
   senao
      calcdia <- diaatual + dia
   fimse

   escreva ("Voce possui: ", calcano, " anos,", calcmes, " meses e", calcdia, " dias")

Fimalgoritmo