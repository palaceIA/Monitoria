Program LoopFor ;
var 
	indice : integer ;
	numero:integer ; 
	numero_tabuada : integer ;
	calculo : integer ; 
	numero_adivinha :integer;
Begin

   {// For simples
   for indice:=1 to 5 do 
   		writeln('Indice ',indice);
			// --Desafio : Faça um loop de 1 a 10}
	 
	 {// For simples
   for indice:=1 downto 5 do 
   		writeln('Indice ',indice);
			// --Desafio : Faça um loop de 10 a 1}
	 
			 
	 {// Tabuada simples
	 write('Deseja calcular a tabuada de qual numero : ');
	 readln(numero_tabuada) ; 
	 for indice := 0 to 10 do 
	 			writeln(indice,' x ',numero_tabuada,' = ',indice*numero_tabuada);
				// --Desafio : Faça a tabuada de um numero real}
	
	
	 {// Printando numeros multiplos de 15
	 for indice := 0 to 10 do 
	 		// Utiliza-se begin e end quando a mais de um comando .	
	 		begin
	 			calculo := indice * 5 ;
	 			if calculo mod 15 = 0 then 
	 					writeln(calculo);
	 		end
			 //--Desafio : Printe os multiplos de 10}
	 		
	 	{// Numeros pares e impares
		write('Sequência de numeros que deseja verificar : '); 
		readln(numero);
	 	for indice := 1 to numero do 
	 		begin
	 			 if indice mod 2 = 0 then
	 			 		writeln('Numero -> ',indice,' <- é par')
	 			 else 
	 			 		writeln('Numero -> ',indice,' <- é impar');
	 		end
	 		}
	 		
	 	{// numero multiplo de 3 e 5 
	 	for indice := 1 to 10 do 
	 			begin
				 	calculo := indice * 20 ;
					if (calculo mod 5 = 0) and (calculo mod 3 = 0) then 
							writeln('O numero ',calculo,' é multi de 3 e 5')
					else if calculo mod 5 = 0  then
							writeln('O numero ',calculo,' é multi apenas de 5')
					else if calculo mod 3 = 0 then
							writeln('O numero ',calculo,' é multi apenas de 3')
					else 
							writeln('O numero ',calculo,' não é multi de 3 e 5')
	 			end 
				//--Desafio : Numeros multiplo de 6 e 10}
	 			
	 	
		{// Adivinhe o numero de 0 a 15 		
	 	numero_adivinha := 0 ;
	 	for indice := 0 to 15 do 
	 			begin
		 			write('Digite numero : ');
					readln(numero);
					if numero = numero_adivinha then 
						 begin
						 		writeln('Você acertou !');
						 		// IMPORTANTE -> break encerrra imediatamente o programa
						 		break ;
						 end 
					else 
						 writeln('Tente novamente :D');
				end}		
End.