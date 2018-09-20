% Função de agente reativo simples para o mundo 4 x 4 do aspirador de pó automático
% que garante limpar toda a sala, independentemente da posição inicial. 
% A função deve retornar um das 5 possíveis ações ações do agente= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
% A variável "percepcao" dentro dos parênteses é a entrada da função.
function acao = agenteReativoSimples(percepcao)


% Para cada posição definir as ações disponíveis (funcaoMapear)
% ações = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
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