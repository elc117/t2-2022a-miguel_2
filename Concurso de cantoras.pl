ao_lado(X, Y, List) :- nextto(X, Y, List). % X à esquerda de Y
ao_lado(X, Y, List) :- nextto(Y, X, List). % Y à esquerda de X

na_ponta(X, L) :- L = [X|_]. % X é o primeiro elemento
na_ponta(X, L) :- last(L, X). % X é o último elemento

before(X, Y, L):-
    nth0(IdxX, L, X),
    nth0(IdxY, L, Y),
    IdxX < IdxY.

entre(X, Y, Z, L) :- % Y está entre X e Z
    before(X, Y, L), 
    before(Y, Z, L). 

%Vestido
%Nome
%Estilo
%Apresentação
%Início
%Cidade

solucao(Solucaum):-
    Solucaum = [_,_,_,_,_], % lista Sol com 6 elementos
    
    Solucaum = [_,_,(_,_,pop,_,_,_),_,_], % 1 Quem canta Pop está na terceira posição.
    ao_lado((_,andrea,_,_,_,_),(_,_,samba,_,_,_),Solucaum), % 2 Andréa está ao lado de quem canta Samba.
    before((amarelo,_,_,_,_,_),(azul,_,_,_,_,_),Solucaum), % 3 A dona do vestido Amarelo está em algum lugar à esquerda da cantora de Azul.
    entre((_,_,_,_,_,campogrande),(_,_,_,_,10,_),(_,marilia,_,_,_,_),Solucaum), % ____________ 4 Quem começou a cantar com 10 anos está em algum lugar entre a cantora do Mato Grosso do Sul e a Marília, nessa ordem.
    ao_lado((amarelo,_,_,_,_,_),(branco,_,_,_,_,_),Solucaum), % 5 As cantoras de Amarelo e Branco estão uma ao lado da outra.
    nextto((_,_,samba,_,_,_),(_,marilia,_,_,_,_),Solucaum), % 6 Marília está exatamente à direita de quem canta Samba.
    na_ponta((_,_,_,_,_,portoalegre),Solucaum), % 7 A porto-alegrense está em uma das pontas.
    ao_lado((_,_,sertanejo,_,_,_),(_,_,_,_,12,_),Solucaum), % 8 A cantora de Sertanejo está ao lado da cantora que começou a cantar aos 12 anos.
    nextto((_,_,_,5,_,_),(_,_,_,_,_,portoalegre),Solucaum), % ------------------ 9 A Quinta cantora a se apresentar está exatamente à esquerda da cantora do Rio Grande do Sul.
    entre((amarelo,_,_,_,_,_),(branco,_,_,_,_,_),(_,_,_,1,_,_),Solucaum), % 10 A cantora de Branco está em algum lugar entre a cantora de Amarelo e a Primeira cantora a se apresentar, nessa ordem.
    ao_lado((_,_,_,_,_,palmas),(_,_,_,_,8,_),Solucaum), % 11 A cantora de Palmas está ao lado da cantora que começou a cantar com 8 anos.
    na_ponta((_,_,_,_,_,campogrande),Solucaum), % ---------------- 12 Em uma das pontas está a cantora da região centro-oeste.
    ao_lado((_,_,_,_,4,_),(_,_,_,_,12,_),Solucaum), % 13 Quem começou a cantar com 4 anos está ao lado de quem começou a cantar com 12 anos.
    before((verde,_,_,_,_,_),(_,_,_,_,_,vitoria),Solucaum), % 14 A cantora do vestido Verde está em algum lugar à esquerda da cantora de Vitória.
    ao_lado((verde,_,_,_,_,_),(_,_,_,_,12,_),Solucaum), % 15 A cantora de vestido Verde está ao lado da cantora que começou a cantar aos 12 anos.
    nextto((_,teresa,_,_,_,_),(_,_,_,4,_,_),Solucaum), % 16 Teresa está exatamente à esquerda da Quarta cantora a se apresentar.
    nextto((_,_,pop,_,_,_),(_,_,rock,_,_,_),Solucaum), % 17 Quem canta Rock está exatamente à direita de quem canta Pop.
    ao_lado((_,_,_,3,_,_),(_,_,_,_,4,_),Solucaum), % 18 A Terceira cantora a se apresentar está ao lado da cantora que começou a cantar aos 4 anos.
    entre((_,_,mpb,_,_,_),(branco,_,_,_,_,_),(_,_,_,_,_,portoalegre),Solucaum), % 19 A dona do vestido Branco está em algum lugar entre quem canta MPB e a cantora de Porto Alegre, nessa ordem.
    ao_lado((_,carina,_,_,_,_),(_,_,_,_,8,_),Solucaum), % 20 Carina está ao lado da cantora que começou a cantar com 8 anos.
    na_ponta((azul,_,_,_,_,_),Solucaum), % 21 A cantora do vestido Azul está em uma das pontas.
    ao_lado((_,_,_,3,_,_),(_,_,_,1,_,_),Solucaum), % 22 A Terceira cantora a se apresentar está ao lado da Primeira cantora a se apresentar.
    
    % elementos que ficaram de fora
    member((vermelho,_,_,_,_,_),Solucaum),
    member((_,ligia,_,_,_,_),Solucaum),
    member((_,_,_,2,_,_),Solucaum),
    member((_,_,_,_,6,_),Solucaum),
    member((_,_,_,_,_,joaopessoa),Solucaum).