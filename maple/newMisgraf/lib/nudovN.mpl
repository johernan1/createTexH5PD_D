proc(x, y, esc, alpha, t1, iy)
local n1, T1;
    n1 := Misgraf['nudov'](x, y, esc, alpha);
    T1 := textplot([x, y + 1.0*esc + iy, t1]);
    display(n1, T1)
end

