Algoritmo "ValidaData"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descrição   : Analisa e confirma de a data de entrada e valida
// Autor(a)    : Wesley Vinicius
// Data atual  : 07/09/2018
Var
   // Seção de Declarações das variáveis
   ano, mes, dia : inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreva ("Informe uma data (dia/mes/ano) : ")
   leia(dia, mes, ano)

   se (mes > 12) entao
      escreva ("A data informada nao e valida!!")
   fimse

   se (ano mod 4 = 0) e (ano mod 100 > 0) e (mes = 2) e (dia = 29) entao
      escreva ("A data informada e valida")
   senao
      se (ano mod 4 > 0) entao
         se (mes = 1) e (dia <= 31) entao
            escreva ("A data informada e valida")
         senao
            se (mes = 3) e (dia <= 31) entao
               escreva ("A data informada e valida")
            senao
               se (mes = 4) e (dia <= 30) entao
                  escreva ("A data informada e valida")
               senao
                  se (mes = 5) e (dia <= 31) entao
                     escreva ("A data informada e valida")
                  senao
                     se (mes = 6) e (dia <= 30) entao
                        escreva ("A data informada e valida")
                     senao
                        se (mes = 7) e (dia <= 31) entao
                           escreva ("A data informada e valida")
                        senao
                           se (mes = 8) e (dia <= 31) entao
                              escreva ("A data informada e valida")
                           senao
                              se (mes = 9) e (dia <= 30) entao
                                 escreva ("A data informada e valida")
                              senao
                                 se (mes = 10) e (dia <= 31) entao
                                    escreva ("A data informada e valida")
                                 senao
                                    se (mes = 11) e (dia <= 30) entao
                                       escreva ("A data informada e valida")
                                    senao
                                       se (mes = 12) e (dia <= 31) entao
                                          escreva ("A data informada e valida")
                                       senao
                                          escreva ("A data informada nao e valida!!")
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo