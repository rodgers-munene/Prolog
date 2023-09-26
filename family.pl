parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(bob,peter).
parent(peter,jim).
sibling(X,Y) :- parent(Z,X),parent(Z,Y).
aunt(X,Y) :- parent(Z,Y),sibling(X,Z).
grandparent(X,Y) :- parent(X,Z),parent(Z,Y).
