proc(x, y, l, alpha, esc, L1, L2)
local L, f1, f2, f3, f4, f5, f6;
global MiROJO;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    L := l/esc;
    f1 := [[L - .55*l/esc, -2], [L - .55*l/esc, -.5],
        [L - .52*l/esc, -.5], [L - .57*l/esc, .5],
        [L - .55*l/esc, .5], [L - .55*l/esc, 2]];
    f2 := [[.55*l/esc, -2], [.55*l/esc, -.5], [.57*l/esc, -.5],
        [.52*l/esc, .5], [.55*l/esc, .5], [.55*l/esc, 2]];
    f1 := trasf(f1, x, y, esc, alpha);
    f2 := trasf(f2, x, y, esc, alpha);
    display(CURVES(f1), CURVES(f2),
        Viga(x, y, l, alpha, esc, L1, .55*l/esc),
        Viga(x, y, l, alpha, esc, .55*l/esc, L2))
end

