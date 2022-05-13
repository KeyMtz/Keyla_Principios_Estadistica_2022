#KeyMtz
#Clase semana 11 dia 1
#Pruebas de t de muestras dependientes


datos <- read.csv("Clases/mainproduccion.csv", header = T)
datos$Tiempo <- as.factor(datos$Tiempo)

boxplot(datos$Kgsem ~ datos$Tiempo, col="red", xlab = "Tiempo", ylab = "Semilla (kg)")
t.test(datos$Kgsem ~ datos$Tiempo, paired= TRUE)

boxplot(datos$BioRama ~datos$Tiempo, col="Purple", xlab = "Tiempo", ylab = "BioRama (ton)")
t.test(datos$BioRama ~ datos$Tiempo, paired= TRUE)

boxplot(datos$Germ ~ datos$Tiempo, col="Pink", xlab = "Tiempo", ylab = "Germinacion(%)")
t.test(datos$Germ ~ datos$Tiempo, paired = TRUE)

