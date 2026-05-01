proc(x, y, l, alpha, delta, escM, pos, m1, m2)
local f1, f2, f3;
    f1 := Misgraf['vig_emp'](x, y, l, alpha, delta);
    f2 := flechaCn(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos, escM,
        alpha + Pi, m1, 2.5);
    f3 := flechaC_n(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha, m2, -2.5);
    display(f1, f2, f3)
end

