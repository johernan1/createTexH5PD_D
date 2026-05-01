proc(X, y, L, alpha, phi, q)
global miROJO;
    Misgraf[Micolor]();
    trasfd(plot(- 1/24*q*(L - x)^4 - 1/6*q*L*(L - x)^3
         - 1/4*q*L^2*(L - x)^2 - phi*(L - x), x = 0 .. L,
        color = COLOR(miROJO)), X, y, 1, alpha)
end

