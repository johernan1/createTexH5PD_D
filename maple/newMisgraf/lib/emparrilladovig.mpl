proc(Nud, Barr, esc, vig)
local barr, i, Ni, Nj, L, Alpha, vig_;
    _EnvMD := _EnvMD + 1;
    barr := {};
    for i to nops(Barr) do
        midebug(_EnvMD, procname, i);
        Ni := Barr[i, 1];
        Nj := Barr[i, 2];
        L := sqrt((Nud[Ni, 1] - Nud[Nj, 1])^2
             + (Nud[Ni, 2] - Nud[Nj, 2])^2);
        Alpha := miarctan(op(Nud[Nj] - Nud[Ni]));
        vig_ := vig[i];
        if vig[i] = 0 then vig_ := viga11 fi;
        if abs(Alpha) < .0001 then barr := barr union {perspectiva(
            eval(vig_(Nud[Ni, 1], 0, L, Alpha, esc)), Y = Nud[Ni, 2])
            }
        else barr := barr union {perspectiva(
            eval(vig_(Nud[Ni, 2], 0, L, 0, esc)), X = Nud[Ni, 1])}
        fi
    od;
    display(barr)
end

