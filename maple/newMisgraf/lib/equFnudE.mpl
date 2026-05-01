proc(Nud, Barr, esc, N, cortante, signoV)
local i, j, dir, grfnud, Esc, esc2, alphax, alphay, deltaz;
    if 7 <= nargs then esc2 := args[7] else esc2 := 1 fi;
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
    i := N;
    alphax := 0;
    alphay := 0;
    deltaz := 0;
    if nops(dir[i]) = 1 then
        if nops(Apoy[i]) = 2 then
            if abs(op(dir[i])) < .0001 or
            abs(op(dir[i]) - 3.141592654) < .0001 then grfnud :=
                grfnud union {perspectiva(eval(Apoy[i, 1](Nud[i, 1],
                deltaz, esc, alphax + Apoy[i, 2])),
                Y = Nud[i, 2] + delta[i, 2])}
            fi;
            if abs(op(dir[i]) + 1.570796327) < .0001 or
            abs(op(dir[i]) - 1.570796327) < .0001 then grfnud :=
                grfnud union {perspectiva(eval(Apoy[i, 1](Nud[i, 2],
                deltaz, esc, alphay + Apoy[i, 2])), X = Nud[i, 1])}
            fi
        fi;
        next
    fi;
    for j in dir[i] do
        if abs(j) < .0001 then grfnud := grfnud union {perspectiva(
            nudoiv(Nud[i, 1], deltaz, esc, alphax), Y = Nud[i, 2])}
        fi;
        if abs(j - 3.141592654) < .0001 then grfnud := grfnud union
            {perspectiva(nudodv(Nud[i, 1], deltaz, esc, alphax),
            Y = Nud[i, 2])}
        fi;
        if abs(j - 1.570796327) < .0001 then grfnud := grfnud union
            {perspectiva(nudoiv(Nud[i, 2], deltaz, esc, alphay),
            X = Nud[i, 1])}
        fi;
        if abs(j + 1.570796327) < .0001 then grfnud := grfnud union
            {perspectiva(nudodv(Nud[i, 2], deltaz, esc, alphay),
            X = Nud[i, 1])}
        fi
    od;
    j := 0;
    Esc := 2*esc;
    for i in sort([op(dir[i])]) do
        j := j + 1;
        if 0 < signoV[j] then
            if abs(i) < .0001 then grfnud := grfnud union {
                perspectiva(MflechaN(Nud[N, 1] + 2.5*Esc*esc2,
                -1.25*Esc, Esc, i, cortante[j], Esc), Y = Nud[N, 2])
                }
            fi;
            if abs(i - 3.141592654) < .0001 then grfnud := grfnud
                union {perspectiva(MflechaN(
                Nud[N, 1] - 2.5*Esc*esc2, 1.25*Esc, Esc, i,
                cortante[j], -Esc), Y = Nud[N, 2])}
            fi;
            if abs(i - 1.570796327) < .0001 then grfnud := grfnud
                union {perspectiva(MflechaN(
                Nud[N, 2] + 2.5*Esc*esc2, -1.25*Esc, Esc,
                i - 1.570796327, cortante[j], Esc), X = Nud[N, 1])}
            fi;
            if abs(i + 1.570796327) < .0001 then grfnud := grfnud
                union {perspectiva(MflechaN(
                Nud[N, 2] - 2.5*Esc*esc2, 1.25*Esc, Esc,
                i - 1.570796327, cortante[j], -Esc), X = Nud[N, 1])}
            fi
        fi;
        if signoV[j] < 0 then
            if abs(i) < .0001 then grfnud := grfnud union {
                perspectiva(mflechaN(Nud[N, 1] + 2.5*Esc*esc2,
                1.25*Esc, Esc, i + Pi, cortante[j], -Esc),
                Y = Nud[N, 2])}
            fi;
            if abs(i - 3.141592654) < .0001 then grfnud := grfnud
                union {perspectiva(mflechaN(
                Nud[N, 1] - 2.5*Esc*esc2, -1.25*Esc, Esc, i + Pi,
                cortante[j], Esc), Y = Nud[N, 2])}
            fi;
            if abs(i - 1.570796327) < .0001 then grfnud := grfnud
                union {perspectiva(mflechaN(
                Nud[N, 2] + 2.5*Esc*esc2, 1.25*Esc, Esc,
                i + 1.570796327, cortante[j], -Esc), X = Nud[N, 1])}
            fi;
            if abs(i + 1.570796327) < .0001 then grfnud := grfnud
                union {perspectiva(mflechaN(
                Nud[N, 2] - 2.5*Esc*esc2, -1.25*Esc, Esc,
                i + 1.570796327, cortante[j], Esc), X = Nud[N, 1])}
            fi
        fi
    od;
    display(grfnud)
end

