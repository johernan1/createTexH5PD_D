proc(i, Nud, Barr, esc, vig, escM, pos, texto)
local vg, f1, f2, f3, f4, f5, f6, Ni, Nj, v, l, alpha, x, y;
    vg := porticovig_i(i, Nud, Barr, esc, vig);
    Ni := Barr[i, 1];
    Nj := Barr[i, 2];
    v := eval(Nud[Nj] - Nud[Ni]);
    l := sqrt(
        (Nud[Ni, 1] - Nud[Nj, 1])^2 + (Nud[Ni, 2] - Nud[Nj, 2])^2);
    alpha := miarctan(op(Nud[Nj] - Nud[Ni]));
    x := Nud[Ni, 1];
    y := Nud[Ni, 2];
    f2 := {};
    f3 := {};
    f4 := {};
    f1 := {};
    if texto[1] <> "0" then f1 := flechaCn(x + l*cos(alpha)*pos,
        y + l*sin(alpha)*pos, escM, alpha + Pi, texto[1], 2.5)
    fi;
    if texto[2] <> "0" then f2 := flechaCn(
        x + l*cos(alpha)*(1 - pos), y + l*sin(alpha)*(1 - pos), escM,
        alpha, texto[2], 2.5)
    fi;
    if texto[3] <> "0" then f3 := MflechaN(
        x + l*cos(alpha)*pos - 2.5*sin(alpha)*escM,
        y + l*sin(alpha)*pos + 2.5*cos(alpha)*escM, 2*escM,
        alpha + Pi, texto[3], 0)
    fi;
    if texto[4] <> "0" then f4 := MflechaN(
        x + l*cos(alpha)*(1 - pos) + 2.5*sin(alpha)*escM,
        y + l*sin(alpha)*(1 - pos) - 2.5*cos(alpha)*escM, 2*escM,
        alpha, texto[4], 0)
    fi;
    display(vg, f1, f2, f3, f4)
end

