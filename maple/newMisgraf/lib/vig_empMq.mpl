proc(x, y, l, alpha, phi1, phi2, q, escM, pos)
local f1, f2, f3, Xm, XM;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    if 10 <= nargs then Xm := args[10] else Xm := 0 fi;
    if 11 <= nargs then XM := args[11] else XM := 0 fi;
    print(x, y, l, alpha, phi1, phi2, q, Xm, XM);
    f1 := vig_empq(x, y, l, alpha, phi1, phi2, q, Xm, XM);
    f2 := flechaC(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos, escM,
        alpha + Pi);
    f3 := flechaC_(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha);
    display(f1, f2, f3)
end

