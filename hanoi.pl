hanoi(X) :- solvehanoi(X,left, middle, right).

solvehanoi(1,X,_,Z) :- movedisk(X,Z) , ! .
solvehanoi(N,X,Y,Z) :- N>1 , M is N-1 , solvehanoi(M,X,Z,Y) , movedisk(X,Z) ,
	solvehanoi(M,Y,X,Z).
movedisk(X,Y) :- write('move a disk from ' ), write(X),write(' to '), write(Y),nl.
