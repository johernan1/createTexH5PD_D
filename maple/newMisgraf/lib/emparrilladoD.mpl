proc(Nud, Barr, esc, EscM, funcion, diagramas)
local barr, i, Ni, Nj, L, Alpha, Alpha0, incA;
    _EnvMD := _EnvMD + 1;
    barr := {};
    for i to nops(Barr) do
        midebug(_EnvMD, procname, i);
        Ni := Barr[i, 1];
        Nj := Barr[i, 2];
        L := sqrt((Nud[Ni, 1] - Nud[Nj, 1])^2
             + (Nud[Ni, 2] - Nud[Nj, 2])^2);
        Alpha := miarctan(op(Nud[Nj] - Nud[Ni]));
        if abs(Alpha) < .0001 then barr := barr union {perspectiva(
            eval(funcion(diagramas[i], 0, L, esc*Nud[Ni, 1], 0, esc,
            Alpha, EscM)), Y = esc*Nud[Ni, 2])}
        else barr := barr union {perspectiva(eval(funcion(
            diagramas[i], 0, L, esc*Nud[Ni, 2], 0, esc, 0, EscM)),
            X = esc*Nud[Ni, 1])}
        fi
    od;
    display(barr)
end

