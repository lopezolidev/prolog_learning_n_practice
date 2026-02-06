/* Saber si dos árboles son isomorfos
    ?- iso(arbol(a, arbol(b, nil, nil), arbol(c, nil, nil)), arbol(1, arbol(2, nil, nil), arbol(3, nil, nil))).
    true.
    
    ?- iso(arbol(a, arbol(b, nil, nil), arbol(c, nil, nil)),  arbol(1, arbol(2, nil, nil), nil)).
    false.
*/
% caso hoja
iso(nil, nil) .

iso(arbol(R1, I1, D1), arbol(R2, I2, D2) ) :-
    iso(I1, I2) , ! ,
    iso(D1, D2) .