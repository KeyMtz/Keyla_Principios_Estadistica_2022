#KeyMtz
#24/03/2022
#Examen de comparacion de medias

library(dplyr)

#Ejercicio 1------

#Ho= no existe diferencias entre la media observada y la declarada en sus costales
#H1= la media observada es menor a la declarada en los costales.

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7, 
            82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95, 73.59, 
            77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23, 78.89, 77.14, 69.94, 
            78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99, 81.94, 80.41, 77.7)


t.test(costal)
mean(costal)
sd(costal)

#¿Cual es el valor de p? = 2.2e-16
#¿Cual es la media de los costales que compr el ganadero? = 78.91068
#¿Cual hipotesis se acepta? = Hipotesis alternativa
#¿Cuantos grados de libertad tiene el experimento? = 77.98157 a 79.83980



#Ejercicio 2------

azufre <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8, 
            22.7, 15.2, 23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9, 
            24.6, 19.4, 12.3, 15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17.0, 
            22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 13.3, 18.1)
t.test(azufre)
mean(azufre)

#¿Cual es el valor de p? = 2.2e-16
#¿Cuales son los intervalos de confianza al 95%? = 16.87912 a 20.53588
#¿Cuantos grados de libertad tiene el experimento? 
#¿Cual es la hipotesis aceptada? = Hipotesis alternativa ya que el valor de p es menor a 0.05.
#¿Existe evidencia de que el valor medio promedio de las emisiones observadas es mayor,(significativamente) a la declarada en los procedimientos de seguridad de la empresa? = Si ya que la media nos da un resultado de 18.7075 Ton/ha. 

#Ejercicio 3 -----
url <- "https://raw.githubusercontent.com/mgtagle/MCF-202_Agosto_2021/main/TEMPAIRE_DIA.csv"
temperatura <- read.csv(url)

t.test(temperatura$temp_media)

#¿Cual es el valor de p? = 2.2e-16
#¿Cuantos grados de libertad tiene el experimento? = de 23.28216 a 23.97599
#¿Cual es la hipotesis aceptada? = Hipotesis alternativa
#¿Existe evidencia de que el valor medio promedio de la temperatura observada es mayor a la declarada? = Existe evidencia pero el valor medio promedio es menor a los 24grados, ya que nos da una media de 23.62908

#Ejercicio 4 
grupo <-gl(2, 12, labels = c("Fotografia", "Araña"))
Ansiedad <- c(30, 35, 45, 40, 50, 35, 55, 25, 30, 45, 40, 50, 40, 35, 50, 55,
              65, 55, 50, 35, 30, 50, 60, 39)
Datos <- data.frame(grupo, Ansiedad)
head(Datos)
t.test(Datos$Ansiedad)
t.test(Datos$grupo)