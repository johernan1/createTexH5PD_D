proc(X, y, _L, alpha, phi1, phi2, q)
local t2, t5, t15, t18, Xm, XM, L, x;
global miROJO;
    L := 2*_L;
    x := _x;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    Misgraf[Micolor]();
    t2 := x^2;
    t5 := L^2;
    t15 := t5^2;
    t18 := x*L;
    if 8 <= nargs then Xm := args[8] else Xm := 0 fi;
    if 9 <= nargs then XM := args[9] else XM := 0 fi;
    trasfd(plot(- 1/24*x*(q*t2*x*t5 - 2*t2*q*t5*L - 24*t2*phi1
         - 24*t2*phi2 + x*t15*q + 48*t18*phi1 + 24*t18*phi2
         - 24*phi1*t5)/t5, _x = Xm .. .5*L - XM,
        color = COLOR(miROJO)), X, y, 1, alpha)
end

