#!/bin/bash 
#Grupo de trabajo con Arturo Velasquez
#Para que gnuplot lea los comandos dentro del mismo se usa EOF
gnuplot <<EOF
set term dumb
set yrange [-1:+1]
set xrange [-1:1]
set parametric 
set size ratio 0.5
plot $1*cos(t),$1*sin(t)
exit
EOF

