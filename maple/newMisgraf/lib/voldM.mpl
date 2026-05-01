proc(x, y, l, alpha, phi, q, escM, pos)
local f1, f2;
    f1 := Misgraf['vold'](x, y, l, alpha, phi, q);
    if 0 < q then f2 := flechaC(x + l*cos(alpha)*pos,
        y + l*sin(alpha)*pos, escM, alpha + Pi)
    else f2 := flechaC_(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos,
        escM, alpha + Pi)
    fi;
    display(f1, f2)
end

