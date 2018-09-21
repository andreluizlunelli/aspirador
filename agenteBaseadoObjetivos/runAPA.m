%Para chamar as funções do aspirador de pó automatico (APA) baseado em um agente
%reativo simples
clear all;clc; close all;


%---Ambiente---
%Gerar o ambiente
%Mostrar o ambiente
%Coordernadas de início do agente aspirador de pó
sala = geraAmbiente();
mostraAmbiente(sala);


%pesquise para ver para que servem as funções (hold on, hold off e pause)
hold on; %mantém estático o ambiente feito anteriormente para posicionar o limpador
%posizionar o APA nas posições estabelecidas anteriormente
_pX = 2;
_pY = 2;
posicaoAspirador(_pX, _pY);
hold off;
pause(1);

%se a célula estiver suja então retornará 1, caso contrário, 0

%gera uma variável de estrutura para saber a posição e o estado de cada
%célula = struct('nome', valor) - veja a função struct

_sujera = 2;
acoesAg = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}; %---ações do agente---
%            1         2          3           4          5

salaSuja = sala(_pX, _pY);
percepcao = struct('x', _pX, 'y', _pY, 'estado', salaSuja);
contador = 0;


% oi tudo bem? espero que seu dia tenha sido otimo antes de começar a corrigir os trabalhos
% se não foi ainda, espero que nossos trabalhos possam alegrar seu dia :D


b = 1
while b
    salaSuja = sala(percepcao.x, percepcao.y);
    percepcao.estado = salaSuja;       
    
    acao = agenteObjetivo(percepcao, checkObj(sala)); % 1 ta sujo
    
    if (acao == 5) 
      contador = contador + 1;
    endif
    
    %chama a função atualizaAmbiente para atualizar a ação realizada
    [modSala, modX, modY] = atualizaAmbiente(sala, acao, percepcao.x, percepcao.y);
        
    %Mostra na tela as ações escolhidas e percepções (veja as funções 'disp' e 'num2str')        
    
    %mostra o ambiente atualizado
    mostraAmbiente(modSala);
    hold on;
    %posiciona o aspirador no ambiente atualizado
    posicaoAspirador(percepcao.x, percepcao.y)
    hold off;
    pause(0.1);

    %atualiza a percepção e o estado depois de concluir a ação    
    sala = modSala;
    percepcao.x = modX;
    percepcao.y = modY;        
    
    if (acao == 6)
      b = 0;
    endif
end

disp('contador'); 
disp(contator); 

