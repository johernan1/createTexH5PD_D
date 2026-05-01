proc(poly, x, y, esc, Alpha)
local t1, t2, alpha, f;
    alpha := evalf(Alpha);
    t1 := cos(alpha);
    t2 := sin(alpha);
    f := transform(
        (u, v) -> [esc*u*t1 - esc*v*t2 + x, esc*u*t2 + esc*v*t1 + y])
        ;
    f(poly)
end

