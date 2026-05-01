proc(Nud, Barr, esc, alpha, delta)
local barr, i, Ni, Nj, L, Alpha, Alpha0, incA;
    barr := {};
    for i to nops(Barr) do
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
        barr := barr union {Defor_Teorica(op(Nud[Ni] + delta[Ni]), L,
            Alpha, alpha[Ni] - incA, alpha[Nj] - incA, 0)}
    od;
    display(barr)
end

