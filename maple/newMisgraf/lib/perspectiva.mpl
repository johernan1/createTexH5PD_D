Warning, `k` in call to `seq` is not local
proc(gr)
local
Args, _x, _y, fx, fy, grt, i, obj, tipo, auxcoor, j, coor, post;
    Args := select(type, [args], equation);
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, "");
    _x := 0;
    hasoption(Args, X, '_x');
    _y := 0;
    hasoption(Args, Y, '_y');
    if hasoption(Args, Y, '_y') then
        if NOXPERSP = 0 then
            print("no se dibuja"); RETURN(CURVES([[0, 0]]))
        fi
    else
        if NOYPERSP = 0 then
            print("no se dibuja"); RETURN(CURVES([[0, 0]]))
        fi
    fi;
    fx := x -> [x[1] + .5*_y, x[2] + .5*_y];
    fy := x -> [.5*x[1] + _x, .5*x[1] + x[2]];
    if PERSPISO = 1 then
        fx := x -> [.86*x[1] + .86*_y, -.5*x[1] + .5*_y + x[2]];
        fy := x -> [.86*x[1] + .86*_x, .5*x[1] - .5*_x + x[2]]
    fi;
    if type(CABALLERA, numeric) then
        fx := x -> [cos(CABALLERA)*x[1] - sin(CABALLERA)*_y,
            sin(CABALLERA)*x[1] + cos(CABALLERA)*_y + x[2]];
        fy := x -> [cos(CABALLERA)*_x - sin(CABALLERA)*x[1],
            sin(CABALLERA)*_x + cos(CABALLERA)*x[1] + x[2]]
    fi;
    if hasoption(Args, TRASF) then RETURN(fx(xx), fy(xx)) fi;
    grt := [];
    for i to nops(gr) do
        obj := op(i, gr);
        tipo := op(0, obj);
        if tipo = TEXT then obj := applyop(x -> [x], 1, obj) fi;
        auxcoor := [];
        for j to nops(obj) do
            coor := op(j, obj);
            if not type(coor, list) then break fi;
            if hasoption(Args, Y, '_y') then
                auxcoor := [op(auxcoor), map(fx, coor)]
            else auxcoor := [op(auxcoor), map(fy, coor)]
            fi
        od;
        coor := op(auxcoor);
        post := seq(op(k, obj), k = j .. nops(obj));
        if tipo = TEXT then coor := applyop(op, 1, coor) fi;
        grt := [op(grt), tipo(coor, post)]
    od;
    PLOT(op(grt))
end

