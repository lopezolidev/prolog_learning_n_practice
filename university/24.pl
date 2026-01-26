/*
24. Defina predicado sustituir(X,Y,ArbolX,ArbolY) donde ArbolY es el
resultado de sustituir las apariciones del término X por Y en ArbolX.
*/

% si es nil, ya es una verdad.
sustituir(X, Y, nil, nil) .

% si son iguales los nodos raíz de los subárboles, los modificamos
sustituir(X, Y, arbol(X, Izq, Der), arbol(Y, Izq2, Der2)) :-
    sustituir(X, Y, Izq, Izq2) ,
    sustituir(X, Y, Der, Der2) , !.
    

% si no son iguales los nodos raíz, no hacemos nada
sustituir(X, Y, arbol(Z, Izq, Der), arbol(Z, Izq2, Der2)) :-
    sustituir(X, Y, Izq, Izq2) ,
    sustituir(X, Y, Der, Der2) .

