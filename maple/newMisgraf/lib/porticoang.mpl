proc(Nud, Barr, esc, alpha, delta, Defor, escA, pos, angulos)
local barr, i, Ni, Nj, L, Alpha, Alpha0, incA;
global miAZUL;
    Misgraf[Micolor]();
    _EnvMD := _EnvMD + 1;
    barr := {};
    for i to nops(Barr) do
        midebug(_EnvMD, procname, i);
        Ni := Barr[i, 1];
        Nj := Barr[i, 2];
        L := sqrt(
            (Nud[Ni, 1] + delta[Ni, 1] - Nud[Nj, 1] - delta[Nj, 1])^
            2 +
            (Nud[Ni, 2] + delta[Ni, 2] - Nud[Nj, 2] - delta[Nj, 2])^
            2);
        Alpha0 := miarctan(op(Nud[Nj] - Nud[Ni]));
        Alpha :=
            miarctan(op(Nud[Nj] + delta[Nj] - Nud[Ni] - delta[Ni]));
        incA := Alpha - Alpha0;
        barr := barr union {eval(Defor[i](op(Nud[Ni] + delta[Ni]), L,
            Alpha, alpha[Ni] - incA, alpha[Nj] - incA, 0))};
        if angulos[i, 1] <> 0 then barr := barr union {Angulo(
            alpha[Ni] - incA, op(Nud[Ni] + delta[Ni]), 6*esc*escA,
            Alpha, angulos[i, 1], pos)}
        fi;
        barr := barr union {CURVES(
            [Nud[Nj] + delta[Nj], Nud[Ni] + delta[Ni]],
            COLOUR(miAZUL))};
        if angulos[i, 2] <> 0 then barr := barr union {Angulo(
            alpha[Nj] - incA, op(Nud[Nj] + delta[Nj]), 6*esc*escA,
            Alpha + Pi, angulos[i, 2], pos)}
        fi
    od;
    display(barr)
end

