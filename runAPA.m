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
posicaoAspirador(2, 2);
hold off;
pause(1);

%se a célula estiver suja então retornará 1, caso contrário, 0

%gera uma variável de estrutura para saber a posição e o estado de cada
%célula = struct('nome', valor) - veja a função struct


_sujera = 2;
acoesAg = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}; %---ações do agente---
_pX = _pY = 2;
salaSuja = sala(_pX, _pY) == _sujera;
acao = 'aspirar'
percepcao = struct('x', _pX, 'y', _pY, 'estado', salaSuja);

while 1
    %escolhe a ação de acordo com a percepção - chama função agenteReativoSimples
    agenteReativoSimples(percepcao);
    
    %chama a função atualizaAmbiente para atualizar a ação realizada
    atualizaAmbiente(sala, acao, x, y)
    
    %Mostra na tela as ações escolhidas e percepções (veja as funções 'disp' e 'num2str')
    %disp('x:'+x);
    %disp('y:'+y);
    %disp('acao:'+acao);
    
    
    %mostra o ambiente atualizado
    mostraAmbiente(sala);
    %posiciona o aspirador no ambiente atualizado
    posicaoAspirador(x, y)

    
    %atualiza a percepção e o estado depois de concluir a ação    
end

