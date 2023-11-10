/* Space destroyer, by Kamil Kuba Krzyś */

:- dynamic i_am_at/1, at/2, holding/1, describe/1, go/1, map/0, instructions/0, health/1.
:- retractall(at(_, _)), retractall(i_am_at(_)), retractall(alive(_)).
:- retractall(health(_)) .

:- consult('textData.pl').
:- consult('nonTextData.pl').


/* starting point */
i_am_at(laka).
health(20).

% zasady przemiszczania sie
map :-
        i_am_at(Place),
        write("Aktualnie jestes w: "), write(Place), write(" możesz iść do:"), nl,
        (path(Place, Y, X)), write(X), write(" w kierunku: "), write(Y), nl , fail.
map.

myHealth :-
        health(HealthPoints),
        write("Aktualnie masz: "), write(HealthPoints), write(" punktów życia:"), !, nl.


changeHealth :-
        i_am_at(Place),
        health(CurrentHealth),
        healthChanger(Place, HealthChanger),
        NewHealth is CurrentHealth + HealthChanger,
        retract(health(CurrentHealth)),
        assert(health(NewHealth)),
        !, myHealth.




/* These rules describe how to pick up an object. */

take(X) :-
        holding(X),
        write('You''re already holding it!'),
        !, nl.

take(X) :-
        i_am_at(Place),
        at(X, Place),
        retract(at(X, Place)),
        assert(holding(X)),
        write('OK.'),
        !, nl.

take(_) :-
        write('I don''t see it here.'),
        nl.


/* These rules describe how to put down an object. */

drop(X) :-
        holding(X),
        i_am_at(Place),
        retract(holding(X)),
        assert(at(X, Place)),
        write('OK.'),
        !, nl.

drop(_) :-
        write('You aren''t holding it!'),
        nl.


/* These rules define the direction letters as calls to go/1. */

n :- go(n).

e :- go(e).

s :- go(s).

w :- go(w).


/* This rule tells how to move in a given direction. */

go(Direction) :-
        i_am_at(Here),
        path(Here, Direction, There),
        retract(i_am_at(Here)),
        assert(i_am_at(There)),
        !, look.

go(_) :-
        write('You can''t go that way.').


/* This rule tells how to look about you. */

look :-
        i_am_at(Place),
        describe(Place),
        nl,
        notice_objects_at(Place),
        nl.


/* These rules set up a loop to mention all the objects
   in your vicinity. */

notice_objects_at(Place) :-
        at(X, Place),
        write('There is a '), write(X), write(' here.'), nl,
        fail.

notice_objects_at(_).


/* This rule tells how to die. */

die :-
        finish.

finish :-
        nl,
        write('The game is over. Please enter the "halt." command.'),
        nl.


/* This rule just writes out game instructions. */



/* This rule prints out instructions and tells where you are. */

start :-
        instructions,
        look.

