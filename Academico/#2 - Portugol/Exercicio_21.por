programa
{
	funcao inicio()
	{
		inteiro candidato1, candidato2, candidato3, candidato4, branco, nulo, voto
		real total, percentual1, percentual2, percentual3, percentual4, percentualbranco, percentualnulo

		voto = 1
		candidato1 = 0
		candidato2 = 0
		candidato3 = 0
		candidato4 = 0
		nulo = 0
		branco = 0

		enquanto (voto != 0) {
			escreva ("Informe seu voto: ")
			leia (voto)
			se (voto == 1) {
				candidato1 = candidato1 + 1
			}
			se (voto == 2) {
				candidato2 = candidato2 + 1
			}
			se (voto == 3) {
				candidato3 = candidato3 + 1
			}
			se (voto == 4) {
				candidato4 = candidato4 + 1
			}
			se (voto == 5) {
				nulo = nulo + 1
			}
			se (voto == 6) {
				branco = branco + 1
			}
			se (voto != 1 e voto != 2 e voto != 3 e voto != 4 e voto != 5 e voto != 6) {
				escreva ("\n")
				escreva ("Voto incorreto!! Votos possiveis: \n")
				escreva ("1º Candidato: 1 \n")
				escreva ("2º Candidato: 2 \n")
				escreva ("3º Candidato: 3 \n")
				escreva ("4º Candidato: 4 \n")
				escreva ("Voto nulo: 5 \n")
				escreva ("Voto em branco: 6 \n")
				escreva ("Para computar os votos, entre com o valor: 0 \n")
				escreva ("\n")
			}
		}

		total = candidato1 + candidato2 + candidato3 + candidato4 + branco + nulo
		percentual1 = (candidato1 / total) * 100
		percentual2 = (candidato2 / total) * 100
		percentual3 = (candidato3 / total) * 100
		percentual4 = (candidato4 / total) * 100
		percentualbranco = (branco / total) * 100
		percentualnulo = (nulo / total) * 100
		
		escreva ("\n")
		escreva("Total de votos :", total, "\n")
		escreva ("\n")
		escreva ("1º Candidato, total de votos: ", candidato1, ". E seu percentual e de: ", percentual1, "% \n")
		escreva ("2º Candidato, total de votos: ", candidato2, ". E seu percentual e de: ", percentual2, "% \n")
		escreva ("3º Candidato, total de votos: ", candidato3, ". E seu percentual e de: ", percentual3, "% \n")
		escreva ("4º Candidato, total de votos: ", candidato4, ". E seu percentual e de: ", percentual4, "% \n")
		escreva ("Votos em branco:  ", branco, ". E seu percentual e de: ", percentualbranco, "% \n")
		escreva ("Votos nulos: ", nulo, ". E seu percentual e de: ", percentualnulo, "% \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2184; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */