proc(x, y, esc, alpha)
local f3, f6;
global MiROJO;
    Misgraf[Micolor]();
    f3 := [[0, 0], [-2, -2], [2, -2]];
    f3 := trasf(f3, x, y, esc, alpha);
    f6 := [[0, 0], [-2, -2], [2, -2], [0, 0]];
    f6 := trasf(f6, x, y, esc, alpha);
    display(POLYGONS(f3, STYLE(PATCHNOGRID), COLOUR(MiROJO)),
        CURVES(f6))
end

