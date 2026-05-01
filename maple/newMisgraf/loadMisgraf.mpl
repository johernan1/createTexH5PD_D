# Forzamos la ruta donde están los archivos
ruta := "C:/Users/UPM/Desktop/newMisgraf/lib":
currentdir(ruta):
# 1. Usamos un comando de sistema para listar los nombres REALES en un archivo temporal
system(cat("dir /b *.mpl > lista_ficheros.txt")):

# 2. Leemos esa lista (que sí distingue mayúsculas)
lista_cruda := FileTools[Text][ReadFile]("lista_ficheros.txt");
archivos := StringTools[Split](StringTools[Trim](lista_cruda), "\n");

cargados := []:
fallidos := []:

for f in archivos do
    # Limpiamos posibles caracteres de retorno de carro \r de Windows
    f_limpio := StringTools[Trim](f):
    
    if length(f_limpio) > 4 and f_limpio <> "loadMisgraf.mpl" then
        try
            nombre_func := f_limpio[1..-5]:
            
            # Intentamos leer el archivo usando el nombre exacto que nos dio 'dir'
            contenido := FileTools[Text][ReadFile](f_limpio):
            
            if type(contenido, string) and length(contenido) > 0 then
                sentencia := cat(nombre_func, " := ", StringTools[Trim](contenido), ":"):
                parse(sentencia, statement):
                cargados := [op(cargados), nombre_func]:
            end if:
        catch:
            fallidos := [op(fallidos), f_limpio]:
            printf("Error en %s: %s\n", f_limpio, lasterror):
        end try:
    end if:
end do:

# Borramos el temporal
#FileTools[Remove]("lista_ficheros.txt"):

printf("Carga finalizada. %d funciones en memoria.\n", nops(cargados)):

#restart;
#with(plots);
#with(plottools);
#currentdir("C:/Users/UPM/Desktop/newMisgraf");
#read "C:/Users/UPM/Desktop/newMisgraf/loadMisgraf.mpl";