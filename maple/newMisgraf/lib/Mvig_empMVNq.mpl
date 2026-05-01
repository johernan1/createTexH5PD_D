proc(x, y, l, alpha, phi1, phi2, q, escM, _pos, m1, m2, V1, V2)
local f1, f2, f3, Xm, XM, pos, f5;
    if 14 <= nargs then Xm := args[14] else Xm := 0 fi;
    if 15 <= nargs then XM := args[15] else XM := 0 fi;
    pos := 2*_pos;
    f1 := Mvig_empq(x, y, l, alpha, phi1, phi2, q, Xm, XM);
    f3 := flechaC_n(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha, m2, -2.5);
    f5 := mflechaN(x + l*cos(alpha)*(1 - pos) - 2.5*sin(alpha)*escM,
        y + l*sin(alpha)*(1 - pos) + 2.5*cos(alpha)*escM, 2*escM,
        alpha + Pi, V2, -1.5*escM);
    display(f1, f3, f5)
end

