proc(Nud, Barr, esc, N, m, signo)
local i, j, dir, grfnud, esc2;
    if 7 <= nargs then esc2 := args[9] else esc2 := 1 fi;
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
    i := N;
    if nops(dir[i]) = 1 then print(nops(dir[i])) fi;
    if nops(dir[i]) = 2 then grfnud := grfnud union
        {nudo2G(op(sort([op(dir[i])])), op(Nud[i]), esc, 0)}
    fi;
    if nops(dir[i]) = 3 then grfnud := grfnud union
        {nudo3G(op(sort([op(dir[i])])), op(Nud[i]), esc, 0)}
    fi;
    if nops(dir[i]) = 4 then grfnud := grfnud union
        {nudo4G(op(sort([op(dir[i])])), op(Nud[i]), esc, 0)}
    fi;
    j := 0;
    for i in sort([op(dir[i])]) do
        j := j + 1;
        if signo[j] < 0 then grfnud := grfnud union {flechaC_N(
            op(Nud[N] + 2.5*esc2*esc*[cos(i), sin(i)]), esc, i, m[j],
            1)}
        fi;
        if 0 < signo[j] then grfnud := grfnud union {flechaCN(
            op(Nud[N] + 2.5*esc2*esc*[cos(i), sin(i)]), esc, i, m[j],
            1)}
        fi
    od;
    display(grfnud)
end

