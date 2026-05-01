proc(x, y, esc, alpha)
local f1, f2, f3, f4, f5, f6;
global MiROJO, MiAZUL;
    Misgraf[Micolor]();
    f2 := circle(op(trasf([[0, -2.5]], x, y, esc, alpha)),
        .4000000000*esc);
    f1 := POLYGONS(op(f2), STYLE(PATCHNOGRID), COLOUR(MiAZUL));
    f4 := circle(op(trasf([[0, -.5]], x, y, esc, alpha)),
        .4000000000*esc);
    f5 := POLYGONS(op(f4), STYLE(PATCHNOGRID), COLOUR(MiAZUL));
    f3 := [[0, 0], [0, -2.5]];
    f3 := trasf(f3, x, y, esc, alpha);
    display(f1, f2, f4, f5, CURVES(f3))
end

