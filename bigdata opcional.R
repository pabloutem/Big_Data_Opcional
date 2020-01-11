# Preguntas 1

library(readxl)
Datos <- read_excel("246544_Data_Nomofobia.xlsx")
View(X246544_Data_Nomofobia)
summary(Datos)

#se importa los datos a rstidio y se le hace una estastidisca descriptiva

hist(Datos$Nomofobia)
hist(Datos$Ansiedad)
hist(Datos$Estrés)
hist(Datos$Compulsividad)
hist(Datos$`Habilidades blandas`)
hist(Datos$`Resolución de conflictos`)
hist(Datos$Edad)

#despues veo el histograma de cada dato para ver como se comporta su frecuencia.

#pregunta 2

library(moments)
#descargo e instalo el packages moments para sacar datos estadisticos

skewness(Datos[-8])
#eje de simetria

kurtosis(Datos[-8])

#kurtosis

qqnorm(Datos$Nomofobia)
qqnorm(Datos$Ansiedad)
qqnorm(Datos$Estrés)
qqnorm(Datos$Compulsividad)
qqnorm(Datos$`Habilidades blandas`)
qqnorm(Datos$`Resolución de conflictos`)
qqnorm(Datos$Edad)

#graficos de distribuciónes

#pregunta 3
Reg<-lm(Datos$Nomofobia~Datos$Ansiedad+Datos$Compulsividad+Datos$Estrés+Datos$`Habilidades blandas`+Datos$`Resolución de conflictos`+Datos$`Tiempo de uso del celular`+Datos$Género+Datos$Edad)
View(Reg)
#se crea una sección con la regreción

#pregunta 5
analisis_anova<-aov(Datos$Nomofobia~Datos$Ansiedad+Datos$Compulsividad+Datos$Estrés+Datos$`Habilidades blandas`+Datos$`Resolución de conflictos`+Datos$`Tiempo de uso del celular`+Datos$Género+Datos$Edad)
summary(analisis_anova)

#se crea una seccion con el analisis anova

#pregunta 6
hist(Datos$Nomofobia)
#se crea grafico histograma

boxplot(Datos$Ansiedad)
#se crea grafico bloxplot

barchart(Datos$Género)
#se crea grafico de barras

#pregunta 7
boxplot(Datos$Nomofobia,main= "Nomofobia")
boxplot(Datos$Ansiedad,main= "Ansiedad")
boxplot(Datos$Estrés,main= "Estres")
boxplot(Datos$Compulsividad,main= "Compulsividad")
boxplot(Datos$`Habilidades blandas`,main= "Habilidades Blandas")
boxplot(Datos$`Resolución de conflictos`,main= "Resolucion de Conflictos")
boxplot(Datos$Edad,main= "Edad")
boxplot(Datos$Nomofobia~Datos$Género,main= "Genero")

#se crean graficos bloxplot

#pregunta 8

outliers<-Datos[c(-5,-11,-106),]
outliers_2<-DatosFinal[c(-46,-41,-126,-31),]

#sacando datos outliers