proc(Coord, Barr)
local i, barr;
global miAZUL;
    Misgraf[Micolor]();
    barr := {};
    for i to nops(Barr) do barr := barr union {CURVES(
        [Coord[Barr[i, 1]], Coord[Barr[i, 2]]], COLOUR(miAZUL))}
    od;
    PLOT(op(barr))
end

