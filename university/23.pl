% un árbol se define como 
mytree(
    arbol(a, arbol(b, arbol(d, nil, nil), arbol(e, nil, nil)), arbol(c, arbol(f, nil, nil), nil))
).
%      a
%    /   \
%   b     c
%  / \   / 
% d  e  f
postorden(nil, []).

postorden(arbol(Raiz, Izq, Der), Post) :-
    postorden(Izq, SubIzq) ,
    postorden(Der, SubDer) ,
    append(SubIzq, SubDer, HalfTree) ,
    append(HalfTree, [Raiz], Post).


preorden(nil, []) .
preorden(arbol(Raiz, Izq, Der), Pre) :-
    preorden(Izq, SubIzq) ,
    append([Raiz], SubIzq, HalfTree) ,
    preorden(Der, SubDer) ,
    append(HalfTree, SubDer, Pre).

inorden(nil, []) .
inorden(arbol(Raiz, Izq, Der), In) :-
    inorden(Izq, SubIzq) ,
    append(SubIzq, [Raiz] , HalfTree) ,
    inorden(Der, SubDer) ,
    append(HalfTree, SubDer, In) .