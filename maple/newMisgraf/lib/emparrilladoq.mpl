proc(Nud, Barr, esc, q, desp, t1, ix)
local grq, i, Ni, Nj, L, Alpha;
    _EnvMD := _EnvMD + 1;
    grq := {};
    for i to nops(Barr) do
        midebug(_EnvMD, procname, i);
        if q[i] <> 0 then
            Ni := Barr[i, 1];
            Nj := Barr[i, 2];
            L := sqrt((Nud[Ni, 1] - Nud[Nj, 1])^2
                 + (Nud[Ni, 2] - Nud[Nj, 2])^2);
            Alpha := miarctan(op(Nud[Nj] - Nud[Ni]));
            if
            abs(Alpha) < .0001 or abs(Alpha - 3.141592654) < .0001
            then grq := grq union {perspectiva(cargaN(Nud[Ni, 1],
                desp, L, q[i]*esc, Alpha, t1[i], ix), Y = Nud[Ni, 2])
                }
            fi;
            if abs(Alpha + 1.570796327) < .0001 or
            abs(Alpha - 1.570796327) < .0001 then grq := grq union {
                perspectiva(
                cargaN(Nud[Ni, 2], desp, L, q[i]*esc, 0, t1[i], ix),
                X = Nud[Ni, 1])}
            fi
        fi
    od;
    display(grq)
end

