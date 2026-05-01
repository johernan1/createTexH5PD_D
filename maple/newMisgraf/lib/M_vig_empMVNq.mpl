proc(x, y, l, alpha, phi1, phi2, q, escM, _pos, m1, m2, V1, V2)
local f1, f2, f3, Xm, XM, pos, f4;
    if 14 <= nargs then Xm := args[14] else Xm := 0 fi;
    if 15 <= nargs then XM := args[15] else XM := 0 fi;
    pos := 2*_pos;
    f1 := M_vig_empq(x, y, l, alpha, phi1, phi2, q, Xm, XM);
    f2 := flechaCn(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos, escM,
        alpha + Pi, m1, 2.5);
    f4 := MflechaN(x + l*cos(alpha)*pos - 2.5*sin(alpha)*escM,
        y + l*sin(alpha)*pos + 2.5*cos(alpha)*escM, 2*escM,
        alpha + Pi, V1, -1.5*escM);
    display(f1, f2, f4)
end

