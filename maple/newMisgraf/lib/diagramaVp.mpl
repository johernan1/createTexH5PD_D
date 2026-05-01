proc(F, X0, X1, x, y, esc, alpha, escV)
local Args;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    Args := select(type, [args], equation);
    DiagramaVp(F, X0, X1, x, y, esc, alpha, escV, Cortp, op(Args))
end

