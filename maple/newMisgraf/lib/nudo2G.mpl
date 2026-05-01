proc(a1, a2, x, y, esc, alpha)
local poly1, poly2, poly3, poly4, cont, v1, v1p, v2, v2p, v3, v3p;
global MiROJO;
    Misgraf[Micolor]();
    v1 := [cos(a1), sin(a1)];
    v1p := [-sin(a1), cos(a1)];
    v2 := [cos(a2), sin(a2)];
    v2p := [-sin(a2), cos(a2)];
    poly1 := [(v1 + v2)/sin(a1 - a2), 2*v1 - v1p, 2*v1 + v1p,
        (v1 + v2)/sin(a2 - a1)];
    poly1 := trasf(poly1, x, y, esc, alpha);
    poly2 := [(v1 + v2)/sin(a2 - a1), 2*v2 - v2p, 2*v2 + v2p,
        (v1 + v2)/sin(a1 - a2)];
    poly2 := trasf(poly2, x, y, esc, alpha);
    cont := [(v1 + v2)/sin(a1 - a2), 2*v1 - v1p, 2*v1 + v1p,
        (v1 + v2)/sin(a2 - a1), 2*v2 - v2p, 2*v2 + v2p,
        (v1 + v2)/sin(a1 - a2)];
    cont := trasf(cont, x, y, esc, alpha);
    PLOT(POLYGONS(poly1, poly2, STYLE(PATCHNOGRID), COLOUR(MiROJO)),
        CURVES(cont))
end

