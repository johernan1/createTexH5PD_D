proc(x, y, l, alpha, theta1, giro2, delta, escM, pos)
local f1, f2, f3, Xm, XM;
    if 10 <= nargs then Xm := args[10] else Xm := 0 fi;
    if 11 <= nargs then XM := args[11] else XM := 0 fi;
    f1 :=
        Defor_Teorica(x, y, l, alpha, theta1, giro2, delta, Xm, XM);
    f2 := flechaC(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos, escM,
        alpha + Pi);
    f3 := flechaC(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha);
    display(f1, f2, f3)
end

