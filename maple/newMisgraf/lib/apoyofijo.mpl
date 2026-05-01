proc(x, y, esc, alpha)
local n1, ap, T1;
    n1 := Arti(x, y, esc, alpha);
    ap := Misgraf['Apoyofijo'](x, y - .5*esc, .75*esc, 0);
    display(n1, ap)
end

