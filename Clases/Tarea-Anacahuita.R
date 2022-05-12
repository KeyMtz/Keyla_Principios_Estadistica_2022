#Tarea


Especie <- read.csv("Clases/Especie.csv", header = T)

library(dplyr)

Especie$ALT <- as.factor(Especie$ALT)
boxplot(Especie$DIAM ~ Especie$ALT, xlab= "Altura", ylab="Diametro")

Anacahuita <- Especie%>%
  filter(ESPECIE=="Anacahuita")
t.test(Anacahuita$ALT ~ Anacahuita$DIAM, paired= TRUE)

boxplot(Anacahuita$ALT ~ Anacahuita$DIAM)
