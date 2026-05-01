proc(Nud, Barr, esc, vig)
local barr, i, Ni, Nj, L, Alpha;
    _EnvMD := _EnvMD + 1;
    barr := {};
    for i to nops(Barr) do
        midebug(_EnvMD, procname, i);
        Ni := Barr[i, 1];
        Nj := Barr[i, 2];
        L := sqrt((Nud[Ni, 1] - Nud[Nj, 1])^2
             + (Nud[Ni, 2] - Nud[Nj, 2])^2);
        Alpha := miarctan(op(Nud[Nj] - Nud[Ni]));
        if vig[i] = 0 then barr :=
            barr union {eval(viga22(op(Nud[Ni]), L, Alpha, esc))}
        else barr :=
            barr union {eval(vig[i](op(Nud[Ni]), L, Alpha, esc))}
        fi
    od;
    display(barr)
end

