# Key Mtz 
# 28/04/22
# Clase semana 13 dia 2 

# Ejercicio 1

Speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
Abundance <- c (6, 3, 5, 23, 16, 12, 48, 43)

cor.test(Speed, Abundance)
plot(Speed, Abundance)

#¿Es estadisticamente significativa la correlacion? = 

#Ejercicio 2 

suelo <- read.csv("Clases/suelo.csv")

cor.test(suelo$pH, suelo$N)
cor.test(suelo$pH, suelo$Dens)
cor.test(suelo$pH, suelo$P)
cor.test(suelo$pH, suelo$Ca)
cor.test(suelo$pH, suelo$Mg)
cor.test(suelo$pH, suelo$K)
cor.test(suelo$pH, suelo$Na)
cor.test(suelo$pH, suelo$Conduc)
