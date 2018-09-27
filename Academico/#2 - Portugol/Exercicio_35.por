programa
{
	funcao inicio()
	{
		real porcentualMaior, porcentualMenor, porcentualMedia
		cadeia elevador, periodo
				
		//contadores: 
		inteiro elevadorA, AfluxoM, AfluxoV, AfluxoN, elevadorB, BfluxoM, BfluxoV, BfluxoN
		inteiro elevadorC, CfluxoM, CfluxoV, CfluxoN, matutino, MelevadorA, MelevadorB, MelevadorC
		inteiro VelevadorA, VelevadorB, VelevadorC, NelevadorA, NelevadorB, NelevadorC, totalrespostas, vespertino, noturno

		elevador = ""
		periodo = ""
		elevadorA = 0
		AfluxoM = 0
		AfluxoV = 0
		AfluxoN = 0
		elevadorB = 0
		BfluxoM = 0
		BfluxoV = 0
		BfluxoN = 0
		elevadorC = 0
		CfluxoM = 0
		CfluxoV = 0
		CfluxoN = 0
		matutino = 0
		vespertino = 0
		noturno = 0
		MelevadorA = 0
		MelevadorB = 0
		MelevadorC = 0
		VelevadorA = 0
		VelevadorB = 0
		VelevadorC = 0
		NelevadorA = 0
		NelevadorB = 0
		NelevadorC = 0
		totalrespostas = 0

		porcentualMaior = 0.0
		porcentualMenor = 0.0
		porcentualMedia = 0.0
		
		enquanto (elevador != "X") {
			escreva ("Qual elevador mais utiliza com frequencia ?\n")
			escreva ("'A' \n")
			escreva ("'B' \n")
			escreva ("'C' \n")
			escreva ("'X' - finalizar \n")
			escreva ("Resposta: ")
			leia (elevador)

			se (elevador == "X") {escreva ("Resultado: \n") pare}

			escreva ("\n")
			escreva ("Periodo em que usa o elevador ?\n")
			escreva ("'M' = matutino \n")
			escreva ("'V' = vespertino\n")
			escreva ("'N' = noturno\n")
			escreva ("Resposta: ")
			leia (periodo)

			//Elevador mais frequentado
			se (elevador == "A") {
				elevadorA++
				se (periodo == "M") {AfluxoM++}
				se (periodo == "V") {AfluxoV++}
				se (periodo == "N") {AfluxoN++}
			}
			se (elevador == "B") {
				elevadorB++
				se (periodo == "M") {BfluxoM++}
				se (periodo == "V") {BfluxoV++}
				se (periodo == "N") {BfluxoN++}
			}
			se (elevador == "C") {
				elevadorC++
				se (periodo == "M") {CfluxoM++}
				se (periodo == "V") {CfluxoV++}
				se (periodo == "N") {CfluxoN++}
			}

			//Maior fluxo
			se (periodo == "M") {
				matutino++
				se (elevador == "A") {MelevadorA++}
				se (elevador == "B") {MelevadorB++}
				se (elevador == "C") {MelevadorC++}
			}
			se (periodo == "V") {
				vespertino++
				se (elevador == "A") {VelevadorA++}
				se (elevador == "B") {VelevadorB++}
				se (elevador == "C") {VelevadorC++}
			}
			se (periodo == "N") {
				noturno++
				se (elevador == "A") {NelevadorA++}
				se (elevador == "B") {NelevadorB++}
				se (elevador == "C") {NelevadorC++}
			}
			limpa ()
			totalrespostas++
		} //FIM DO LAÇO
		
		escreva ("\n")		
		se (elevadorA > elevadorB e elevadorA > elevadorC) {
			escreva ("Elevador mais frequentado: A.\n")
			se (AfluxoM > AfluxoV e AfluxoM > AfluxoN) {
				escreva ("Mais utilizado no periodo: 'Matutino'. \n")
			}
			se (AfluxoV > AfluxoM e AfluxoV > AfluxoN) {
				escreva ("Mais utilizado no periodo: 'Vespertino'. \n")
			}
			se (AfluxoN > AfluxoV e AfluxoN > AfluxoM) {
				escreva ("Mais utilizado no periodo: 'Noturno'. \n")
			}
		}
		se (elevadorB > elevadorA e elevadorB > elevadorC) {
			escreva ("Elevador mais frequentado: B.\n")
			se (BfluxoM > BfluxoV e BfluxoM > BfluxoN) {
				escreva ("Mais utilizado no periodo: 'Matutino'. \n")
			}
			se (BfluxoV > BfluxoM e BfluxoV > BfluxoN) {
				escreva ("Mais utilizado no periodo: 'Vespertino'. \n")
			}
			se (BfluxoN > BfluxoV e BfluxoN > BfluxoM) {
				escreva ("Mais utilizado no periodo: 'Noturno'. \n")
			}
		}
		se (elevadorC > elevadorB e elevadorC > elevadorA) {
			escreva ("Elevador mais frequentado: C.\n")
			se (CfluxoM > CfluxoV e CfluxoM > CfluxoN) {
				escreva ("Mais utilizado no periodo: 'Matutino'. \n")
			}
			se (CfluxoV > CfluxoM e CfluxoV > CfluxoN) {
				escreva ("Mais utilizado no periodo: 'Vespertino'. \n")
			}
			se (CfluxoN > CfluxoV e CfluxoN > CfluxoM) {
				escreva ("Mais utilizado no periodo: 'Noturno'. \n")
			}
		}

		
		//maior usado dos horarios
		se (matutino > vespertino e matutino > noturno) {
			escreva ("Periodo de maior fluxo: 'Matutino'. ")
			se (MelevadorA > MelevadorB e MelevadorA > MelevadorC) {
				escreva ("Pertence ao elevador: 'A'. \n")
				porcentualMaior = (MelevadorA * 100) / totalrespostas
			}
			se (MelevadorB > MelevadorA e MelevadorB > MelevadorC) {
				escreva ("Pertence ao elevador: 'B'. \n")
				porcentualMaior = (MelevadorB * 100) / totalrespostas
			}
			se (MelevadorC > MelevadorA e MelevadorC > MelevadorB) {
				escreva ("Pertence ao elevador: 'C'. \n")
				porcentualMaior = (MelevadorC * 100) / totalrespostas
			}
		}
		se (vespertino > matutino e vespertino > noturno) {
			escreva ("Periodo de maior fluxo: 'Vespertino'. ")
			se (VelevadorA > VelevadorB e VelevadorA > VelevadorC) {
				escreva ("Pertence ao elevador: 'A'. \n")
				porcentualMaior = (VelevadorA * 100) / totalrespostas
			}
			se (VelevadorB > VelevadorA e VelevadorB > VelevadorC) {
				escreva ("Pertence ao elevador: 'B'. \n")
				porcentualMaior = (VelevadorB * 100) / totalrespostas
			}
			se (VelevadorC > VelevadorA e VelevadorC > VelevadorB) {
				escreva ("Pertence ao elevador: 'C'. \n")
				porcentualMaior = (VelevadorC * 100) / totalrespostas
			}
		}
		se (noturno > matutino e noturno > vespertino) {
			escreva ("Periodo de maior fluxo: 'Noturno'. ")
			se (NelevadorA > NelevadorB e NelevadorA > NelevadorC) {
				escreva ("Pertence ao elevador: 'A'. \n")
				porcentualMaior = (NelevadorA * 100) / totalrespostas
			}
			se (NelevadorB > NelevadorA e NelevadorB > NelevadorC) {
				escreva ("Pertence ao elevador: 'B'. \n")
				porcentualMaior = (NelevadorB * 100) / totalrespostas
			}
			se (NelevadorC > NelevadorA e NelevadorC > NelevadorB) {
				escreva ("Pertence ao elevador: 'C'. \n")
				porcentualMaior = (NelevadorC * 100) / totalrespostas
			}
		}

		//Menos usado dos horarios
		se (matutino < vespertino e matutino < noturno) {
			escreva ("Periodo de menor fluxo: 'Matutino'. ")			
			se (MelevadorA < MelevadorB e MelevadorA < MelevadorC) {
				escreva ("Pertence ao elevador: 'A'. \n")
				porcentualMenor = (MelevadorA * 100) / totalrespostas
			}
			se (MelevadorB < MelevadorA e MelevadorB < MelevadorC) {
				escreva ("Pertence ao elevador: 'B'. \n")
				porcentualMenor = (MelevadorB * 100) / totalrespostas
			}
			se (MelevadorC < MelevadorA e MelevadorC < MelevadorB) {
				escreva ("Pertence ao elevador: 'C'. \n")
				porcentualMenor = (MelevadorC * 100) / totalrespostas
			}
		}
		se (vespertino < matutino e vespertino < noturno) {
			escreva ("Periodo de menor fluxo: 'Vespertino'. ")
			se (VelevadorA < VelevadorB e VelevadorA < VelevadorC) {
				escreva ("Pertence ao elevador: 'A'. \n")
				porcentualMenor = (VelevadorA * 100) / totalrespostas
			}
			se (VelevadorB < VelevadorA e VelevadorB < VelevadorC) {
				escreva ("Pertence ao elevador: 'B'. \n")
				porcentualMenor = (VelevadorB * 100) / totalrespostas
			}
			se (VelevadorC < VelevadorA e VelevadorC < VelevadorB) {
				escreva ("Pertence ao elevador: 'C'. \n")
				porcentualMenor = (VelevadorC * 100) / totalrespostas
			}
		}
		se (noturno < matutino e noturno < vespertino) {
			escreva ("Periodo de menor fluxo: 'Noturno'. ")
			se (NelevadorA < NelevadorB e NelevadorA < NelevadorC) {
				escreva ("Pertence ao elevador: 'A'. \n")
				porcentualMenor = (NelevadorA * 100) / totalrespostas
			}
			se (NelevadorB < NelevadorA e NelevadorB < NelevadorC) {
				escreva ("Pertence ao elevador: 'B'. \n")
				porcentualMenor = (NelevadorB * 100) / totalrespostas
			}
			se (NelevadorC < NelevadorA e NelevadorC < NelevadorB) {
				escreva ("Pertence ao elevador: 'C'. \n")
				porcentualMenor = (NelevadorC * 100) / totalrespostas
			}
		} //Fim dos menos usados

		escreva ("\n")
		escreva("Porcentual do mais usado: ", porcentualMaior, "%. Porcentual do menos usado: ", porcentualMenor, "% \n")

		//Media utilização
		se (elevadorA > elevadorB e elevadorA < elevadorC) {
			porcentualMedia = (elevadorA * 100) / totalrespostas
			escreva ("O elevador de media utilizacao foi o A, e representa ", porcentualMedia, "% do uso. \n")
		}
		se (elevadorB > elevadorA e elevadorB < elevadorC) {
			porcentualMedia = (elevadorB * 100) / totalrespostas
			escreva ("O elevador de media utilizacao foi o B, e representa ", porcentualMedia, "% do uso. \n")
		}
		se (elevadorC > elevadorA e elevadorC < elevadorB) {
			porcentualMedia = (elevadorC * 100) / totalrespostas
			escreva ("O elevador de media utilizacao foi o C, e representa ", porcentualMedia, "% do uso total. \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2503; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */