
 
#Primera clase 
Hola !!! Este es el inicio del curso de **Metodos Computacionales**.

Herramientas del curso

+ git
+ GitGub
+ Pyhton
+ Markdown
+ bash

y los metodos a estudiar son 

1. interpolacion
2. anáisis de Fourier
3. integración y diferenciación numéricas
4. ecuaciones diferenciales ordinarias
5. ecuaciones diferenciales parciales
6. Método de Montecarlo

#Miércoles 27 de mayo.

##GitHub y la terminal.

En este primer día de clases vimos el programa del curso así como las herramientas básica que íbamos a utilizar en el mismos.
Una de ellas es **GitHub**,el programa en el cual se subirán todos los trabajos en formato md, incluyendo este journal. 




Por eso, lo primero que hicimos fue abrir una cuenta en GitHub, en mi caso, el nombre de usuario que escogí fue **PaulaSiauchoU**. A continuación, se creamos una carpeta llamada MC y en ella, este documento. También nos dieron la dirección para que accediéramos al repositorio del curso, [ github.com/ComputoCienciasUniandes/MetodosComputacionales ]

Una de las ventajas de usar GitHub es que se pueden guardar y acceder a todas las versiones de un trabajo que se esté haciendo.Esto último se denomina **commit** y para acceder a la versión del proyecto se usa el comando en la terminal *Check out*. También existen otros comandos como *Working directory* que muestra todas las versiones del archivo y *Staging area*.

Después usamos varios comandos útiles para manipular documentos desde la terminal:

+ Hacer un journal, o en general hacer un archivo en un editor de texto (emacs en este caso)

`emacs SiauchoP-Jurnal.md`

+ Añadirlo a git, ver el estado y hacer el commit (localmente)

`git add SiauchoP-Jurnal.md`

`git status`

`git commit`

+ Poner los datos en git hub

`git push origin master`

+ Sacar datos de gib hub

`git pull origin master`

Además, hay que tener en cuenta que para subir alguna actualización en GitHub hay que seguir los siguientes pasos
1. Añadir el archivo (*add*)

2. Hacer commit al mismo (*commit*)

3. Poner los datos en GitHub (*push*)

Es éste último paso se pedirán autenficaciones como el nombre de usuario y la contraseña. 

##Otros comando últiles y Bash.

**awq**

Crear archivo con varios outputs
 a veces si el delimitador no es un espacio hay que decirle a awq cuál es . Por ej en csv es ","
`>>_` 

**sed**

cambiar a por b, la sintáxis es 
`sed 'a/lo quiero reemplazar/por lo que quiero reemplazar/g' archivo`

**curl** 

*Coger* codigo de páginas de internet.

###Reloj atómico

Todos estos códigos de Bash se pueden utilizar por ejemplo para sacar la hora de un reloj atómico

`curl URLppagina | grep clock0 |togglesimple`

Entonces con sed se hace un reemplazo

*figlet se utiliza para hacer una interfaz*

`curl URLppagina | grep clock0 |togglesimple | sed 's/.*"twd"//g' |sed 's/<\/div>.*//g' figlet; sleep1; done`

**echo**

Entrar a otro computador
`echo direcciónip`

**STFP**

para pasar archivos de un lugar a otro

#Miércoles 3 de junio
Vamos a ver más ejemplos de gnuplot
http://www.exchange-rates.org/history/COP/USD/T
Quitar html del código

Quitar letras `[a-zA-Z]`
Todo lo que esté a la dcha de algo `sed 's/algo.*//g'`
 **Graficar!!**
 
 gnuplot> datafile separaror "," 
 set xdata time
 set timefmt "%m/%d/%y"
 plot 'archivo' using 1:2 with lines #graficar con líneas
 
 ###Ejemplo: información sobre la expansión del universo
  
Es un archivo de Mathematica  
Nombre----dist parsecs---velocidad
set datafile separator ","
**añandir cosas a  una gráfica**
`replot blabla(por ejemplo una gráfica sobre otra)`

**hacer fit**
y(x)=m*x + b
fit y(x) archivop using 2:3 via m, b
##Introducción a C
comparar dos códigos, uno en bash y otro en C..mirar carpta de ejemplos

En la mayoría de los casos la línea se acaba con ";"
compilar: `gcc -o nombre.out nombre.c`
la o sirve para que se cambie el archivo por defecto (a.out) por el de interés.

# 5 de junio de 2015
Primero se habló de los métodos de Montecarlo, (qué son), y se aplicó sobre una esfera. Coordenadas en X, Y y Z y después normalizar
Se va a tenrr un ciclo en el que cada iteración se genera un número aleatorio en cada coordenada. Después hallar la norma del vector sobre R3, para eso se hace aritmética en C. Después se guarda un arch en csv y después se grafica con GNU plot.
##Resolver el tercer punto del laboratorio
Se comienza con un cógido de distribución gaussiana
al código se le añanade librería de input y out put `#include <stdio>` 
también hay que anadir

~~~
int main (void)
 double x;
 y
 z
 int num = 1000;
 int i = 1;
 for( ; i <= num; i++)
 {
   x=gaussrand();
   y
   x
   #calcular la norma sqrt(raiz cuad)
   norm=sqtr(x*xy*y*+z*z)
   x=x/norm:
   y;
   x;
   #que imprima los tres y ponga una nueva línea
   printf("%f, %f, %f/n", x, y, z);
   }
   
~~~
para compilar
para ejecutar 

Graficar:

entrar a gnuplor

~~~
set datafile separator ","
splot "randomsherical.csv" usind 1:2:3
#Para qye sea vea bien la esfera
set view equal xyz
~~~

## Breve repaso de Python 
Ver diap

##Hands on
**Python** 

# 9 de junio de 2015
Para saber los estilos disponibles
pylab inline #no se pueden hacer animaciones con esto
estilos.style.disponible
print estilos 
usar un estilo : style.use(estilos[i])

Para usar en una sóla gráfica:
with xkcd(): código gŕfica

Lineas de campo : se tiene que entregar los punto s de la cuadrícula

Gráficas de contorno: se le da los valores en x y y y después una matriz de los valores en y.

Witget??? animaciones

**Ejemplo**
interacción de 3 cuerpos. 
Se tiene un archivo en csv para poder ller en python. Primero se resuelven las ecuaciones con Mathemática. Para eso se definen las interacciones y se usa fsolve, a la cual se le tienen que dar las condiciones iniciales y por supuesto, las ecuaciones diferenciales. Para lo primero se utiliza un artículo de .... También se tiene que dar el periodo. Lo que se obtienen son funciones interpolación. Con la función output se puede hacer el archivo csv 

from matpotlib import animation 
se hacen arreglos que tienen como coordenadas las variables y el tiempo
Se puede guardar en un video.
ver ejemplo---


heat equation : con condiciones de frontera
Se puede ir barriendo por cada punto de la plata, promediar e actualizar el arreglo. 
##Hands on 
###Make 
1. Resumen básico.
2. 

#martes, 16. junio 2015 

##Interpolación. 
Conocer cómo se comporta cierto sisitema en cualquier punto dentro del rango. Se utiliza para rellenar datos faltantes.
Ejemplo: geología-termocupla. Se podría hacer entre cada punto con una línea (i lineal). Otra opción, si se tienen k+1 puntos se podría ontener un polinomio de grado k que pase por todos los puntos. También se pueden hacer splines cúbicos y cuadrados. 
~~~
import numpy as plt
import matplotbil as mpl
import matplotlib.pyplot as plt 
import os
%matplotlib inline
from Ipython.display import HTML
from scipy import interpolate
~~~
el polinomio es una productoria en j distinto de k (x-xi)/(xj-xi)
(...qué es la interpolación de Lagrange)

Se quiere una funcipon que entregue los parámetros de Lagerange y otra que haga la suma.

~~~
def lagrangep(absc,j):
	pol=np.poly1d([0])
		for in 

~~~
L0 ,valor uno
L1, en la primera absisa se anula, enla 1 vale y en las otras ... ect.

la gráfica azul sola es la interpolación.



###Cubic spline
La idea es ajustar la pendiente y la segunda derivada en los nudos. 
`help(imterpolate.interpld)`

`sale = archivo(se puede poner url`
~~~
sale_interpol_lin
sale_interplo_nearest
sale_interplo_zero # mantiene el valor ḿiestras llega a un punto en e que cambia
~~~
**Interpolación en varias dimensiones**
mgrid[inicio:final:numero de pasos entre el inicio y el fina]: se le entregan los valores en cada eje y se producen arreglos bidimensionales con lo que se pueden evaluar las finciones que se quieran.  

después con la función interpolate se evaluan otros unptos según la función 

para que se vean los distintos colores se utiliza plt.pcolor(x,y,z)

###Métodos de mínimos cuadrados. 

Encontrar los parámetros tal que minimicen la suma de mín cuad. 
np.polyfit #ajuste es un polinomio

curve_fit #ajuste no es un polinomio, por eje para órbitas. Se tiene que definir un afunción cuyo primer parámetro es la var indep y otra en la que estén el resto de param.  blue.csv y red.csv son datos del lab de óptica cuántica de datos de rotación de los polarizadores. 

grigg.csv posición en el plano de un cometa. Se quieres calcular su órbita




#miércoles, 17. junio 2015

Cómo hacer ramas de un repositorio y manipularlas
git branch --- se ven las ramas 
Para cambiar de rama
git checkout rama 1
Hay que hacer commit para ver los cambios. 


Hacer un merge : ufsionar las dos ramas 
 git tag : poner "banderitas en el repositorio"
Crear un tag : git tag .a


Análisis de Fourier 

Una serie de fourier satisface las condiciones de Dirichlet (completar con el Tellez)

##Hands ON 8 


