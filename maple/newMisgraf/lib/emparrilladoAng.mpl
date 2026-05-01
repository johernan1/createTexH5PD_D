proc(Nud, Barr, esc, alpha, delta, Defor, escA, pos, angulos)
local barr, i, Ni, Nj, L, Alpha, Alpha0, incA, deltaNi, deltaNj,
alphaNix, alphaNiy, alphaNjx, alphaNjy, brr;
global miAZUL;
    Misgraf[Micolor]();
    _EnvMD := _EnvMD + 1;
    barr := {};
    for i to nops(Barr) do
        midebug(_EnvMD, procname, i);
        Ni := Barr[i, 1];
        Nj := Barr[i, 2];
        if type(delta[Ni], numeric) then deltaNi := -delta[Ni]
        else deltaNi := -delta[Ni, 1]
        fi;
        if type(delta[Nj], numeric) then deltaNj := -delta[Nj]
        else deltaNj := -delta[Nj, 1]
        fi;
        if type(alpha[Ni], numeric) then
            alphaNix := alpha[Ni]; alphaNiy := alpha[Ni]
        else alphaNix := alpha[Ni, 1]; alphaNiy := alpha[Ni, 2]
        fi;
        if type(alpha[Nj], numeric) then
            alphaNjx := alpha[Nj]; alphaNjy := alpha[Nj]
        else alphaNjx := alpha[Nj, 1]; alphaNjy := alpha[Nj, 2]
        fi;
        L := sqrt((Nud[Ni, 1] - Nud[Nj, 1])^2
             + (Nud[Ni, 2] - Nud[Nj, 2])^2);
        Alpha0 := miarctan(op(Nud[Nj] - Nud[Ni]));
        Alpha := arctan(deltaNj - deltaNi, L);
        incA := Alpha;
        L := sqrt(L^2 + (deltaNj - deltaNi)^2);
        if abs(Alpha0) < .0001 then
            brr := {eval(Defor[i](Nud[Ni, 1], deltaNi, L, Alpha,
                alphaNix - incA, alphaNjx - incA, 0))};
            if angulos[i, 1] <> 0 then brr := brr union {Angulo(
                alphaNix, Nud[Ni, 1], deltaNi, 6*esc*escA,
                Alpha - incA, angulos[i, 1], pos)}
            fi;
            if angulos[i, 2] <> 0 then brr := brr union {Angulo(
                -incA, Nud[Ni, 1], deltaNi, 5*esc*escA, Alpha,
                angulos[i, 2], pos)}
            fi;
            brr := brr union {CURVES(
                [[Nud[Nj, 1], deltaNj], [Nud[Ni, 1], deltaNi]],
                COLOUR(miAZUL))};
            if angulos[i, 3] <> 0 then brr := brr union {Angulo(
                alphaNjx, Nud[Nj, 1], deltaNj, 6*esc*escA,
                Alpha + Pi - incA, angulos[i, 3], pos)}
            fi;
            if angulos[i, 4] <> 0 then brr := brr union {Angulo(
                incA, Nud[Nj, 1], deltaNj, 5*esc*escA,
                Alpha + Pi - incA, angulos[i, 4], pos)}
            fi;
            barr := barr union
                {perspectiva(display(brr), Y = Nud[Ni, 2])}
        else
            brr := {eval(Defor[i](Nud[Ni, 2], deltaNi, L, Alpha,
                alphaNiy - incA, alphaNjy - incA, 0))};
            if angulos[i, 1] <> 0 then brr := brr union {Angulo(
                alphaNiy, Nud[Ni, 2], deltaNi, 6*esc*escA,
                Alpha - incA, angulos[i, 1], pos)}
            fi;
            if angulos[i, 2] <> 0 then brr := brr union {Angulo(
                -incA, Nud[Ni, 2], deltaNi, 5*esc*escA, Alpha,
                angulos[i, 2], pos)}
            fi;
            brr := brr union {CURVES(
                [[Nud[Nj, 2], deltaNj], [Nud[Ni, 2], deltaNi]],
                COLOUR(miAZUL))};
            if angulos[i, 3] <> 0 then brr := brr union {Angulo(
                alphaNjy, Nud[Nj, 2], deltaNj, 6*esc*escA,
                Alpha + Pi - incA, angulos[i, 3], pos)}
            fi;
            if angulos[i, 4] <> 0 then brr := brr union {Angulo(
                incA, Nud[Nj, 2], deltaNj, 5*esc*escA,
                Alpha + Pi - incA, angulos[i, 4], pos)}
            fi;
            barr := barr union
                {perspectiva(display(brr), X = Nud[Ni, 1])}
        fi
    od;
    display(barr)
end

