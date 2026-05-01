proc(x, y, l, alpha, theta1, giro2, delta, escM, pos, m1, m2, V1, V2)
local f1, f2, f3, Xm, XM, f4, f5;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    if 14 <= nargs then Xm := args[14] else Xm := 0 fi;
    if 15 <= nargs then XM := args[15] else XM := 0 fi;
    f1 := Defor_Teorica(x, y, l, alpha, theta1, giro2, delta, Xm, XM);
    f2 := flechaCn(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos, escM,
        alpha + Pi, m1, 2.5);
    f3 := flechaCn(x + l*cos(alpha)*(1 - pos), y + l*sin(alpha)*(1 - pos),
        escM, alpha, m2, 2.5);
    f4 := MflechaN(x + 1.15*l*cos(alpha)*pos - 2.5*sin(alpha)*escM,
        y + 1.15*l*sin(alpha)*pos + 2.5*cos(alpha)*escM, 2*escM,
        alpha + Pi, V1, -1.5*escM);
    f5 := MflechaN(x + l*cos(alpha)*(1 - 1.15*pos) + 2.5*sin(alpha)*escM,
        y + l*sin(alpha)*(1 - 1.15*pos) - 2.5*cos(alpha)*escM, 2*escM,
        alpha, V2, 1.5*escM);
    display(f1, f2, f3, f4, f5)
end

