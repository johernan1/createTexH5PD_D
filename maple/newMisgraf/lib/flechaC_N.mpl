proc(x, y, esc, alpha, t1, ix)
local f1, T1, xt;
    xt := 4;
    f1 := Misgraf['flechaC_'](x, y, esc, alpha);
    T1 := textplot(
        [op(op(trasf([[xt + ix, 0]], x, y, esc, alpha))), t1]);
    display(f1, T1)
end

