proc(F, X0, X1, x, y, esc, alpha, escM)
local X, X2, X3, Xm, Y, fE, f, aux;
    X := op(indets(F, name));
    fE := evalf(- F*escM);
    f := -F;
    if evalf(subs(X = X0, F)) < 0 then
        X2 := fsolve(F, X = X0); if nops({X2}) = 2 then X2 := X2[1] fi
    else X2 := X0
    fi;
    if evalf(subs(X = X1, F)) < 0 then
        X3 := fsolve(F, X = X1); if nops({X3}) = 2 then X3 := X3[2] fi
    else X3 := X1
    fi;
    aux := trasf([[1/2*X2 + 1/2*X3, 1/16*X0 - 1/16*X1]], x*esc, y*esc, esc,
        alpha);
    Xm := aux[1, 1];
    Y := aux[1, 2];
    MomFp(Xm, Y, 1/64*esc*(X1 - X0), evalf(alpha))
end

