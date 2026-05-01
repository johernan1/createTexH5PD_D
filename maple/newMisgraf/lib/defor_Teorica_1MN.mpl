proc(x, y, l, alpha, theta1, giro2, delta, escM, pos, m1, m2)
local f1, f2;
    f1 := defor_Teorica(x, y, l, alpha, theta1, giro2, delta);
    f2 := flechaC_n(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos, escM,
        alpha + Pi, m1, -2.5);
    display(f1, f2)
end

