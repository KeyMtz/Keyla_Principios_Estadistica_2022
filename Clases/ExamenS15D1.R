#KeyMtz
#Examen de Regresion 
#Semana 15 dia 1 

#Ejercicio 1

geiser <-read.csv("erupciones.csv", header = T)

#Correlacion------------
mean(geiser$eruptions)
mean(geiser$waiting)
var(geiser$eruptions)
var(geiser$waiting)
sd(geiser$eruptions)
sd(geiser$waiting)
plot(geiser$eruptions, geiser$waiting, pch=19,
     xlab="Tiempo de espera entre erupciones (min)",
     ylab="Duracion de la erupcion (min)",
     col="purple",
     main="Geyser old Faithfull")

cor.test(geiser$eruptions, geiser$waiting)



#Regresion lineal------
geiser.lm <-lm(geiser$eruptions ~ geiser$waiting)
summary(geiser.lm)


valores <- c(80, 40, 45, 53, 61)
-1.874016 + 0.075628*80
-1.874016 + 0.075628*40
-1.874016 + 0.075628*45
-1.874016 + 0.075628*53
-1.874016 + 0.075628*61



