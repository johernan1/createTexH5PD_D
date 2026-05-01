proc(Nud, Barr, esc, pos)
local barr, i, j, Ni, Nj;
global miROJO;
    Misgraf[Micolor]();
    j := 0;
    barr := {};
    for i to nops(Barr) do
        Ni := Barr[i, 1];
        Nj := Barr[i, 2];
        barr := barr union
            {CURVES([Nud[Nj]*esc, Nud[Ni]*esc], COLOUR(miROJO))};
        j := j + 1;
        barr := barr union {textplot(
            [op((Nud[Nj]*pos + Nud[Ni]*(1 - pos))*esc), m.j])};
        j := j + 1;
        barr := barr union {textplot(
            [op((Nud[Ni]*pos + Nud[Nj]*(1 - pos))*esc), m.j])}
    od;
    display(barr)
end

