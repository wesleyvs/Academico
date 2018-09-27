programa
{
	funcao inicio()
	{
		cadeia pais1, pais2, pais3
		inteiro Mouro1, Mouro2, Mouro3
		inteiro Mprata1, Mprata2, Mprata3
		inteiro Mbronze1, Mbronze2, Mbronze3
		inteiro total1, total2, total3
		
		escreva ("Informe o nome do primeiro pais: ")
   		leia (pais1)
   		escreva ("Informe o nome do segundo pais: ")
   		leia (pais2)
   		escreva ("Informe o nome do terceiro pais: ")
   		leia (pais3)
   		escreva ("\n")

   		// Em caso de igualdade de nome de paises
   		se (pais1 == pais2 ou pais2 == pais3 ou pais1 == pais3) 
		{
      		escreva ("Há paises iguais, reinicie o programa com paises diferentes")
		}
   		senao
   		{

      	// Entrada das medalhas do pais1
      		escreva ("Informe o numero de medalhas de ouro do pais ", pais1, ": ")
     		leia (Mouro1)
      		escreva ("Informe o numero de medalhas de prata do pais ", pais1, ": ")
      		leia (Mprata1)
      		escreva ("Informe o numero de medalhas de bronze do pais ", pais1, ": ")
      		leia (Mbronze1)
      		Mouro1 = Mouro1 * 3
      		Mprata1 = Mprata1 * 2
      		total1 = Mouro1 + Mprata1 + Mbronze1
      		escreva ("O ", pais1, " possui ", total1, " de pontos")
      		escreva ("\n")

      		// Entrada das medalhas do pais2
      		escreva ("Informe o numero de medalhas de ouro do pais ", pais2, ": ")
      		leia (Mouro2)
      		escreva ("Informe o numero de medalhas de prata do pais ", pais2, ": ")
      		leia (Mprata2)
      		escreva ("Informe o numero de medalhas de bronze do pais ", pais2, ": ")
      		leia (Mbronze2)
      		Mouro2 = Mouro2 * 3
      		Mprata2 = Mprata2 * 2
      		total2 = Mouro2 + Mprata2 + Mbronze1
      		escreva ("O ", pais2, " possui ", total2, " de pontos")
      		escreva ("\n")

      		// Entrada das medalhas do pais3
      		escreva ("Informe o numero de medalhas de ouro do pais ", pais3, ": ")
      		leia (Mouro3)
      		escreva ("Informe o numero de medalhas de prata do pais ", pais3, ": ")
      		leia (Mprata3)
      		escreva ("Informe o numero de medalhas de bronze do pais ", pais3, ": ")
      		leia (Mbronze3)
      		Mouro3 = Mouro3 * 3
      		Mprata3 = Mprata3 * 2
      		total3 = Mouro3 + Mprata3 + Mbronze1
      		escreva ("O ", pais3, " possui ", total3, " de pontos")
      		escreva ("\n")

      		// Classificacao dos paises com base no total1, total2 e total3
      		escreva ("A classificacao: \n")
      		se (total1 > total2 e total1 > total3 e total2 > total3) 
      		{
	         		escreva ("Em primeiro lugar: ",pais1, " com ", total1, " pontos!! \n")
         			escreva ("Em segundo lugar: ", pais2, " com ", total2, " pontos!! \n")
         			escreva ("Em terceiro lugar: ", pais3, " com ", total3, " pontos!! \n")
      		}
      		senao	
      		{
	         		se (total1 > total2 e total1 > total3 e total3 > total2)
	         		{
            			escreva ("Em primeiro lugar: ",pais1, " com ", total1, " pontos!! \n")
            			escreva ("Em segundo lugar: ", pais3, " com ", total3, " pontos!! \n")
            			escreva ("Em terceiro lugar: ", pais2, " com ", total2, " pontos!! \n")
	         		}
      		}
	
      		se (total3 > total1 e total3 > total2 e total1 > total2) 
      		{
	         		escreva ("Em primeiro lugar: ",pais3, " com ", total3, " pontos!! \n")
         			escreva ("Em segundo lugar: ", pais1, " com ", total1, " pontos!! \n")
         			escreva ("Em terceiro lugar: ", pais2, " com ", total2, " pontos!! \n")
      		}
      		senao
      		{
	         		se (total3 > total1 e total3 > total2 e total2 > total1)
	         		{
            			escreva ("Em primeiro lugar: ",pais3, " com ", total3, " pontos!! \n")
            			escreva ("Em segundo lugar: ", pais2, " com ", total2, " pontos!! \n")
            			escreva ("Em terceiro lugar: ", pais1, " com ", total1, " pontos!! \n")
	         		}
      		}
	
      		se (total2 > total1 e total2 > total3 e total1 > total3)
      		{
	         		escreva ("Em primeiro lugar: ",pais2, " com ", total2, " pontos!! \n")
         			escreva ("Em segundo lugar: ", pais1, " com ", total1, " pontos!! \n")
         			escreva ("Em terceiro lugar: ", pais3, " com ", total3, " pontos!! \n")
      		}
      		senao
      		{
	         		se (total2 > total1 e total2 > total3 e total3 > total1) 
	         		{
            			escreva ("Em primeiro lugar: ",pais2, " com ", total2, " pontos!! \n")
            			escreva ("Em segundo lugar: ", pais3, " com ", total3, " pontos!! \n")
            			escreva ("Em terceiro lugar: ", pais1, " com ", total1, " pontos!! \n")
      			}
   			}	
	
      		// Em caso de empate
     		se (total1 == total2 e total2 == total3) 
     		{
     	    		escreva ("Empate entre ", pais1, ",", pais2, " e ", pais3, ". Ambos tem ", total1, " pontos!!")
   		    		escreva (" \n")
     		}
    	  		senao
    	  		{
	         		se (total1 == total2)
	         		{
            			escreva ("Empate entre ", pais1, " e ", pais2, ". Ambos tem ", total1, " pontos!! \n")
            			escreva (pais3, " ficou com ", total3, " pontos!!")
            			escreva (" \n")
	         		}
         			senao
         			{
	            		se (total2 == total3) 
	            		{
	               		escreva ("Empate entre ", pais2, " e ", pais3, ". Ambos tem ", total2, " pontos!! \n")
     	          		escreva (pais1, " ficou com ", total1, " pontos!!")
          	     		escreva (" \n")
	            		}
         				senao
         				{
	               		se (total1 == total3)
	               		{
		                  		escreva ("Empate entre ", pais1, " e ", pais3, ". Ambos tem ", total3, " pontos!! \n")
          			     	escreva (pais2, " ficou com ", total2, " pontos!!")
                  				escreva (" \n")
	               		}
         				}
         			}
    	  		}
   		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */