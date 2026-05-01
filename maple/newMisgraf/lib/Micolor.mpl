proc()
global MiByN, MiROJO, MiVERDE, MiAZUL, MiCELESTE, MiGRIS, miCELESTE,
miROJO, miAZUL;
    MiROJO := RGB, 1, 0, 0;
    MiGRIS := RGB, .8, .8, .8;
    MiVERDE := RGB, 0, 1, 0;
    MiAZUL := RGB, 0, 0, 1;
    MiCELESTE := RGB, 0, 1, 1;
    miCELESTE := RGB, 0, 1, 1;
    miROJO := RGB, 1, 0, 0;
    miAZUL := RGB, 0, 0, 1;
    if MiByN = 1 then
        MiROJO := RGB, .3, .3, .3;
        MiVERDE := RGB, .54, .54, .54;
        MiAZUL := RGB, .1, .1, .1;
        MiCELESTE := RGB, .54, .54, .54;
        miCELESTE := RGB, .4, .4, .4;
        miROJO := RGB, 0, 0, 0;
        miAZUL := RGB, 0, 0, 0
    fi
end

