proc(proclevel, funcion, args_)
local tab, i;
    tab := " ";
    for i to 4*proclevel - 4 do tab := cat(tab, " ") od;
    if type(MIDEBUG, numeric) and proclevel <= MIDEBUG then
        printf("%s%s %a,%d\n", tab, funcion, args_, _EnvMD)
    fi
end
