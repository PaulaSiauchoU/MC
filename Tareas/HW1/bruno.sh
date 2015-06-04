#!/bin/bash
echo "Número de planetas en el catalogo:"
#Primero dentro del archivo kepler.csv se elimina la primera columna y los resultados se mandan a un segundo archivo.
sed '1,1d' kepler.csv > kepler2.csv 
#Despues, con el ultimo archivo creado se aisla la primera columna y se cuentan el numero de filas para saber el numero de planetas en el catalogo
awk -F "," '{print $1}' kepler2.csv | wc -l
#A continuacion, se aislan las dos primeras columnas para ordenarlas segun el tamaño de la masa.
awk -F "," '{print $1","$2}' kepler2.csv >kepler3.csv

awk -F "," '{if($2<0.01 && $2>=0){print $1"---"$2}}' kepler3.csv 

echo "el número de planetas con masa menor a una centésima de la de Júpiter es:"

awk -F "," '{if($2<0.01 && $2>=0){print $1"---"$2}}' kepler3.csv | wc -l

# 2c. Por ultimo, se ordenan las masas de menor a mayor para saber cual es la menor 
menorp=$(awk -F "," '{print $6}' kepler2.csv | sort )

final=$(awk -F "," '{print $1$6}' kepler2.csv | grep menorp)

echo $final
echo $menorp
