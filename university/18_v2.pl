% predicado que toma los primeros elementos de cada vector fila
select_first([], []).
select_first([[V | _] | Vs], [V | TV]) :- select_first(Vs, TV).

% aquí se toman los restos de los vectores de cada fila después de quitar el primer elemento
take_first([], []) .
take_first([ [_ | RV] | Vs], [RV | TV]) :- take_first(Vs, TV).

% predicado que toma los primeros elementos, los restos de cada vector fila, voltea el vector de primeros elementos resultante
% y adjunta este vector de primeros elementos al resto de la matriz traspuesta
trasponer([], _ , []).
trasponer([_ | Rs], [V | Vs], [RVT | VTS]) :-
    select_first([V | Vs], VT) ,
    take_first([V | Vs], VsWF) ,
    reverse(VT, RVT) ,
    trasponer(Rs, VsWF, VTS).

% predicado pricipal que llama a trasponer
rotar([], []).
rotar([V | Vs], Mat) :- trasponer(V, [V | Vs], Mat).