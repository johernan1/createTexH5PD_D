proc(x, y, l, alpha, phi1, phi2, q, escM, pos, m1, m2, V1, V2, N1, N2)
local f1, f2, f3, f4, f5, f6, f7, Xm, XM, signoN;
    if 16 <= nargs then Xm := args[16] else Xm := 0 fi;
    if 17 <= nargs then XM := args[17] else XM := 0 fi;
    if 18 <= nargs then signoN := args[18] else signoN := 1 fi;
    f1 := vig_empq(x, y, l, alpha, phi1, phi2, q, Xm, XM);
    f2 := flechaCn(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos, escM,
        alpha + Pi, m1, 2.5);
    f3 := flechaC_n(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha, m2, -2.5);
    f4 := MflechaN(x + l*cos(alpha)*pos - 2.5*sin(alpha)*escM,
        y + l*sin(alpha)*pos + 2.5*cos(alpha)*escM, 2*escM,
        alpha + Pi, V1, 2.5*escM);
    f5 := mflechaN(x + l*cos(alpha)*(1 - pos) - 2.5*sin(alpha)*escM,
        y + l*sin(alpha)*(1 - pos) + 2.5*cos(alpha)*escM, 2*escM,
        alpha + Pi, V2, -2.5*escM);
    if signoN <> -1 then
        f6 := flechaN(x + (l*pos + 5*escM)*cos(alpha),
            y + (l*pos + 5*escM)*sin(alpha), 2*escM, alpha + 1/2*Pi,
            N1, 2.5*escM);
        f7 := flechaN(x + l*cos(alpha)*(1 - pos),
            y + l*sin(alpha)*(1 - pos), 2*escM, alpha + 1/2*Pi, N2,
            -2.5*escM)
    else
        f6 := flechaN(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos,
            2*escM, alpha - 1/2*Pi, N1, 2.5*escM);
        f7 := flechaN(x + (l*(1 - pos) - 5*escM)*cos(alpha),
            y + (l*(1 - pos) - 5*escM)*sin(alpha), 2*escM,
            alpha - 1/2*Pi, N2, -2.5*escM)
    fi;
    display(f1, f2, f3, f4, f5, f6, f7)
end

