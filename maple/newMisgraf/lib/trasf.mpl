proc(poly, x, y, esc, Alpha)
local t1, t2, t5, alpha, i;
    alpha := evalf(Alpha);
    t1 := cos(alpha);
    t2 := sin(alpha);
    t5 := seq([esc*poly[i, 1]*t1 - esc*poly[i, 2]*t2 + x,
        esc*poly[i, 1]*t2 + esc*poly[i, 2]*t1 + y],
        i = 1 .. nops(poly));
    [t5]
end

