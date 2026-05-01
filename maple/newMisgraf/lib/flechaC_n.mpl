proc(x, y, esc, alpha, t1, ix)
local f1, T1, xt;
    xt := 3.5;
    f1 := Misgraf['flechaC_'](x, y, esc, alpha);
    T1 := textplot(
        [op(op(trasf([[xt, ix]], x, y, esc, alpha - 1/4*Pi))), t1]);
    display(f1, T1)
end

