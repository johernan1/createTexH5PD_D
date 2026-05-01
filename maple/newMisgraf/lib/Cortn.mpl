proc(x, y, esc, alpha)
local f1, f2, poly1;
    poly1 := trasf([[-.2, -1.25]], 0, 0, esc, alpha);
    f1 := mflecha(x + poly1[1, 1], y + poly1[1, 2], esc, alpha);
    poly1 := trasf([[.2, 1.25]], 0, 0, esc, alpha);
    f2 := mflecha(x + poly1[1, 1], y + poly1[1, 2], esc, alpha + Pi)
        ;
    display(f1, f2)
end

