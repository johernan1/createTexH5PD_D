proc(x, y, esc, alpha, t1, iy)
local n1, ap, T1;
    n1 := Misgraf['nudov'](x, y, esc, alpha);
    ap := Apoyodes(x, y - esc, .75*esc, 0);
    T1 := textplot([x, y + 1.0*esc + iy, t1]);
    display(n1, ap, T1)
end

