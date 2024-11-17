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
./w3.css.sh > ./salida/w3.css
echo "Creado sin problemas"