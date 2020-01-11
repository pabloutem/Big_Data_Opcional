# Big_Data_Opcional

*Guía opcional Bigdata

*Pregunta 1

Al ocupar el comando summary(Datos) para tener una estadística descriptiva de las variables con la media, mediana y percentiles 
Podemos destacar la mediana el cual me llamo la atención ya que todos están en tiempo similar a 50 excepto en la edad que es de 24
En cambio, el promedio tiene más fluctuación, podría ser debido a que podría haber outliers.


*Pregunta 2

Se ocuparon las fórmulas para Kurtosis(Datos[-8]) y Skewness(Datos[-8]).
También se aplicó la formula qqnorm para comprobar la normalidad de las variables, casi todas cumplen este requisito, excepto las variables "Habilidades Blandas" y "Resolución de Conflicto".


*Pregunta 3 

Se instaló el paquete StadisticalModeling y las variables de la base de datos llamada Datos para hacer la regresión.

Coheficientes (Intercept) Datos$Ansiedad
-0.68391 0.01860
Datos$Compulsividad Datos$Estrés
0.24266 0.17216
Datos$Habilidades blandas Datos$Resolución de conflictos
0.03117 -0.03944
Datos$Tiempo de uso del celular Datos$GéneroMujer
0.57086 1.81707
Datos$Edad
-0.12678


*Pregunta 4

los resultados en los coeficientes, me llama la atención "habilidades Blandas" ya que no es significativa o carece de lógica, si tenemos una persona más con habilidades blandas o comunicacionales, debería perder su celular o afrontar esa perdida, por lo tanto el coeficiente debería ser negativo, 
En la variable "Resolución de Conflictos" el coeficiente negativo nos podría indicar que a podido sobrellevar esa situación. 
Compulsividad, Ansiedad, Estrés, y tiempo en el celular nos da con coeficiente positivo, es decir un aumento en ellas provoca un aumento en la Nomofobia. 
Por último, el coeficiente más grande es el "Tiempo en el celular" después viene la Compulsividad, lo que nos podría indicar o intuir que la ansiedad es una variable muy significativa que altera la Nomofobia.


*Pregunta 5

Df Sum Sq Mean Sq F value Pr(>F)
Datos$Ansiedad 1 1813 1813 3.894 0.050756 .
Datos$Compulsividad 1 9368 9368 20.127 1.67e-05 
Datos$Estrés 1 6699 6699 14.392 0.000234
Datos$Habilidades blandas 1 421 421 0.905 0.343372
Datos$Resolución de conflictos 1 1 1 0.003 0.956904
Datos$Tiempo de uso del celular 1 23935 23935 51.423 6.63e-11
Datos$Género 1 106 106 0.227 0.634662
Datos$Edad 1 17 17 0.036 0.849150
Residuals 120 55855 465
Signif. codes: 0 '' 0.001 '' 0.01 '' 0.05 '.' 0.1 ' ' 1 

Al analizar las variables las únicas que logran ser significativas son las de “compulsividad”, el “estrés” y el “tiempo de uso del celular”, y la “ansiedad” posee una significancia aceptable.


*Pregunta 6

La analizar el histograma de la Nomofobia nos indica que la gran mayoría de los datos fluctúan entre 20-30 y 40-50, lo cual no sigue una distribución de campana de gauss.
El Boxplot se le hizo a la Ansiedad, el cual tiene un comportamiento normal, una media de 50, percentil 75 de 75 y percentil 25 de 25.
Los limites superior e inferior son el 100 y el 0 respectivamente. 
El grafico de barras se creó con la variable “Genero” en donde se puede ve que las cantidades de hombres y mujeres en esta muestra son casi los mismos, los hombres supera ligeramente a las mujeres.


*Pregunta 7

Al realizar los boxplots de todas las variables para analizar la existencia de outliers y la única que podría tener es la variable “Ansiedad”. Los valores deberían fluctuar entre el 1 hasta el 100.


*Pregunta 8 

Los outliers los eliminé ya que no nos permite analizar bien los datos, estos al sobresalir, ensucian el análisis estadístico en especial la media y desviación estándar.
