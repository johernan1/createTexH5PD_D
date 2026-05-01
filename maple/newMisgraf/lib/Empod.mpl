proc(x, y, esc, alpha)
local poly1, poly3, poly4, poly5;
global MiROJO;
    Misgraf[Micolor]();
    poly1 := [[1, 1], [-1, 1], [-1, 0], [1, 0]];
    poly1 := trasf(poly1, x, y, esc, alpha);
    poly3 := [[2, 0], [1, 0], [1, 1], [-1, 1], [-1, 0], [-2, 0]];
    poly3 := trasf(poly3, x, y, esc, alpha);
    poly4 := [[2, -1], [-2, -1]];
    poly4 := trasf(poly4, x, y, esc, alpha);
    poly5 := [[2.5, -.5], [-2.5, -.5]];
    poly5 := trasf(poly5, x, y, esc, alpha);
    PLOT(POLYGONS(poly1, STYLE(PATCHNOGRID), COLOUR(MiROJO)),
        CURVES(poly3), CURVES(poly4), CURVES(poly5))
end

