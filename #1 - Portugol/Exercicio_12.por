programa
{
	funcao inicio()
	{
		cadeia mamiferos, quadrupede, bipedes, voadores, carnivoros, onivoros, aves, naovoadoras, nadadoras, tropicais, polares
		cadeia repteis, casco, repcarnivoros, sempatas

		escreva ("Responda as perguntas com 'sim' ou 'nao': \n")

   		//mamiferos
   		escreva ("E mamifero?")
   		leia (mamiferos)

   		se (mamiferos == "sim")
   		{
   			escreva ("E quadrupede?")
	     	leia (quadrupede)
   		}
      		se (quadrupede == "sim")
      		{
         			escreva ("E carnivoro?")
         			leia (carnivoros)
      		}
         			se (carnivoros == "sim")
         			{
            			escreva ("O animal e: Leao")
         			}
         				senao
         				{
	            			escreva ("O animal e: Cavalo")
         				}

  	 	se (quadrupede == "nao")
   		{
      		escreva ("O animal e bipede?")
      		leia(bipedes)
   		}
      		se (bipedes == "sim")
      		{
         		escreva ("O animal e onivoro?")
         		leia (onivoros)
      		}
         		se (onivoros == "sim")
         		{
            		escreva ("O animal e: Homem")
         		}
         		senao
         		{
            		escreva ("O animal e frutivoro: Macaco")
         		}
		         
   		se (bipedes == "nao")
   		{
      		escreva ("E voador?")
      		leia (voadores)
   		}
      		se (voadores == "sim")
      		{
         		escreva ("O animal e: Morcego")
      		}
      		senao
      		{
         		escreva ("O animal e aquatico: Baleia")
      		}
      		//fim mamiferos
		
   		//aves
   		se (mamiferos == "nao")
   		{
      		escreva ("E ave?")
      		leia (aves)
   		}
      		se (aves == "sim")
      		{
         		escreva ("E nao-voadora?")
         		leia (naovoadoras)
      		}
         		se (naovoadoras == "sim")
         		{
            		escreva ("O animal e tropical?")
            		leia (tropicais)
         		}
            		se (tropicais == "sim")
            		{
               		escreva ("O animal e: Avestruz")
            		}
            		senao
            		{
               		escreva ("O animal e polar: Pinguin")
            		}
		
   		se (naovoadoras == "nao")
   		{
      		escreva ("O animal e nadador?")
      		leia (nadadoras)
   		}
      		se (nadadoras == "sim")
      		{
         		escreva ("O animal e: Pato")
      		}
      		senao
      		{
         		escreva ("O animal e uma ave de rapina: Aguia")
      		}   
      		//fim aves
		
   		//repteis
   		se (aves == "nao")
   		{
      		escreva ("E reptil?")
      		leia (repteis)
   		}
      		se (repteis == "sim")
      		{
         		escreva ("Possui casco?")
         		leia (casco)
      		}
         		se (casco == "sim")
         		{
            		escreva ("O animal e: Tartaruga")
         		}
         		senao
         		{
            		se (casco == "nao")
            		{
               		escreva ("O animal e carnivoro?")
               		leia(repcarnivoros)
            		}
               		se (repcarnivoros == "sim")
               		{
                  		escreva ("O animal e: Crocodilo")
               		}
               		senao
               		{
                  		escreva ("O animal nao possui patas: Cobra")
               		}
         		}
         		//fim repteis
		
   		se (mamiferos == "nao" e aves == "nao" e repteis == "nao")
   		{
      		escreva ("Animal nao classificado!!")
   		}
   	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 92; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */