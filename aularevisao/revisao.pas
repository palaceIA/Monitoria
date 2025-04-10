// SCRIPT PASCAL PRIMEIRA AULA
Program ScriptMonitoriaPratica1 ;// Nome do programa
// Declarando variaveis
{
	integer -> representa numeros inteiros
	real -> representa os decimais(pontos flutuantes . )
	string -> representa cadeia de caracteres
	char -> representa caracter(Ex : R,S..etc)
	boolean -> representa o logico (True ou False)
}
// Dependendo da versao do Pzim utilize apenas uma vez o VAR
var numero_inteiro : integer ;  
var numero_real : real ; 
var caracter_em_cadeia : string ; 
var caracter : char ; 
var variavel_logica : boolean ; 

var soma : integer ; 
var subtrair : integer ; 
var multiplicacao : integer ; 
var div_real : real ; 
var div_int : integer ;
var resto_div : real ; 

//Inicio do programa
Begin

		{// Parte 1 
	  numero_inteiro := 1 ;
	  numero_real := 2.3;
	  caracter_em_cadeia := 'Olá , mundo';
	  caracter := 'P';
	  variavel_logica := (2>3);
		// Comando para mostrar na tela e quebrar linha
		writeln(numero_inteiro);
		writeln(numero_real:1:1); // Delimitar casas decimais
		writeln(caracter_em_cadeia);
		writeln(caracter);
		writeln(variavel_logica);}
		
			
		{// Parte 2 
		Expressoes aritmeticas
		Adicao -> + 
		Subtracao -> - 
		Multiplicacao -> * 
		Divisao real -> /
		Divisao inteira -> div 
		Resto da divisao -> mod
		obs : Lembre das ordens dos precedentes () -> * -> / -> + ou -}
		{soma := 2+1 ;  
		subtrair := 2-1;
		multiplicacao := 2*2 ; 
		div_real := 3/2 ; 
		div_int := 2 div 2 ;
		resto_div := 4 mod 2 ; 
	  writeln(soma);
	  writeln(subtrair);
	  writeln(multiplicacao);
	  writeln(div_real:1:1);
	  writeln(div_int);
	  writeln(resto_div:1:0);}
	  
	  { //Parte 3
	  	Condicionais simples : if <condicao> then ...
	  	Condicionais composta : if <condicao> then ... else ...
		}
		{
						-- TABELA AND -- 
								V AND V -> V 
								V AND F -> F 
								F AND V -> F 
								F AND F -> F 
		} 
		{
						-- TABELA OR -- 
								V AND V -> V 
								V AND F -> V 
								F AND V -> V 
								F AND F -> F 
		}
		// Primeira condicao
		if (2<3) then
			writeln('True');
		
		// Segunda condicao
		soma := 2+1 ; 
		if (soma <> 2) then  // <> representa diferente de
			writeln('True');
		
		// Terceira condicao
		numero_inteiro := 1234;
		if numero_inteiro <> 2222 then 
				writeln('Não é igual')
		else 
				writeln('É igual');
				
		// Quarta condicao 
		if (2>3) or (4=4) then 
			writeln('Sla') 
		else 	
			writeln('Sla2');
		
//Fim do programa
End.
