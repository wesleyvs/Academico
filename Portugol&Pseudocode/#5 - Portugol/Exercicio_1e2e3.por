programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro indice
		indice = 0
		escreva ("0 - Finalizar programa\n")
		escreva ("1 - Arranjo de elementos (p a p) \n")
		escreva ("2 - Combinação de elementos (p a p) \n")
		escreva ("3 - Exercicio vetor")
		
		faca {
			escreva ("\n")
			escreva ("Informe a opção desejada: ")
			leia (indice)
			se (indice > 3) {
				escreva ("Valor incorreto, informe uma opção válida! \n")
			}
			se (indice == 0) {
				pare
			}
		} enquanto (indice > 3)
		se (indice == 1) {
			arranjo_elementos()
			escreva ("\n -------------------------------- \n")
			escreva ("\n")
			inicio()
		}
		se (indice == 2) {
			combinacao_elementos()
			escreva ("\n -------------------------------- \n")
			escreva ("\n")
			inicio()
		}
		se (indice == 3) {
			exercicio_vetor()
			escreva ("\n -------------------------------- \n")
			escreva ("\n")
			inicio()
		}
	}
	
	funcao arranjo_elementos() 
	{
		escreva ("\n--------------------------------\n")
		inteiro i, N, P, fatorialN = 1, fatorialNP = 1
		real A
		escreva ("Informe um valor para N: ")
		leia (N)
		escreva ("Informe um valor para P: ")
		leia (P)
		para (i = N ; i >= 1 ; i--) {
			fatorialN = fatorialN * i
		}
		para (i = (N-P) ; i >= 1 ; i--) {
			fatorialNP = fatorialNP * i
		}
		A = fatorialN / fatorialNP
		escreva ("A = N!/(N-P)! \n")
		escreva ("A = ", N, "!/(", N, "-", P, ")!\n")
		escreva ("A = ", fatorialN, "/", fatorialNP, "\n")
		escreva ("A = ", A)
	}

	funcao combinacao_elementos() 
	{
		escreva ("\n--------------------------------\n")
		inteiro i, N, P, fatorialN = 1, fatorialP = 1, fatorialNP = 1
		real C
		escreva ("Informe um valor para N: ")
		leia (N)
		escreva ("Informe um valor para P: ")
		leia (P)
		para (i = N ; i >= 1 ; i--) {
			fatorialN = fatorialN * i
		}
		para (i = P ; i >= 1 ; i--) {
			fatorialP = fatorialP * i
		}
		para (i = (N-P) ; i >= 1 ; i--) {
			fatorialNP = fatorialNP * i
		}
		C = fatorialN/(fatorialP*(fatorialNP))
		escreva ("C = N!/(P!*(N-P)!) \n")
		escreva ("C = ", N, "!/(", P, "!*(", N, "-", P, ")!)\n")
		escreva ("C = ", fatorialN, "/", fatorialP, "*", fatorialNP, "\n")
		escreva ("C = ", C)
	}
	
	funcao exercicio_vetor()
	{
		escreva ("\n -------------------------------- \n")
		inteiro vetor[100], indice, i, somatoria, cont, repetido
		real media, MediaP, DesvioPadrao
		indice = 0
		somatoria = 0
		media = 0.0
		MediaP = 0.0	
		DesvioPadrao = 0.0	
		cont = 0
		repetido = 0

		para (i = 0 ; i <= 99 ; i++) {
			vetor[i] = u.sorteia(-50, 99)
		}
	
		escreva ("0 - Finalizar programa\n")
		escreva ("1 - Escrever os 100 elementos do vetor \n")
		escreva ("2 - Somatoria dos 100 elementos do vetor \n")
		escreva ("3 - Media dos 100 elementos do vetor \n")
		escreva ("4 - Substituir por zero todos os valores negativos do vetor\n")
		escreva ("5 - Substituir por zero todos os valores repetidos e positivos do vetor\n")
		faca {
			escreva ("\n")
			escreva ("Informe a opção desejada: ")
			leia (indice)
			se (indice > 6) {
				escreva ("Valor incorreto, informe uma opção válida! \n")
			}
			se (indice == 0) {
				pare
			}
		} enquanto (indice > 6)
		se (indice == 1) {
			digitar_elementos(vetor)
			escreva ("\n -------------------------------- \n")
			escreva ("\n")
		}
		se (indice == 2) {
			imprimir_somatoria(somatoria, vetor)
			escreva ("\n -------------------------------- \n")
			escreva ("Valor da somatoria de todos elementos do vetor: ", somatoria)
			escreva ("\n -------------------------------- \n")
			escreva ("\n")
		}
		se (indice == 3) {
			media_elementos(media, somatoria, vetor)
			escreva ("\n -------------------------------- \n")
			escreva ("Media do vetor: ", media)
			escreva ("\n -------------------------------- \n")
			escreva ("\n")
		}
		se (indice == 4) {
			negativo_zero(cont, vetor)
			escreva ("\n -------------------------------- \n")
			escreva ("Foram substituidos por zero: ", cont, " elementos")
			escreva ("\n")
		}
		se (indice == 5) {
			repetido_zero(repetido, vetor)
			escreva ("\n -------------------------------- \n")
			escreva ("Foram substituidos por zero: ", repetido, " elementos")
			escreva ("\n")
		}
	}
	funcao inteiro digitar_elementos(inteiro &vetor[]) 
	{
		inteiro i
		escreva ("\n--------------------------------\n")

		para (i = 0 ; i < 99 ; i++) {
			escreva ("Informe o ", i+1, "º valor do vetor: ")
			leia (vetor[i])
		}
		retorne vetor[99]
	}
	funcao inteiro imprimir_somatoria(inteiro &somatoria, inteiro vetor[])
	{	
		somatoria = 0
		para (inteiro i = 0 ; i <= 99 ; i++) {
			somatoria = somatoria + vetor[i]
		}
		retorne (somatoria)
	}
	funcao real media_elementos(real &media, inteiro somatoria, inteiro vetor[])
	{
		media = imprimir_somatoria(somatoria, vetor) / 100
		retorne (media)
	}
	funcao inteiro negativo_zero(inteiro &cont, inteiro &vetor[])
	{
		inteiro i
		para (i = 0 ; i <= 99 ; i++) {
			se (vetor[i] < 0) {
				vetor[i] = 0
				cont++
			}
		}
		retorne (cont)
	}
	funcao inteiro repetido_zero(inteiro &repetido, inteiro &vetor[])
	{
		inteiro i, j
		para (i = 0 ; i <= 99 ; i++) {
			para (j = 0 ; j <= 99 ; j++) {
				se (i != j) {
					se (vetor[i] == vetor[j] e vetor[j] >= 1) {
						vetor[i] = 0
						vetor[j] = 0
						repetido++
					}
				}
			}
		}
		retorne (repetido)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2521; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */