proc(x, y, esc, alpha)
local poly1, poly3, r, r1, ang, n, i;
global MiCELESTE;
    Misgraf[Micolor]();
    r := 3;
    r1 := 4;
    ang := 1.57;
    n := 20;
    poly1 := [[3.5, -1.5], [5, 0],
        seq([r1*cos(i*ang/n), r1*sin(i*ang/n)], i = 0 .. n + 1),
        seq([r*cos(- i*ang/n), r*sin(- i*ang/n)], i = -n - 1 .. 0),
        [2, 0], [3.5, -1.5]];
    poly1 := trasf(poly1, x, y, esc, alpha - .785);
    poly3 := trasf([[3.5, -1.5], [5, 0], [2, 0]], x, y, esc,
        alpha - .785), seq(trasf([[r*cos(i*ang/n), r*sin(i*ang/n)],
        [r*cos((i + 1)*ang/n), r*sin((i + 1)*ang/n)],
        [r1*cos((i + 1)*ang/n), r1*sin((i + 1)*ang/n)],
        [r1*cos(i*ang/n), r1*sin(i*ang/n)]], x, y, esc, alpha - .785)
        , i = 0 .. n);
    PLOT(POLYGONS(poly3, STYLE(PATCHNOGRID), COLOUR(MiCELESTE)),
        CURVES(poly1))
end

