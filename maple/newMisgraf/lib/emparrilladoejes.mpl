proc(Nud, Barr, esc)
local barr, i, Ni, Nj, L, Alpha, vig_, desp;
    _EnvMD := _EnvMD + 1;
    if 4 <= nargs then desp := args[4]
    else desp := [seq([0, 0], i = 1 .. nops(Nud))]
    fi;
    barr := {};
    for i to nops(Barr) do
        midebug(_EnvMD, procname, i);
        Ni := Barr[i, 1];
        Nj := Barr[i, 2];
        L := sqrt(
            (Nud[Ni, 1] - Nud[Nj, 1])^2 + (Nud[Ni, 2] - Nud[Nj, 2])^2);
        Alpha := miarctan(op(Nud[Nj] - Nud[Ni]));
        vig_ := vig[i];
        if vig[i] = 0 then vig_ := viga11 fi;
        if abs(Alpha) < .0001 then barr := barr union {perspectiva(display(
            CURVES([[Nud[Ni, 1], -desp[Ni, 1]], [Nud[Ni, 1], 0],
            [Nud[Ni, 1] + L, 0], [Nud[Ni, 1] + L, -desp[Nj, 1]]])),
            Y = Nud[Ni, 2])}
        else barr := barr union {perspectiva(display(CURVES([
            [Nud[Ni, 2], -desp[Ni, 1]], [Nud[Ni, 2], 0],
            [Nud[Ni, 2] + L, 0], [Nud[Ni, 2] + L, -desp[Nj, 1]]])),
            X = Nud[Ni, 1])}
        fi
    od;
    display(barr)
end

