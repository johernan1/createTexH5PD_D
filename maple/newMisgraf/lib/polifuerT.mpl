proc(Fs, Col, Text)
local X0, Y0, F, i, m, f, vi, t;
    X0 := 0;
    Y0 := 0;
    F := {};
    for i to nops(Fs) do
        vi := convert(Fs[i], list);
        m := sqrt(vi[1]^2 + vi[2]^2);
        f := arrow(evalm([X0, -Y0]), evalm([vi[1], -vi[2]]), .2*m,
            .4*m, .25, color = Col[i], op(3 .. nops(vi), vi));
        t := textplot([X0 + 1/2*vi[1], -Y0 - 1/2*vi[2], Text[i]]);
        X0 := X0 + vi[1];
        Y0 := Y0 + vi[2];
        F := display(f, t, F)
    od
end

