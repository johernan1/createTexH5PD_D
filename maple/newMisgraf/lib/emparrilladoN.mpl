proc(Nud, Barr, esc, alpha, delta, Apoy)
local i, dir, grfnud, alphax, alphay, deltaz, j;
    _EnvMD := _EnvMD + 1;
    grfnud := {};
    for i to nops(Nud) do dir[i] := {} od;
    for i to nops(Barr) do
        dir[Barr[i, 1]] :=
            {miarctan(op(Nud[Barr[i, 2]] - Nud[Barr[i, 1]]))} union
            dir[Barr[i, 1]];
        dir[Barr[i, 2]] :=
            {miarctan(op(Nud[Barr[i, 1]] - Nud[Barr[i, 2]]))} union
            dir[Barr[i, 2]]
    od;
    for i to nops(Nud) do
        midebug(_EnvMD, procname, i);
        if type(alpha[i], numeric) then
            alphax := alpha[i]; alphay := alpha[i]
        else alphax := alpha[i, 1]; alphay := alpha[i, 2]
        fi;
        if type(delta[i], numeric) then deltaz := -delta[i]
        else deltaz := -delta[i, 1]
        fi;
        if nops(dir[i]) = 1 then
            if nops(Apoy[i]) = 2 then
                if abs(op(dir[i])) < .0001 or
                abs(op(dir[i]) - 3.141592654) < .0001 then grfnud
                     := grfnud union {perspectiva(eval(Apoy[i, 1](
                    Nud[i, 1], deltaz, esc, alphax + Apoy[i, 2])),
                    Y = Nud[i, 2] + delta[i, 2])}
                fi;
                if abs(op(dir[i]) + 1.570796327) < .0001 or
                abs(op(dir[i]) - 1.570796327) < .0001 then grfnud
                     := grfnud union {perspectiva(eval(Apoy[i, 1](
                    Nud[i, 2], deltaz, esc, alphay + Apoy[i, 2])),
                    X = Nud[i, 1])}
                fi
            fi;
            next
        fi;
        for j in dir[i] do
            if abs(j) < .0001 then grfnud := grfnud union {
                perspectiva(nudoiv(Nud[i, 1], deltaz, esc, alphax),
                Y = Nud[i, 2])}
            fi;
            if abs(j - 3.141592654) < .0001 then grfnud := grfnud
                union {perspectiva(
                nudodv(Nud[i, 1], deltaz, esc, alphax),
                Y = Nud[i, 2])}
            fi;
            if abs(j - 1.570796327) < .0001 then grfnud := grfnud
                union {perspectiva(
                nudoiv(Nud[i, 2], deltaz, esc, alphay),
                X = Nud[i, 1])}
            fi;
            if abs(j + 1.570796327) < .0001 then grfnud := grfnud
                union {perspectiva(
                nudodv(Nud[i, 2], deltaz, esc, alphay),
                X = Nud[i, 1])}
            fi
        od
    od;
    display(grfnud)
end

