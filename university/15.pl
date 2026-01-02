% insert/4 -> Dada una lista, una posición y un elemento, insertar el elemento en la posición N dentro de la lista. Por ejemplo:
% ?insert([1, 2, 3, 4], 1, 5, R).
% R = [5, 2, 3, 4].

insert([_ | T], 1, N, [N | T]).
insert([H | T], I, N, [H | R]) :- Ialt is I - 1, insert(T, Ialt, N, R).

