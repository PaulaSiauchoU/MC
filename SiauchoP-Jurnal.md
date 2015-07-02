
 
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

##Hands-on 2
###Expresiones regulares 
1. Expresión regular:
`^yyyy\n`
3.   
~~~
#!/bin/bash

curl http://pi.karmona.com >brut.txt

sed 's/<BR>//g' brut.txt > uno.txt

sed 's/<\/B>//g' uno.txt > dos.txt

sed 's/<B>//g' dos.txt > tres.txt

sed 's/<HTML><TITLE>Pi - 10 Million Digits @ http:\/\/Pi.Karmona.com<\/TITLE><BODY><BR>
<CENTER><B>Pi - 10 Million Digits<\/B><BR><BR><BR>//g' tres.txt > cuatro.txt

sed 's/<BR><BR><\/center><\/BODY><\/HTML>//g' cuatro.txt > PIslices.dat

~~~
#Miércoles 3 de junio

En esta clase se continuaron con los ejemplos de GNUplot. 
En primer lugar se escogieron datos sobre la historia de las tasas de cambio del sitio :
http://www.exchange-rates.org/history/COP/USD/T
A continuación, se quitó mediante expresiones regulares el html del código, letras que no eran de interés `[a-zA-Z]` y otros aspectos del código que no eran de relevancia como ciertos carácteres que estaban a la derecha o a la izquierda de algo `sed 's/algo.*//g'`. Por último,  **¡¡Graficar!!**

~~~
 gnuplot> datafile separaror "," 
 set xdata time
 set timefmt "%m/%d/%y"
 plot 'archivo' using 1:2 with lines #graficar con líneas
~~~
####Ejemplo: información sobre la expansión del universo
  
+ Se trabajó a partir de un archivo de Mathematica  el cuál estaba oragnizado de la siguiente manera: 

| Nombre | dist parsecs | velocidad |

+ Después en gnuplot se especificó que el domumento era de tipo cvs usando el comando
`set datafile separator ","`
+ Se usaron otros comandos para añadir aspectos a una gráfica como hacer dos gráficas al tiempo 
`replot laotragrafica`
+ por último se hizo un fit a una gráfica que tenía la forma de 
*y(x)=m*x + b* mediante el código 
`fit y(x) archivop using 2:3 via m, b`
##Introducción a C
comparar dos códigos, uno en bash y otro en C..mirar carpta de ejemplos

En la mayoría de los casos la línea se acaba con ";"
Para compilar se usa:
 `gcc -o nombre.out nombre.c`
la *o* sirve para que se cambie el archivo por defecto (a.out) por el de interés.

# 5 de junio de 2015

Primero se habló de los métodos de Montecarlo, los cuales se usan para allar soluciones aproximadas a sistemas muy complejos, y se aplicó sobre una esfera. Se definieron las coordenadas en X, Y y Z y después  se normalizaron.

Se obtuvo un ciclo en el que cada iteración se genera un número aleatorio en cada coordenada. Después hallar la norma del vector sobre R3, para eso se hace aritmética en C. Después se guarda un arch en csv y después se grafica con GNU plot.

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
   y=gaussrand()
   x=gaussrand()
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
`gcc nombre.c`
Esto crea un archivo llamado a.out que se ejecuta 
para ejecutar 
`/a.out`
Graficar:

entrar a gnuplor

~~~
set datafile separator ","
splot "randomsherical.csv" usind 1:2:3
#Para qye sea vea bien la esfera
set view equal xyz
~~~

####Breve repaso de Python :

**Python** es un lenguaje orientado a objetos cuya objetivo es hacer la programación más sencilla. Un código en python se puede hacer desde un Anaconda, la cual es parecida a la terminal o desde ipython. Éste último utiliza un recurso llamado Notebook en el cual se pueden correr bloques de código distintos lo cual es útil para saber cómo funciona cierta parte del código o para identificar un error particular. 

##Hands on
**Make**
Esta herramienta, de software libre, permite crear ejecutables de un programa a partir de su código fuente. Esta característica permite gastar menos poder compuracional y repatir mejor el trabajo a la máquina ya que se automatizan muchos procesos. 
Todo *Makefile* tiene que tener el archivo objetivo y el archivo del cual se va a sacar la información(fuente). Además , en la siguiente línea se escribe la orden, la cual debe estar indentada tal y como se muestra a continuación  
~~~
archivoObjetivo : archivoFuente
	orden 
~~~


# 9 de junio de 2015
###Styles en Python

+ Para saber los estilos disponibles
`pylab inline #no se pueden hacer animaciones con esto`
estilos.style.disponible
print estilos 
usar un estilo : style.use(estilos[i])

+ Para usar en una sóla gráfica:
with xkcd(): código gráfica

Lineas de campo (notebook de ejemplo): se tiene que entregar los punto s de la cuadrícula

Gráficas de contorno: se le da los valores en x y y y después una matriz de los valores en y.

Witget: animaciones

###Ejemplo

####Interacción de 3 cuerpos. 
----------------------------------
Se tiene un archivo en csv para poder leer en Python. Primero se resuelven las ecuaciones con Mathematica. Para eso se definen las interacciones y se usa fsolve, a la cual se le tienen que dar las condiciones iniciales , el período y por supuesto, las ecuaciones diferenciales. Para lo primero se utiliza un artículo científico de donde se sacan los datos teóricos. 
Se obtienen son funciones interpolación. Con la función output se puede hacer el archivo csv 
Para hacer la animación se tiene que importar el siguiente paquete.
`from matpotlib import animation `
Se hacen arreglos que tienen como coordenadas las variables y el tiempo
Además la animación **se puede guardar** en un video.


**Heat equation** : con condiciones de frontera
Se puede ir barriendo por cada punto de la plata, promediar e actualizar el arreglo. 
##Hands on 
###Proyecto. 
Para el proyecto final he pensado en integrar algún problema de Microbiología, mi doble programa,  para resolverlo mediente algún método computacional visto en clase. Sin embargo, aún no tengo claro el problema que quiero plantear. He pensado en buscar datos biológicos interesantes mediante comandos de la terminal como curl y posteriormente procesar y limpiar los datos con los cmandos vistos para bash. 


###HandsOn5
~~~
import matplotlib.pyplot as plt
import numpy as np

a = np.linspace(1,25,25)
b = np.linspace(2,26,25)
t = np.linspace(0,2*np.pi,200)

plt.figure(figsize=(8, 8))
plt.subplots_adjust(hspace=0.00, wspace=0.00)
for i in range(0,25):
    x = (np.sin(a[i]*t) + (np.pi/2))
    y = np.sin(b[i]*t)
    plt.subplot(5,5,i+1)
    plt.plot(x,y,color='blueviolet')
    plt.axis("off")
plt.savefig("lissajous.png", format='png',bbox_inches='tight',transparent=False)
~~~


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

Se usará el método de interpolación de Lagrange que busca un polinomio que se acople a una serie de puntos dados. El polinomio es una productoria en j distinto de k (x-xi)/(xj-xi)


Se quiere una funcipon que entregue los parámetros de Lagerange y otra que haga la suma.

~~~
def lagrangep(absc,j):
	pol=np.poly1d([0])
		for in range

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

#viernes, 19. junio 2015 

~~~
#primero se importa todo lo necesario desde el paquete de la transformada de Fourier de Python
from scipy.ffpack import ifft, fft,fftfrec
N=2**10
f=100.0
dt=1./f/N
t=np.
~~~
En muchas ocasiones es muy útil usar la Transformada discreta de Fourier 

Se puede hacer tratado de imágnenes con la transformada de Fourier discreta. Para eso, 

1. Se debe tener la imagen en un formato que pueda leer Python, como una matriz con el valor de color de cada pixel. 
2. Se aplica la transformada discreta de Fourier
3. Se hace la transformada inversa.


*Dato curioso* `misc.lena` trae a Lena.


![ ](/home/paula/MC/Imágenes/lena.jpg  "Lena ")

para poner la imagen en escala de grises se usa el código 
`plt.imshow(lena,cmap=plt.cm.gray)` 
También se vió un ejemplo en el que se disminuía el peso de la imagen. Para ello se fijan muchos elemento de la distribución de Fourier a 0. En este caso para eliminar los detalles se eliminan las frecuencias altas. 

#martes, 23. junio 2015

##Derivadas numéricas. 

Definición de derivada

Cuando se utilizan este tipo de métodos se tienen que calcular el error numérico, que disminuye a medida que lo hace el step size. 
Hay métodos que disminuyen en el error. Usar fw difference o bw difference. Otro método es diferencias centrales:Este tipo de error también aumenta en h pero a medida que se disminuye el step size el eroor disminuye el cuadrado. 

morado: verdadera derivada:
rojo: bw diff
azul: fw diff
azul aguamarina: diferencias centrales. 

Nueva función: logspace: lo mismo que lin space pero en esacal logarítmica
subs: coge algo y lo reemplaza

Para más detalles ver el libro de Física comptacional de Shere...

##HandsOn 10
ponerrr enlace 
#miércoles, 24. junio 2015 

Continuación de integración numérica
###Regla del trapecio. 
###Regla de Simpson 
####Regla compuesta 

Se quiere saber cómo escala el error cuanod se aumentaba el step size igual que en la clase pasada, la regla de Simpson lo hace en h⁴ 

sepa losraices
eso le dice las absisas de los polinomios de l
y  con los pesos se calcula la integral. 



#viernes, 26. junio 2015
##Ecuaciones diferenciales ODE

Python no reconoce diferenciales de tiempo, hayq eu discretizarlo. 
se usa y(n+1)=y'+y(n+1)

###Regla del punto medio. 
###Runge-kutta.
Se quiere utilizar la derivada en tres puntos, no dos como en el cado pasado. Además se quiere utilizar la egla de Simpson 


####Problema de Keppler 



#martes, 30. junio 2015 

La idea es utilizar dos estimados para el siguiente paso en la ED y con eso calcular el error y si éste llega a ser el muy grande se reduce el time step. 

eloc=abs(ydeltat/2-ydeltat)/30. El 30 sale de hacer un análisis del estimado 

En el cuaderno de ejemplo el primer ejemplo tiene como solución cículos. donde dY/dt=(Y[1],-Y[0])


Para reducir el error: definir el límite del **error global**. Si el error global es muy grande baja el local aumentando el número de iteraciones (aquí el time step es ina variable.)
##Multistep methods
+ Adam-Bashfort: se calculan varios pasos (tsubn), se interpola el polinomio con esos puntos y con eso de halla el deltay. dy=(h/12)*(23fn-16fn-1+5fn-2)

++ Ejemplo: pédulo con Hamiltoniano. Se oltienen las ecuaciones diferenciales para p y q
