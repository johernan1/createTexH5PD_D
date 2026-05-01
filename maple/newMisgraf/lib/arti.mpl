proc(x, y, esc, alpha)
local f1, f2;
global MiCELESTE;
    Misgraf[Micolor]();
    f2 := circle(op(trasf([[0, 0]], x, y, esc, alpha)),
        .6666666667*esc);
    f1 := POLYGONS(op(f2), STYLE(PATCHNOGRID), COLOUR(RGB, 1, 1, 1))
        ;
    display(f1, f2)
end

