proc(x, y, esc, _alpha)
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    torsorPersp(args, NEGATIVO = 1)
end

