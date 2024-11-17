#!/usr/bin/bash


./cabecera.sh "Titulo de la página"
./navegacion.sh $1
cat << EOF
<h1>Página de Sergio Gárgoles Carballo</h1>
<p>Esta es una de las páginas.</p>
EOF
./pie.sh
