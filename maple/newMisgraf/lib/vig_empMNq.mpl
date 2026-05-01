proc(x, y, l, alpha, phi1, phi2, q, escM, pos, m1, m2)
local f1, f2, f3, Xm, XM;
    if 12 <= nargs then Xm := args[12] else Xm := 0 fi;
    if 13 <= nargs then XM := args[13] else XM := 0 fi;
    f1 := vig_empq(x, y, l, alpha, phi1, phi2, q, Xm, XM);
    f2 := flechaCn(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos, escM,
        alpha + Pi, m1, 2.5);
    f3 := flechaC_n(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha, m2, -2.5);
    display(f1, f2, f3)
end

