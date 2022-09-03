%Nombres y sección
%Guillermo Javier Morales Cornejo Sec 02
%Alejandro Donalí Hernández Ramos Sec 02
%Fernando Daniel González Batarse Sec 02

%Ejercicio 2. El enemigo de mi enemigo es mi amigo

%Definiendo enemigos
enemigo(david, juan).
enemigo(juan,david).
enemigo(roberto, miguel).
enemigo(miguel , roberto).
enemigo(alan, josue).
enemigo(josue , alan).
enemigo(alan, david).
enemigo(david, alan).
enemigo(alan, juan).
enemigo(juan, alan).
enemigo(juan, francisco).
enemigo(francisco, juan).

%definiendo aliado/3
aliado(X,Y,Z):-
    enemigo(X,Y), %X es enemigo de Y
    enemigo(Y,X), %Y es enemigo de X
    enemigo(Z,Y), %Z es enegmigo de Y
    enemigo(Y,Z),
    \==(Z,X). %se comprueba si son distintos

aliado(_,_,_):- !.




