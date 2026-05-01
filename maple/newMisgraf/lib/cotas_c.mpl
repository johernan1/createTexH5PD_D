proc(x, y, L, esc, alpha, l1, texto, ptexto)
local f1, f2, poly1;
    f1 := trasfd(CURVES(
        [[0, -l1], [0, l1], [0, 0], [L, 0], [L, l1], [L, -l1]]), x,
        y, esc, alpha);
    poly1 := trasf([[1/2*L, ptexto]], x, y, esc, alpha);
    f2 := textplot([poly1[1, 1], poly1[1, 2], texto]);
    display(f1, f2)
end

