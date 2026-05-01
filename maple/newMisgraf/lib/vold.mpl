proc(X, y, L, alpha, phi, q)
global miROJO;
    Misgraf[Micolor]();
    trasfd(plot(- 1/24*q*x^4 - 1/6*q*L*x^3 - 1/4*q*L^2*x^2 + phi*x,
        x = 0 .. L, color = COLOR(miROJO)), X, y, 1, alpha)
end

