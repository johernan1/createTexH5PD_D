proc(Nud, Barr, esc, alpha, delta, Apoy)
local i, dir, grfnud;
    _EnvMD := _EnvMD + 1;
    grfnud := {};
    for i to nops(Nud) do dir[i] := {} od;
    for i to nops(Barr) do
        dir[Barr[i, 1]] :=
            {miarctan(op(Nud[Barr[i, 2]] - Nud[Barr[i, 1]]))} union
            dir[Barr[i, 1]];
        dir[Barr[i, 2]] :=
            {miarctan(op(Nud[Barr[i, 1]] - Nud[Barr[i, 2]]))} union
            dir[Barr[i, 2]]
    od;
    for i to nops(Nud) do
        midebug(_EnvMD, procname, i);
        if nops(dir[i]) = 1 then
            if nops(Apoy[i]) = 2 then grfnud := grfnud union {eval(
                Apoy[i, 1](op(Nud[i] + delta[i]), esc,
                alpha[i] + Apoy[i, 2]))}
            fi
        fi;
        if nops(dir[i]) = 2 then grfnud := grfnud union {nudo2G(
            op(sort([op(dir[i])])), op(Nud[i] + delta[i]), esc,
            alpha[i])}
        fi;
        if nops(dir[i]) = 3 then grfnud := grfnud union {nudo3G(
            op(sort([op(dir[i])])), op(Nud[i] + delta[i]), esc,
            alpha[i])}
        fi;
        if nops(dir[i]) = 4 then grfnud := grfnud union {nudo4G(
            op(sort([op(dir[i])])), op(Nud[i] + delta[i]), esc,
            alpha[i])}
        fi
    od;
    display(grfnud)
end

