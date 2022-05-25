#KeyMtz
#25/05/2022
#Examen Final 

library(dplyr)

madera <- read.csv("Clases/madera2x2x5.csv", header = TRUE)

Pino <- madera %>%
  filter(Sp=="Pino")

Encino <- madera %>%
  filter(Sp=="Encino")


mean(Pino$Peso_gr)
mean(Encino$Peso_gr)
sum(Pino$Peso_gr^2)
sum(Encino$Peso_gr)

boxplot(madera$Peso_gr ~ madera$Sp,
        xlab= "Cuadros de madera",
        ylab = "Peso(gr)",
        col= "orange")
En <- mean(Encino$Peso_gr)
Pn <- mean(Pino$Peso_gr)
En - Pn
