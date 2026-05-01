proc(i, Nud, Barr, esc, vig)
local barr, Ni, Nj, L, Alpha;
    barr := {};
    Ni := Barr[i, 1];
    Nj := Barr[i, 2];
    L := sqrt(
        (Nud[Ni, 1] - Nud[Nj, 1])^2 + (Nud[Ni, 2] - Nud[Nj, 2])^2);
    Alpha := miarctan(op(Nud[Nj] - Nud[Ni]));
    if vig = 0 then
        barr := barr union {viga22(op(Nud[Ni]), L, Alpha, esc)}
    else barr := barr union {vig(op(Nud[Ni]), L, Alpha, esc)}
    fi;
    display(barr)
end

