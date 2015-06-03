#!/bin/bash
#Definición de la variables del año buscado
a1=$((2015-$1))
a2=$((2016-$1))
#interfaz
echo "####################################"
figlet StarDate
echo "####################################"
# $1 llama al año de entrada 
figlet $1
echo "####################################"
#Se busca el año de interés y se ponen los resultados de las búsquedas en un nuevo archivo
grep $1 worldhistory.tsv >rh.tsv
#Después se muestra sólo la segunda columna
awk -F "\t"  '{print $2}' rh.tsv
echo "####################################"
echo "Look at the following stars"
echo "RA/°     DEC/°      HIP No."
#Se hace un awk para buscar en las distintas columnas la distancia de las estrellas e imprimir los datos correspondientes.
awk -F"," '{if($10<='$a2' && $10>='$a1') {print $8,$9,$2}}' hyg.csv | head -5
echo "####################################"
