contain(katarina, olga).
contain(olga, natasha).
contain(natasha, irina).

in(D1, D2) :- contain(D1, D2).

in(D1, D2) :-   contain(D1, Z),
                in(Z, D2).
