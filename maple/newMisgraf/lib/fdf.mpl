proc(v1, v2, t1, t2, x0, L)
local x, N1, N2, N3, N4, _X;
    x := _X - x0;
    N1 := 1 - 3*x^2/L^2 + 2*x^3/L^3;
    N2 := 3*x^2/L^2 - 2*x^3/L^3;
    N3 := L*(x/L - 2*x^2/L^2 + x^3/L^3);
    N4 := L*(- x^2/L^2 + x^3/L^3);
    N1*v1 + N2*v2 + N3*t1 + N4*t2
end

