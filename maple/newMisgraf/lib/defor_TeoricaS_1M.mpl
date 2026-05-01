proc(y, x, l, alpha, theta1, giro2, delta, escM, pos)
local f1, f2;
    f1 := Misgraf['defor_TeoricaS'](y, x, l, alpha, theta1, giro2,
        delta);
    f2 := flechaC_(y + l*sin(alpha)*pos, x + l*cos(alpha)*pos, escM,
        alpha - 1/2*Pi);
    display(f1, f2)
end

