proc(x, y, l, alpha, esc, L1, L2)
local L, f1, f2, f3, f4, f5, f6;
global MiROJO;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    Misgraf[Micolor()];
    L := l/esc;
    f1 := [[L - L2, -1], [L - L2, 1]];
    f1 := trasf(f1, x, y, esc, alpha);
    f2 := [[L1, -1], [L1, 1]];
    f2 := trasf(f2, x, y, esc, alpha);
    f4 := [[L1, 1], [L - L2, 1]];
    f4 := trasf(f4, x, y, esc, alpha);
    f5 := [[L - L2, -1], [L1, -1]];
    f5 := trasf(f5, x, y, esc, alpha);
    f3 := [[L1, 1], [L - L2, 1], [L - L2, -1], [L1, -1]];
    f3 := trasf(f3, x, y, esc, alpha);
    f6 := [[L1, 1], [L - L2, 1], [L - L2, -1], [L1, -1], [L1, 1]];
    f6 := trasf(f6, x, y, esc, alpha);
    display(CURVES(f4), CURVES(f5), CURVES(f1, COLOUR(MiROJO)),
        CURVES(f2, COLOUR(MiROJO)),
        POLYGONS(f3, STYLE(PATCHNOGRID), COLOUR(MiROJO)), CURVES(f6))
end

