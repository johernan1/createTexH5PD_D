proc(x, y, L, esc, alpha, l1, texto, ptexto)
local f1, f2, poly1;
    poly1 := trasf([[1/2*L, ptexto]], x, y, esc, alpha);
    f2 := textplot([poly1[1, 1], poly1[1, 2], texto]);
    display(f2)
end

