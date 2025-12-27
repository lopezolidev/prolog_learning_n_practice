dotProduct([], [], 0).
% base case

dotProduct([X | Y], [V | W], R) :-  Val is X * V ,  
                                    dotProduct(Y, W, S) , 
                                    R is Val + S .
% recursive case 