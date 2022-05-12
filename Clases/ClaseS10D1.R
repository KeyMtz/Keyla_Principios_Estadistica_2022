#KeyMtz
<<<<<<< HEAD
#Semana 10 dia 1
#Madera


#Ho= no hay diferencias entre el peso de la madera
#H1= que hay diferencias entre el peso de la madera D.Ebano y Ebano

library(dplyr)

shapiro.test(Ebano$Peso_gr)
Ebano <- madera%>%
  filter(Sp=="Ebano")

shapiro.test(D.Eb$Peso_gr)
D.Eb <- madera%>%
  filter(Sp=="D.Eb")

t.test(Ebano$Peso_gr, D.Eb$Peso_gr, var.equal = T)

Hipotesis alternativa, hay diferencias.

media de Ebano: 7.971667
media de D.Eb: 9.940000

shapiro.test(bar$Peso_gr)
bar <- madera%>%
  filter(Sp=="bar")

shapiro.test(Chp$Peso_gr)
Chp <- madera%>%
  filter(Sp=="Chp")
  
t.test(bar$Peso_gr, Chp$Peso_gr, var.equal = T)

boxplot(madera$Peso_gr ~ madera$Sp, col="lightgreen")

boxplot(bar$Peso_gr, Chp$Peso_gr, col = "lightgreen")


=======
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
>>>>>>> 239bedbdc9d1294d0ba0080b1ea60e7b4c9eecf5
