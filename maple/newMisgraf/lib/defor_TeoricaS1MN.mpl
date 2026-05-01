proc(y, x, l, alpha, theta1, giro2, delta, escM, pos, m1, m2)
local f1, f2;
    f1 := Misgraf['defor_TeoricaS'](y, x, l, alpha, theta1, giro2,
        delta);
    f2 := flechaCn(y + l*sin(alpha)*pos, x + l*cos(alpha)*pos, escM,
        alpha - 1/2*Pi, m1, 2.5);
    display(f1, f2)
end

