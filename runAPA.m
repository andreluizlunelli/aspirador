%Para chamar as fun��es do aspirador de p� automatico (APA) baseado em um agente
%reativo simples
clear all;clc; close all;


%---Ambiente---
%Gerar o ambiente
%Mostrar o ambiente
%Coordernadas de in�cio do agente aspirador de p�
sala = geraAmbiente();
mostraAmbiente(sala);


%pesquise para ver para que servem as fun��es (hold on, hold off e pause)
hold on; %mant�m est�tico o ambiente feito anteriormente para posicionar o limpador
%posizionar o APA nas posi��es estabelecidas anteriormente
posicaoAspirador(2, 2);
hold off;
pause(1);

%se a c�lula estiver suja ent�o retornar� 1, caso contr�rio, 0

%gera uma vari�vel de estrutura para saber a posi��o e o estado de cada
%c�lula = struct('nome', valor) - veja a fun��o struct


_sujera = 2;
acoesAg = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}; %---a��es do agente---
_pX = _pY = 2;
salaSuja = sala(_pX, _pY) == _sujera;
acao = 'aspirar'
percepcao = struct('x', _pX, 'y', _pY, 'estado', salaSuja);

while 1
    %escolhe a a��o de acordo com a percep��o - chama fun��o agenteReativoSimples
    agenteReativoSimples(percepcao);
    
    %chama a fun��o atualizaAmbiente para atualizar a a��o realizada
    atualizaAmbiente(sala, acao, x, y)
    
    %Mostra na tela as a��es escolhidas e percep��es (veja as fun��es 'disp' e 'num2str')
    %disp('x:'+x);
    %disp('y:'+y);
    %disp('acao:'+acao);
    
    
    %mostra o ambiente atualizado
    mostraAmbiente(sala);
    %posiciona o aspirador no ambiente atualizado
    posicaoAspirador(x, y)

    
    %atualiza a percep��o e o estado depois de concluir a a��o    
end

