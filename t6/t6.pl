%1)
zeroInit([L|_]) :- L=:=0.

%2)
qtde([],0).
qtde([_|T],S) :- qtde(T,G),S is 1+G.
has5(L) :- qtde(L,N), N=:=5.

%3)
hasN([],0).
hasN([_|L],N) :- hasN(L,G),N is 1+G.

%4)
potencias(N, L) :- S is 0, potAux(S, N, L).

potAux(_, 0 , []).
potAux(N, M, [H|T]) :- H is 2^N, N1 is N+1, M1 is M-1, potAux(N1, M1, T).

%5)
zipmult([], [], []).
zipmult([H|T], [H1|T1], [H2|T2]) :- H2 is H*H1, zipmult(T, T1, T2).

%6)
potencias(N, L) :- S is 0, potAux(S, N, L).

potAux(_, 0 , []).
potAux(N, M, [H|T]) :- H is 2^N, N1 is N+1, M1 is M-1, potAux(N1, M1, T).

%7
positivos([], []).
positivos([H1|T1], [H2|T2]) :- H1 > 0, H2 is H1, positivos(T1, T2).
positivos([H1|T1], L) :- H1 =< 0, positivos(T1, L).

%8
mesmaPosicao(C,[H|_],[H1|_]) :- C = H, H1 = H.
mesmaPosicao(C,[_|T],[_|T1]) :- mesmaPosicao(C,T,T1).

%9
remove(X,[X|T],T).
remove(X,[_|T],L) :- remove(X,T,L).

comissao(0,_,[]).
comissao(NP,LP,[H|T]) :- NP1 is NP - 1, remove(H,LP,LP1), comissao(NP1,LP1,T).

%10
azulejos(0,0) :- !.
azulejos(NA,NP) :- sqrt(NA,M),floor(M,N), NA1 is NA - N*N,azulejos(NA1,NP1),NP is 1 + NP1.















