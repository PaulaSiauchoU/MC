#!/bin/bash

sed 's/\.//g' pgn.dat | sed 's/\,/\./g' pgn.dat

sed 's//|t[0,9]/g' pgn.dat
sed 's/\)//\g' png.dat
