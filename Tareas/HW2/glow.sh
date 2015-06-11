#!/bin/bash

#empezar tiempo en 0
((t=0))
#ciclo infinito, la c dentro del echo de r significa coseno, de esta manera nunca de pasa del área de trabajo.

while true 
do
clear
t=$((t+1))
r=$(echo "(c($t*0.1))^2" | bc -l)
bash circle.sh $r
sleep 1

done

