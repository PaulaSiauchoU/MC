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

+ Hacer un journal

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

cambiar a por b 

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

