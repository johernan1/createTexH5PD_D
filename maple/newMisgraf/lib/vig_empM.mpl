proc(x, y, l, alpha, delta, escM, pos)
local f1, f2, f3;
    f1 := Misgraf['vig_emp'](x, y, l, alpha, delta);
    f2 := flechaC(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos, escM,
        alpha + Pi);
    f3 := flechaC_(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha);
    display(f1, f2, f3)
end

