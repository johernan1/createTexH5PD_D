proc(FF, X0, X1, x, y, esc, alpha, escV)
local X, g, V, postext, i, TEXTOS, ejes, fE, f, F, Xt, Yt, txt, txt0
;
global miROJO;
    Misgraf[Micolor]();
    if type(FF, equation) then F := rhs(FF) else F := FF fi;
    X := indets(F, name);
    if X = {} then X := convert("x", name) else X := op(X) fi;
    fE := evalf(- F*escV);
    f := -F;
    g := trasfd(plot(fE, X = X0 .. X1, color = COLOR(miROJO)), x, y,
        esc, alpha);
    if is(F, numeric) then TEXTOS := {PLOT(TEXT(op(trasf(
        [[1/2*X0 + 1/2*X1, evalf(subs(X = 1/2*X0 + 1/2*X1, fE))]], x,
        y, esc, alpha)), convert(evalf(F, 4), string)))}
    else TEXTOS := {PLOT(TEXT(
        op(trasf([[X1, evalf(subs(X = X1, fE))]], x, y, esc, alpha))
        , convert(evalf(subs(X = X1, F), 4), string))), PLOT(TEXT(
        op(trasf([[X0, evalf(subs(X = X0, fE))]], x, y, esc, alpha))
        , convert(evalf(subs(X = X0, F), 4), string)))}
    fi;
    postext := discont(F, X);
    if 0 < nops(postext) then for i to nops(postext) do
            Xt := postext[i];
            Yt := limit(fE, X = postext[i], left);
            txt := limit(F, X = postext[i], left);
            TEXTOS := {PLOT(TEXT(
                op(trasf([[Xt, Yt]], x, y, esc, alpha)),
                convert(evalf(txt, 4), string)))} union TEXTOS;
            Yt := limit(fE, X = postext[i], right);
            txt := limit(F, X = postext[i], right);
            TEXTOS := {PLOT(TEXT(
                op(trasf([[Xt, Yt]], x, y, esc, alpha)),
                convert(evalf(txt, 4), string)))} union TEXTOS
        od
    fi;
    if type(F, numeric) then postext := "V=cte"
    else postext := fsolve(F = 0, X, X0 .. X1)
    fi;
    if not (postext = NULL) and type(postext, float) then
        txt0 := convert(evalf(simplify(postext), 4), string);
        TEXTOS := {PLOT(
            TEXT(op(trasf([[postext, 0]], x, y, esc, alpha)), txt0))
            } union TEXTOS
    fi;
    ejes := trasf([[X0, evalm(subs(X = X0, fE))], [X0, 0], [X1, 0],
        [X1, evalm(subs(X = X1, fE))]], x, y, esc, alpha);
    display(TEXTOS, g, CURVES(ejes))
end

bytes used=52832656, alloc=1441528, time=0.33
