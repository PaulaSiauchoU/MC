#!/bin/bash
wget -q https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/lottery/lottery.csv
echo "El código:"
grep 201126749 lottery.csv
echo "en la fecha:"
head -1 lottery.csv

