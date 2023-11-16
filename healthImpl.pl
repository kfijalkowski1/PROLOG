% Zasady związane z punktami życia
setNewHealth(HealthChanger) :-
        health(CurrentHealth),
        NewHealth is CurrentHealth + HealthChanger,
        retract(health(CurrentHealth)),
        assert(health(NewHealth)).


describeHealth :-
        health(HealthPoints),
        write('Aktualnie masz: '), write(HealthPoints), write(' punktów życia'), nl, !.

writebeHealthChange :-
        i_am_at(Place),
        describeHealthChange(Place, Msg),
        write(Msg), nl, !.
writebeHealthChange.

checkHealth :-
        health(HealthPoints),
        (HealthPoints < 1 -> write('Umierasz, skończyły Ci się punkty życia'), die; true).

changeHealth :-
        i_am_at(Place),
        healthChanger(Place, HealthChanger),
        setNewHealth(HealthChanger),
        checkHealth,
        writebeHealthChange, describeHealth, !.
changeHealth.