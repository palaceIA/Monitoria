Program somadores ;
var
	// Os somadores são usados para somar valores
	somador , salario ,total_plan , valor , resto , media: real ; 
	somador_pos , somador_neg : real ; 
	qts_funcionarios ,indice , cont , setores ,pessoas , idade : integer ;
	sexo : char ;   
Begin 
	{// Exemplo basico com somadores 
	write('Deseja cadastrar o salario de qts funcionarios : ');
	readln(qts_funcionarios );
	for indice := 1 to qts_funcionarios do 
			begin
				write('Salario funcionario #',indice,' : ');
				readln(salario);
				somador := somador + salario 
			end;  
	 writeln('Soma total dos salarios : ',somador:0:2);}
  
  {// Somar numeros pares 
  for indice := 1 to 10 do 
  		begin
				if indice mod 2 = 0 then 
						somador := somador + indice; 
  		end;
  writeln('Valor total da soma dos numeros pares : ',somador:0:2);}
  
  // ------ UNINDO CONTADORES E SOMADORES ------
  
  {write('Deseja cadastrar quantos funcionarios : ');
  readln(qts_funcionarios) ; 
  for indice:=1 to qts_funcionarios do
		begin 
  		write('Salario #',indice,' : ');
  		readln(salario);
  		write('Sexo[F/M] : ');
  		readln(sexo);
  		if (sexo = 'F') or (sexo = 'f') then
  			begin
  				somador := somador + salario ; 
  				cont := cont + 1 ;
  			end
     end;
   media := somador / cont ; 
	 writeln('Media salarial das mulheres : ',media:0:2);}
	 
	 {write('Deseja cadastrar quantas pessoas : ');
	 readln(pessoas);
	 for indice:=1 to pessoas do 
	 		begin
	 				write('Digite idade : ') ;
	 				readln(idade);
	 				write('Sexo[M/F] : ');
	 				readln(sexo) ;
	 				if (sexo = 'M') or (sexo = 'm') then
	 						begin
	 							somador := somador + idade ;
	 							cont := cont + 1 ;
	 						end
	 		end;
  	media := somador / cont; 
		writeln('A idade media dos homens é : ',media:0:1);} 
End.