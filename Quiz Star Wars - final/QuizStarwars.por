programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> txt
	inclua biblioteca Sons --> s
	
		const inteiro nperguntas=6
		inteiro acertos[2]={0,0}
		inteiro erros[2]={0,0}
		inteiro pontuacao[2]={0,0}
		inteiro opcao=0, cont=0 
		const inteiro linha=30, coluna=5
		inteiro perguntas_feitas[nperguntas]
		inteiro players=0
		cadeia resposta
		cadeia perguntas[linha][coluna] = {{"Qual a identidade do Darth Vader?","a)Luke Skywalker","b)Anakin Skywalker","c)Obi Wan Kenobi","c)"},
                                             {"Em que ano o primeiro filme de Star Wars foi lançado?","a)1977","b)1978","c)1980","a)"},
									{"Qual nome do(a) Padawn de Anakin Skywalker?","a)Boba Fett","b)Ahsoka Tano","c)Asajj Ventress","b)"},
									{"Qual nome do Clone que fugiu junto com Ahsoka Tano no final de Clone Wars?","a)Rex","b)Ekko","c)Cody","a)"},
									{"No massacre do templo jedi feito por Anakin Skywalker, qual foi o Youngling que sobreviveu?","a)Grogu","Ahsoka Tano","Aayla Secura","a)"},
									{"Quem foi o responssavel pelo massacre do templo jedi?","a)Obi Wan Kenobi","b)Anakin Skywalker","c)Darth Vader","b)"},
					                    {"Qual a identidade do Mandaloriano de The Mandalorian?","a)Din Djarin","b)Cod Bane","c)Jango Fett","a)"},
                                             {"Quantas vezes o Mandalorian de The Mandalorian tirou seu capacete na serie","a)uma","b)tres","c)nenhuma","b)"},
                                             {"Darth Maul pertence á qual raça?","a)Iktotchi","b)Mon Calamari","c)Zabrak","c)"},
                                             {"Quem levou Ahsoka Tano para a Ordem Jedi?","a)Anakin Skywalker","b)Yoda","c)Plo Koon","c)"},
                                             {"Qual planeta onde Leia e Luke nasceram?","a)Tatooine","b)Polis Massa","c)Alderaan","b)"},
                                             {"Quem foi o traidor(a) da Ordem Jedi durante as Guerras Clônicas?","a)Anakin Skywalker","b) Barriss Offe","c) Conde Dookan","b)"},
                                             {"Qual foi o primeiro planeta que a Estrela da Morte destruiu?","a)Tatooine","b)Alderaan","c)Geonosis","b)"},
                                             {"Por quantos anos Yoda treinou os Jedi?","a) 800","b) 820","c) 900","a)"},
                                             {"Qual o nome do vilão da série The Mandalorian?","a)Moff Gideon","b)Kylo Ren","c)Grand Moff Tarkin","a)"},
                                             {"Qual é o nome da mãe do Luke?","a)Organa","b)Padmé Amidala","c)Morgana","b)"},
                                             {"Onde era o palácio de Jabba?","a)Endor","b)Dagobah","c)Tatooine","c)"},
                                             {"Quem criou a princesa Leia?","a)Ezra","b) Grand Moff","c) Bail Organa","c)"},
                                             {"Quem foi o mestre do Obi Wan Kenobi?","a)Yoda","b)Qui-Gon Jinn","c)Mace Windu","b)"},
                                             {"Qual o nome que Obi Wan usa em Tatooine?","a)Ben","b)Han","c)Ian","a)"},
                                             {"Quem foi o criador do C-3PO?","a)Obi Wan Kenobi","b)Anakin Skywalker","c)Luke Skywalker","b)"},
                                             {"Em que filme Han Solo é congelado?","a) O império contra-ataca","b) O retorno de jedi","c) Uma nova esperança","a)"},
                                             {"Quem matou o mestre Windu?","a)Darth Vader","b)Darth Sidious","c)Kylo Ren","b)"},
                                             {"Quem criou a Regra de Dois(Sith)?","a)Darth Plagueis","b)Darth Vader","c)Darth Bane","c)"},
                                             {"Qual o nome do irmão de Darth Maul?","a)Savage Opress","b)Garen Maul","c)Licano Maul","a)"},
                                             {"Qual era o desejo de Darth Plagueis, o Sábio?","a)Poder","b)Imortalidade","c)Dinheiro","b)"},
                                             {"Quem matou Jango Fett?","a)Mace Windu","b)Anakin Skywalker","c)Os clones","a)"},
                                             {"Qual o nome do criador de Star Wars?","a)George Lucas","b)Rian Johnson","c)Mark Hamill","a)"},
                                             {"Onde Obi Wan e Anakin lutaram?","a)Coruscant","b)Naboo","c)Mustafar","c)"},
                                             {"Qual o nome da nave de Han Solo?","a)Millenium Falcon","b)X-Wing","c)Rogue One","a)"}}	
		cadeia jogadores[2]
		inteiro ranking[100]
		
	funcao inicio()
	
	{
		inteiro som = s.carregar_som("sw.mpeg")
		
		s.reproduzir_som(som, falso)
		s.definir_volume(40)
		u.aguarde(10000)
						
		escreva("          //      ||      \\         \n")
          escreva("         //       ||       \\        \n")
          escreva("         |        ||        |	      \n")
          escreva("         | _______||_______ |	      \n")
          escreva("         |//-----\\//-----\\|	      \n")
          escreva("       //  (     )  (     )  \\	 \n")
          escreva("      //\\  ----- () -----  //\\     \n")
          escreva("     //  \\      /||\\     //  \\    \n")
          escreva("    //    \\    /||||\\   //    \\   \n")
          escreva("   //      \\  /||||||\\ //      \\	 \n")
          escreva("  //_       \\o========o//       _\\ \n")
          escreva("    `--...__|`-._  _.-'|__...--'     \n")
          escreva("            |    `'    | 	           \n")
          escreva("Bem-vindo(a) ao quiz do universo de Star Wars\n")
          escreva("    \n")
          
		faca {
			menu()

			escolha (opcao){
				
				caso 1: 
					Inicializa_Perguntas_Feitas()
					jogo()	
					pare
				caso 2:
					jogo()
					pare
				caso 3: 
					
        escreva("            ________   ___   ____\n")
        escreva("           // __  __| // _\\ |  _ \\    \n")
        escreva("     ______> \\ | |   |  _  ||    /_____________________________	\n")
        escreva("    // _______// |_|   |_| |_||_|\\______________________________\\   ")
        escreva("   ///                                                        \\ \\   \n")
        escreva("  | |               Obrigado por participar!                   | |	\n")
        escreva("  | |             -Que a força esteja com você.                | |	\n")
        escreva("  | |                                                          | |	\n")
        escreva("  \\ \\____________________________    _   .___  ____   _______/ /	\n")
        escreva("   \\___________________________  |  | | //  _ \\|  _ \\ // _______//\n")
        escreva("                                | |//\\| ||  _  ||    / >  \\        \n")
        escreva("                                \\_//\\_//|_| |_||_|\\_\\|__//		\n")
		s.interromper_som(som)
		s.liberar_som(som)
					pare	
					
				caso contrario: 
					escreva("opcao invalida\n")
					
			} 
		}enquanto (opcao!=3)
	    
	}
	funcao menu() 
			{
			escreva("[------------------------------------------------------]\n")
    			escreva("[                      MENU                            ]\n")
    			escreva("[------------------------------------------------------]\n")
    			escreva("[  1 - INICIAR TESTE                                   ]\n")
    			escreva("[  2 - CONTINUAR                                       ]\n")
    			escreva("[  3 - SAIR DO TESTE                                   ]\n") 
      		escreva("[------------------------------------------------------]\n")
    			escreva("O QUE DESEJA FAZER ?\n")
    			leia(opcao)
			}
	
	funcao Inicializa_Perguntas_Feitas() 
			{
			inteiro ci = 0
			para(ci=0;ci<nperguntas;ci++)
				{
					perguntas_feitas[ci]=0
				}
			}
    funcao logico Testa_Perguntas_Feitas(inteiro valor_sorteio) 
			{
			inteiro ci = 0
			
			para(ci=0;ci<nperguntas;ci++)
				{
					se (perguntas_feitas[ci] == valor_sorteio)
					{
					retorne verdadeiro
					}
				}
			 retorne falso		
			}
	funcao jogo()
			{
				
			cadeia nome
			inteiro x
			escreva("Digite o numero de jogadores 1 ou 2: \n")
			leia(players)
			limpa()
			enquanto(players!=2 e players!=1)
			{
				escreva("Numero de jogadores invalido\n")
				escreva("Digite o numero de jogadores: \n")
				leia(players)
				limpa()
			}
			para(x=0;x<players;x++)
			   {
			    escreva("Digite o nome do jogador ", x+1, ": \n")
			    leia(jogadores[x])
			    escreva("   \n")
			    limpa()
			    }
				
			para(inteiro i=0;i<nperguntas;i++)
			{
				inteiro valor=u.sorteia(0, linha-1)
               	enquanto (Testa_Perguntas_Feitas(valor)==verdadeiro)
               	{
               		valor=u.sorteia(0, linha-1)
               	}
               	perguntas_feitas[i]=valor

										
			para(inteiro j=0;j<coluna-1;j++)
			{
			escreva(perguntas[valor][j],"\n")
		     }
		     para(inteiro jogadorn=0;jogadorn<players;jogadorn++)
			{
				escreva("\n",jogadores[jogadorn]," escreva alternativa correta:  ")
				leia(resposta)
				se(txt.caixa_baixa(resposta)==txt.extrair_subtexto(txt.caixa_baixa(perguntas[valor][coluna-1]), 0, 1))
				{
					acertos[jogadorn]=acertos[jogadorn]+1
					escreva("acertou: ", acertos[jogadorn],"\n")
																	
				}senao{
					 erros[0]=erros[0]+1
			 		escreva("errou: ", erros[0],"\n")
				 }
				escreva("\n")
				limpa()				
			}
							
			escreva("Pontuacao: ", acertos[0],"\n")
			ranking[cont]=acertos[0]
			cont=cont+1
			}
						
								
				
			}
	
	
	

			
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */