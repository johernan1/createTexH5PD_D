proc(x, y, esc, alpha)
local f1, f2, f3;
global MiROJO;
    Misgraf[Micolor]();
    f2 := circle(op(trasf([[0, -2]], x, y, esc, alpha)),
        .6666666667*esc);
    f1 := POLYGONS(op(f2), STYLE(PATCHNOGRID), COLOUR(MiAZUL));
    f3 := Misgraf['nudo2'](x, y, esc, alpha);
    display(f1, f2, f3)
end

