Algoritmo "Signos"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descrição   : Exibe o signo de acordo com a data(dia/mes) informado
// Autor(a)    : Wesley Vinicius da Silva
// Data atual  : 03/09/2018
Var
   // Seção de Declarações das variáveis
   dia, mes : inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreva ("Informe o dia e o mes(numerico 1 a 12): ")
   leia (dia, mes)

   se (((dia >=20) e (dia <=30)) e (mes = 1)) ou ((dia >=1) e (dia <=18)) e (mes = 2) entao
      escreva ("O signo correspondente e: Aquario")
   fimse

   se (((dia >=19) e (dia <=30)) e (mes = 2)) ou ((dia >=1) e (dia <=20)) e (mes = 3) entao
      escreva ("O signo correspondente e: Peixes")
   fimse

   se (((dia >=21) e (dia <=30)) e (mes = 3)) ou ((dia >=1) e (dia <=19)) e (mes = 4) entao
      escreva ("O signo correspondente e: Aries")
   fimse

   se (((dia >=20) e (dia <=30)) e (mes = 4)) ou ((dia >=1) e (dia <=20)) e (mes = 5) entao
      escreva ("O signo correspondente e: Touros")
   fimse

   se (((dia >=21) e (dia <=30)) e (mes = 5)) ou ((dia >=1) e (dia <=20)) e (mes = 6) entao
      escreva ("O signo correspondente e: Gemeos")
   fimse

   se (((dia >=21) e (dia <=30)) e (mes = 6)) ou ((dia >=1) e (dia <=22)) e (mes = 7) entao
      escreva ("O signo correspondente e: Cancer")
   fimse

   se (((dia >=23) e (dia <=30)) e (mes = 7)) ou ((dia >=1) e (dia <=22)) e (mes = 8) entao
      escreva ("O signo correspondente e: Leao")
   fimse

   se (((dia >=23) e (dia <=30)) e (mes = 8)) ou ((dia >=1) e (dia <=22)) e (mes = 9) entao
      escreva ("O signo correspondente e: Virgem")
   fimse

   se (((dia >=23) e (dia <=30)) e (mes = 9)) ou ((dia >=1) e (dia <=22)) e (mes = 10) entao
      escreva ("O signo correspondente e: Libra")
   fimse

   se (((dia >=23) e (dia <=30)) e (mes = 10)) ou ((dia >=1) e (dia <=21)) e (mes = 11) entao
      escreva ("O signo correspondente e: Escorpiao")
   fimse

   se (((dia >=22) e (dia <=30)) e (mes = 11)) ou ((dia >=1) e (dia <=21)) e (mes = 12) entao
      escreva ("O signo correspondente e: Sagitario")
   fimse

   se (((dia >=22) e (dia <=30)) e (mes = 12)) ou ((dia >=1) e (dia <=19)) e (mes = 1) entao
      escreva ("O signo correspondente e: Capricornio")
   fimse
Fimalgoritmo