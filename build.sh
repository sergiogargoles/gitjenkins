#!/usr/bin/bash

mkdir salida
echo "Carpeta 'Salida' creada"

echo "Creando la página inicio.html en salida..."
./inicio.sh > ./salida/index.html
echo "Creando la página pagina1.html en salida..."
./pagina1.sh > ./salida/pagina1.html
echo "Creando la página pagina2.html en salida..."
./pagina2.sh > ./salida/pagina2.html
echo "Creando la página pagina3.html en salida..."
./pagina3.sh > ./salida/pagina3.html
echo "Añadiendo el archivo de estilos..."
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
