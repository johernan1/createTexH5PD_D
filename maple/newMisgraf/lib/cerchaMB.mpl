proc(Coord, Barr)
local i, barr, graaf, incx, incy, md, alpha, f, graf;
global miAZUL;
    Misgraf[Micolor]();
    graf := {};
    for i to nops(Barr) do
        barr := CURVES([Coord[Barr[i, 1]],
            .5*Coord[Barr[i, 1]] + .5*Coord[Barr[i, 2]]],
            COLOUR(miAZUL));
        incx := Coord[Barr[i, 1]][1] - Coord[Barr[i, 2]][1];
        incy := Coord[Barr[i, 1]][2] - Coord[Barr[i, 2]][2];
        md := evalf(sqrt(incx^2 + incy^2));
        alpha := arctan(incy, incx);
        f := flecha(Coord[Barr[i, 2]][1] + .2*incx,
            Coord[Barr[i, 2]][2] + .2*incy, 1/10*md, alpha - 1/2*Pi)
            ;
        graf := graf union {f, PLOT(barr)}
    od;
    display(graf)
end

bytes used=51803928, alloc=1310480, time=0.33
