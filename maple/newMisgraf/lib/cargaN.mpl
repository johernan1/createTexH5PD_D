proc(x, y, L, esc, alpha, t1, ix)
local f1, T1, xt;
    xt := 4;
    f1 := Misgraf['carga'](x, y, L, esc, alpha);
    T1 := textplot(
        [op(op(trasf([[1/2*L, ix + esc]], x, y, 1, alpha))), t1]);
    display(f1, T1)
end

