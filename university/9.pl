descomCambio(0, []):- !.
descomCambio(D , V) :-  D > 0,
                        descomCambio2(D, [], V).

descomCambio2(0, A, A).

descomCambio2(D, Acc, Res) :-   R is D - 100,
                                R >= 0,
                                descomCambio2(R, [100 | Acc], Res).

descomCambio2(D, Acc, Res) :-   R is D - 25,
                                R >= 0,
                                descomCambio2(R, [25 | Acc], Res).

descomCambio2(D, Acc, Res) :-   R is D - 5,
                                R >= 0,
                                descomCambio2(R, [5 | Acc], Res).

descomCambio2(D, Acc, Res) :-   R is D - 1,
                                R >= 0,
                                descomCambio2(R, [1 | Acc], Res).
                                


descomCambio3(0, []) :- !.

%calculus for 100

descomCambio3(D, [100 | Rest]) :- D >= 100, R is D - 100, descomCambio3(R, Rest).

%calculus for 25
descomCambio3(D, [25 | Rest]) :- D >= 25, R is D - 25, descomCambio3(R, Rest).

%calculus for 5
descomCambio3(D, [5 | Rest]) :- D >= 5, R is D - 5, descomCambio3(R, Rest).

%calculus for 1
descomCambio3(D, [1 | Rest]) :- D >= 1, R is D - 1, descomCambio3(R, Rest).