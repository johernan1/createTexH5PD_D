proc(x, y, l, alpha, phi1, phi2, q, escM, pos, m1, m2, V1, V2)
local f1, f2, f3, f4, f5;
    _EnvMD := _EnvMD + 1;
    midebug(_EnvMD, procname, [args]);
    f1 := vig_empq(x, y, l, alpha, phi1, phi2, q);
    f2 := flechaCn(x + l*cos(alpha)*pos, y + l*sin(alpha)*pos, escM,
        alpha + Pi, m1, 2.5);
    print("holahola");
    f4 := MflechaN(x + l*cos(alpha)*pos - 2.5*sin(alpha)*escM,
        y + l*sin(alpha)*pos + 2.5*cos(alpha)*escM, 2*escM,
        alpha + Pi, V1, -1.5*escM);
    f5 := mflechaN(
        x + l*cos(alpha)*(1 - 1/2*pos) - 2.5*sin(alpha)*escM,
        y + l*sin(alpha)*(1 - 1/2*pos) + 2.5*cos(alpha)*escM, 2*escM,
        alpha + Pi, V2, -1.5*escM);
    display(f1, f2, f4, f5)
end

