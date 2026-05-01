proc(x, y, l, alpha, phi, q, escM, pos)
local f1, f2;
    f1 := Misgraf['voli'](x, y, l, alpha, phi, q);
    if q < 0 then f2 := flechaC(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha)
    else f2 := flechaC_(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha)
    fi;
    display(f1, f2)
end

