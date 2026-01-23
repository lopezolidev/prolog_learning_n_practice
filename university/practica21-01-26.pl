/* Ejercicio 13 */
subLista([],_).
subLista([H|T], [H|T2]):- subLista(T, T2), !.
subLista(Sub, [_|T]):- subLista(Sub, T).


/* Ejercicio 18 */
transponer([], _, []).
transponer([_|Rs], Ms, [Ts|Tss]) :-
    lists_firsts_rests(Ms, Ts, Ms1),
    transponer(Rs, Ms1, Tss).

lists_firsts_rests([], [], []).
lists_firsts_rests([[F|R]|Ls], [F|Fs], [R|Rs]) :-
    lists_firsts_rests(Ls, Fs, Rs).

rotar([], []).
rotar([F|Fs], R) :-
    transponer(F, [F|Fs], T),
    maplist(reverse, T, R). 


/* Ejercicio 19 */
eliminar_repeticiones(L, R):-
	eliminar_aux(L, [], RReversed),
	reverse(RReversed, R).

eliminar_aux([], R, R).
eliminar_aux([H|T], Acum, R):-
	member(H, Acum),
	eliminar_aux(T, Acum, R), !.
eliminar_aux([H|T], Acum, R):-
	eliminar_aux(T, [H|Acum], R).


/* Ejercicio 23 */
pre_orden(nil, []).
pre_orden(arbol(X, Izq, Der), Lista) :-
    pre_orden(Izq, ListaIzq),
    pre_orden(Der, ListaDer),
    append([X|ListaIzq], ListaDer, Lista).

post_orden(nil, []).
post_orden(arbol(X, Izq, Der), Lista) :-
    post_orden(Izq, ListaIzq),
    post_orden(Der, ListaDer),
    append(ListaIzq, ListaDer, ListaTemp),
    append(ListaTemp, [X], Lista).

in_orden(nil, []).
in_orden(arbol(X, Izq, Der), Lista) :-
    in_orden(Izq, ListaIzq),
    in_orden(Der, ListaDer),
    append(ListaIzq, [X|ListaDer], Lista).


/* Ejercicio 24 */
sustituir(_, _, nil,nil).

sustituir(X, Y, arbol(X, Izq, Der), arbol(Y, IzqY, DerY)):-
	sustituir(X, Y, Izq, IzqY),
	sustituir(X, Y, Der, DerY),!.

sustituir(X, Y, arbol(Z, Izq, Der), arbol(Z, IzqY, DerY)):- 
	sustituir(X, Y, Izq, IzqY),
	sustituir(X, Y, Der, DerY).


/* L = [L1, L2, ..., Ln]
Una secuencia incremental A=[A1,A2, ..., Ak]
de tamaño k es una lista de elementos tomados de L tal que

a) Ai pertenece a L1
b) Ai < Ai+1
c) Si Ai está antes que Aj, entonces Ai también aparece antes que Aj en L.

Ejemplo:
Si L= [4,1,5,2,3,6,9], algunas posibles secuencias de tamaño 4:
S = [4,5,6,9]
S = [1,2,3,6]
S = [1,2,3,9]

? sinc([4,1,5,2,3,6,9], 4).
True
[4,5]
? sinc([7,6,5,3,8],3).
False
*/


sinc([],_):-!,fail.
sinc([L|Ls], K):- formar_lista(Ls, [L], 1, K), !.
sinc([_|Ls], K):- sinc(Ls,K).

formar_lista(_, _, K, K).
formar_lista([L|Ls], Acum, N, K):-
	last(Acum, Last), Last < L, N1 is N+1,
	append(Acum, [L], Acum1),
	formar_lista(Ls, Acum1, N1, K).
formar_lista([_|Ls], Acum, N, K):- formar_lista(Ls, Acum, N, K).
