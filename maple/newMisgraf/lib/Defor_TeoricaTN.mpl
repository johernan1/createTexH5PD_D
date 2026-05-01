proc(x, y, l, alpha, theta1, giro2, delta, escM, pos, m1, m2)
local f1, f2, f3, Args, Xm, XM;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    Args := select(type, [args], equation);
    if 12 <= nargs then Xm := args[12] else Xm := 0 fi;
    if 13 <= nargs then XM := args[13] else XM := 0 fi;
    f1 :=
        Defor_Teorica(x, y, l, alpha, theta1, giro2, delta, Xm, XM);
    f2 := torsorPerspnN(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos,
        escM, 0, m1, 0, op(Args));
    f3 := torsorPerspN(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, 0, m2, 0, op(Args));
    display(f1, f2, f3)
end

