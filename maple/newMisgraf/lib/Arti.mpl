proc(x, y, esc, alpha)
local f1, f2, poly1, poly3;
global MiAZUL, MiROJO;
    Misgraf[Micolor]();
    poly1 := [[1, 1], [-1, 1], [-1, .5], [0, 0], [1, .5]];
    poly1 := trasf(poly1, x, y, esc, alpha);
    poly3 := [[.6, .3], [1, .5], [1, 1], [-1, 1], [-1, .5], [-.6, .3]];
    poly3 := trasf(poly3, x, y, esc, alpha);
    f2 := circle(op(trasf([[0, 0]], x, y, esc, alpha)), .6666666667*esc);
    f1 := POLYGONS(op(f2), STYLE(PATCHNOGRID), COLOUR(RGB, 1, 1, 1));
    display(f1, f2, POLYGONS(poly1, STYLE(PATCHNOGRID), COLOUR(MiROJO)),
        CURVES(poly3))
end

