proc(x, y, esc, alpha)
local f3, ap;
    f3 := [[.95, 1], [.95, -1]];
    f3 := CURVES(trasf(f3, x, y, esc, alpha));
    ap := Biela(x - .1*esc + sin(alpha)*esc, y - .2*esc, .65*esc, 3/4*Pi),
        Biela(x - .1*esc + sin(alpha)*esc, y + .2*esc, .65*esc, 1/4*Pi);
    display(ap, f3)
end

