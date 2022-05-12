#KeyMtz 
#Clase semana 14 dia 1 
#Regresion 


url <- "https://raw.githubusercontent.com/mgtagle/Marco_Principios_Estadistica_2022/main/Clases/BaseDeDatos_estadistica.csv" 
semilla <- read.csv(url)
plot(semilla$Diametro_mm, semilla$Peso_gr,
     pch= 20, col = "lightblue",
     xlab = "Diametro de semilla (mm)",
     ylab = "Peso de semilla (gr)")

#lm funcion que me ayuda a determinar alfa y beta de la regresion. 

lm(semilla$Peso_gr  ~ semilla$Diametro_mm)
sem.lm <- lm(semilla$Peso_gr ~ semilla$Diametro_mm)
summary(sem.lm)
semilla$yprima <- -4.934+0.532*semilla$Diametro_mm

#Agregar la linea de tendencia central usando abline. 
plot(semilla$Diametro_mm, semilla$Peso_gr, pch =20,col="lightblue",
     xlab = "Diametro de semilla (mm)", 
     ylab = "Peso de semilla (gr)", 
     abline(sem.lm, col="blue"))
text(18, 2, "Y=-4.934+0.532*x")
text(19, 1.5, "Regresion lineal")
text(19, 1.1, "r^2=0.69 *")

semilla$Ajustados <- round(sem.lm$fitted.values, 2)
sem.lm$coefficients
sum(sem.lm$residuals)

#Encontrar los siguientes valores aplicando la formula regresion
#18, 11, 14, 15, 16 

valores <- c(11, 14, 15, 16, 18)
-4.93388 + 0.53178*valores
