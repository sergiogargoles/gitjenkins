#!/usr/bin/bash

mkdir salida



./inicio.sh > ./salida/index.html

./pagina1.sh > ./salida/pagina1.html

./pagina2.sh > ./salida/pagina2.html

./pagina3.sh > ./salida/pagina3.html

if [ -f ./salida/"w3.css"]; then
    echo "Archivo CSS ya descargado."
    else
    curl - o "w3.css" "https://www.w3schools.com/w3css/4/w3.css"
        if [$? -eq 0]; then 
            echo "El archivo CSS se ha descargado correctamente"
            mv "w3.css" ./salida
            else
            echo "Error en la descarga"
        fi
fi
echo "Creado sin problemas"
