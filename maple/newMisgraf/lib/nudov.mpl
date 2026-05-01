proc(x, y, esc, alpha)
local poly1, poly3;
global MiROJO;
    Misgraf[Micolor]();
    poly1 := [[1, 1], [-1, 1], [-1, -1], [1, -1]];
    poly1 := trasf(poly1, x, y, esc, alpha);
    poly3 := [[1, -1], [1, 1], [-1, 1], [-1, -1], [1, -1]];
    poly3 := trasf(poly3, x, y, esc, alpha);
    PLOT(POLYGONS(poly1, STYLE(PATCHNOGRID), COLOUR(MiROJO)),
        CURVES(poly3))
end

