% dada una matriz, rotar la matriz en dirección de las agujas del reloj

% primero rotamos los vectores fila y los volvemos vectores columna
rotarFila([], []).
rotarFila([HF | TF], [[HF] | TC]) :- rotarFila(TF, TC).

% ahora unimos los vectores columna
unirVectores([], [], []).
unirVectores([A | TA], [B | TB], [C | TC]) :- append(A, B, C), unirVectores(TA, TB, TC).

% unimos las operaciones de unir vectores y rotar filas

% cuando ya no quedan filas de la matriz por procesar
rotar2([], Acc, Acc).

% cuando sólo queda una fila por procesar
rotar2([F | []], Acc, M) :-
    rotarFila(F, FR),
    unirVectores(FR, Acc, V) ,
    rotar2([], V, M).

% cuando tenemos 2 o más filas por procesar
rotar2([F1, F2 | TM], Acc, M) :-
    rotarFila(F1, F1R) ,
    rotarFila(F2, F2R) ,
    unirVectores(F2R, F1R, V) ,
    unirVectores(V, Acc, NewV) ,
    rotar2(TM, NewV, M).

% finalmente definimos el predicado principal
rotar([H | T], M) :- rotarFila(H, HR), rotar2(T, HR, M).