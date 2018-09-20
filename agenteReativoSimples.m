% Fun��o de agente reativo simples para o mundo 4 x 4 do aspirador de p� autom�tico
% que garante limpar toda a sala, independentemente da posi��o inicial. 
% A fun��o deve retornar um das 5 poss�veis a��es a��es do agente= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
% A vari�vel "percepcao" dentro dos par�nteses � a entrada da fun��o.
function acao = agenteReativoSimples(percepcao)


% Para cada posi��o definir as a��es dispon�veis (funcaoMapear)
% a��es = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
%            1         2          3           4          5

  mapear = [
    2 2 2
    3 2 2
    4 2 2
    5 2 4
    5 3 1
    4 3 1
    3 3 1
    2 3 4
    2 4 2
    3 4 2
    4 4 2
    5 4 4
    5 5 1
    4 5 1
    3 5 1
    2 5 1        
  ];        
  
  if percepcao.estado == 2, % ta sujo
    acao = 'aspirar';      
  end;  
    

end