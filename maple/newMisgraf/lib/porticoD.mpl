proc(Nud, Barr, esc, EscM, funcion, diagramas)
local barr, i, Ni, Nj, L, Alpha, Alpha0, incA;
    barr := {};
    for i to nops(Barr) do
        Ni := Barr[i, 1];
        Nj := Barr[i, 2];
        L := sqrt((Nud[Ni, 1] - Nud[Nj, 1])^2
             + (Nud[Ni, 2] - Nud[Nj, 2])^2);
        Alpha := miarctan(op(Nud[Nj] - Nud[Ni]));
        barr := barr union {funcion(diagramas[i], 0, L,
            op(esc*Nud[Ni]), esc, Alpha, EscM)}
    od;
    display(barr)
end

