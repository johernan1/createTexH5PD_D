proc(x, y, esc, alpha, t1, iy)
local f1, T1;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    f1 := flecha(x, y, esc, alpha);
    T1 := textplot([op(op(trasf([[0, 2.5]], x, y + iy, esc, alpha))), t1])
        ;
    display(f1, T1)
end

