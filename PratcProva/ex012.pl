pertence(X,Y) :- Y = [X|_].
pertence(X,Y) :- Y = [_|T], pertence(X,T).