proc(x, y, l, alpha, theta1, theta2, delta, NADA, NADA_)
local Xm, XM;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    if 10 <= nargs then Xm := args[10] else Xm := 0 fi;
    if 11 <= nargs then XM := args[11] else XM := 0 fi;
    Defor_Teorica(x, y, l, alpha, theta1, theta2, delta, Xm, XM)
end

