proc(x, y, l, alpha, phi, q, escM, pos, m1, m2)
local f1, f2;
    f1 := Misgraf['voli'](x, y, l, alpha, phi, q);
    if q < 0 then f2 := flechaCn(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha, m1, 2.5)
    else f2 := flechaC_n(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha, m2, -2.5)
    fi;
    display(f1, f2)
end

