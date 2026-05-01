proc(FF, X0, X1, x, y, esc, alpha, escM)
local X, g, V, V1, postext, i, TEXTOS, ejes, Xm, fE, f, F, Y0, Y1,
txt0, txt1;
global miROJO;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    Misgraf[Micolor]();
    if type(FF, equation) then F := rhs(FF) else F := FF fi;
    X := indets(F, name);
    if X = {} then X := convert("x", name) else X := op(X) fi;
    fE := evalf(- F*escM);
    f := -F;
    g := trasfd(plot(fE, X = X0 .. X1, color = COLOR(miROJO)), x, y,
        esc, alpha);
    V := diff(f, X);
    V1 := diff(convert(f, Heaviside), X);
    Y0 := simplify(evalf(subs(X = X0, fE)));
    txt0 := convert(evalf(simplify(subs(X = X0, F)), 4), string);
    Y1 := simplify(evalf(subs(X = X1, fE)));
    txt1 := convert(evalf(simplify(subs(X = X1, F)), 4), string);
    TEXTOS := {
        PLOT(TEXT(op(trasf([[X0, Y0]], x, y, esc, alpha)), txt0)),
        PLOT(TEXT(op(trasf([[X1, Y1]], x, y, esc, alpha)), txt1))};
    postext := discont(V, X);
    if 0 < nops(postext) then for i to nops(postext) do
            Y0 := simplify(evalf(subs(X = postext[i], fE)));
            txt0 := convert(
                evalf(simplify(subs(X = postext[i], F)), 4), string)
                ;
            TEXTOS := {PLOT(TEXT(
                op(trasf([[postext[i], Y0]], x, y, esc, alpha)),
                txt0))} union TEXTOS
        od
    else
        Xm := evalf(.5000000000*X0 + .5000000000*X1);
        Y0 := simplify(evalf(subs(X = Xm, fE)));
        txt0 := convert(evalf(simplify(subs(X = Xm, F)), 4), string)
            ;
        TEXTOS := {PLOT(
            TEXT(op(trasf([[Xm, Y0]], x, y, esc, alpha)), txt0))}
            union TEXTOS
    fi;
    if type(V, numeric) then postext := "V=cte"
    else
        postext := {fsolve(V1 = 0, X, X0 .. X1)};
        if nops(postext) = 0 then postext := "V<>0"
        else postext := postext[1]
        fi
    fi;
    if type(postext, float) or postext = 0 then
        Y0 := simplify(evalf(subs(X = postext, fE)));
        txt0 := convert(evalf(simplify(subs(X = postext, F)), 4),
            string);
        TEXTOS := {PLOT(
            TEXT(op(trasf([[postext, Y0]], x, y, esc, alpha)), txt0))
            } union TEXTOS
    fi;
    ejes := trasf([[X0, evalm(subs(X = X0, fE))], [X0, 0], [X1, 0],
        [X1, evalm(subs(X = X1, fE))]], x, y, esc, alpha);
    display(TEXTOS, g, CURVES(ejes))
end

