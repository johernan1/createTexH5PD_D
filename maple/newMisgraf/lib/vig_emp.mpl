proc(x, y, l, alpha, delta)
local L, t1, t2;
    L := cos(alpha)*l;
    t1 := defor_Teorica(x, y, 1/2*l, alpha, 0, 0, L*delta);
    t2 := defor_Teorica(x + 1/2*L, y + 1/2*L*tan(alpha) + L*delta,
        1/2*l, alpha, 0, 0, - L*delta);
    display(t1, t2)
end

