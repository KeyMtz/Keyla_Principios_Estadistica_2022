#KeyMtz
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


