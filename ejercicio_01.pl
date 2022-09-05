% Ejercicio 1. Pepito se escapó del colegio y se fue con sus amigos
% al centro comercial.

% Locales
local(foodcourt).
local(zapateria).
local(lee_Shoes).
local(gradas_electricas).
local(super_selectos).
local(ferreteria).
local(freund).
local(cinepolis).
local(la_neveria).
local(torogoz).
local(dollar_city).

% Verificar si el primer argumento existe
locales_posibles(X,_,_):-
    not(local(X)),
    writeln("El primer argumento debe de ser un local existente"),!,fail.

% Verificar si el segundo argumento existe
locales_posibles(_,Y,_):-
    not(local(Y)),
    writeln("El segundo argumento debe de ser un local existente"),!,fail.

% Locales posibles a los que pepito puede ir sin ser visto por sus papas
locales_posibles(X,Y,Z):-
    local(Z),
    \==(X, Z),
    \==(Y, Z).
