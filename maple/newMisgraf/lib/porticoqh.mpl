proc(Nud, Barr, esc, q, desp, t1, ix)
local grq, i, Ni, Nj, L, Alpha;
    grq := {};
    for i to nops(Barr) do
        if q[i] <> 0 then
            Ni := Barr[i, 1];
            Nj := Barr[i, 2];
            L := Nud[Ni, 1] - Nud[Nj, 1];
            if Nud[Ni, 2] < Nud[Nj, 2] then grq := grq union {cargaN(
                op(Nud[Nj] + [0, desp]), L, q[i]*esc, 0, t1[i], ix)}
            else grq := grq union {cargaN(op(Nud[Ni] + [0, desp]),
                -L, q[i]*esc, 0, t1[i], ix)}
            fi
        fi
    od;
    display(grq)
end

