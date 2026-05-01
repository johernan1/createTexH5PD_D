proc(Nud, Barr, esc, Defor, q)
local barr, i, Ni, Nj, L, Alpha, Alpha0;
    _EnvMD := _EnvMD + 1;
    barr := {};
    for i to nops(Barr) do
        midebug(_EnvMD, procname, i);
        Ni := Barr[i, 1];
        Nj := Barr[i, 2];
        L := sqrt((Nud[Ni, 1] - Nud[Nj, 1])^2
             + (Nud[Ni, 2] - Nud[Nj, 2])^2);
        Alpha0 := miarctan(op(Nud[Nj] - Nud[Ni]));
        Alpha := 0;
        if abs(Alpha0) < .0001 then barr := barr union {eval(
            perspectiva(eval(Defor[i](Nud[Ni, 1], 0, L, Alpha,
            op(q[i]), Y = Nud[Ni, 2])), Y = Nud[Ni, 2]))}
        else barr := barr union {eval(perspectiva(eval(Defor[i](
            Nud[Ni, 2], 0, L, Alpha, op(q[i]), X = Nud[Ni, 1])),
            X = Nud[Ni, 1]))}
        fi
    od;
    display(barr)
end

