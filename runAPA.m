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

salaSuja = sala(_pX, _pY);
acao = 'aspirar'
percepcao = struct('x', _pX, 'y', _pY, 'estado', salaSuja);

while 1
    %escolhe a ação de acordo com a percepção - chama função agenteReativoSimples
    acao = agenteReativoSimples(percepcao);
    
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
end

