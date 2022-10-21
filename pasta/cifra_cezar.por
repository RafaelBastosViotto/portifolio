programa
{
     inclua biblioteca Texto --> t    
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> ti
	
	
cadeia alfabeto[26] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
	
	inteiro chave = 0
	
	cadeia frase
	
	
	funcao inicio()
	
	{

	     escreva("Qual a frase precisa ser criptografada? ")
		leia(frase)

		escreva("Qual a cahve desejada?")
		leia(chave)

		criptografar(frase, chave)
		
	}

     funcao criptografar(cadeia frase, inteiro chave){

          

		inteiro numeroLetras = t.numero_caracteres(frase)

		escreva("a frase tem ", numeroLetras, " letras. \n")

		para(inteiro i=0; i< numeroLetras; i++){
			
			
			cadeia letraConvertida = ti.caracter_para_cadeia(t.obter_caracter(frase, i)) 
			
                
                   
               u.aguarde(1000)

               para(inteiro j=0; j < 26; j++){

                  se(letraConvertida == alfabeto[j]){
                       //escreva("a letra ", letraConvertida, " está na posicao ", j, "\n")

                       inteiro posicaoCriptografada = j + chave

                       posicaoCriptografada = posicaoCriptografada % 26

                       escreva(alfabeto[posicaoCriptografada])
                        pare 
                  	
                  }
               	
               }
                	
		}
     	
     }

      funcao descriptografar(){
      	//desafio 
      }
