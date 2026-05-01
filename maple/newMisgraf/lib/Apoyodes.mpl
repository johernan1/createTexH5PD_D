proc(x, y, esc, alpha)
local f1, f2, f3, f4, f5, f6;
global MiROJO, MiAZUL;
    Misgraf[Micolor]();
    f2 := circle(op(trasf([[-1, -2.5]], x, y, esc, alpha)),
        .6666666667*esc);
    f1 := POLYGONS(op(f2), STYLE(PATCHNOGRID), COLOUR(MiAZUL));
    f4 := circle(op(trasf([[1, -2.5]], x, y, esc, alpha)),
        .6666666667*esc);
    f5 := POLYGONS(op(f4), STYLE(PATCHNOGRID), COLOUR(MiAZUL));
    f3 := [[0, 0], [-2, -2], [2, -2]];
    f3 := trasf(f3, x, y, esc, alpha);
    f6 := [[0, 0], [-2, -2], [2, -2], [0, 0]];
    f6 := trasf(f6, x, y, esc, alpha);
    display(f1, f2, f4, f5,
        POLYGONS(f3, STYLE(PATCHNOGRID), COLOUR(MiROJO)), CURVES(f6))
end

