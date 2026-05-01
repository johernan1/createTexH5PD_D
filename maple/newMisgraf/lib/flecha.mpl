proc(x, y, esc)
local poly1, poly2, poly3, alpha;
global MiVERDE, MiCELESTE;
    Misgraf[Micolor]();
    MiVERDE := MiCELESTE;
    if nargs = 4 then alpha := args[4] else alpha := 0 fi;
    poly1 := [[0, 0], [1, 1], [-1, 1]];
    poly1 := Misgraf['trasf'](poly1, x, y, esc, alpha);
    poly2 := [[.3, 1], [.3, 2.5], [-.3, 2.5], [-.3, 1]];
    poly2 := Misgraf['trasf'](poly2, x, y, esc, alpha);
    poly3 := [[0, 0], [1, 1], [.3, 1], [.3, 2.5], [-.3, 2.5],
        [-.3, 1], [-1, 1], [0, 0]];
    poly3 := Misgraf['trasf'](poly3, x, y, esc, alpha);
    PLOT(
        POLYGONS(poly1, poly2, STYLE(PATCHNOGRID), COLOUR(MiVERDE)),
        CURVES(poly3))
end

