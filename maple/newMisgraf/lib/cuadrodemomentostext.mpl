proc(sl, sf)
local i, u, f, uf;
    for i to nops(sl) do
        u := convert(evalf(sl[i], 3), string);
        f := convert(evalf(sf[i], 3), string);
        uf := convert(evalf(sl[i] + sf[i], 3), string);
        print("\\psfrag{m".i.
            "}[c][c]{\\scriptsize \\mipsfrag{0}{0}{\\HDBCM{".u."}{".
            f."}{".uf."}}")
    od
end

