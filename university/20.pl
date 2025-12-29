% transforming a decimal into a bit

decBin(0, []).
decBin(D, [Bit | Rest]) :-  D > 0,
                            Q is D // 2,
                            decBin(Q, Rest),
                            Bit is mod(D, 2).


% decBin with accumulator

decBin2(0, [0]) :- !.
decBin2(D, Res) :- D > 0,
                            decBin2Acc(D, [], Res).

% base case of decBin2Acc
decBin2Acc(0, Accum, Accum).

decBin2Acc(D, Accum, Res) :-    D > 0 ,
                                Q is D // 2 ,
                                Bit is D mod 2 ,
                                decBin2Acc(Q, [Bit | Accum], Res).