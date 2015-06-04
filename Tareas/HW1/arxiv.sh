#!/bin/bash 
#variable para la interfaz
direccion="~~~~~~~~~~~~~~~~~~~~~~~~~~~"


#interfaz- $1 llama a la palabra de entrada
figlet arXiv
echo $direccion
echo $direccion
echo "Buscando en asXiv para nuevas cosas"
echo $direccion
echo $direccion
echo "Palabra clave:"
printf "$1"

echo $direccion 
echo $direccion 
echo Articulos encontrados:
echo $direccion
echo $direccion 
#Se busca en la pagina de interes dentro de arXiv, en este caso, Biologia Cuantitativa, despues con grep se aislan los titulos y se busca dentro de ellos la palabra de interes y se cuentan los resultados, que es lo que se muestra en pantalla
curl -s http://arxiv.org/list/q-bio/new | grep "Title:" | grep "$1" -c
#se vuelve a hacer la misma busqueda del comando anterior pero a esta se le hace en sed que quita el texto que no pertenece al titulo
curl -s http://arxiv.org/list/q-bio/new | grep "Title:" | grep "$1"| sed 's/<span class="descriptor">//g' | sed 's/<\/span>//g'
