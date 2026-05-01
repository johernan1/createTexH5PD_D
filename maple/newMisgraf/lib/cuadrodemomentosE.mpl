proc(Nud, Barr, esc, pos)
local barr, i, j, Ni, Nj, L, Alpha;
global miROJO;
    Misgraf[Micolor]();
    j := 0;
    barr := {};
    for i to nops(Barr) do
        midebug(_EnvMD, procname, i);
        Ni := Barr[i, 1];
        Nj := Barr[i, 2];
        L := sqrt((Nud[Ni, 1] - Nud[Nj, 1])^2
             + (Nud[Ni, 2] - Nud[Nj, 2])^2);
        Alpha := miarctan(op(Nud[Nj] - Nud[Ni]));
        if abs(Alpha) < .0001 then
            barr := barr union {perspectiva(display(CURVES([
                [Nud[Ni, 1]*esc, 0], [Nud[Ni, 1]*esc, 0],
                [(Nud[Ni, 1] + L)*esc, 0], [(Nud[Ni, 1] + L)*esc, 0]
                ])), Y = Nud[Ni, 2]*esc)};
            j := j + 1;
            barr := barr union {perspectiva(textplot([
                (Nud[Nj, 1]*pos + Nud[Ni, 1]*(1 - pos))*esc, 0, m.j])
                , Y = esc*(Nud[Ni, 2]*pos + Nud[Ni, 2]*(1 - pos)))};
            j := j + 1;
            barr := barr union {perspectiva(textplot([
                (Nud[Nj, 1]*(1 - pos) + Nud[Ni, 1]*pos)*esc, 0, m.j])
                , Y = esc*(Nud[Ni, 2]*pos + Nud[Ni, 2]*(1 - pos)))}
        else
            barr := barr union {perspectiva(display(CURVES([
                [Nud[Ni, 2]*esc, 0], [Nud[Ni, 2]*esc, 0],
                [(Nud[Ni, 2] + L)*esc, 0], [(Nud[Ni, 2] + L)*esc, 0]
                ])), X = Nud[Ni, 1]*esc)};
            j := j + 1;
            barr := barr union {perspectiva(textplot([
                (Nud[Nj, 2]*pos + Nud[Ni, 2]*(1 - pos))*esc, 0, m.j])
                , X = (Nud[Nj, 1]*pos + Nud[Ni, 1]*(1 - pos))*esc)};
            j := j + 1;
            barr := barr union {perspectiva(textplot([
                (Nud[Nj, 2]*(1 - pos) + Nud[Ni, 2]*pos)*esc, 0, m.j])
                , X = (Nud[Nj, 1]*(1 - pos) + Nud[Ni, 1]*pos)*esc)}
        fi
    od;
    display(barr)
end

