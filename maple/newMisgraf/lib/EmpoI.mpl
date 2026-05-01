proc(x, y, esc, alpha, alpha1)
local poly1, poly3, t, n;
global MiROJO;
    Misgraf[Micolor]();
    t := [evalf(sin(alpha1)), evalf(cos(alpha1))];
    n := [t[2], -t[1]];
    poly1 := [t + n, t - n,
        t - n - t*(sin(alpha1) + cos(alpha1))/cos(alpha1),
        t + n - t*(-sin(alpha1) + cos(alpha1))/cos(alpha1)];
    poly1 := trasf(poly1, x, y, esc, alpha);
    poly3 := [[2, 0],
        t + n - t*(-sin(alpha1) + cos(alpha1))/cos(alpha1), t + n,
        t - n, t - n - t*(sin(alpha1) + cos(alpha1))/cos(alpha1),
        [-2, 0]];
    poly3 := trasf(poly3, x, y, esc, alpha);
    PLOT(POLYGONS(poly1, STYLE(PATCHNOGRID), COLOUR(MiROJO)),
        CURVES(poly3))
end

