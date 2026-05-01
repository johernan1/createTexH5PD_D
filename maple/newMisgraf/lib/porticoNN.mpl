proc(Nud, Barr, esc, alpha, delta, Apoy, Nombres, desp)
local grfnud, i;
    _EnvMD := _EnvMD + 1;
    grfnud := {};
    for i to nops(Nombres) do
        midebug(_EnvMD, procname, i);
        grfnud := grfnud union {textplot([Nud[i, 1] + delta[i, 1],
            Nud[i, 2] + delta[i, 2] + 1.0*esc + desp[i], Nombres[i]])
            }
    od;
    display(grfnud, porticoN(Nud, Barr, esc, alpha, delta, Apoy))
end

