proc(y, x, l, alpha, theta1, giro2, delta)
local L, poly;
global miROJO;
    Misgraf[Micolor]();
    L := cos(alpha)*l;
    poly := fdf(y, y + L*tan(alpha) + delta, -theta1 + alpha,
        -giro2 + alpha, x, L);
    plot([poly, X, X = x .. x + L, colot = COLOR(miROJO)])
end

