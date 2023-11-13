/* Space destroyer, by Kamil Kuba Krzyś */

:- dynamic i_am_at/1, at/2, describe/1, go/1, instructions/0, health/1, attack/1, describeHealthChange/2, lastDirection/1, holding/1.
:- retractall(at(_, _)), retractall(i_am_at(_)), retractall(alive(_)).
:- retractall(health(_)), retractall(attack(_)) .

:- consult('textData.pl').
:- consult('nonTextData.pl').


/* starting point */
i_am_at(laka).
health(20).
attack(0).
lastDirection(s).

% zasady przemieszczania się
map :-
        i_am_at(Place),
        write('Aktualnie jesteś w: '), write(Place), write(' możesz iść do:'), nl,
        (path(Place, Y, X)), write(X), write(' w kierunku: '), write(Y), nl , fail.
map.


% podniesienie broni + ataku
% obóz bandytów


goBack :-
        lastDirection(Direction),
        directionOpposite(Direction, OppositeDirection),
        i_am_at(Here),
        path(Here, OppositeDirection, There),
        % change position
        retract(i_am_at(Here)),
        assert(i_am_at(There)),
        !, write('uciekłeś do '), write(There), nl.


describeAttack :-
        attack(AttackPoints),
        write('Aktualnie masz: '), write(AttackPoints), write(' punktów ataku'), !, nl.


describeAttackChange(Weapon) :-
        describeAttackChange(Weapon, Msg),
        write(Msg), nl,
        describeAttack.


addAttackAndHealth(Weapon) :-
        attack(CurrentAttack),
        statsChanger(Weapon, AttackChange, HealthChange),
        NewAttack is CurrentAttack + AttackChange,
        retract(attack(_)),
        assert(attack(NewAttack)),
        !, describeAttackChange(Weapon).
addAttackAndHealth(_).


makeAttack :-
        attack(CurrentAttack),
        i_am_at(Here),
        attackRequired(Here, AttackRequired),
        i_am_at(Here),
        winAttackMessage(Here, WinMsg),
        loseAttackMsg(Here, LoseMsg),
        (CurrentAttack >= AttackRequired -> write(WinMsg), nl; true),
        (CurrentAttack < AttackRequired -> write(LoseMsg), nl, write('aktualna ilość puktów ataku: '), write(CurrentAttack), write(', wymagana ilość: '), write(AttackRequired), nl, changeHealth, goBack; true).


% Zasady związane z punktami życia

describeHealth :-
        health(HealthPoints),
        write('Aktualnie masz: '), write(HealthPoints), write(' punktów życia'), !, nl.

describeHealthChange :-
        i_am_at(Place),
        describeHealthChange(Place, Msg),
        write(Msg), nl,
        describeHealth.

checkHealth :-
        health(HealthPoints),
        (HealthPoints < 1 -> write('Umierasz, skończyły Ci się punkty życia'), die; true).

changeHealth :-
        i_am_at(Place),
        health(CurrentHealth),
        healthChanger(Place, HealthChanger),
        NewHealth is CurrentHealth + HealthChanger,
        retract(health(CurrentHealth)),
        assert(health(NewHealth)),
        checkHealth,
        !, describeHealthChange.


/* These rules describe how to pick up an object. */

% take(X) :-
%         holding(X),
%         write('Już to posiadasz'),
%         !, nl.

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


/* These rules describe how to put down an object. */
teleportMoon :-
        i_am_at(Here),
        retract(i_am_at(Here)),
        assert(i_am_at(moon)),
        !, look.


goToMoon :-
        holding(gate1),
        holding(gate2),
        holding(gate3),
        !, teleportMoon.
goToMoon :-
        write('Zbierz wszystkie elementy (Gate1, Gate2, Gate3) aby polecieć na księżyc').


/* These rules define the direction letters as calls to go/1. */

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
        !, makeAttack, look.

% teleport(Place)

go(_) :-
        write('You cant go that way.').


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
        write('Jest tu '), write(X), nl,
        fail.

notice_objects_at(_).


die :-
        finish.


stats :-
        describeAttack,
        describeHealth,
        map.


finish :-
        nl,
        write('The game is over. Please enter the "halt." command.'),
        nl.


start :-
        instructions,
        look.
