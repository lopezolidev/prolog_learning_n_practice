% menoresQue/3 -> elemento y lista, formar una lista de los numeros de la lista que son menores al elemento

menoresQue(_, [], []).
menoresQue(N, [H | T], [H | Rest]) :- H < N  , menoresQue(N, T, Rest).
menoresQue(N, [H | T], Rest) :- H >= N , menoresQue(N, T, Rest).
