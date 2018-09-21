%Gera ações aleatórias no caso em que o quadrado está limpo, senão aspira o
%pó

%acoesAg= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}; %---ações do agente---
%            1         2          3           4          5

function acao = agenteObjetivo(percepcao, ObjObtido)
  if percepcao.estado == 2, % ta sujo
    acao = 5;      
  else
    b = 1;
    while b
      r = randi(4,1,4);
      if (r(1) == 1)
        acao = 1;
        b = false;
      elseif (r(2) == 2)  
        acao = 2;
        b = false;
      elseif (r(3) == 3)
        acao = 3;
        b = false;
      elseif (r(4) == 4)
        acao = 4;
        b = false;
      endif  
    endwhile    
  endif
end