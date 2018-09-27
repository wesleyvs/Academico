Algoritmo "ClasPaises"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descrição   : Faz a classificacao de paises de acordo com o numero de medalhas
// Autor(a)    : Wesley Vinicius
// Data atual  : 01/09/2018
Var
   // Seção de Declarações das variáveis
   pais1, pais2, pais3 : caractere
   Mouro1, Mouro2, Mouro3 : inteiro
   Mprata1, Mprata2, Mprata3 : inteiro
   Mbronze1, Mbronze2, Mbronze3 : inteiro
   total1, total2, total3 : inteiro

Inicio
   // Entrada dos paises
   escreva ("Informe o nome do primeiro pais: ")
   leia (pais1)
   escreva ("Informe o nome do segundo pais: ")
   leia (pais2)
   escreva ("Informe o nome do terceiro pais: ")
   leia (pais3)
   escreval ("")

   // Em caso de igualdade de nome de paises
   se (pais1 = pais2) ou (pais2 = pais3) ou (pais1 = pais3) entao
      escreva ("Há paises iguais, reinicie o programa com paises diferentes")
   senao

      // Entrada das medalhas do pais1
      escreva ("Informe o numero de medalhas de ouro do pais ", pais1, ": ")
      leia (Mouro1)
      escreva ("Informe o numero de medalhas de prata do pais ", pais1, ": ")
      leia (Mprata1)
      escreva ("Informe o numero de medalhas de bronze do pais ", pais1, ": ")
      leia (Mbronze1)
      Mouro1 <- Mouro1 * 3
      Mprata1 <- Mprata1 * 2
      total1 <- Mouro1 + Mprata1 + Mbronze1
      escreval ("O ", pais1, " possui ", total1, " de pontos")
      escreval ("")

      // Entrada das medalhas do pais2
      escreva ("Informe o numero de medalhas de ouro do pais ", pais2, ": ")
      leia (Mouro2)
      escreva ("Informe o numero de medalhas de prata do pais ", pais2, ": ")
      leia (Mprata2)
      escreva ("Informe o numero de medalhas de bronze do pais ", pais2, ": ")
      leia (Mbronze2)
      Mouro2 <- Mouro2 * 3
      Mprata2 <- Mprata2 * 2
      total2 <- Mouro2 + Mprata2 + Mbronze1
      escreval ("O ", pais2, " possui ", total2, " de pontos")
      escreval ("")

      // Entrada das medalhas do pais3
      escreva ("Informe o numero de medalhas de ouro do pais ", pais3, ": ")
      leia (Mouro3)
      escreva ("Informe o numero de medalhas de prata do pais ", pais3, ": ")
      leia (Mprata3)
      escreva ("Informe o numero de medalhas de bronze do pais ", pais3, ": ")
      leia (Mbronze3)
      Mouro3 <- Mouro3 * 3
      Mprata3 <- Mprata3 * 2
      total3 <- Mouro3 + Mprata3 + Mbronze1
      escreval ("O ", pais3, " possui ", total3, " de pontos")
      escreval ("")

      // Classificacao dos paises com base no total1, total2 e total3
      escreval ("A classificacao: ")
      se ((total1 > total2) e (total1 > total3)) e (total2 > total3) entao
         escreval ("Em primeiro lugar: ",pais1, " com", total1, " pontos!!")
         escreval ("Em segundo lugar: ", pais2, " com", total2, " pontos!!")
         escreval ("Em terceiro lugar: ", pais3, " com", total3, " pontos!!")
      senao
         se ((total1 > total2) e (total1 > total3)) e (total3 > total2) entao
            escreval ("Em primeiro lugar: ",pais1, " com", total1, " pontos!!")
            escreval ("Em segundo lugar: ", pais3, " com", total3, " pontos!!")
            escreval ("Em terceiro lugar: ", pais2, " com", total2, " pontos!!")
         fimse
      fimse

      se ((total3 > total1) e (total3 > total2)) e (total1 > total2) entao
         escreval ("Em primeiro lugar: ",pais3, " com", total3, " pontos!!")
         escreval ("Em segundo lugar: ", pais1, " com", total1, " pontos!!")
         escreval ("Em terceiro lugar: ", pais2, " com", total2, " pontos!!")
      senao
         se ((total3 > total1) e (total3 > total2)) e (total2 > total1) entao
            escreval ("Em primeiro lugar: ",pais3, " com", total3, " pontos!!")
            escreval ("Em segundo lugar: ", pais2, " com", total2, " pontos!!")
            escreval ("Em terceiro lugar: ", pais1, " com", total1, " pontos!!")
         fimse
      fimse

      se ((total2 > total1) e (total2 > total3)) e (total1 > total3) entao
         escreval ("Em primeiro lugar: ",pais2, " com", total2, " pontos!!")
         escreval ("Em segundo lugar: ", pais1, " com", total1, " pontos!!")
         escreval ("Em terceiro lugar: ", pais3, " com", total3, " pontos!!")
      senao
         se ((total2 > total1) e (total2 > total3)) e (total3 > total1) entao
            escreval ("Em primeiro lugar: ",pais2, " com", total2, " pontos!!")
            escreval ("Em segundo lugar: ", pais3, " com", total3, " pontos!!")
            escreval ("Em terceiro lugar: ", pais1, " com", total1, " pontos!!")
         fimse
      fimse

      // Em caso de empate
      se (total1 = total2) e (total2 = total3) entao
         escreval ("Empate entre ", pais1, ",", pais2, " e ", pais3, ". Ambos tem", total1, " pontos!!")
         escreval ("")
      senao
         se (total1 = total2) entao
            escreval ("Empate entre ", pais1, " e ", pais2, ". Ambos tem", total1, " pontos!!")
            escreval (pais3, " ficou com", total3, " pontos!!")
            escreval ("")
         senao
            se (total2 = total3) entao
               escreval ("Empate entre ", pais2, " e ", pais3, ". Ambos tem", total2, " pontos!!")
               escreval (pais1, " ficou com", total1, " pontos!!")
               escreval ("")
            senao
               se (total1 = total3) entao
                  escreval ("Empate entre ", pais1, " e ", pais3, ". Ambos tem", total3, " pontos!!")
                  escreval (pais2, " ficou com", total2, " pontos!!")
                  escreval ("")
               fimse
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo