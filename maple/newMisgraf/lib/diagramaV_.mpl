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
    postext := discont(F, X);
    if 0 < nops(postext) then for i to nops(postext) do
            Xt := postext[i];
            Yt := limit(fE, X = postext[i], left);
            Yt := limit(fE, X = postext[i], right)
        od
    fi;
    ejes := trasf([[X0, evalm(subs(X = X0, fE))], [X0, 0], [X1, 0],
        [X1, evalm(subs(X = X1, fE))]], x, y, esc, alpha);
    display(g, CURVES(ejes))
end

