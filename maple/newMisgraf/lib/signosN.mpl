proc(x, y, esc, alpha, N1, N2, dT)
local t1, t2, poly1;
    poly1 := trasf([[3.0, 0]], 0, 0, esc, alpha);
    t1 := textplot([x + poly1[1, 1] + dT, y + poly1[1, 2], N1]);
    poly1 := trasf([[0, -3.0]], 0, 0, esc, alpha);
    t2 := textplot([x + poly1[1, 1], y + poly1[1, 2] - dT, N2]);
    display(signos(x, y, esc, alpha), t1, t2)
end

