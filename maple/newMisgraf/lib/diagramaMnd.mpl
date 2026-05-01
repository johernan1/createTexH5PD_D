proc(F, X1, X0, x, y, esc, alpha, escM)
local X, X2, Xm, Y, fE, f, aux;
    X := op(indets(F, name));
    fE := evalf(- F*escM);
    f := -F;
    X2 := fsolve(F, X = X0);
    if nops({X2}) = 2 then X2 := max(X2) fi;
    if X2 < X0 then
        if X2 < X1 then X2 := X1 fi;
        aux := trasf([[1/2*X2 + 1/2*X0, 1/16*X0 - 1/16*X1]], x*esc,
            y*esc, esc, alpha);
        Xm := aux[1, 1];
        Y := aux[1, 2];
        MomFp(Xm, Y, 1/64*esc*(X0 - X1), evalf(Pi + alpha))
    fi
end

