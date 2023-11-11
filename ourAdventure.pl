/* Space destroyer, by Kamil Kuba Krzyś */

:- dynamic i_am_at/1, at/2, holding/1, describe/1, go/1, instructions/0, health/1, atack/1, describeHelathChange/2, lastDirection/1.
:- retractall(at(_, _)), retractall(i_am_at(_)), retractall(alive(_)).
:- retractall(health(_)), retractall(atack(_)) .

:- consult('textData.pl').
:- consult('nonTextData.pl').


/* starting point */
i_am_at(laka).
health(20).
atack(0).

% zasady przemiszczania sie
map :-
        i_am_at(Place),
        write("Aktualnie jestes w: "), write(Place), write(" możesz iść do:"), nl,
        (path(Place, Y, X)), write(X), write(" w kierunku: "), write(Y), nl , fail.
map.


% podniesienie broni + ataku
% obóz bandytów


goBack :-
        lastDirection(Direction),
        i_am_at(Here),
        path(Here, Direction, There),
        % change position
        retract(i_am_at(Here)),
        assert(i_am_at(There)),
        !, write("uciekłeś do"), write(There).


describeAtack :-
        atack(AtackPoints),
        write("Aktualnie masz: "), write(AtackPoints), write(" punktów ataku"), !, nl.


describeAtackChange(Wepon) :-
        describeAtackChange(Wepon, Msg),
        write(Msg), nl,
        describeAtack.


addAtack(Wepon) :-
        atack(CurrentAtack),
        atackChanger(Wepon, AtackChange),
        NewAtack is CurrentAtack + AtackChange,
        retract(atack(_)),
        assert(atack(NewAtack)),
        !, describeAtackChange(Wepon).


makeAtack :-
        atack(CurrentAtack),
        i_am_at(Here),
        atackRequierd(Here, AtackRequierd),
        winAtackMessage(Here, WinMsg),
        loseAtackMsg(Here, LoseMsg),
        (CurrentAtack >= AtackRequierd -> write(WinMsg)),
        (CurrentAtack < AtackRequierd -> write(LoseMsg), goBack).


% Zasady związane z punktami życia

describeHealth :-
        health(HealthPoints),
        write("Aktualnie masz: "), write(HealthPoints), write(" punktów życia"), !, nl.

describeHelathChange :-
        i_am_at(Place),
        describeHelathChange(Place, Msg),
        write(Msg), nl,
        describeHealth.

checkHealth :-
        health(HealthPoints),
        (HealthPoints < 1 -> write("Umierasz, skończyly ci się punkty życia"), die; true).

changeHealth :-
        i_am_at(Place),
        health(CurrentHealth),
        healthChanger(Place, HealthChanger),
        NewHealth is CurrentHealth + HealthChanger,
        retract(health(CurrentHealth)),
        assert(health(NewHealth)),
        checkHealth,
        !, describeHelathChange.


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
        addAtack(X),
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


go(Direction) :-
        i_am_at(Here),
        path(Here, Direction, There),
        fail,
        % change position
        retract(i_am_at(Here)),
        assert(i_am_at(There)),
        % set last move
        retract(lastDirection(_)),
        assert(lastDirection(Direction)),
        !, changeHealth, look.

% teleport(Place)

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


die :-
        finish.


stats :-
        describeAtack,
        describeHealth,
        map.


finish :-
        nl,
        write('The game is over. Please enter the "halt." command.'),
        nl.


start :-
        instructions,
        look.

