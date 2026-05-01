proc(x, y, l, alpha, phi1, phi2, q, escM, pos)
local f1, f2, f3;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    f1 := vig_empq(x, y, l, alpha, phi1, phi2, q);
    f3 := flechaC_(x + l*cos(alpha)*(1 - pos),
        y + l*sin(alpha)*(1 - pos), escM, alpha);
    display(f1, f3)
end

