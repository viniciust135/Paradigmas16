%Combate a dengue.

regra1(D) :- D = [f,_,_,_,_,_,_].
regra1(D) :- D = [_,f,_,_,_,_,_].
regra1(D) :- D = [_,_,f,_,_,_,_].

regra2(D) :- nextto(h,g,D).

regra3(D) :- D = [_,l,_,_,_,_,_].
regra3(D) :- D = [_,_,l,_,_,_,_].
regra3(D) :- D = [_,_,_,l,_,_,_].
regra3(D) :- D = [_,_,_,_,l,_,_].
regra3(D) :- D = [_,_,_,_,_,l,_].

regra4(D) :- D = [m | _].
regra4(D) :- D = [_,_,_,_,_,_,m].

regra5(D) :- D = [_,_,_,_,p,_,_].
regra5(D) :- D = [_,_,_,_,_,p,_].
regra5(D) :- D = [_,_,_,_,_,_,p].


perm(List, [H|Perm]) :- delete(H, List, Rest), perm(Rest, Perm).
perm([],[]).

delete(X, [X|T], T).
delete(X, [H|T], [H|NT]) :- delete(X, T, NT).

combateDengue(D) :-
	D = [_,_,_,_,_,_,_],
        Casas = [f,g,h,l,m,p,t],
        perm(D, Casas),
        regra1(D),
	regra2(D),
        regra3(D),
	regra4(D),
	regra5(D).

%1)
%?- combateDengue([f,t,h,l,p,g,m]). TRUE
%?- combateDengue([h,g,f,l,t,p,m]). TRUE
%letra B
%4)
%?- combateDengue([h,_,_,_,_,p,_]). TRUE
%?- combateDengue([_,h,_,_,_,p,_]). TRUE
%?- combateDengue([_,_,h,_,_,p,_]). TRUE
%?- combateDengue([_,_,_,h,_,p,_]). TRUE
%?- combateDengue([_,_,_,_,h,p,_]). FALSE
%letra E
%2)
%?- combateDengue([t,l,f,g,_,_,_]). FALSE
%?- combateDengue([t,l,f,_,g,_,_]). TRUE
%letra D





