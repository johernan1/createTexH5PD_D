proc(Coord, Barr, Nomb)
local i, barr, graaf, incx, incy, md, alpha, f, graf;
global miAZUL;
    Misgraf[Micolor]();
    graf := {};
    for i to nops(Barr) do
        incx := Coord[Barr[i, 1]][1] - Coord[Barr[i, 2]][1];
        incy := Coord[Barr[i, 1]][2] - Coord[Barr[i, 2]][2];
        md := evalf(sqrt(incx^2 + incy^2));
        alpha := arctan(incy, incx);
        f := flechaN(Coord[Barr[i, 2]][1] + .2*incx,
            Coord[Barr[i, 2]][2] + .2*incy, 1/10*md, alpha - 1/2*Pi,
            Nomb[i], 0);
        graf := graf union {f}
    od;
    display(graf)
end

