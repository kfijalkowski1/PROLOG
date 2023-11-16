% zasady opisujące działanie ataku i cofania gracza po przegranej walce (gracz nie może wejść na pole jeśli nie ma wystarczająco ataku)

goBack :-
        lastDirection(Direction),
        directionOpposite(Direction, OppositeDirection),
        i_am_at(Here),
        path(Here, OppositeDirection, There),
        % change position
        changeHealthLostFight(Here),
        retract(i_am_at(Here)),
        assert(i_am_at(There)),
        write('uciekłeś do '), write(There), nl, !, nl.

changeHealthLostFight(Place) :-
        healthChangerLostFight(Place, HealthChanger),
        setNewHealth(HealthChanger),
        checkHealth, !.
changeHealthLostFight.

describeAttack :-
        attack(AttackPoints),
        write('Aktualnie masz: '), write(AttackPoints), write(' punktów ataku'), nl, !.

addAttackAndHealth(Weapon) :-
        attack(CurrentAttack),
        statsChanger(Weapon, AttackChange, HealthChange),
        NewAttack is CurrentAttack + AttackChange,
        retract(attack(_)),
        assert(attack(NewAttack)),
        setNewHealth(HealthChange),
        describeStatsChange(Weapon, Msg),
        write(Msg), nl, stats, !.
addAttackAndHealth(_).

makeAttack :-
        attack(CurrentAttack),
        i_am_at(Here),
        attackRequired(Here, AttackRequired),
        winAttackMessage(Here, WinMsg),
        loseAttackMsg(Here, LoseMsg),
        (CurrentAttack >= AttackRequired -> write(WinMsg), nl; true),
        (CurrentAttack < AttackRequired -> write(LoseMsg), nl, write('aktualna ilość puktów ataku: '), write(CurrentAttack), write(', wymagana ilość: '), write(AttackRequired), nl, nl, changeHealth, goBack; true), !.
makeAttack.