% elimN -> dada una lista y una posición, eliminar los N primeros elemetos de una ista y retornar el resto. Por ejemplo
% ?elimN ([1,3,5,1,2], 2, L).
% L = [5, 1, 2].

elimN(L, 0, L).
elimN([_ | T], N, L) :- S is N - 1, elimN(T, S, L).