parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
female(pam).
male(tom).
male(bob).
female(liz).
female(ann).
female(pat).
male(jim).

father(X,Y) :- male(X) , parent(X,Y).
mother(X,Y) :- female(X) , parent(X,Y).
sister(X,Y) :- female(X) , parent(Z,X) , parent(Z,Y).


predecessor(X,Y) :- parent(X,Y).
predecessor(X,Y) :- parent(Z,Y) , predecessor(X,Z).
