# KeyMtz
# 16/02/2022
#Clases semana 5 dia 1 


url <- paste0("https://raw.githubusercontent.com/mgtagle/", 
"PrincipiosEstadistica2021/main/cuadro1.csv")

inventario <- read.csv(url)
summary(inventario)

inventario$Especie <- as.factor(inventario$Especie)
summary(inventario)
inventario$Posicion <- as.factor(inventario$Posicion)
summary(inventario)

# Otener una tabla de frecuencia para las variables Especies y Posicion. Usar la funion table

freq.sp <- table(inventario$Especie)
freq.sp/sum(freq.sp)*100
porciento <- freq.sp/sum(freq.sp)*100

freq.p <-table(inventario$Posicion)
freq.p/sum(freq.p)*100
sum(porciento)

# Porcentaje de posicion

por.pos <- freq.ps/sum(freq.ps)*100

barplot(freq.sp, col="purple", las =1, border = NA)
barplot(porciento, col="blue", las =1)

barplot(freq.p, las=1, col = "purple", border = NA)

pie(freq.p, col=topo.colors(4), labels = paste(levels(inventario$Posicion), freq.p, "%"))
pie(freq.sp, col = topo.colors(3), labels = paste(levels(inventario$Especie), freq.sp, "ind"))
