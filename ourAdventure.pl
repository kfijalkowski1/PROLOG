/* Space destroyer, by Kamil Kuba Krzyś */

:- dynamic i_am_at/1, at/2, describe/1, go/1, instructions/0, health/1, attack/1, describeStatsChange/2, lastDirection/1, holding/1.
:- retractall(at(_, _)), retractall(i_am_at(_)), retractall(alive(_)).
:- retractall(health(_)), retractall(attack(_)) .

:- consult('textData.pl').
:- consult('nonTextData.pl').
:- consult('atackImpl.pl').
:- consult('healthImpl.pl').


% punkt startowy
i_am_at(laka).
health(20).
attack(4).
lastDirection(s).

% zasady przemieszczania się
map :-
        i_am_at(Place),
        write('Aktualnie jesteś w: '), write(Place), nl, write('możesz iść do:'), nl,
        (path(Place, Y, X)), write(X), write(' w kierunku: '), write(Y), nl , fail.
map.

% Zasady określające podnoszenie obiektów

take(X) :-
        i_am_at(Place),
        at(X, Place),
        retract(at(X, Place)),
        assert(holding(X)),
        addAttackAndHealth(X),
        !, nl.

take(_) :-
        write('Nie widzę tego tutaj.'),
        nl.


% zasady określające wygraną gry: podróż na księżyc
teleportMoon :-
        i_am_at(Here),
        retract(i_am_at(Here)),
        assert(i_am_at(moon)),
        !, look.


goToMoon :-
        holding(portalOne),
        holding(portalTwo),
        holding(portalThree),
        !, teleportMoon, finish.
goToMoon :-
        write('Zbierz wszystkie elementy (portalOne, portalTwo, portalThree) aby polecieć na księżyc').


/* definicja kierunków podróży. */

n :- go(n).

e :- go(e).

s :- go(s).

w :- go(w).


go(Direction) :-
        i_am_at(Here),
        path(Here, Direction, There),
        % change position
        retract(i_am_at(Here)),
        assert(i_am_at(There)),
        % set last move
        retract(lastDirection(_)),
        assert(lastDirection(Direction)),
        !, makeAttack, look, changeHealth.


go(_) :-
        write('Nie możesz tam iść.').


/* metody do rozglądania się. */

look :-
        i_am_at(Place),
        describe(Place),
        nl.

search :-
        i_am_at(Place),
        search(Place),
        nl,
        notice_objects_at(Place),
        nl.

notice_objects_at(Place) :-
        at(X, Place),
        write('Jest tu '), write(X), nl,
        fail.

notice_objects_at(_).

% metody związane z grą
die :-
        halt.


stats :-
        describeAttack,
        describeHealth.


finish :-
        nl,
        write('Zwycięstwo! wpisz halt. aby zamknąć grę'),
        nl.


start :-
        instructions,
        look.
