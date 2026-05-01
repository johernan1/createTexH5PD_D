proc(x, y, esc, alpha)
local f1, f2, poly1;
    poly1 := trasf([[2.7, 0]], 0, 0, esc, alpha);
    f1 := flecha(x + poly1[1, 1], y + poly1[1, 2], esc,
        alpha + 1/2*Pi);
    poly1 := trasf([[-2.7, 0]], 0, 0, esc, alpha);
    f2 := flecha(x + poly1[1, 1], y + poly1[1, 2], esc,
        alpha - 1/2*Pi);
    display(f1, f2)
end

