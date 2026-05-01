proc(x, y, esc, alpha)
local poly1, poly3, poly4, poly5, alpha1;
global MiROJO;
    Misgraf[Micolor]();
    alpha1 := 1/2*Pi*sign(evalf(alpha));
    poly5 := [[2, 0], [1/evalf(cos(alpha - alpha1)), 0],
        [- 1/evalf(cos(alpha - alpha1)), 0], [-2, 0]];
    poly5 := trasf(poly5, x, y, esc, alpha1);
    poly1 := [[1, 1], [-1, 1], [-1, 0], [1, 0]];
    poly1 := trasf(poly1, x, y, esc, alpha);
    poly1 := [poly1[1], poly1[2], poly5[3], poly5[2]];
    poly3 := [[2, 0], [1, 0], [1, 1], [-1, 1], [-1, 0], [-2, 0]];
    poly3 := trasf(poly3, x, y, esc, alpha);
    poly3 :=
        [poly5[1], poly5[2], poly3[3], poly3[4], poly5[3], poly5[4]]
        ;
    poly4 := [[2, -1], [-2, -1]];
    poly4 := trasf(poly4, x, y, esc, alpha1);
    poly5 := [[2.5, -.5], [-2.5, -.5]];
    poly5 := trasf(poly5, x, y, esc, alpha1);
    PLOT(POLYGONS(poly1, STYLE(PATCHNOGRID), COLOUR(MiROJO)),
        CURVES(poly3), CURVES(poly4), CURVES(poly5))
end

