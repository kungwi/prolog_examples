member(X,[X|_],1) :- !.
member(_,[],0).
member(X,[H|T],Y) :- member(X,T,Z) , Y is Z+1, X\==H ,! .

countlist([],0).
countlist([_|T],X) :- countlist(T,Y) ,  X is Y + 1 .
