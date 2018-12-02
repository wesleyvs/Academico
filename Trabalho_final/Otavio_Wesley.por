programa
{
	inclua biblioteca Arquivos --> a
	inclua biblioteca Tipos --> T
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> u
	inteiro global[9][9]
	
	funcao inicio()
	{
		inteiro sudoku[9][9], sudoku_resolvido[9][9], i, j, contador = 1, L = 0, C = 0, auxiliar = 0
		inteiro quadrante1[3][3], quadrante2[3][3], quadrante3[3][3], quadrante4[3][3], quadrante5[3][3], quadrante6[3][3] 
		inteiro quadrante7[3][3], quadrante8[3][3], quadrante9[3][3]
		cadeia validacao = "", valida = ""
		caracter obter, obter2
		inteiro aux = 0, conv_int
		escreva ("\n")
		criar_sudoku(sudoku)
		se (sudoku[0][0] < 10) {
			validando(sudoku)
		}senao {
			valida = T.inteiro_para_cadeia(sudoku[0][0], 10)
			obter = txt.obter_caracter(valida, 0)
			obter2 = txt.obter_caracter(valida, 1)
			valida = obter + "|" + obter2 + ": INVALID_VALUE_ON_THE_BOARD"
			se (quarta_validacao(valida, auxiliar) == verdadeiro) {
				conv_int = T.caracter_para_inteiro(obter2)
				se (auxiliar == 1) {conv_int = conv_int-1}
				se (conv_int == 0) {conv_int = 9}
				valida = obter + "|" + conv_int + ": INVALID_VALUE_ON_THE_BOARD"
			} 
			sudoku[0][0] = 0
		}
		
		se (valida != "") {
			validacao = validacao + "" + valida
			escreva ("mensagem: ", validacao, "\n")
			exportar(sudoku_resolvido, validacao, sudoku)
			retorne
		}
		escreva("Carregar arquivo: \n")
		imprimir_sudoku(sudoku)
		validacao = validando(sudoku)
		se (validacao != "") {
			escreva ("mensagem: ", validacao, "\n")
			exportar(sudoku_resolvido, validacao, sudoku)
			retorne
		} senao { 
			u.aguarde(1000)
			limpa()
			escreva ("Validação: OK \n") 
			escreva ("Resolvendo")
			u.aguarde(500)
			escreva (".")
			u.aguarde(500)
			escreva (".")
			u.aguarde(500)
			escreva (".\n")
		}
		
		se (validacao != "") {
			retorne
		} senao {
			clonar(sudoku)
			se (local_valido(L, C)) {
				resolver(L, C)
			}
		}
		escreva ("Sudoku resolvido! \n")
		imprimir_sudoku(global)
		exportar(sudoku_resolvido, validacao, sudoku)
	}

	funcao inteiro criar_sudoku(inteiro &sudoku[][]) 
	{
		inteiro converter, invertido, k = 0, l = 0, numero_carac, L = 0, C = 0, i = 0, j = 0
		cadeia substituir, retirar, line[20], carac[11], confirmar = ""
		cadeia caminho_do_arquivo = "./tabuleiro_dado.txt"
		inteiro arquivo_placar = a.abrir_arquivo(caminho_do_arquivo, a.MODO_LEITURA)
		cadeia linha = "", convert = "", valida = ""
		inteiro numero_da_linha = 0, aux = 0, convert_valida = 0
		logico final = verdadeiro
		caracter obter, obter2, confirmacao, conferir[20]

		para (k = 0 ; k <= 9 ; k++) {
			carac[k] = T.inteiro_para_cadeia(k, 10)
		}
		enquanto (nao a.fim_arquivo(arquivo_placar))
		{
			numero_da_linha = numero_da_linha + 1
			linha = a.ler_linha(arquivo_placar)
			substituir = txt.substituir(linha, "#", "0")
			retirar = txt.substituir(substituir, ";", "")
			numero_carac = txt.numero_caracteres(retirar)
			para (k = 0 ; k < numero_carac ; k++) {
				obter = txt.obter_caracter(retirar, k)
				convert = T.caracter_para_cadeia(obter)
				line[k] = convert
				para (l = 0; l <= 9 ; l++) {
					se (convert == carac[l]) {
						aux++
					}
				}
				se (aux == 0) {
					L = numero_da_linha
					C = k+1
					valida = L + "" + C
					se (valida != "") {
						sudoku[0][0] = T.cadeia_para_inteiro(valida, 10)
					}
					pare
				}
				aux = 0		
			}
			se (valida != "") {pare} 
			senao {
				converter = T.cadeia_para_inteiro(retirar, 10)
				faca {
					invertido = converter % 10
					converter = converter / 10
					sudoku[j][8-i] = invertido
					i++
					se (i == 9) {
						i = 0
						se (j == 9) {
							pare
						}
					}
			} enquanto (converter != 0)
				se (sudoku[j][8-i] == 0) {
					sudoku[j][8-i] = 0
					i = 0
				}
				se (numero_da_linha == 9) {
					pare
				}
				j++
			}
		}
		a.fechar_arquivo(arquivo_placar)
		retorne sudoku[8][8]
	}
	funcao logico quarta_validacao(cadeia &valida, inteiro &auxiliar) {
		inteiro i, j, numero_carac = 0
		cadeia caminho_do_arquivo = "./tabuleiro_dado.txt"
		cadeia substituir, retirar, linha = "", teste[11], conversao[25], convert_cadeia= ""
		caracter obter
		inteiro arquivo_placar = a.abrir_arquivo(caminho_do_arquivo, a.MODO_LEITURA)
		inteiro numero_da_linha = 0
		para (i = 0; i <= 8; i++) {
			teste[i] = T.inteiro_para_cadeia(i+1, 10)
		}
		teste[9] = ";"
		teste[10] = "#"
		enquanto (nao a.fim_arquivo(arquivo_placar))
		{
			numero_da_linha = numero_da_linha + 1
			linha = a.ler_linha(arquivo_placar)
			numero_carac = txt.numero_caracteres(linha)
			para (i = 0; i < numero_carac; i++) {
				obter = txt.obter_caracter(linha, i)
				convert_cadeia = T.caracter_para_cadeia(obter)
				conversao[i] = convert_cadeia
			}
			escreva("")
			para (i = 0; i <= numero_carac; i++) {
				para (j = 0; j <= 9; j++) {
					se (i != 0 e j != 0) {
						se (conversao[i-1] != ";") { 
							auxiliar++
							retorne verdadeiro
						}
						se (conversao[i] == conversao[9]) {
								auxiliar = 2
						}
					}
				}
				se (i == 9) {pare}
			}
			escreva ("")
		}
		escreva ("")
		retorne falso
	}
	funcao vazio imprimir_sudoku(inteiro sudoku[][]) 
	{
		para (inteiro i = 0 ; i < 9 ; i++) { para (inteiro j = 0 ; j < 9 ; j++) {
				se (sudoku[i][j] == 0) {escreva ("# ")}
				senao {escreva (sudoku[i][j], " ")}
				se (j == 8) {escreva("\n")}
			}	
		}
		
	}
	funcao cadeia validando(inteiro &sudoku[][]) 
	{	
		cadeia validacao = ""
		inteiro quadrante1[3][3], quadrante2[3][3], quadrante3[3][3], quadrante4[3][3], quadrante5[3][3], quadrante6[3][3] 
		inteiro quadrante7[3][3], quadrante8[3][3], quadrante9[3][3]
		inteiro linha = 0, coluna = 0
		cadeia linhaC = "", colunaC = ""
		para (inteiro i = 0 ; i <= 8 ; i++) {//criação de quadrantes
			para (inteiro j = 0 ; j <= 8 ; j++) {
				se (i < 3 e j < 3) {quadrante1[i][j] = sudoku[i][j]}
				se (i < 3 e j > 2 e j < 6) {quadrante2[i][j-3] = sudoku[i][j]}
				se (i < 3 e j > 5 e j <= 8) {quadrante3[i][j-6] = sudoku[i][j]}
				se (i > 2 e i < 6 e j < 3) {quadrante4[i-3][j] = sudoku[i][j]}
				se (i > 2 e i < 6 e j > 2 e j < 6) {quadrante5[i-3][j-3] = sudoku[i][j]}
				se (i > 2 e i < 6 e j > 5 e j <= 8) {quadrante6[i-3][j-6] = sudoku[i][j]}
				se (i > 5 e j < 3) {quadrante7[i-6][j] = sudoku[i][j]}
				se (i > 5 e j > 2 e j < 6) {quadrante8[i-6][j-3] = sudoku[i][j]}
				se (i > 5 e j > 5 e j <= 8) {quadrante9[i-6][j-6] = sudoku[i][j]}
			}
		}
		escreva ("")
		para (inteiro i = 0 ; i < 3 ; i++) {//validação 1
			para (inteiro j = 0 ; j < 3 ; j++) {
				para (inteiro k = 0 ; k < 3 ; k++) {
					para (inteiro l = 0 ; l < 3 ; l++) {
						se (j != l ou i != k) {
							se (quadrante1[i][j] == quadrante1[k][l] e quadrante1[i][j] != 0 e quadrante1[k][l] != 0) {
								linha = i+1
								coluna = j+1
								linhaC = T.inteiro_para_cadeia(linha, 10)
								colunaC = T.inteiro_para_cadeia(coluna, 10)
								validacao = linha + "|" + coluna + ": " + "REGION_WITH_REPEATED_VALUE"
								retorne validacao
							}
							se (quadrante2[i][j] == quadrante2[k][l] e quadrante2[i][j] != 0 e quadrante2[k][l] != 0) {
								linha = i+1
								coluna = j+4
								linhaC = T.inteiro_para_cadeia(linha, 10)
								colunaC = T.inteiro_para_cadeia(coluna, 10)
								validacao = linha + "|" + coluna + ": " + "REGION_WITH_REPEATED_VALUE"
								retorne validacao
							}
							se (quadrante3[i][j] == quadrante3[k][l] e quadrante3[i][j] != 0 e quadrante3[k][l] != 0) {
								linha = i+1
								coluna = j+7
								linhaC = T.inteiro_para_cadeia(linha, 10)
								colunaC = T.inteiro_para_cadeia(coluna, 10)
								validacao = linha + "|" + coluna + ": " + "REGION_WITH_REPEATED_VALUE"
								retorne validacao
							}
							se (quadrante4[i][j] == quadrante4[k][l] e quadrante4[i][j] != 0 e quadrante4[k][l] != 0) {
								linha = i+4
								coluna = j+1
								linhaC = T.inteiro_para_cadeia(linha, 10)
								colunaC = T.inteiro_para_cadeia(coluna, 10)
								validacao = linha + "|" + coluna + ": " + "REGION_WITH_REPEATED_VALUE"
								retorne validacao
							}
							se (quadrante5[i][j] == quadrante5[k][l] e quadrante5[i][j] != 0 e quadrante5[k][l] != 0) {
								linha = i+4
								coluna = j+4
								linhaC = T.inteiro_para_cadeia(linha, 10)
								colunaC = T.inteiro_para_cadeia(coluna, 10)
								validacao = linha + "|" + coluna + ": " + "REGION_WITH_REPEATED_VALUE"
								retorne validacao
							}
							se (quadrante6[i][j] == quadrante6[k][l] e quadrante6[i][j] != 0 e quadrante6[k][l] != 0) {
								linha = i+4
								coluna = j+7
								linhaC = T.inteiro_para_cadeia(linha, 10)
								colunaC = T.inteiro_para_cadeia(coluna, 10)
								validacao = linha + "|" + coluna + ": " + "REGION_WITH_REPEATED_VALUE"
								retorne validacao
							}
							se (quadrante7[i][j] == quadrante7[k][l] e quadrante7[i][j] != 0 e quadrante7[k][l] != 0) {
								linha = i+7
								coluna = j+1
								linhaC = T.inteiro_para_cadeia(linha, 10)
								colunaC = T.inteiro_para_cadeia(coluna, 10)
								validacao = linha + "|" + coluna + ": " + "REGION_WITH_REPEATED_VALUE"
								retorne validacao
							}
							se (quadrante8[i][j] == quadrante8[k][l] e quadrante8[i][j] != 0 e quadrante8[k][l] != 0) {
								linha = i+7
								coluna = j+4
								linhaC = T.inteiro_para_cadeia(linha, 10)
								colunaC = T.inteiro_para_cadeia(coluna, 10)
								validacao = linha + "|" + coluna + ": " + "REGION_WITH_REPEATED_VALUE"
								retorne validacao
							}
							se (quadrante9[i][j] == quadrante9[k][l] e quadrante9[i][j] != 0 e quadrante9[k][l] != 0) {
								linha = i+7
								coluna = j+7
								linhaC = T.inteiro_para_cadeia(linha, 10)
								colunaC = T.inteiro_para_cadeia(coluna, 10)
								validacao = linha + "|" + coluna + ": " + "REGION_WITH_REPEATED_VALUE"
								retorne validacao
							}
						}
					}
				}
			}
		}
		escreva ("")
		para (inteiro i = 0 ; i < 9 ; i++) {//validação 2
			para (inteiro j = 0 ; j < 9 ; j++) {
				se (i != j) {
					se (sudoku[0][i] == sudoku[0][j] e sudoku[0][i] != 0 e sudoku[0][j] != 0) {
						coluna = i+1
						colunaC = T.inteiro_para_cadeia(coluna, 10)
						validacao = "1" + "|" + coluna + ": " + "LINE_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[1][i] == sudoku[1][j] e sudoku[1][i] != 0 e sudoku[1][j] != 0) {
						coluna = i+1
						colunaC = T.inteiro_para_cadeia(coluna, 10)
						validacao = "2" + "|" + coluna + ": " + "LINE_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[2][i] == sudoku[2][j] e sudoku[2][i] != 0 e sudoku[2][j] != 0) {
						coluna = i+1
						colunaC = T.inteiro_para_cadeia(coluna, 10)
						validacao = "3" + "|" + coluna + ": " + "LINE_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[3][i] == sudoku[3][j] e sudoku[3][i] != 0 e sudoku[3][j] != 0) {
						coluna = i+1
						colunaC = T.inteiro_para_cadeia(coluna, 10)
						validacao = "4" + "|" + coluna + ": " + "LINE_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[4][i] == sudoku[4][j] e sudoku[4][i] != 0 e sudoku[4][j] != 0) {
						coluna = i+1
						colunaC = T.inteiro_para_cadeia(coluna, 10)
						validacao = "5" + "|" + coluna + ": " + "LINE_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[5][i] == sudoku[5][j] e sudoku[5][i] != 0 e sudoku[5][j] != 0) {
						coluna = i+1
						colunaC = T.inteiro_para_cadeia(coluna, 10)
						validacao = "6" + "|" + coluna + ": " + "LINE_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[6][i] == sudoku[6][j] e sudoku[6][i] != 0 e sudoku[6][j] != 0) {
						coluna = i+1
						colunaC = T.inteiro_para_cadeia(coluna, 10)
						validacao = "7" + "|" + coluna + ": " + "LINE_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[7][i] == sudoku[7][j] e sudoku[7][i] != 0 e sudoku[7][j] != 0) {
						coluna = i+1
						colunaC = T.inteiro_para_cadeia(coluna, 10)
						validacao = "8" + "|" + coluna + ": " + "LINE_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[8][i] == sudoku[8][j] e sudoku[8][i] != 0 e sudoku[8][j] != 0) {
						coluna = i+1
						colunaC = T.inteiro_para_cadeia(coluna, 10)
						validacao = "9" + "|" + coluna + ": " + "LINE_WITH_REPEATED_VALUE"
						retorne validacao
					}
				}
			}
		}
		escreva ("")
		para (inteiro i = 0 ; i < 9 ; i++) {//validação 3
			para (inteiro j = 0 ; j < 9 ; j++) {
				se (i != j) {
					se (sudoku[i][0] == sudoku[j][0] e sudoku[i][0] != 0 e sudoku[j][0] != 0) {
						linha = i+1
						linhaC = T.inteiro_para_cadeia(linha, 10)
						validacao = linha + "|" + "1" + ": " + "COLUMN_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[i][1] == sudoku[j][1] e sudoku[i][1] != 0 e sudoku[j][1] != 0) {
						linha = i+1
						linhaC = T.inteiro_para_cadeia(linha, 10)
						validacao = linha + "|" + "2" + ": " + "COLUMN_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[i][2] == sudoku[j][2] e sudoku[i][2] != 0 e sudoku[j][2] != 0) {
						linha = i+1
						linhaC = T.inteiro_para_cadeia(linha, 10)
						validacao = linha + "|" + "3" + ": " + "COLUMN_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[i][3] == sudoku[j][3] e sudoku[i][3] != 0 e sudoku[j][3] != 0) {
						linha = i+1
						linhaC = T.inteiro_para_cadeia(linha, 10)
						validacao = linha + "|" + "4" + ": " + "COLUMN_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[i][4] == sudoku[j][4] e sudoku[i][4] != 0 e sudoku[j][4] != 0) {
						linha = i+1
						linhaC = T.inteiro_para_cadeia(linha, 10)
						validacao = linha + "|" + "5" + ": " + "COLUMN_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[i][5] == sudoku[j][5] e sudoku[i][5] != 0 e sudoku[j][5] != 0) {
						linha = i+1
						linhaC = T.inteiro_para_cadeia(linha, 10)
						validacao = linha + "|" + "6" + ": " + "COLUMN_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[i][6] == sudoku[j][6] e sudoku[i][6] != 0 e sudoku[j][6] != 0) {
						linha = i+1
						linhaC = T.inteiro_para_cadeia(linha, 10)
						validacao = linha + "|" + "7" + ": " + "COLUMN_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[i][7] == sudoku[j][7] e sudoku[i][7] != 0 e sudoku[j][7] != 0) {
						linha = i+1
						linhaC = T.inteiro_para_cadeia(linha, 10)
						validacao = linha + "|" + "8" + ": " + "COLUMN_WITH_REPEATED_VALUE"
						retorne validacao
					}
					se (sudoku[i][8] == sudoku[j][8] e sudoku[i][8] != 0 e sudoku[j][8] != 0) {
						linha = i+1
						linhaC = T.inteiro_para_cadeia(linha, 10)
						validacao = linha + "|" + "9" + ": " + "COLUMN_WITH_REPEATED_VALUE"
						retorne validacao
					}
				}
			}
		}
		retorne validacao
	}
	funcao logico local_valido(inteiro &L, inteiro &C) {
		para (inteiro i = 0; i <= 8; i++) {
			para (inteiro j = 0; j <= 8; j++) {
				se (global[i][j] == 0) {
					L = i
					C = j
					retorne verdadeiro
				}
			}
		}
		retorne falso
	}
	funcao logico validar_linha_coluna(inteiro linha, inteiro coluna, inteiro valor, caracter opc) {
		para (inteiro i = 0; i < 9; i++) {
			para (inteiro j = 0; j < 9; j++) {
				se (valor != 0) {
					se (global[i][j] == valor) {
						se (opc == 'L' e i == linha) retorne falso
						senao se (opc == 'C' e j == coluna) retorne falso
					}
				}
			}
		}

		retorne verdadeiro
	}
	funcao logico validar_regiao(inteiro linha, inteiro coluna, inteiro valor) {
		inteiro inicioL = 0, inicioC = 0
		
		se (linha >= 0 e linha <= 2) inicioL = 0
		senao se (linha >= 3 e linha <= 5) inicioL = 3
		senao se (linha >= 6 e linha <= 8) inicioL = 6

		se (coluna >= 0 e coluna <= 2) inicioC = 0
		senao se (coluna >= 3 e coluna <= 5) inicioC = 3
		senao se (coluna >= 6 e coluna <= 8) inicioC = 6

		para (inteiro i = inicioL; i < inicioL + 3; i++) {
			para (inteiro j = inicioC; j < inicioC + 3; j++) {
				se (valor != 0 e valor == global[i][j]) {
					retorne falso
				}
			}
		}

		retorne verdadeiro
	}
	funcao logico validar(inteiro linha, inteiro coluna, inteiro valor) {
		cadeia erro = ""
		cadeia antes = (linha+1)+"|"+(coluna+1) + ":"

		se (nao validar_regiao(linha, coluna, valor)) {
			erro = antes + "REGION_WITH_REPEATED_VALUE"
		}
		senao se (erro == "" e nao validar_linha_coluna(linha, coluna, valor, 'L')) {
			erro = antes + "LINE_WITH_REPEATED_VALUE"
		}
		senao se (erro == "" e nao validar_linha_coluna(linha, coluna, valor, 'C')) {
			erro = antes + "COLUMN_WITH_REPEATED_VALUE"
		}

		se (erro != "") {
			retorne falso
		}

		retorne verdadeiro
	}
	funcao clonar(inteiro sudoku[][]) {
		para (inteiro i = 0; i < 9; i++) {
			para (inteiro j = 0; j < 9; j++) {
				global[i][j] = sudoku[i][j]
			}
		}
	}
	funcao logico resolver (inteiro L, inteiro C) {
		inteiro i, j
 
		para (i = 1; i <= 9; i++) {
			se (validar(L, C, i)) {
				global[L][C] = i

				inteiro nL = 0, nC = 0
				
				se (local_valido(nL, nC)) {
					se (resolver(nL, nC)) {
						retorne verdadeiro
					} senao {
						global[L][C] = 0
					}
				} senao {
					retorne verdadeiro
				}
			}
		}
		
		retorne falso
	}
	funcao vazio exportar(inteiro sudoku_resolvido[][], cadeia &validacao, inteiro sudoku[][]) 
	{
		cadeia converter, linha[9], linha_pronta = "", aux = ""
		caracter obter
		
		se (validacao != "") {
			inteiro endereco = a.abrir_arquivo("resultado.txt", a.MODO_ESCRITA)
			a.escrever_linha(validacao, endereco)
			a.fechar_arquivo(endereco)
		} senao {
			cadeia a = ""
			inteiro endereco = a.abrir_arquivo("resultado.txt", a.MODO_ESCRITA)
			para (inteiro i = 0; i <= 8; i++) {
				para(inteiro j = 0; j <= 8; j++) {
					linha[j] = T.inteiro_para_cadeia(global[i][j], 10)
				}
				para(inteiro k = 0; k <= 8; k++) {
					se (k == 0) {
						linha_pronta = linha_pronta + linha[k]
					} senao {
						se (k != 8) {
							linha_pronta = linha_pronta + ";" + linha[k] + "\n"
						} senao {
							linha_pronta = linha_pronta + ";" + linha[k]
						}
					}
				}
				a.escrever_linha(linha_pronta, endereco)
				linha_pronta = ""
			}
			a.fechar_arquivo(endereco)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1429; 
 * @DOBRAMENTO-CODIGO = [34, 47, 60, 64, 73, 184, 201, 215, 298, 359, 194, 421, 433, 447, 468, 488, 495, 518];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {auxiliar, 11, 82, 8}-{numero_carac, 144, 16, 12}-{conversao, 146, 53, 9}-{convert_cadeia, 146, 68, 14}-{obter, 147, 11, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */