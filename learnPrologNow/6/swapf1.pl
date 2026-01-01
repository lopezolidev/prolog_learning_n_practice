swapf1([X | Tail1], [ Y | Tail2]) :-    append(Result, [Y], Tail1), 
                                        append(Result, [X], Tail2).