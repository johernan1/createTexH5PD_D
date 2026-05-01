proc(Nud, Barr, esc, q, desp, t1, ix)
local grq, v, vp, i, Ni, Nj, L, Alpha;
    grq := {};
    for i to nops(Barr) do
        if q[i] <> 0 then
            Ni := Barr[i, 1];
            Nj := Barr[i, 2];
            v := eval(Nud[Nj] - Nud[Ni]);
            L := sqrt((Nud[Ni, 1] - Nud[Nj, 1])^2
                 + (Nud[Ni, 2] - Nud[Nj, 2])^2);
            vp := ([-v[2], v[1]])/L;
            Alpha := miarctan(op(Nud[Nj] - Nud[Ni]));
            if 2 < nops(q[i]) then Alpha := Alpha + q[i, 3] fi;
            grq := grq union {flechaN(
                op(Nud[Ni] + q[i, 2]*v + desp[i]*vp), q[i, 1], Alpha,
                t1[i], ix)}
        fi
    od;
    display(grq)
end

