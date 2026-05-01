proc(x, y, L, esc, alpha, l1)
local f1, f2, poly1;
    f1 := trasfd(CURVES([[0, 0], [L, 0]]), x, y, esc, alpha);
    f2 := trasf([[0, -l1], [0, 0], [L, 0], [L, -l1], [0, -l1]], x, y,
        esc, alpha);
    f2 := POLYGONS(f2, STYLE(PATCHNOGRID), COLOUR(MiGRIS));
    display(f1, f2)
end

