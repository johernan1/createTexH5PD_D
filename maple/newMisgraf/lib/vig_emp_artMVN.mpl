proc(x, y, l, alpha, q, escM, pos, m1, m2, V1, V2)
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    vig_empMVNiq(x, y, l, alpha, 0, 1/48*q*l^3, q, escM, pos, m1, m2,
        V1, V2)
end

