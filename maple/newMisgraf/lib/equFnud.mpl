proc(Nud, Barr, esc, N, cortante, signoV, axil, signoN)
local i, j, dir, grfnud, Esc, esc2;
    if 9 <= nargs then esc2 := args[9] else esc2 := 1 fi;
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
    if nops(dir[i]) = 1 then
        if 10 <= nargs then grfnud := grfnud union {eval(
            args[10, 1](op(Nud[i]), esc, dir[i][1] + args[10, 2]))}
        fi
    fi;
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
    Esc := 2*esc;
    for i in sort([op(dir[i])]) do
        j := j + 1;
        if signoN[j] < 0 then grfnud := grfnud union {flechaN(
            op(Nud[N] + (2.5*Esc*esc2 + Esc)*[cos(i), sin(i)]), Esc,
            i - 1/2*Pi, axil[j], Esc)}
        fi;
        if 0 < signoN[j] then grfnud := grfnud union {flechaN(
            op(Nud[N] + (2.5*Esc*esc2 + 3.5*Esc)*[cos(i), sin(i)]),
            Esc, i + 1/2*Pi, axil[j], Esc)}
        fi;
        if 0 < signoV[j] then grfnud := grfnud union {MflechaN(op(
            Nud[N] + 2.5*Esc*esc2*[cos(i), sin(i)]
             - 1.25*Esc*[-sin(i), cos(i)]), Esc, i, cortante[j], Esc)
            }
        fi;
        if signoV[j] < 0 then grfnud := grfnud union {mflechaN(op(
            Nud[N] + 2.5*Esc*esc2*[cos(i), sin(i)]
             + 1.25*Esc*[-sin(i), cos(i)]), Esc, i + Pi, cortante[j],
            Esc)}
        fi
    od;
    display(grfnud)
end

