proc(x, y, l, alpha, theta1, giro2, delta, escM, pos, m1, m2)
local f1, f2, Xm, XM;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    if 12 <= nargs then Xm := args[12] else Xm := 0 fi;
    if 13 <= nargs then XM := args[13] else XM := 0 fi;
    f1 :=
        Defor_Teorica(x, y, l, alpha, theta1, giro2, delta, Xm, XM);
    f2 := flechaC_n(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha, m1, -2.5);
    display(f1, f2)
end

