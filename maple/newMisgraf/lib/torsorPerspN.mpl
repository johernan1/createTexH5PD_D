proc(x, y, esc, _alpha, t1, ix)
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    torsorPersp(args, TEXTO = [t1, ix])
end

