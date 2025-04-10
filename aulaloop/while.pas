{
	O loop while é uma estrutura de programação
	que permite repetir a execução de um bloco 
	de código enquanto uma condição for verdadeira. 
	É útil quando não se sabe de antemão quantas 
	vezes o código deve ser executado.  ]
	
	SINTAXE : 
		while <condição> do 
}
Program LoopWhile ;
var
	cont : integer ;
	cont_h , cont_m : integer;
	salario,salario_h,salario_m,somador : real ; 
	media_h , media_m ,media_g, prop : real ;
	sexo , op : char ; 
Begin
  	{// Uso basico do while
  	cont := 1 ; 
  	while cont <= 6 do 
  		begin
  		   writeln(cont);
  		   cont := cont + 1 ;
  		end;
  		
  	writeln('-------------');
  	
  	cont := 6 ; 
  	while cont > 0 do 
			begin
				writeln(cont);
				 cont := cont - 1 ;
			end}
			
		{// Podemos utilizar TRUE como condição -> Infinito 
		// MAS...devemos encerrar o programa em algum momento
		// Para que não ocorra de cairmos em um loop infinito
		 cont := 1 ; 
		 while TRUE do 
		 		begin
		 			writeln(cont);
		 			cont := cont + 1 ;
		 			if cont > 6 then 
					 	break ; // utiliza o break para encerrar o loop   
		 		end;
		 	
		 writeln('-----------------------');
		 
		 cont := 6 ;
		 while TRUE do 
		 		begin
		 			writeln(cont);
		 			cont := cont - 1 ; 
					 if cont = 0 then 
					 		break ;  
		 		end}	 				
				
{
Uma empresa deseja cadastrar N funcionarios e fazer algumas analises: 
		 					- Soma total dos salarios dos funcionarios 
		 					- Media salarial dos funcionarios
		 					- Media salarial das mulheres
		 					- media salarial dos homens
		 					- Proporção de homens e mulheres
}
			cont := 0 ; 
			cont_h := 0 ;  
			cont_m := 0 ;
			somador := 0 ;
			salario_h := 0 ; 
			salario_m := 0 ; 
			op := 'S';
			While (op <> 'N') and (op <> 'n') do
				begin
					write('Salario do funcionario : ');
					readln(salario);
					write('Sexo[F/M] : ') ; 
					readln(sexo);
					cont := cont + 1 ;
					somador := somador + salario ;
					writeln('Funcionario cadastrado !');
					if (sexo = 'F') or (sexo= 'f') then 
						begin
							cont_m := cont_m + 1 ; 
							salario_m := salario_m + salario ;
						end   
					else if (sexo = 'M') or (sexo= 'm') then
						begin
					    cont_h := cont_h + 1 ; 
							salario_h := salario_h + salario ;
						end 
					else 
						writeln('Impossivel cadastrar sexo') ;
					
					write('Deseja continuar[S/N] : ');
					readln(op) ;
				end;
				
			media_g := somador / cont ; 
			media_h := salario_h / cont_h ;  
			media_m := salario_m / cont_m ;
			prop := cont_h / cont_m  ;
			
			writeln('Media geral do salario dos funcionarios : ',media_g:0:3);
			writeln('Media geral do salario dos homens : ',media_h:0:3); 	     
			writeln('Media geral do salario das mulheres : ',media_m:0:3); 	
			writeln('Proporção de homens por mulheres : ',prop:0:1); 	 	
End.

{
								--------------- DESAFIO ---------------
		Um time de DEVs foram contratados por uma empresa para desenvolver
		um aplicativo de nutrição . O aplicativo deve cadastrar os usuarios
		e fazer uma analise com base nos dados de entrada : 
					- Quantidade de clientes 
					- Soma total do peso dos clientes 
					- Media de peso dos clientes
					- Media do IHC dos clientes
					- Proporção de mulheres por homens
		Use tecnicas de contadores , somadores e loops ,fica ao seu criterio
		utilizar o loop for ou while . Essa atividade revisa todos os conceitos
		de loops e tecnicas utilizadas.
}