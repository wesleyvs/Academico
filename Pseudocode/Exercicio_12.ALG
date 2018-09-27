Algoritmo "Animais"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descrição   : Informa qual animal escolhido atraves de perguntas
// Autor(a)    : Wesley Vinicius
// Data atual  : 07/09/2018
Var
   // Seção de Declarações das variáveis
   mamiferos, quadrupedes, bipedes, voadores, carnivoros : caractere
   onivoros, aves, naovoadoras : caractere
   nadadoras, tropicais, polares  : caractere
   repteis, casco, repcarnivoros, sempatas : caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...)
   escreval ("Responda as perguntas com 'sim' ou 'nao': ")
   escreval (" ")

   //mamiferos
   escreva ("E mamifero?")
   leia (mamiferos)

   se (mamiferos = "sim") entao
      escreva ("E quadrupede?")
      leia (quadrupedes)
      se (quadrupedes = "sim") entao
         escreva ("E carnivoro?")
         leia (carnivoros)
         se (carnivoros = "sim") entao
            escreva ("O animal e: Leao")
         senao
            escreva ("O animal e: Cavalo")
         fimse
      fimse
   fimse

   se (quadrupedes = "nao") entao
      escreva ("O animal e bipede?")
      leia(bipedes)
      se (bipedes = "sim") entao
         escreva ("O animal e onivoro?")
         leia (onivoros)
         se (onivoros = "sim") entao
            escreva ("O animal e: Homem")
         senao
            escreva ("O animal e frutivoro: Macaco")
         fimse
      fimse
   fimse

   se (bipedes = "nao") entao
      escreva ("E voador?")
      leia (voadores)
      se (voadores = "sim") entao
         escreva ("O animal e: Morcego")
      senao
         escreva ("O animal e aquatico: Baleia")
      fimse
   fimse

   //fim mamiferos

   //aves
   se (mamiferos = "nao") entao
      escreva ("E ave?")
      leia (aves)
      se (aves = "sim") entao
         escreva ("E nao-voadora?")
         leia (naovoadoras)
         se (naovoadoras = "sim") entao
            escreva ("O animal e tropical?")
            leia (tropicais)
            se (tropicais = "sim") entao
               escreva ("O animal e: Avestruz")
            senao
               escreva ("O animal e polar: Pinguin")
            fimse
         fimse
      fimse
   fimse

   se (naovoadoras = "nao") entao
      escreva ("O animal e nadador?")
      leia (nadadoras)
      se (nadadoras = "sim") entao
         escreva ("O animal e: Pato")
      senao
         escreva ("O animal e uma ave de rapina: Aguia")
      fimse
   fimse
   //fim aves

   //repteis
   se (aves = "nao") entao
      escreva ("E reptil?")
      leia (repteis)
      se (repteis = "sim") entao
         escreva ("Possui casco?")
         leia (casco)
         se (casco = "sim") entao
            escreva ("O animal e: Tartaruga")
         senao
            se (casco = "nao") entao
               escreva ("O animal e carnivoro?")
               leia(repcarnivoros)
               se (repcarnivoros = "sim") entao
                  escreva ("O animal e: Crocodilo")
               senao
                  escreva ("O animal nao possui patas: Cobra")
               fimse
            fimse
         fimse
      fimse
   fimse
   //fim repteis

   se (mamiferos = "nao") e (aves = "nao") e (repteis = "nao") entao
      escreva ("Animal nao classificado!!")
   fimse

Fimalgoritmo