proc(x, y, esc, alpha)
local n1, ap, T1;
    n1 := nudoiv(x, y, esc, alpha);
    ap := Biela(x + sin(alpha)*esc, y - cos(alpha)*esc, .75*esc, 0),
        Biela(x + sin(alpha)*esc, y, .75*esc, - 1/2*Pi);
    display(n1, ap)
end

