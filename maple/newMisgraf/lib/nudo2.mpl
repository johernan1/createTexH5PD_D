proc(x, y, esc, alpha)
local poly1, poly2, poly3;
global MiROJO;
    Misgraf[Micolor]();
    poly1 := [[1, 1], [-2, 1], [-2, -1], [1, -1]];
    poly1 := trasf(poly1, x, y, esc, alpha);
    poly2 := [[-1, -1], [-1, -2], [1, -2], [1, -1]];
    poly2 := trasf(poly2, x, y, esc, alpha);
    poly3 := [[1, 1], [-2, 1], [-2, -1], [-1, -1], [-1, -2], [1, -2],
        [1, 1]];
    poly3 := trasf(poly3, x, y, esc, alpha);
    PLOT(POLYGONS(poly1, poly2, STYLE(PATCHNOGRID), COLOUR(MiROJO)),
        CURVES(poly3))
end

