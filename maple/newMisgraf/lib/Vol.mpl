proc(x, y, l, alpha, esc, L1)
local L, f2, f3, f6;
global MiROJO;
    Misgraf[Micolor]();
    L := l/esc;
    f2 := [[L1, -1], [L1, 1]];
    f2 := trasf(f2, x, y, esc, alpha);
    f3 := [[L1, 1], [L, 1], [L, -1], [L1, -1]];
    f3 := trasf(f3, x, y, esc, alpha);
    f6 := [[L1, 1], [L, 1], [L, -1], [L1, -1], [L1, 1]];
    f6 := trasf(f6, x, y, esc, alpha);
    display(CURVES(f2, COLOUR(MiROJO)),
        POLYGONS(f3, STYLE(PATCHNOGRID), COLOUR(MiROJO)), CURVES(f6))
end

