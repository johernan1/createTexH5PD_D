proc(x, y, esc, alpha)
local f1, f2, f3, poly1;
    poly1 := trasf([[0, -2.5]], 0, 0, esc, alpha);
    f1 := flecha(x + poly1[1, 1], y + poly1[1, 2], esc, alpha);
    poly1 := trasf([[2.5, 0]], 0, 0, esc, alpha);
    f2 := flecha(x + poly1[1, 1], y + poly1[1, 2], esc,
        alpha + 1/2*Pi);
    f3 := flechaC_(x, y, .5*esc, alpha + 3/4*Pi);
    display(f1, f2, f3)
end

