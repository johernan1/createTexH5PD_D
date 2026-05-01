proc(x, y, l, alpha, theta1, theta2, delta)
local poly, __X, Xm, XM;
global miROJO;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    Misgraf[Micolor]();
    if 8 <= nargs then Xm := args[8] else Xm := 0 fi;
    if 9 <= nargs then XM := args[9] else XM := 0 fi;
    poly := fdf(0, delta, theta1, theta2, 0, l);
    poly := subs(indets(poly)[1] = __X, poly);
    trasfd(plot(poly, __X = Xm .. l - XM, color = COLOR(miROJO)), x,
        y, 1, alpha)
end

