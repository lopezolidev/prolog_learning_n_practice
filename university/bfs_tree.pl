% haremos un recorrido bfs de un árbol binario

% definición de predicados auxiliares
obtenerRaiz(arbol(R, _ ,_), R).

% generar hijos para el recorrido

% hijos parciales
generarHijos(arbol(_, nil, Der), [D]) :-
    obtenerRaiz(Der, D) , !.

generarHijos(arbol(_, Izq, nil), [I]) :-
    obtenerRaiz(Izq, I) , !.

% hijos completos
generarHijos(arbol(_, Izq, Der), [I, D]) :-
    obtenerRaiz(Izq, I) ,
    obtenerRaiz(Der, D) , !.


% Obtener arboles para recorrido

% si es parcial
arbolesAvisitar(arbol(_, nil, Der), [Der]):- !.
arbolesAvisitar(arbol(_, Izq, nil), [Izq]):- !.

% si es completo...
arbolesAvisitar(arbol(_, Izq, Der), [Izq, Der]) :- !.


% recorrido bfs
recorrerBFS(nil, []).
recorrerBFS(Arbol, BFS) :- 
    obtenerRaiz(Arbol, R) ,
    bfs([Arbol], [R], BFS) .

% implementación del BFS
% no hay árboles por visitar, el acumulador es el recorrido BFS
bfs([], Acc, Acc) .

% es una hoja
bfs([arbol(_, nil, nil) | RestoPendientes], Acc, BFS) :-
    bfs(RestoPendientes, Acc, BFS) , !.

% es un árbol
bfs([Arbol | Pendientes], Acc, BFS) :-
    % generamos los hijos posibles a partir del árbol actual para el recorrido por niveles
    generarHijos(Arbol, Hijos) ,
    append(Acc, Hijos, Recorrido) ,

    % luego generamos los árboles a visitar y los adjuntamos al final de la lista de pendientes
    arbolesAvisitar(Arbol, Futuros) ,
    append(Pendientes, Futuros, NuevosPendientes) ,

    % llamamos al bfs nuevamente con los nuevos pendients y el recorrido que estábamos construyendo
    bfs(NuevosPendientes, Recorrido, BFS).
