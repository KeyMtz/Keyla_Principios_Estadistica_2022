#Tarea

DATOS <- read.csv("Clases/DATOS.csv", header = T)

DATOS$TIEMPO <- as.factor(DATOS$TIEMPO)
boxplot(DATOS$ALT ~ DATOS$TIEMPO, xlab = "Altura", ylab = "Tiempo")

Anacahuita <- DATOS%>%
  filter(ESPECIE=="Anacahuita")
t.test(Anacahuita$ALT ~ Anacahuita$TIEMPO, paired= TRUE)

boxplot(Anacahuita$ALT ~ Anacahuita$TIEMPO)
