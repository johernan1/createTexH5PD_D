proc(F, X1, X0, x, y, esc, alpha, escV, FUNC)
local X, X2, Xm, Y, fE, f, aux, disc, limd, limi, i, Args, _escS;
    Args := select(type, [args], equation);
    _escS := 1;
    hasoption(Args, escalS, '_escS');
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    midebug(_EnvMD, procname,
        "Opciones centrar y escalS sin concluir");
    X := indets(F, name);
    if X = {} then X := convert("x", name) else X := op(X) fi;
    fE := evalf(- F*escV);
    f := -F;
    if type(F, numeric) and F < 0 then
        midebug(_EnvMD, procname,
            ["Cortante negativo y constante", X1, X0]);
        if hasoption(Args, centrar, '_centrar') then
            aux := trasf(
                [[1/2*X1 + 1/2*X0, - 1/2*F(1/2*X1 + 1/2*X0)*escV]],
                x*esc, y*esc, esc, alpha);
            Xm := aux[1, 1];
            Y := aux[1, 2];
            RETURN(FUNC(Xm, Y, 1/24*escV*esc*(X1 - X0)*_escS,
                evalf(alpha)))
        else
            aux := trasf([[1/2*X1 + 1/2*X0, 1/12*X0 - 1/12*X1]],
                x*esc, y*esc, esc, alpha);
            Xm := aux[1, 1];
            Y := aux[1, 2];
            RETURN(FUNC(Xm, Y, 1/24*escV*esc*(X0 - X1)*_escS,
                evalf(alpha)))
        fi
    fi;
    if evalf(subs(X = X0, F)) < 0 then
        X2 := fsolve(F, X = X0);
        if type(X2, function) then
            disc := discont(F, X);
            for i to nops(disc) do
                limd := limit(fE, X = disc[i], right);
                limi := limit(fE, X = disc[i], left);
                if 0 <= limd and limi <= 0 then X2 := disc[i]; break
                fi
            od
        fi;
        if X2 < X0 and X1 < X2 then
            print(X0 - X1);
            aux := trasf([[1/4*X2 + 3/4*X0, 1/12*X0 - 1/12*X1]],
                x*esc, y*esc, esc, alpha);
            Xm := aux[1, 1];
            Y := aux[1, 2];
            FUNC(Xm, Y, 1/24*escV*esc*(X0 - X1)*_escS, evalf(alpha))
        fi
    fi
end

