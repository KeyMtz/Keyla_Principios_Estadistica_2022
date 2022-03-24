#KeyMtz
#Semana 10 
#23/03/2022

#Ho: no hay diferencia entre los pesos de Ebano y Ebano. 
#H1: existe diferencia entre los pesos de Ebano y D.Ebano
#valor alfa 0.05 (siempre es el mismo numero)

madera <- read.csv("Clases/madera.csv", header = T)

library(dplyr)

Ebano <- madera%>%
  filter(Sp=="Ebano")

D.Ebano <- madera%>%
  filter(Sp=="D.Ebano")
t.test(Ebano$Peso_gr, D.Ebano$Peso_gr, var.equal = T)

mean(Ebano$Peso_gr)
mean(D.Eb$Peso_gr)

#Valor de p-value =2.2e-16
#Se acepto la hipotesis alternativa: hay diferencia en la media del peso de Ebano y D.Ebano.

Chp <- madera%>%
  filter(Sp=="Chp")
Bar <- madera%>%
  filter(Sp=="Bar")
t.test(Chp$Peso_gr, Bar$Peso_gr, var.equal = T)

mean(Chp$Peso_gr)
mean(Bar$Peso_gr)

#valor de p.value= 0.4913
#Se acepto la hipotesis nula

boxplot(madera$Peso_gr ~ madera$Sp, col="lightblue")
boxplot(Ebano$Peso_gr, D.Ebano$Peso_gr, col = "pink")
boxplot(Bar$Peso_gr, Chp$Peso_gr, col = "purple")
