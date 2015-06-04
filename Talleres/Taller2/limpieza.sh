#!/bin/bash

sed 's/\.//g' pgn.dat | sed 's/\,/\./g' | sed 's/)//g' | sed 's/[0,9(]/\t/g'


