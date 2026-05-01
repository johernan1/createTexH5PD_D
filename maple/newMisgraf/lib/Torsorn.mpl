proc(x, y, esc, alpha)
local f1, f2, poly1, Args;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    Args := select(type, [args], equation);
    if abs(alpha) < .0001 or abs(alpha - 3.141592654) < .0001 then
        f1 := torsorPerspn(2*esc + x, y, esc, 0, op(Args));
        f2 := torsorPersp(-2*esc + x, y, esc, 0, op(Args))
    fi;
    display(f1, f2)
end

