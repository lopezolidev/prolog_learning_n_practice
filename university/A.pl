/*
Ejercicio A: Árbol Espejo (Simetría)

es_simetrico(arbol), devuelve true si el árbol es un espejo de si mismo (el subárbol izquierdo es la imagen especular del derecho)
*/
preorden(nil, []) .

preorden(arbol(R, I, D), ListaPreorden) :-
    preorden(I, LI) ,
    preorden(D, LD) ,
    append([R], LI, HalfTree) ,
    append(HalfTree, LD, ListaPreorden) .

% caso de árbol vacío
es_simetrico(nil).

% caso árbol no vacío
es_simetrico(arbol(_, I, D)) :-
    preorden(I, LP) ,
    preorden(D, LP) .


% arbol(a, arbol(b, arbol(d, nil, nil), arbol(e, nil, nil)), arbol(c, arbol(d, nil, nil), arbol(e, nil, nil)))