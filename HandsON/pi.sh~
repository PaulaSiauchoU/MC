#!/bin/bash

curl http://pi.karmona.com >brut.txt

sed 's/<BR>//g' brut.txt > uno.txt

sed 's/<\/B>//g' uno.txt > dos.txt

sed 's/<B>//g' dos.txt > tres.txt

sed 's/<HTML><TITLE>Pi - 10 Million Digits @ http:\/\/Pi.Karmona.com<\/TITLE><BODY><BR>
<CENTER><B>Pi - 10 Million Digits<\/B><BR><BR><BR>//g' tres.txt > cuatro.txt

sed 's/<BR><BR><\/center><\/BODY><\/HTML>//g' cuatro.txt > PIslices.dat
