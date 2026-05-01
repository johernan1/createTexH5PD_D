proc(Coord, Barr, Nomb)
local i, barr, graaf, incx, incy, md, alpha, f, graf, escF, Args;
global miAZUL;
    Misgraf[Micolor]();
    Args := select(type, [args], equation);
    escF := 1;
    hasoption(Args, ESCF, 'escF');
    graf := {};
    for i to nops(Barr) do
        barr := CURVES([Coord[Barr[i, 1]],
            .5*Coord[Barr[i, 1]] + .5*Coord[Barr[i, 2]]],
            COLOUR(miAZUL));
        incx := Coord[Barr[i, 1]][1] - Coord[Barr[i, 2]][1];
        incy := Coord[Barr[i, 1]][2] - Coord[Barr[i, 2]][2];
        md := evalf(sqrt(incx^2 + incy^2));
        alpha := arctan(incy, incx);
        f := flechaN(
            Coord[Barr[i, 2]][1] + .5*incx - 3/10*incx*escF,
            Coord[Barr[i, 2]][2] + .5*incy - 3/10*incy*escF,
            1/10*md*escF, alpha - 1/2*Pi, Nomb[i], 0);
        graf := graf union {f, PLOT(barr)}
    od;
    display(graf)
end

