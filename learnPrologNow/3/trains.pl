directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(fahlquemont,stAvold).
directTrain(stAvold,forbach).
directTrain(saarbruecken,dudweiler).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

travel_between(O, D) :- directTrain(O, D).

travel_between(O, D) :- directTrain(O, Z) ,
                        travel_between(Z, D). 