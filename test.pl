square([],[]).
square([H|T],[X|Y]):-square(T,Y),X is H*H.

sum([],0).
sum([H|T],X):- sum(T,Y),X is Y+H.

reverse([],[]).

