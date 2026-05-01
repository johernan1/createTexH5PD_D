proc(x, y, l, alpha, q, escM, pos, m1, m2)
local Xm, XM;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    if 10 <= nargs then Xm := args[10] else Xm := 0 fi;
    if 11 <= nargs then XM := args[11] else XM := 0 fi;
    vig_empMNdq(x, y, l, alpha, - 1/48*q*l^3, 0, q, escM, pos, m1,
        m2, Xm, XM)
end

