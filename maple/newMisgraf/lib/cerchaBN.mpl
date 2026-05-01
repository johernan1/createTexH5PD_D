proc(Coord, Barr, nombres)
local i, t, T;
global miAZUL;
    Misgraf[Micolor]();
    T := {};
    for i to nops(Barr) do
        t := textplot([
            op(.5*Coord[Barr[i, 1]] + .5*Coord[Barr[i, 2]]),
            convert(nombres[i], string)], align = ABOVE);
        T := display(T, t)
    od;
    display(T)
end

