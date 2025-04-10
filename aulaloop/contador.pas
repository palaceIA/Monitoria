Program contador ;
var
	{O que é um contador  ? -> Contador refere-se a uma variavel
	que vai armazenar a quantidade cardinal (exata- inteira)}
	indice , contador : integer ;
	idade : integer ; 
	numero , numero_adivinha : integer;
	contador_par , contador_impar : integer ; 
	media ,salario_total : real ; 
	estoque ,setor,resto,contador_neg: integer ; 
Begin

	{// Vamos testar de uma forma simples
	// Devemos inicializar primeiramente o contador
	contador := 0 ;
	for indice := 1 to 5 do 
			begin
				 
				 	 //Nota observe o seguinte : 
				 	 // Incrementando o contador
				 	 //contador(novo valor) = contador(valor.ante) + 1
				 contador := contador + 1;
				 writeln('Contador : ',contador);
				 writeln('Indice : ',indice);
	end}
	
	
	// -> VAMOS COMEÇAR A BRINCAR <-
	
	{// Quantas pessoas tem a maior idade?
	// Caso você não declare o contador ele sera inicializado com zero
	for indice := 1 to 5 do
		begin 
			write('Digite idade : ');
			readln(idade);
			if idade >= 18 then
				 contador := contador + 1;
    end;
  writeln('Total de pessoas maiores de idade : ',contador);}
  
  
  // Quantidade de numeros pares e impares
  {for indice := 1 to 5 do 
  		begin
  			write('Digite numero : '); 
  			readln(numero);
  			if numero mod 2 = 0 then
  					contador_par := contador_par + 1 
  			else
  					contador_impar := contador_impar + 1				
  		end;
  writeln('Total de numeros pares : ',contador_par);
	writeln('Total de numeros impares : ',contador_impar);}
	
	{// Quantidade de numeros multiplos de 3 
	for indice:=1 to 60 do 
			if indice mod 3 = 0 then 
				begin
					contador := contador + 1;
					writeln('Numero : ',indice ,' -- ','Contador : ',contador); 
	    	end}
	    	
	{// Fatorial de um numero
	  contador := 1;
	
	  for indice := 1 to 7 do
	    contador := contador * indice;
	
	  writeln('O fatorial de ', numero, ' é: ', contador);}
	
	{//  Calcular media salarial
	write('Soma total do salario dos funcionarios : ');
	readln(salario_total);
	for indice := 1 to 3 do 
			contador := contador + 1; 
	media := salario_total / contador ; 
	write('Media salarial é igual a : ',media:0:2);}	
	
	
	{// Melhorando nosso jogo de adivinha 
	numero := 0  ;
	write('Quantas chances o jogador possui : ');
	readln(contador);
	contador_neg := contador ; 
	for indice:= 1 to contador do 
			begin
				write('Digite numero : ');
				readln(numero_adivinha);
				contador_neg := contador_neg - 1; 
				if numero_adivinha = numero then 
						begin
							writeln('Muito bem , você acertou  !');
							break
						end
				else if contador_neg = 0 then 
						begin
							writeln('Tente na proxima partida :/');
							break
						end
				else 
						 	writeln('Tente novamente :D');
				
			end  }
	
	
	{// Vamos verificar o estoque 
	write('A quantos produtos no estoque : ');
	readln(estoque);
	writeln('Distribuição de produtos');
	contador_neg :=  estoque;
	for indice := 1 to estoque do
			begin
				  write('Deseja enviar quantos produtos ao setor : ') ;
				  readln(setor);
				  contador := contador+setor;
				  contador_neg := contador_neg - setor; 
				  if contador_neg < 0 then
							begin 
								resto := contador - setor ;
								writeln('O estoque esvaziou') ;
								writeln('Pedidos cancelados : ',resto) ;
								break;
							end
			end}
			
	
	    {    --- DESAFIO --- 
			   1 - Crie um programa que receba numeros e conte quantos sao positivios
			   2 - Crie um programa que o usuario tem que digitar uma determinada senha 
			   			, caso o numero de tentativas seja igual a 5 encerrer o programa , 
			   			caso contrario diga 'Olá'
			   4 - Crie um programa que calcula o fatorial de um numero de entrada
			
			}
End.