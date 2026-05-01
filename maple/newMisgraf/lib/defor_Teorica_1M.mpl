proc(x, y, l, alpha, theta1, giro2, delta, escM, pos)
local f1, f2;
    f1 := defor_Teorica(x, y, l, alpha, theta1, giro2, delta);
    f2 := flechaC_(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos, escM,
        alpha + Pi);
    display(f1, f2)
end

