#Clase semana 8 dia 2 
#10/03/2022
#Revisar datos de madera 
#BD maderas 


madera <- read.csv("Clases/Madera.csv", header = T)
madera$Sp <- as.factor(madera$Sp)

boxplot(madera$Peso_gr ~ madera$Sp)
library(dplyr)

bar <- madera %>% 
  filter(Sp=="Bar")

#Comparacion de una media teorica Mu=8 para Barreta 

mean(bar$Peso_gr)

t.test(bar$Peso_gr, mu=8)
Chp <- madera %>% 
  filter(Sp=="Chp")
t.test(Chp$Peso_gr, mu=7.4)

