proc(FF, X0, X1, x, y, esc, alpha, escv)
local X, g, V, postext, i, TEXTOS, ejes, Xm, fE, f, F, Y0, Y1, txt0,
txt1, theta;
global miROJO;
    Misgraf[Micolor]();
    if type(FF, equation) then F := rhs(FF) else F := FF fi;
    X := op(indets(F, name));
    fE := evalf(- F*escv);
    f := -F;
    g := trasfd(plot(fE, X = X0 .. X1, color = COLOR(miROJO)), x, y,
        esc, alpha);
    theta := diff(f, X);
    Y0 := simplify(evalf(subs(X = X0, fE)));
    txt0 := convert(evalf(simplify(subs(X = X0, F)), 4), string);
    Y1 := simplify(evalf(subs(X = X1, fE)));
    txt1 := convert(evalf(simplify(subs(X = X1, F)), 4), string);
    TEXTOS := {
        PLOT(TEXT(op(trasf([[X0, Y0]], x, y, esc, alpha)), txt0)),
        PLOT(TEXT(op(trasf([[X1, Y1]], x, y, esc, alpha)), txt1))};
    Xm := evalf(.5000000000*X0 + .5000000000*X1);
    Y0 := simplify(evalf(subs(X = Xm, fE)));
    txt0 := convert(evalf(simplify(subs(X = Xm, F)), 4), string);
    TEXTOS :=
        {PLOT(TEXT(op(trasf([[Xm, Y0]], x, y, esc, alpha)), txt0))}
        union TEXTOS;
    postext := {fsolve(theta = 0, X, X0 .. X1)};
    if nops(postext) = 0 then postext := "V<>0"
    else postext := postext[1]
    fi;
    if nops({postext}) = 1 and type(postext, float) and X0 < postext
     and postext < X1 then
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

